; ModuleID = '/llk/IR/kernel/trace/trace_events.c_pt.bc'
source_filename = "../kernel/trace/trace_events.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_define_field:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_define_field\22\09\09\09\09\09"
module asm "__kstrtabns_trace_define_field:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_event_raw_init:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_event_raw_init\22\09\09\09\09\09"
module asm "__kstrtabns_trace_event_raw_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_event_ignore_this_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_event_ignore_this_pid\22\09\09\09\09\09"
module asm "__kstrtabns_trace_event_ignore_this_pid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_event_buffer_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_event_buffer_reserve\22\09\09\09\09\09"
module asm "__kstrtabns_trace_event_buffer_reserve:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_event_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_event_reg\22\09\09\09\09\09"
module asm "__kstrtabns_trace_event_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_set_clr_event:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_set_clr_event\22\09\09\09\09\09"
module asm "__kstrtabns_trace_set_clr_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_array_set_clr_event:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_array_set_clr_event\22\09\09\09\09\09"
module asm "__kstrtabns_trace_array_set_clr_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_get_event_file:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_get_event_file\22\09\09\09\09\09"
module asm "__kstrtabns_trace_get_event_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trace_put_event_file:\09\09\09\09\09"
module asm "\09.asciz \09\22trace_put_event_file\22\09\09\09\09\09"
module asm "__kstrtabns_trace_put_event_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.68, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%union.anon.68 = type { ptr }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.ftrace_event_field = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_array = type { %struct.list_head, ptr, %struct.array_buffer, ptr, ptr, %struct.arch_spinlock_t, i32, i32, i32, i32, i8, i32, i32, ptr, i32, [32 x i8], i32, %struct.raw_spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, ptr, [1 x %struct.cpumask], i32, i32, i32, %struct.list_head, ptr }
%struct.array_buffer = type { ptr, ptr, ptr, i64, i32 }
%struct.trace_array_cpu = type { %struct.atomic_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.kuid_t, [16 x i8], i8 }
%struct.kuid_t = type { i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.16, %struct.list_head, %struct.list_head, %union.anon.17 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.12, ptr }
%union.anon.12 = type { i64 }
%struct.lockref = type { %union.anon.14 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { %struct.list_head }
%union.anon.17 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.89, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.90, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.91, ptr, %struct.address_space, %struct.list_head, %union.anon.92, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.89 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.90 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.91 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.92 = type { ptr }
%struct.trace_subsystem_dir = type { %struct.list_head, ptr, ptr, ptr, i32, i32 }
%struct.event_subsystem = type { %struct.list_head, ptr, ptr, i32 }
%struct.event_filter = type { ptr, ptr }
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.trace_parser = type { i8, ptr, i32, i32 }
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

@event_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @event_mutex, i64 12), ptr getelementptr (i8, ptr @event_mutex, i64 12) } }, align 4
@ftrace_events = dso_local global %struct.list_head { ptr @ftrace_events, ptr @ftrace_events }, align 4
@ftrace_generic_fields = internal global %struct.list_head { ptr @ftrace_generic_fields, ptr @ftrace_generic_fields }, align 4
@ftrace_common_fields = internal global %struct.list_head { ptr @ftrace_common_fields, ptr @ftrace_common_fields }, align 4
@.str = private unnamed_addr constant [28 x i8] c"kernel/trace/trace_events.c\00", align 1
@__kstrtab_trace_define_field = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_define_field = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_define_field = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_define_field to i32), ptr @__kstrtab_trace_define_field, ptr @__kstrtabns_trace_define_field }, section "___ksymtab_gpl+trace_define_field", align 4
@__kstrtab_trace_event_raw_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_event_raw_init = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_event_raw_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_event_raw_init to i32), ptr @__kstrtab_trace_event_raw_init, ptr @__kstrtabns_trace_event_raw_init }, section "___ksymtab_gpl+trace_event_raw_init", align 4
@__kstrtab_trace_event_ignore_this_pid = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_event_ignore_this_pid = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_event_ignore_this_pid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_event_ignore_this_pid to i32), ptr @__kstrtab_trace_event_ignore_this_pid, ptr @__kstrtabns_trace_event_ignore_this_pid }, section "___ksymtab_gpl+trace_event_ignore_this_pid", align 4
@__kstrtab_trace_event_buffer_reserve = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_event_buffer_reserve = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_event_buffer_reserve = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_event_buffer_reserve to i32), ptr @__kstrtab_trace_event_buffer_reserve, ptr @__kstrtabns_trace_event_buffer_reserve }, section "___ksymtab_gpl+trace_event_buffer_reserve", align 4
@__kstrtab_trace_event_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_event_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_event_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_event_reg to i32), ptr @__kstrtab_trace_event_reg, ptr @__kstrtabns_trace_event_reg }, section "___ksymtab_gpl+trace_event_reg", align 4
@ftrace_trace_arrays = external dso_local global %struct.list_head, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@__kstrtab_trace_set_clr_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_set_clr_event = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_set_clr_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_set_clr_event to i32), ptr @__kstrtab_trace_set_clr_event, ptr @__kstrtabns_trace_set_clr_event }, section "___ksymtab_gpl+trace_set_clr_event", align 4
@__kstrtab_trace_array_set_clr_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_array_set_clr_event = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_array_set_clr_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_array_set_clr_event to i32), ptr @__kstrtab_trace_array_set_clr_event, ptr @__kstrtabns_trace_array_set_clr_event }, section "___ksymtab_gpl+trace_array_set_clr_event", align 4
@trace_event_sem = external dso_local global %struct.rw_semaphore, align 4
@trace_types_lock = external dso_local global %struct.mutex, align 4
@__kstrtab_trace_get_event_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_get_event_file = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_get_event_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_get_event_file to i32), ptr @__kstrtab_trace_get_event_file, ptr @__kstrtabns_trace_get_event_file }, section "___ksymtab_gpl+trace_get_event_file", align 4
@__kstrtab_trace_put_event_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_trace_put_event_file = external dso_local constant [0 x i8], align 1
@__ksymtab_trace_put_event_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trace_put_event_file to i32), ptr @__kstrtab_trace_put_event_file, ptr @__kstrtabns_trace_put_event_file }, section "___ksymtab_gpl+trace_put_event_file", align 4
@__trace_early_add_events.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\014Could not create early event %s\0A\00", align 1
@__setup_str_setup_trace_event = internal constant [13 x i8] c"trace_event=\00", section ".init.rodata", align 1
@__setup_setup_trace_event = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_trace_event, ptr @setup_trace_event, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_trace_events__366_3676_event_trace_enable_againearly = internal global ptr @event_trace_enable_again, section ".initcallearly.init", align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"available_events\00", align 1
@ftrace_avail_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ftrace_event_avail_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"\014Could not create tracefs 'available_events' entry\0A\00", align 1
@trace_module_nb = internal global %struct.notifier_block { ptr @trace_module_notify, ptr null, i32 1 }, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"\014Failed to register trace events module notifier\0A\00", align 1
@eventdir_initialized = internal unnamed_addr global i1 false, align 1
@field_cachep = internal unnamed_addr global ptr null, align 4
@test_event_printk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Too many args for event: %s\00", align 1
@test_event_printk.__already_done.8 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Paren mismatch for event: %s\0Aarg='%s'\0A%*s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"REC->\00", align 1
@test_event_printk.__already_done.12 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"\014event %s has unsafe dereference of argument %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"\014print_fmt: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"\016event trace: Could not enable event %s\0A\00", align 1
@__tracepoint_sched_process_fork = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_process_free = external dso_local global %struct.tracepoint, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"kernel/trace/trace.h\00", align 1
@update_event_printk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"\014Could not initialize trace events/%s\0A\00", align 1
@file_cachep = internal unnamed_addr global ptr null, align 4
@__put_system_dir.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__put_system_dir.__already_done.19 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__put_system.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@event_define_fields.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"\013error code is %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"TRACE_SYSTEM\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"\014Could not create tracefs '%s' directory\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@ftrace_enable_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @event_enable_read, ptr @event_enable_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.24 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@ftrace_event_id_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @event_id_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.25 = private unnamed_addr constant [46 x i8] c"\014Could not initialize trace point events/%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@ftrace_event_filter_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @event_filter_read, ptr @event_filter_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.27 = private unnamed_addr constant [8 x i8] c"trigger\00", align 1
@event_trigger_fops = external dso_local constant %struct.file_operations, align 4
@.str.28 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@ftrace_event_format_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @trace_format_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@event_subsystems = internal global %struct.list_head { ptr @event_subsystems, ptr @event_subsystems }, align 4
@.str.29 = private unnamed_addr constant [40 x i8] c"\014Failed to create system directory %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"ftrace\00", align 1
@ftrace_subsystem_filter_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @subsystem_filter_read, ptr @subsystem_filter_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @subsystem_open, ptr null, ptr @subsystem_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.31 = private unnamed_addr constant [46 x i8] c"\014Could not create tracefs '%s/filter' entry\0A\00", align 1
@ftrace_system_enable_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @system_enable_read, ptr @system_enable_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @subsystem_open, ptr null, ptr @subsystem_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.32 = private unnamed_addr constant [42 x i8] c"\014No memory to create event subsystem %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__get_system.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__get_system_dir.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__const.system_enable_read.set_to_char = private unnamed_addr constant [4 x i8] c"?01X", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@trace_format_seq_ops = internal constant %struct.seq_operations { ptr @f_start, ptr @f_stop, ptr @f_next, ptr @f_show }, align 4
@.str.36 = private unnamed_addr constant [10 x i8] c"name: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"ID: %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"format:\0A\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"\0Aprint fmt: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"__data_loc\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"\09field:%s %s;\09offset:%u;\09size:%u;\09signed:%d;\0A\00", align 1
@.str.42 = private unnamed_addr constant [50 x i8] c"\09field:%.*s %s%s;\09offset:%u;\09size:%u;\09signed:%d;\0A\00", align 1
@bootup_event_buf = internal global [1024 x i8] zeroinitializer, section ".init.data", align 1
@ring_buffer_expanded = external dso_local local_unnamed_addr global i8, align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"set_event\00", align 1
@ftrace_set_event_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ftrace_event_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ftrace_event_set_open, ptr null, ptr @ftrace_event_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.45 = private unnamed_addr constant [46 x i8] c"\014Could not create tracefs 'set_event' entry\0A\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.47 = private unnamed_addr constant [47 x i8] c"\014Could not create tracefs 'events' directory\0A\00", align 1
@ftrace_tr_enable_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @system_enable_read, ptr @system_enable_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @system_tr_open, ptr null, ptr @subsystem_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.48 = private unnamed_addr constant [14 x i8] c"set_event_pid\00", align 1
@ftrace_set_event_pid_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ftrace_event_pid_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ftrace_event_set_pid_open, ptr null, ptr @ftrace_event_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.49 = private unnamed_addr constant [50 x i8] c"\014Could not create tracefs 'set_event_pid' entry\0A\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"set_event_notrace_pid\00", align 1
@ftrace_set_event_notrace_pid_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @ftrace_event_npid_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @ftrace_event_set_npid_open, ptr null, ptr @ftrace_event_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.51 = private unnamed_addr constant [58 x i8] c"\014Could not create tracefs 'set_event_notrace_pid' entry\0A\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"header_page\00", align 1
@ftrace_show_header_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @show_header, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @tracing_open_generic, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.53 = private unnamed_addr constant [13 x i8] c"header_event\00", align 1
@show_set_event_seq_ops = internal constant %struct.seq_operations { ptr @s_start, ptr @t_stop, ptr @s_next, ptr @t_show }, align 4
@.str.54 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__tracepoint_sched_switch = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_wakeup = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_wakeup_new = external dso_local global %struct.tracepoint, align 4
@__tracepoint_sched_waking = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@show_set_pid_seq_ops = internal constant %struct.seq_operations { ptr @p_start, ptr @p_stop, ptr @p_next, ptr @trace_pid_show }, align 4
@show_set_no_pid_seq_ops = internal constant %struct.seq_operations { ptr @np_start, ptr @p_stop, ptr @np_next, ptr @trace_pid_show }, align 4
@.str.56 = private unnamed_addr constant [43 x i8] c"\014Could not create directory for event %s\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@.str.57 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"\014Failed to enable trace event: %s\0A\00", align 1
@show_event_seq_ops = internal constant %struct.seq_operations { ptr @t_start, ptr @t_stop, ptr @t_next, ptr @t_show }, align 4
@.str.59 = private unnamed_addr constant [55 x i8] c"\013%s: module has bad taint, not creating trace events\0A\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"ftrace_event_field\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"trace_event_file\00", align 1
@__start_ftrace_events = external dso_local global [0 x ptr], align 4
@__stop_ftrace_events = external dso_local global [0 x ptr], align 4
@.str.62 = private unnamed_addr constant [46 x i8] c"\014tracing: Failed to allocated generic fields\00", align 1
@.str.63 = private unnamed_addr constant [44 x i8] c"\014tracing: Failed to allocate common fields\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"CPU\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"char *\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"COMM\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"comm\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"common_type\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"common_flags\00", align 1
@.str.74 = private unnamed_addr constant [21 x i8] c"common_preempt_count\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"common_pid\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__initcall__kmod_trace_events__366_3676_event_trace_enable_againearly, ptr @__ksymtab_trace_array_set_clr_event, ptr @__ksymtab_trace_define_field, ptr @__ksymtab_trace_event_buffer_reserve, ptr @__ksymtab_trace_event_ignore_this_pid, ptr @__ksymtab_trace_event_raw_init, ptr @__ksymtab_trace_event_reg, ptr @__ksymtab_trace_get_event_file, ptr @__ksymtab_trace_put_event_file, ptr @__ksymtab_trace_set_clr_event, ptr @__setup_setup_trace_event], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_find_event_field(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.trace_event_class, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.trace_event_class, ptr %4, i32 0, i32 6
  br label %12

10:                                               ; preds = %2
  %11 = tail call ptr %6(ptr noundef %0) #18
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ]
  br label %14

14:                                               ; preds = %18, %12
  %15 = phi ptr [ %13, %12 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ftrace_event_field, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @strcmp(ptr noundef %20, ptr noundef %1) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %14

23:                                               ; preds = %18
  %24 = icmp eq ptr %16, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %23, %14
  br label %26

26:                                               ; preds = %30, %25
  %27 = phi ptr [ %28, %30 ], [ @ftrace_generic_fields, %25 ]
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, @ftrace_generic_fields
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ftrace_event_field, ptr %28, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @strcmp(ptr noundef %32, ptr noundef %1) #18
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %26

35:                                               ; preds = %30
  %36 = icmp eq ptr %28, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %35, %26
  br label %38

38:                                               ; preds = %42, %37
  %39 = phi ptr [ %40, %42 ], [ @ftrace_common_fields, %37 ]
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, @ftrace_common_fields
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.ftrace_event_field, ptr %40, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @strcmp(ptr noundef %44, ptr noundef %1) #18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %38

47:                                               ; preds = %42, %38, %35, %23
  %48 = phi ptr [ %16, %23 ], [ %28, %35 ], [ null, %38 ], [ %40, %42 ]
  ret ptr %48
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_define_field(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef null) #18
  br label %40

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.trace_event_class, ptr %9, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.trace_event_class, ptr %9, i32 0, i32 6
  br label %20

18:                                               ; preds = %12
  %19 = tail call ptr %14(ptr noundef %0) #18
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %19, %18 ], [ %17, %16 ]
  %22 = load ptr, ptr @field_cachep, align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %22, i32 noundef 3520) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.ftrace_event_field, ptr %23, i32 0, i32 1
  store ptr %2, ptr %26, align 8
  %27 = getelementptr inbounds %struct.ftrace_event_field, ptr %23, i32 0, i32 2
  store ptr %1, ptr %27, align 4
  %28 = icmp eq i32 %6, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = tail call i32 @filter_assign_type(ptr noundef %1) #18
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i32 [ %30, %29 ], [ %6, %25 ]
  %33 = getelementptr inbounds %struct.ftrace_event_field, ptr %23, i32 0, i32 3
  store i32 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.ftrace_event_field, ptr %23, i32 0, i32 4
  store i32 %3, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ftrace_event_field, ptr %23, i32 0, i32 5
  store i32 %4, ptr %35, align 8
  %36 = getelementptr inbounds %struct.ftrace_event_field, ptr %23, i32 0, i32 6
  store i32 %5, ptr %36, align 4
  %37 = load ptr, ptr %21, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %23, ptr %38, align 4
  store ptr %37, ptr %23, align 8
  %39 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %21, ptr %39, align 4
  store volatile ptr %23, ptr %21, align 4
  br label %40

40:                                               ; preds = %31, %20, %11
  %41 = phi i32 [ 0, %11 ], [ 0, %31 ], [ -12, %20 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_event_get_offsets(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.trace_event_class, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.trace_event_class, ptr %3, i32 0, i32 6
  br label %11

9:                                                ; preds = %1
  %10 = tail call ptr %5(ptr noundef %0) #18
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %10, %9 ], [ %8, %7 ]
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.ftrace_event_field, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.ftrace_event_field, ptr %13, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %15
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_event_raw_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 3
  %3 = tail call i32 @register_trace_event(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %251, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %251, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 8
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 2
  br label %13

13:                                               ; preds = %211, %9
  %14 = phi i32 [ %212, %211 ], [ 0, %9 ]
  %15 = phi i32 [ %213, %211 ], [ 0, %9 ]
  %16 = phi i32 [ %219, %211 ], [ 0, %9 ]
  %17 = phi i8 [ %215, %211 ], [ 0, %9 ]
  %18 = phi i32 [ %216, %211 ], [ 0, %9 ]
  %19 = phi i1 [ %217, %211 ], [ true, %9 ]
  %20 = phi i64 [ %218, %211 ], [ 0, %9 ]
  %21 = getelementptr i8, ptr %7, i32 %16
  %22 = load i8, ptr %21, align 1
  switch i8 %22, label %211 [
    i8 0, label %220
    i8 92, label %23
    i8 34, label %28
    i8 39, label %28
    i8 37, label %41
    i8 40, label %96
    i8 41, label %100
    i8 44, label %123
  ]

23:                                               ; preds = %13
  %24 = add i32 %16, 1
  %25 = getelementptr i8, ptr %7, i32 %24
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %251, label %211

28:                                               ; preds = %13, %13
  br i1 %19, label %29, label %35

29:                                               ; preds = %28
  %30 = icmp eq i8 %22, 39
  br i1 %30, label %211, label %31

31:                                               ; preds = %29
  %32 = icmp eq i8 %17, 0
  br i1 %32, label %211, label %33

33:                                               ; preds = %31
  %34 = icmp eq i64 %20, 0
  br i1 %34, label %251, label %37

35:                                               ; preds = %28
  %36 = icmp eq i8 %17, 0
  br i1 %36, label %211, label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %15, %35 ], [ 0, %33 ]
  %39 = icmp eq i8 %17, %22
  %40 = select i1 %39, i8 0, i8 %17
  br label %211

41:                                               ; preds = %13
  %42 = icmp ne i8 %17, 0
  %43 = select i1 %19, i1 %42, i1 false
  br i1 %43, label %44, label %211

44:                                               ; preds = %41
  %45 = add i32 %16, 1
  %46 = getelementptr i8, ptr %7, i32 %45
  %47 = load i8, ptr %46, align 1
  switch i8 %47, label %73 [
    i8 0, label %251
    i8 37, label %211
    i8 112, label %48
  ]

48:                                               ; preds = %44
  %49 = add i32 %16, 2
  %50 = getelementptr i8, ptr %7, i32 %49
  %51 = load i8, ptr %50, align 1
  switch i8 %51, label %92 [
    i8 66, label %52
    i8 82, label %52
    i8 114, label %52
    i8 98, label %52
    i8 77, label %52
    i8 109, label %52
    i8 73, label %52
    i8 105, label %52
    i8 69, label %52
    i8 85, label %52
    i8 86, label %52
    i8 78, label %52
    i8 97, label %52
    i8 100, label %52
    i8 68, label %52
    i8 103, label %52
    i8 116, label %52
    i8 67, label %52
    i8 79, label %52
    i8 102, label %52
  ]

52:                                               ; preds = %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48
  %53 = icmp eq i32 %15, 63
  %54 = load i1, ptr @test_event_printk.__already_done, align 1
  %55 = xor i1 %54, true
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %68, !prof !9

57:                                               ; preds = %52
  store i1 true, ptr @test_event_printk.__already_done, align 1
  %58 = load i32, ptr %11, align 4
  %59 = and i32 %58, 16
  %60 = icmp eq i32 %59, 0
  %61 = load ptr, ptr %12, align 4
  br i1 %60, label %66, label %62

62:                                               ; preds = %57
  %63 = icmp eq ptr %61, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %62
  %65 = load ptr, ptr %61, align 4
  br label %66

66:                                               ; preds = %64, %62, %57
  %67 = phi ptr [ %65, %64 ], [ null, %62 ], [ %61, %57 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 332, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %67) #18
  br label %68

68:                                               ; preds = %66, %52
  br i1 %53, label %251, label %69

69:                                               ; preds = %68
  %70 = zext i32 %15 to i64
  %71 = shl nuw i64 1, %70
  %72 = or i64 %20, %71
  br label %92

73:                                               ; preds = %85, %44
  %74 = phi i8 [ %90, %85 ], [ %47, %44 ]
  %75 = phi i32 [ %87, %85 ], [ 0, %44 ]
  %76 = phi i1 [ %86, %85 ], [ false, %44 ]
  %77 = zext i8 %74 to i32
  %78 = add nsw i32 %77, -58
  %79 = icmp ult i32 %78, -10
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  switch i8 %74, label %92 [
    i8 46, label %85
    i8 42, label %81
    i8 115, label %82
  ]

81:                                               ; preds = %80
  br label %85

82:                                               ; preds = %80
  %83 = zext i1 %76 to i32
  %84 = add i32 %15, %83
  br label %92

85:                                               ; preds = %81, %80, %73
  %86 = phi i1 [ %76, %73 ], [ %76, %80 ], [ true, %81 ]
  %87 = add i32 %75, 1
  %88 = add i32 %87, %45
  %89 = getelementptr i8, ptr %7, i32 %88
  %90 = load i8, ptr %89, align 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %73

92:                                               ; preds = %85, %82, %80, %69, %48
  %93 = phi i32 [ %15, %48 ], [ %15, %69 ], [ %84, %82 ], [ %15, %80 ], [ %15, %85 ]
  %94 = phi i64 [ %20, %48 ], [ %72, %69 ], [ %20, %82 ], [ %20, %80 ], [ %20, %85 ]
  %95 = add i32 %93, 1
  br label %211

96:                                               ; preds = %13
  %97 = icmp eq i8 %17, 0
  %98 = zext i1 %97 to i32
  %99 = add i32 %18, %98
  br label %211

100:                                              ; preds = %13
  %101 = icmp eq i8 %17, 0
  br i1 %101, label %102, label %211

102:                                              ; preds = %100
  %103 = add i32 %18, -1
  %104 = icmp slt i32 %103, 0
  %105 = load i1, ptr @test_event_printk.__already_done.8, align 1
  %106 = xor i1 %105, true
  %107 = select i1 %104, i1 %106, i1 false
  br i1 %107, label %108, label %122, !prof !9

108:                                              ; preds = %102
  store i1 true, ptr @test_event_printk.__already_done.8, align 1
  %109 = load i32, ptr %11, align 4
  %110 = and i32 %109, 16
  %111 = icmp eq i32 %110, 0
  %112 = load ptr, ptr %12, align 4
  br i1 %111, label %117, label %113

113:                                              ; preds = %108
  %114 = icmp eq ptr %112, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %113
  %116 = load ptr, ptr %112, align 4
  br label %117

117:                                              ; preds = %115, %113, %108
  %118 = phi ptr [ %116, %115 ], [ null, %113 ], [ %112, %108 ]
  %119 = getelementptr i8, ptr %7, i32 %14
  %120 = sub i32 5, %14
  %121 = add i32 %120, %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 374, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %118, ptr noundef %119, i32 noundef %121, ptr noundef nonnull @.str.10) #18
  br label %122

122:                                              ; preds = %117, %102
  br i1 %104, label %251, label %211

123:                                              ; preds = %13
  %124 = icmp ne i8 %17, 0
  %125 = icmp ne i32 %18, 0
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %211, label %127

127:                                              ; preds = %127, %123
  %128 = phi i32 [ %129, %127 ], [ %16, %123 ]
  %129 = add i32 %128, 1
  %130 = getelementptr i8, ptr %7, i32 %129
  %131 = load i8, ptr %130, align 1
  %132 = zext i8 %131 to i32
  %133 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %132
  %134 = load i8, ptr %133, align 1
  %135 = and i8 %134, 32
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %127

137:                                              ; preds = %127
  %138 = getelementptr i8, ptr %7, i32 %129
  %139 = zext i32 %15 to i64
  %140 = shl nuw i64 1, %139
  %141 = and i64 %20, %140
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %208, label %143

143:                                              ; preds = %137
  %144 = tail call ptr @strstr(ptr noundef %138, ptr noundef nonnull @.str.11) #18
  %145 = icmp eq ptr %144, null
  br i1 %145, label %208, label %146

146:                                              ; preds = %143
  %147 = tail call ptr @strchr(ptr noundef %138, i32 noundef 44) #18
  %148 = icmp eq ptr %147, null
  %149 = icmp ult ptr %144, %147
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %151, label %208

151:                                              ; preds = %146
  %152 = tail call ptr @strchr(ptr noundef %138, i32 noundef 38) #18
  %153 = icmp ne ptr %152, null
  %154 = icmp ult ptr %152, %144
  %155 = select i1 %153, i1 %154, i1 false
  br i1 %155, label %205, label %156

156:                                              ; preds = %151
  %157 = load ptr, ptr %10, align 4
  %158 = getelementptr inbounds %struct.trace_event_class, ptr %157, i32 0, i32 4
  %159 = load ptr, ptr %158, align 4
  %160 = tail call i32 @strncmp(ptr noundef nonnull %144, ptr noundef nonnull dereferenceable(6) @.str.11, i32 noundef 5) #18
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %208

162:                                              ; preds = %156
  %163 = getelementptr i8, ptr %144, i32 5
  %164 = load i8, ptr %163, align 1
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %180, label %166

166:                                              ; preds = %176, %162
  %167 = phi i8 [ %178, %176 ], [ %164, %162 ]
  %168 = phi ptr [ %177, %176 ], [ %163, %162 ]
  %169 = zext i8 %167 to i32
  %170 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %169
  %171 = load i8, ptr %170, align 1
  %172 = and i8 %171, 7
  %173 = icmp ne i8 %172, 0
  %174 = icmp eq i8 %167, 95
  %175 = select i1 %173, i1 true, i1 %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %166
  %177 = getelementptr i8, ptr %168, i32 1
  %178 = load i8, ptr %177, align 1
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %166

180:                                              ; preds = %176, %166, %162
  %181 = phi ptr [ %163, %162 ], [ %168, %166 ], [ %177, %176 ]
  %182 = ptrtoint ptr %181 to i32
  %183 = ptrtoint ptr %163 to i32
  %184 = sub i32 %182, %183
  %185 = load ptr, ptr %159, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %208, label %187

187:                                              ; preds = %198, %180
  %188 = phi ptr [ %200, %198 ], [ %185, %180 ]
  %189 = phi ptr [ %199, %198 ], [ %159, %180 ]
  %190 = getelementptr inbounds %struct.trace_event_fields, ptr %189, i32 0, i32 1
  %191 = load ptr, ptr %190, align 4
  %192 = tail call i32 @strncmp(ptr noundef %191, ptr noundef %163, i32 noundef %184) #18
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = getelementptr i8, ptr %191, i32 %184
  %196 = load i8, ptr %195, align 1
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %194, %187
  %199 = getelementptr %struct.trace_event_fields, ptr %189, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %208, label %187

202:                                              ; preds = %194
  %203 = tail call ptr @strchr(ptr noundef nonnull %188, i32 noundef 91) #18
  %204 = icmp eq ptr %203, null
  br i1 %204, label %208, label %205

205:                                              ; preds = %202, %151
  %206 = xor i64 %140, -1
  %207 = and i64 %20, %206
  br label %208

208:                                              ; preds = %205, %202, %198, %180, %156, %146, %143, %137
  %209 = phi i64 [ %207, %205 ], [ %20, %202 ], [ %20, %143 ], [ %20, %137 ], [ %20, %146 ], [ %20, %156 ], [ %20, %180 ], [ %20, %198 ]
  %210 = add i32 %15, 1
  br label %211

211:                                              ; preds = %208, %123, %122, %100, %96, %92, %44, %41, %37, %35, %31, %29, %23, %13
  %212 = phi i32 [ %14, %123 ], [ %129, %208 ], [ %14, %100 ], [ %14, %122 ], [ %14, %92 ], [ %14, %41 ], [ %14, %29 ], [ %14, %37 ], [ %14, %23 ], [ %14, %13 ], [ %14, %44 ], [ %14, %96 ], [ %14, %35 ], [ %14, %31 ]
  %213 = phi i32 [ %15, %123 ], [ %210, %208 ], [ %15, %100 ], [ %15, %122 ], [ %95, %92 ], [ %15, %41 ], [ %15, %29 ], [ %38, %37 ], [ %15, %23 ], [ %15, %13 ], [ %15, %44 ], [ %15, %96 ], [ %15, %35 ], [ %15, %31 ]
  %214 = phi i32 [ %16, %123 ], [ %128, %208 ], [ %16, %100 ], [ %16, %122 ], [ %45, %92 ], [ %16, %41 ], [ %16, %29 ], [ %16, %37 ], [ %24, %23 ], [ %16, %13 ], [ %45, %44 ], [ %16, %96 ], [ %16, %35 ], [ %16, %31 ]
  %215 = phi i8 [ %17, %123 ], [ 0, %208 ], [ %17, %100 ], [ 0, %122 ], [ %17, %92 ], [ %17, %41 ], [ %17, %29 ], [ %40, %37 ], [ %17, %23 ], [ %17, %13 ], [ %17, %44 ], [ %17, %96 ], [ %22, %35 ], [ %22, %31 ]
  %216 = phi i32 [ %18, %123 ], [ 0, %208 ], [ %18, %100 ], [ %103, %122 ], [ %18, %92 ], [ %18, %41 ], [ %18, %29 ], [ %18, %37 ], [ %18, %23 ], [ %18, %13 ], [ %18, %44 ], [ %99, %96 ], [ %18, %35 ], [ %18, %31 ]
  %217 = phi i1 [ %19, %123 ], [ %19, %208 ], [ %19, %100 ], [ %19, %122 ], [ true, %92 ], [ %19, %41 ], [ true, %29 ], [ false, %37 ], [ %19, %23 ], [ %19, %13 ], [ true, %44 ], [ %19, %96 ], [ false, %35 ], [ true, %31 ]
  %218 = phi i64 [ %20, %123 ], [ %209, %208 ], [ %20, %100 ], [ %20, %122 ], [ %94, %92 ], [ %20, %41 ], [ %20, %29 ], [ %20, %37 ], [ %20, %23 ], [ %20, %13 ], [ %20, %44 ], [ %20, %96 ], [ %20, %35 ], [ %20, %31 ]
  %219 = add i32 %214, 1
  br label %13

220:                                              ; preds = %13
  %221 = icmp ne i64 %20, 0
  %222 = load i1, ptr @test_event_printk.__already_done.12, align 1
  %223 = xor i1 %222, true
  %224 = select i1 %221, i1 %223, i1 false
  br i1 %224, label %225, label %226, !prof !9

225:                                              ; preds = %220
  store i1 true, ptr @test_event_printk.__already_done.12, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 417, i32 noundef 9, ptr noundef null) #18
  br label %226

226:                                              ; preds = %225, %220
  br i1 %221, label %227, label %251

227:                                              ; preds = %226
  %228 = and i64 %20, 1
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %230, %227
  %231 = phi i64 [ %233, %230 ], [ %20, %227 ]
  %232 = phi i32 [ %234, %230 ], [ 1, %227 ]
  %233 = lshr i64 %231, 1
  %234 = add i32 %232, 1
  %235 = and i64 %231, 2
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %230, label %237

237:                                              ; preds = %230, %227
  %238 = phi i32 [ 1, %227 ], [ %234, %230 ]
  %239 = load i32, ptr %11, align 4
  %240 = and i32 %239, 16
  %241 = icmp eq i32 %240, 0
  %242 = load ptr, ptr %12, align 4
  br i1 %241, label %247, label %243

243:                                              ; preds = %237
  %244 = icmp eq ptr %242, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %243
  %246 = load ptr, ptr %242, align 4
  br label %247

247:                                              ; preds = %245, %243, %237
  %248 = phi ptr [ %246, %245 ], [ null, %243 ], [ %242, %237 ]
  %249 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %248, i32 noundef %238) #19
  %250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull %7) #19
  br label %251

251:                                              ; preds = %247, %226, %122, %68, %44, %33, %23, %5, %1
  %252 = phi i32 [ -19, %1 ], [ 0, %5 ], [ 0, %226 ], [ 0, %247 ], [ 0, %23 ], [ 0, %33 ], [ 0, %44 ], [ 0, %68 ], [ 0, %122 ]
  ret i32 %252
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_trace_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @trace_event_ignore_this_pid(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 3
  %5 = load volatile ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp ne ptr %5, null
  %9 = icmp ne ptr %7, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.trace_array, ptr %3, i32 0, i32 2, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #8, !srcloc !10
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_array_cpu, ptr %19, i32 0, i32 15
  %21 = load i8, ptr %20, align 8, !range !11
  %22 = icmp ne i8 %21, 0
  br label %23

23:                                               ; preds = %11, %1
  %24 = phi i1 [ %22, %11 ], [ false, %1 ]
  ret i1 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_event_buffer_reserve(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 512
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_array, ptr %12, i32 0, i32 3
  %14 = load volatile ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.trace_array, ptr %12, i32 0, i32 4
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp ne ptr %14, null
  %18 = icmp ne ptr %16, null
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.trace_array, ptr %12, i32 0, i32 2, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #8, !srcloc !10
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.trace_array_cpu, ptr %28, i32 0, i32 15
  %30 = load i8, ptr %29, align 8, !range !11
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %20, %10, %3
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !12
  %34 = lshr i32 %33, 7
  %35 = and i32 %34, 1
  %36 = tail call i32 @tracing_gen_ctx_irq_test(i32 noundef %35) #18
  %37 = getelementptr inbounds %struct.trace_event_buffer, ptr %0, i32 0, i32 4
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_buffer, ptr %0, i32 0, i32 2
  store ptr %1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_call, ptr %5, i32 0, i32 3, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = tail call ptr @trace_event_buffer_lock_reserve(ptr noundef %0, ptr noundef %1, i32 noundef %40, i32 noundef %2, i32 noundef %36) #18
  %42 = getelementptr inbounds %struct.trace_event_buffer, ptr %0, i32 0, i32 1
  store ptr %41, ptr %42, align 4
  %43 = icmp eq ptr %41, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.trace_event_buffer, ptr %0, i32 0, i32 5
  store ptr null, ptr %45, align 4
  %46 = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %41) #18
  %47 = getelementptr inbounds %struct.trace_event_buffer, ptr %0, i32 0, i32 3
  store ptr %46, ptr %47, align 4
  br label %48

48:                                               ; preds = %44, %32, %20
  %49 = phi ptr [ %46, %44 ], [ null, %20 ], [ null, %32 ]
  ret ptr %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_lock_reserve(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_event_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_event_reg(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 499, i32 noundef 9, ptr noundef null) #18
  br label %9

9:                                                ; preds = %8, %3
  switch i32 %1, label %42 [
    i32 0, label %10
    i32 1, label %18
    i32 2, label %26
    i32 3, label %34
  ]

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_class, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @tracepoint_probe_register(ptr noundef %12, ptr noundef %16, ptr noundef %2) #18
  br label %42

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_class, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @tracepoint_probe_unregister(ptr noundef %20, ptr noundef %24, ptr noundef %2) #18
  br label %42

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.trace_event_class, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @tracepoint_probe_register(ptr noundef %28, ptr noundef %32, ptr noundef %0) #18
  br label %42

34:                                               ; preds = %9
  %35 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_class, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @tracepoint_probe_unregister(ptr noundef %36, ptr noundef %40, ptr noundef %0) #18
  br label %42

42:                                               ; preds = %34, %26, %18, %10, %9
  %43 = phi i32 [ 0, %34 ], [ %33, %26 ], [ 0, %18 ], [ %17, %10 ], [ 0, %9 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_unregister(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_event_enable_cmd_record(i1 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @ftrace_trace_arrays, align 4
  %3 = icmp eq ptr %2, @ftrace_trace_arrays
  br i1 %3, label %24, label %7

4:                                                ; preds = %21, %7
  %5 = load ptr, ptr %8, align 4
  %6 = icmp eq ptr %5, @ftrace_trace_arrays
  br i1 %6, label %24, label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %9 = getelementptr inbounds %struct.trace_array, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %4, label %12

12:                                               ; preds = %21, %7
  %13 = phi ptr [ %22, %21 ], [ %10, %7 ]
  %14 = getelementptr inbounds %struct.trace_event_file, ptr %13, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  br i1 %0, label %19, label %20

19:                                               ; preds = %18
  tail call void @tracing_start_cmdline_record() #18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %14) #18
  br label %21

20:                                               ; preds = %18
  tail call void @tracing_stop_cmdline_record() #18
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %14) #18
  br label %21

21:                                               ; preds = %20, %19, %12
  %22 = load ptr, ptr %13, align 4
  %23 = icmp eq ptr %22, %9
  br i1 %23, label %4, label %12

24:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_start_cmdline_record() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_stop_cmdline_record() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_event_enable_tgid_record(i1 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @ftrace_trace_arrays, align 4
  %3 = icmp eq ptr %2, @ftrace_trace_arrays
  br i1 %3, label %24, label %7

4:                                                ; preds = %21, %7
  %5 = load ptr, ptr %8, align 4
  %6 = icmp eq ptr %5, @ftrace_trace_arrays
  br i1 %6, label %24, label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %5, %4 ], [ %2, %1 ]
  %9 = getelementptr inbounds %struct.trace_array, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %4, label %12

12:                                               ; preds = %21, %7
  %13 = phi ptr [ %22, %21 ], [ %10, %7 ]
  %14 = getelementptr inbounds %struct.trace_event_file, ptr %13, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  br i1 %0, label %19, label %20

19:                                               ; preds = %18
  tail call void @tracing_start_tgid_record() #18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %14) #18
  br label %21

20:                                               ; preds = %18
  tail call void @tracing_stop_tgid_record() #18
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %14) #18
  br label %21

21:                                               ; preds = %20, %19, %12
  %22 = load ptr, ptr %13, align 4
  %23 = icmp eq ptr %22, %9
  br i1 %23, label %4, label %12

24:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_start_tgid_record() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_stop_tgid_record() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_event_enable_disable(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @__ftrace_event_enable_disable(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ftrace_event_enable_disable(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  switch i32 %1, label %108 [
    i32 0, label %10
    i32 1, label %54
  ]

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #18, !srcloc !14
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #18, !srcloc !15
  %15 = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !16
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %108, label %17

17:                                               ; preds = %12
  %18 = load i32, ptr %8, align 4
  %19 = and i32 %18, 64
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %8) #18
  br label %24

20:                                               ; preds = %10
  %21 = lshr i32 %9, 5
  %22 = and i32 %21, 1
  %23 = xor i32 %22, 1
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i32 [ %19, %17 ], [ %23, %20 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %8, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %27
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %8) #18
  %32 = load i32, ptr %8, align 4
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  tail call void @tracing_stop_cmdline_record() #18
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %8) #18
  %36 = load i32, ptr %8, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %36, %35 ], [ %32, %31 ]
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @tracing_stop_tgid_record() #18
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %8) #18
  br label %42

42:                                               ; preds = %41, %37
  %43 = getelementptr inbounds %struct.trace_event_call, ptr %5, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_event_class, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 %46(ptr noundef %5, i32 noundef 1, ptr noundef %0) #18
  br label %48

48:                                               ; preds = %42, %27, %24
  %49 = load i32, ptr %8, align 4
  %50 = and i32 %49, 32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @_set_bit(i32 noundef 6, ptr noundef %8) #18
  br label %108

53:                                               ; preds = %48
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %8) #18
  br label %108

54:                                               ; preds = %3
  %55 = icmp eq i32 %2, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %57) #18, !srcloc !14
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 1, ptr elementtype(i32) %57) #18, !srcloc !18
  %59 = extractvalue { i32, i32 } %58, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !19
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %108, label %65

61:                                               ; preds = %54
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %8) #18
  %62 = load i32, ptr %8, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %108

65:                                               ; preds = %56
  tail call void @_set_bit(i32 noundef 5, ptr noundef %8) #18
  %66 = load i32, ptr %8, align 4
  %67 = and i32 %66, 1
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %108

69:                                               ; preds = %65
  tail call void @_set_bit(i32 noundef 6, ptr noundef %8) #18
  br label %70

70:                                               ; preds = %69, %61
  %71 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 14
  %72 = load i32, ptr %71, align 4
  %73 = and i32 %72, 32768
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  tail call void @tracing_start_cmdline_record() #18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %8) #18
  %76 = load i32, ptr %71, align 4
  br label %77

77:                                               ; preds = %75, %70
  %78 = phi i32 [ %76, %75 ], [ %72, %70 ]
  %79 = and i32 %78, 65536
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void @tracing_start_tgid_record() #18
  tail call void @_set_bit(i32 noundef 2, ptr noundef %8) #18
  br label %82

82:                                               ; preds = %81, %77
  %83 = getelementptr inbounds %struct.trace_event_call, ptr %5, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.trace_event_class, ptr %84, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = tail call i32 %86(ptr noundef %5, i32 noundef 0, ptr noundef %0) #18
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %82
  br i1 %74, label %91, label %90

90:                                               ; preds = %89
  tail call void @tracing_stop_cmdline_record() #18
  br label %91

91:                                               ; preds = %90, %89
  br i1 %80, label %93, label %92

92:                                               ; preds = %91
  tail call void @tracing_stop_tgid_record() #18
  br label %93

93:                                               ; preds = %92, %91
  %94 = getelementptr inbounds %struct.trace_event_call, ptr %5, i32 0, i32 8
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, 16
  %97 = icmp eq i32 %96, 0
  %98 = getelementptr inbounds %struct.trace_event_call, ptr %5, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  br i1 %97, label %104, label %100

100:                                              ; preds = %93
  %101 = icmp eq ptr %99, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %100
  %103 = load ptr, ptr %99, align 4
  br label %104

104:                                              ; preds = %102, %100, %93
  %105 = phi ptr [ %103, %102 ], [ null, %100 ], [ %99, %93 ]
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %105) #19
  br label %108

107:                                              ; preds = %82
  tail call void @_set_bit(i32 noundef 0, ptr noundef %8) #18
  tail call void @_set_bit(i32 noundef 10, ptr noundef %8) #18
  br label %108

108:                                              ; preds = %107, %104, %65, %61, %56, %53, %52, %12, %3
  %109 = phi i32 [ 0, %3 ], [ 0, %56 ], [ 0, %61 ], [ 0, %12 ], [ 0, %52 ], [ 0, %53 ], [ 0, %107 ], [ %87, %104 ], [ 0, %65 ]
  %110 = and i32 %9, 64
  %111 = load i32, ptr %8, align 4
  %112 = and i32 %111, 64
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  %115 = icmp eq i32 %112, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %114
  tail call void @trace_buffered_event_enable() #18
  br label %118

117:                                              ; preds = %114
  tail call void @trace_buffered_event_disable() #18
  br label %118

118:                                              ; preds = %117, %116, %108
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_event_follow_fork(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  br i1 %1, label %3, label %6

3:                                                ; preds = %2
  %4 = tail call i32 @tracepoint_probe_register_prio(ptr noundef nonnull @__tracepoint_sched_process_fork, ptr noundef nonnull @event_filter_pid_sched_process_fork, ptr noundef %0, i32 noundef -2147483648) #18
  %5 = tail call i32 @tracepoint_probe_register_prio(ptr noundef nonnull @__tracepoint_sched_process_free, ptr noundef nonnull @event_filter_pid_sched_process_exit, ptr noundef %0, i32 noundef 2147483647) #18
  br label %9

6:                                                ; preds = %2
  %7 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_process_fork, ptr noundef nonnull @event_filter_pid_sched_process_fork, ptr noundef %0) #18
  %8 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_process_free, ptr noundef nonnull @event_filter_pid_sched_process_exit, ptr noundef %0) #18
  br label %9

9:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @event_filter_pid_sched_process_fork(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 3
  %5 = load volatile ptr, ptr %4, align 8
  tail call void @trace_filter_add_remove_task(ptr noundef %5, ptr noundef %1, ptr noundef %2) #18
  %6 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  tail call void @trace_filter_add_remove_task(ptr noundef %7, ptr noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @event_filter_pid_sched_process_exit(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 3
  %4 = load volatile ptr, ptr %3, align 8
  tail call void @trace_filter_add_remove_task(ptr noundef %4, ptr noundef null, ptr noundef %1) #18
  %5 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 4
  %6 = load volatile ptr, ptr %5, align 4
  tail call void @trace_filter_add_remove_task(ptr noundef %6, ptr noundef null, ptr noundef %1) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ftrace_set_clr_event(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  store ptr %1, ptr %4, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %3
  %7 = call ptr @strsep(ptr noundef nonnull %4, ptr noundef nonnull @.str.1) #18
  %8 = load ptr, ptr %4, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr %7, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(2) @.str.2)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi ptr [ null, %16 ], [ %7, %13 ]
  %19 = load i8, ptr %8, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = call i32 @strcmp(ptr noundef nonnull %8, ptr noundef nonnull dereferenceable(2) @.str.2)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %17
  br label %25

25:                                               ; preds = %24, %21, %6
  %26 = phi ptr [ null, %24 ], [ %8, %21 ], [ null, %6 ]
  %27 = phi ptr [ %18, %24 ], [ %18, %21 ], [ null, %6 ]
  %28 = phi ptr [ null, %24 ], [ null, %21 ], [ %7, %6 ]
  call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %29 = call fastcc i32 @__ftrace_set_clr_event_nolock(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %27, ptr noundef %26, i32 noundef %2) #18
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  %30 = load ptr, ptr %4, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = getelementptr i8, ptr %30, i32 -1
  store i8 58, ptr %33, align 1
  br label %34

34:                                               ; preds = %32, %25, %3
  %35 = phi i32 [ -2, %3 ], [ %29, %32 ], [ %29, %25 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_set_clr_event(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr @ftrace_trace_arrays, align 4
  %5 = icmp eq ptr %4, @ftrace_trace_arrays
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ftrace_trace_arrays, i32 0, i32 1), align 4
  %8 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 16
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 419, i32 noundef 9, ptr noundef null) #18
  br label %13

13:                                               ; preds = %12, %6
  %14 = icmp eq ptr %7, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %16 = tail call fastcc i32 @__ftrace_set_clr_event_nolock(ptr noundef nonnull %7, ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2) #18
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  br label %17

17:                                               ; preds = %15, %13, %3
  %18 = phi i32 [ %16, %15 ], [ -19, %13 ], [ -19, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_array_set_clr_event(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = zext i1 %3 to i32
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %8 = tail call fastcc i32 @__ftrace_set_clr_event_nolock(ptr noundef nonnull %0, ptr noundef null, ptr noundef %1, ptr noundef %2, i32 noundef %7) #18
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi i32 [ %8, %6 ], [ -2, %4 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_event_eval_update(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @down_write(ptr noundef nonnull @trace_event_sem) #18
  %3 = load ptr, ptr @ftrace_events, align 4
  %4 = icmp eq ptr %3, @ftrace_events
  br i1 %4, label %155, label %9

5:                                                ; preds = %147, %9
  %6 = phi i32 [ %22, %9 ], [ %148, %147 ]
  %7 = phi i1 [ %24, %9 ], [ %149, %147 ]
  %8 = icmp eq ptr %14, @ftrace_events
  br i1 %8, label %155, label %9

9:                                                ; preds = %5, %2
  %10 = phi ptr [ %14, %5 ], [ %3, %2 ]
  %11 = phi ptr [ %21, %5 ], [ null, %2 ]
  %12 = phi i1 [ %7, %5 ], [ false, %2 ]
  %13 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %14 = load ptr, ptr %10, align 4
  %15 = icmp ne ptr %11, null
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %10, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %11
  %20 = select i1 %15, i1 %19, i1 false
  %21 = select i1 %20, ptr %11, ptr %18
  %22 = select i1 %20, i32 %13, i32 0
  %23 = xor i1 %20, true
  %24 = select i1 %23, i1 true, i1 %12
  %25 = icmp slt i32 %22, %1
  br i1 %25, label %26, label %5

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.trace_event_call, ptr %10, i32 0, i32 1
  %28 = getelementptr inbounds %struct.trace_event_call, ptr %10, i32 0, i32 4
  br label %29

29:                                               ; preds = %152, %26
  %30 = phi ptr [ %21, %26 ], [ %154, %152 ]
  %31 = phi i1 [ %24, %26 ], [ %149, %152 ]
  %32 = phi i32 [ %22, %26 ], [ %148, %152 ]
  %33 = phi i32 [ %22, %26 ], [ %150, %152 ]
  %34 = getelementptr ptr, ptr %0, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %30, %36
  br i1 %37, label %38, label %147

38:                                               ; preds = %29
  %39 = select i1 %31, i32 %33, i32 %32
  %40 = getelementptr inbounds %struct.trace_eval_map, ptr %35, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @strlen(ptr noundef %41) #18
  %43 = load ptr, ptr %28, align 4
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %147, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.trace_eval_map, ptr %35, i32 0, i32 2
  br label %48

48:                                               ; preds = %141, %46
  %49 = phi i8 [ %44, %46 ], [ %145, %141 ]
  %50 = phi ptr [ %43, %46 ], [ %144, %141 ]
  %51 = phi i32 [ 0, %46 ], [ %142, %141 ]
  %52 = zext i8 %49 to i32
  switch i8 %49, label %59 [
    i8 92, label %53
    i8 34, label %57
  ]

53:                                               ; preds = %48
  %54 = getelementptr i8, ptr %50, i32 1
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %147, label %141

57:                                               ; preds = %48
  %58 = xor i32 %51, 1
  br label %141

59:                                               ; preds = %48
  %60 = icmp eq i32 %51, 0
  br i1 %60, label %61, label %141

61:                                               ; preds = %59
  %62 = add nsw i32 %52, -58
  %63 = icmp ult i32 %62, -10
  br i1 %63, label %75, label %64

64:                                               ; preds = %64, %61
  %65 = phi ptr [ %66, %64 ], [ %50, %61 ]
  %66 = getelementptr i8, ptr %65, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %68
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, 7
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %64

73:                                               ; preds = %64
  %74 = icmp eq i8 %67, 0
  br i1 %74, label %147, label %141

75:                                               ; preds = %61
  %76 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %52
  %77 = load i8, ptr %76, align 1
  %78 = and i8 %77, 3
  %79 = icmp ne i8 %78, 0
  %80 = icmp eq i8 %49, 95
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %82, label %141

82:                                               ; preds = %75
  %83 = load ptr, ptr %40, align 4
  %84 = tail call i32 @strncmp(ptr noundef %83, ptr noundef %50, i32 noundef %42) #18
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = getelementptr i8, ptr %50, i32 %42
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %89
  %91 = load i8, ptr %90, align 1
  %92 = and i8 %91, 7
  %93 = icmp ne i8 %92, 0
  %94 = icmp eq i8 %88, 95
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %86, %82
  br label %117

97:                                               ; preds = %86
  %98 = load i32, ptr %47, align 4
  %99 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %50, i32 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %98) #18
  %100 = icmp sgt i32 %99, %42
  br i1 %100, label %109, label %101

101:                                              ; preds = %97
  %102 = add i32 %99, 1
  %103 = load i32, ptr %47, align 4
  %104 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %50, i32 noundef %102, ptr noundef nonnull @.str.17, i32 noundef %103) #18
  %105 = tail call i32 @strlen(ptr noundef %87) #18
  %106 = getelementptr i8, ptr %50, i32 %99
  tail call void @llvm.memmove.p0.p0.i32(ptr align 1 %106, ptr align 1 %87, i32 %105, i1 false) #18
  %107 = add i32 %105, %99
  %108 = getelementptr i8, ptr %50, i32 %107
  store i8 0, ptr %108, align 1
  br label %109

109:                                              ; preds = %101, %97
  %110 = phi ptr [ %106, %101 ], [ null, %97 ]
  %111 = icmp eq ptr %110, null
  %112 = load i1, ptr @update_event_printk.__already_done, align 1
  %113 = xor i1 %112, true
  %114 = select i1 %111, i1 %113, i1 false
  br i1 %114, label %115, label %116, !prof !9

115:                                              ; preds = %109
  store i1 true, ptr @update_event_printk.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2600, i32 noundef 9, ptr noundef null) #18
  br label %116

116:                                              ; preds = %115, %109
  br i1 %111, label %147, label %141

117:                                              ; preds = %128, %96
  %118 = phi ptr [ %50, %96 ], [ %129, %128 ]
  %119 = getelementptr i8, ptr %118, i32 1
  %120 = load i8, ptr %119, align 1
  %121 = zext i8 %120 to i32
  %122 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %121
  %123 = load i8, ptr %122, align 1
  %124 = and i8 %123, 7
  %125 = icmp ne i8 %124, 0
  %126 = icmp eq i8 %120, 95
  %127 = select i1 %125, i1 true, i1 %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %135, %117
  %129 = phi ptr [ %119, %117 ], [ %138, %135 ]
  br label %117

130:                                              ; preds = %117
  switch i8 %120, label %141 [
    i8 0, label %147
    i8 46, label %135
    i8 45, label %131
  ]

131:                                              ; preds = %130
  %132 = getelementptr i8, ptr %118, i32 2
  %133 = load i8, ptr %132, align 1
  %134 = icmp eq i8 %133, 62
  br i1 %134, label %135, label %141

135:                                              ; preds = %131, %130
  %136 = icmp eq i8 %120, 46
  %137 = select i1 %136, i32 1, i32 2
  %138 = getelementptr i8, ptr %119, i32 %137
  %139 = load i8, ptr %138, align 1
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %147, label %128

141:                                              ; preds = %131, %130, %116, %75, %73, %59, %57, %53
  %142 = phi i32 [ %51, %53 ], [ %58, %57 ], [ %51, %59 ], [ 0, %73 ], [ 0, %116 ], [ 0, %75 ], [ 0, %130 ], [ 0, %131 ]
  %143 = phi ptr [ %54, %53 ], [ %50, %57 ], [ %50, %59 ], [ %66, %73 ], [ %110, %116 ], [ %50, %75 ], [ %119, %130 ], [ %119, %131 ]
  %144 = getelementptr i8, ptr %143, i32 1
  %145 = load i8, ptr %144, align 1
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %48

147:                                              ; preds = %141, %135, %130, %116, %73, %53, %38, %29
  %148 = phi i32 [ %32, %29 ], [ %39, %38 ], [ %39, %130 ], [ %39, %135 ], [ %39, %53 ], [ %39, %73 ], [ %39, %116 ], [ %39, %141 ]
  %149 = phi i1 [ %31, %29 ], [ false, %38 ], [ false, %130 ], [ false, %135 ], [ false, %53 ], [ false, %73 ], [ false, %116 ], [ false, %141 ]
  %150 = add nsw i32 %33, 1
  %151 = icmp eq i32 %150, %1
  br i1 %151, label %5, label %152

152:                                              ; preds = %147
  %153 = load ptr, ptr %27, align 4
  %154 = load ptr, ptr %153, align 4
  br label %29

155:                                              ; preds = %5, %2
  tail call void @up_write(ptr noundef nonnull @trace_event_sem) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_add_event_call(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #18
  %2 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  br i1 %5, label %12, label %8

8:                                                ; preds = %1
  %9 = icmp eq ptr %7, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %7, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi ptr [ %11, %10 ], [ %7, %1 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %12, %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2508, i32 noundef 9, ptr noundef null) #18
  br label %48

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_class, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = tail call i32 %20(ptr noundef %0) #18
  %24 = icmp slt i32 %23, 0
  %25 = icmp ne i32 %23, -38
  %26 = and i1 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %13) #19
  br label %48

29:                                               ; preds = %22
  br i1 %24, label %48, label %30

30:                                               ; preds = %29, %16
  %31 = load ptr, ptr @ftrace_events, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %0, ptr %32, align 4
  store ptr %31, ptr %0, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr @ftrace_events, ptr %33, align 4
  store volatile ptr %0, ptr @ftrace_events, align 4
  %34 = load i32, ptr %2, align 4
  %35 = and i32 %34, 32
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 6
  br i1 %36, label %39, label %38

38:                                               ; preds = %30
  store volatile i32 0, ptr %37, align 4
  br label %40

39:                                               ; preds = %30
  store ptr null, ptr %37, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load ptr, ptr @ftrace_trace_arrays, align 4
  %42 = icmp eq ptr %41, @ftrace_trace_arrays
  br i1 %42, label %48, label %43

43:                                               ; preds = %43, %40
  %44 = phi ptr [ %46, %43 ], [ %41, %40 ]
  %45 = tail call fastcc i32 @__trace_add_new_event(ptr noundef %0, ptr noundef %44) #18
  %46 = load ptr, ptr %44, align 4
  %47 = icmp eq ptr %46, @ftrace_trace_arrays
  br i1 %47, label %48, label %43

48:                                               ; preds = %43, %40, %29, %27, %15
  %49 = phi i32 [ 0, %40 ], [ -22, %15 ], [ %23, %27 ], [ %23, %29 ], [ 0, %43 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #18
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_remove_event_call(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #18
  tail call void @down_write(ptr noundef nonnull @trace_event_sem) #18
  %2 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = load ptr, ptr @ftrace_trace_arrays, align 4
  %7 = icmp eq ptr %6, @ftrace_trace_arrays
  br i1 %7, label %27, label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %25, %24 ], [ %6, %5 ]
  %10 = getelementptr inbounds %struct.trace_array, ptr %9, i32 0, i32 25
  br label %11

11:                                               ; preds = %15, %8
  %12 = phi ptr [ %10, %8 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %10
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.trace_event_file, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %19, label %11

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.trace_event_file, ptr %13, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19, %11
  %25 = load ptr, ptr %9, align 4
  %26 = icmp eq ptr %25, @ftrace_trace_arrays
  br i1 %26, label %27, label %8

27:                                               ; preds = %24, %5
  tail call fastcc void @__trace_remove_event_call(ptr noundef %0) #18
  br label %28

28:                                               ; preds = %27, %19, %1
  %29 = phi i32 [ 0, %27 ], [ -16, %1 ], [ -16, %19 ]
  tail call void @up_write(ptr noundef nonnull @trace_event_sem) #18
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #18
  ret i32 %29
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @__find_event_file(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %38, label %7

7:                                                ; preds = %35, %3
  %8 = phi ptr [ %36, %35 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %10, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %10, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  br i1 %14, label %21, label %17

17:                                               ; preds = %7
  %18 = icmp eq ptr %16, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %16, align 4
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi ptr [ %20, %19 ], [ %16, %7 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.trace_event_call, ptr %10, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull %22)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load ptr, ptr %26, align 4
  %33 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %28, %24, %21, %17
  %36 = load ptr, ptr %8, align 4
  %37 = icmp eq ptr %36, %4
  br i1 %37, label %38, label %7

38:                                               ; preds = %35, %31, %3
  %39 = phi ptr [ null, %3 ], [ null, %35 ], [ %8, %31 ]
  ret ptr %39
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @find_event_file(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %48, label %7

7:                                                ; preds = %35, %3
  %8 = phi ptr [ %36, %35 ], [ %5, %3 ]
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %10, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %10, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  br i1 %14, label %21, label %17

17:                                               ; preds = %7
  %18 = icmp eq ptr %16, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %16, align 4
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi ptr [ %20, %19 ], [ %16, %7 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.trace_event_call, ptr %10, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull %22) #18
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load ptr, ptr %26, align 4
  %33 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %32) #18
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %28, %24, %21, %17
  %36 = load ptr, ptr %8, align 4
  %37 = icmp eq ptr %36, %4
  br i1 %37, label %48, label %7

38:                                               ; preds = %31
  %39 = icmp eq ptr %8, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.trace_event_class, ptr %26, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = and i32 %12, 8
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr %8, ptr null
  br label %48

48:                                               ; preds = %44, %40, %38, %35, %3
  %49 = phi ptr [ null, %40 ], [ null, %38 ], [ %47, %44 ], [ null, %3 ], [ null, %35 ]
  ret ptr %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @trace_get_event_file(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load volatile ptr, ptr @ftrace_trace_arrays, align 4
  %5 = icmp eq ptr %4, @ftrace_trace_arrays
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ftrace_trace_arrays, i32 0, i32 1), align 4
  %8 = getelementptr inbounds %struct.trace_array, ptr %7, i32 0, i32 16
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 419, i32 noundef 9, ptr noundef null) #18
  br label %13

13:                                               ; preds = %12, %6, %3
  %14 = phi ptr [ null, %3 ], [ %7, %12 ], [ %7, %6 ]
  %15 = icmp eq ptr %0, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @trace_array_find_get(ptr noundef nonnull %0) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %81, label %24

19:                                               ; preds = %13
  %20 = tail call i32 @trace_array_get(ptr noundef %14) #18
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = inttoptr i32 %20 to ptr
  br label %81

24:                                               ; preds = %19, %16
  %25 = phi ptr [ %17, %16 ], [ %14, %19 ]
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %26 = getelementptr inbounds %struct.trace_array, ptr %25, i32 0, i32 25
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %79, label %29

29:                                               ; preds = %57, %24
  %30 = phi ptr [ %58, %57 ], [ %27, %24 ]
  %31 = getelementptr inbounds %struct.trace_event_file, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_call, ptr %32, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 16
  %36 = icmp eq i32 %35, 0
  %37 = getelementptr inbounds %struct.trace_event_call, ptr %32, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  br i1 %36, label %43, label %39

39:                                               ; preds = %29
  %40 = icmp eq ptr %38, null
  br i1 %40, label %57, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %38, align 4
  br label %43

43:                                               ; preds = %41, %29
  %44 = phi ptr [ %42, %41 ], [ %38, %29 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.trace_event_call, ptr %32, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull %44) #18
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load ptr, ptr %48, align 4
  %55 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %54) #18
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53, %50, %46, %43, %39
  %58 = load ptr, ptr %30, align 4
  %59 = icmp eq ptr %58, %26
  br i1 %59, label %79, label %29

60:                                               ; preds = %53
  %61 = icmp eq ptr %30, null
  br i1 %61, label %79, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.trace_event_class, ptr %48, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp ne ptr %64, null
  %66 = and i32 %34, 8
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = and i32 %34, 32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = tail call zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef %32) #18
  br i1 %73, label %78, label %79

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.trace_event_call, ptr %32, i32 0, i32 6
  %76 = load ptr, ptr %75, align 4
  %77 = tail call zeroext i1 @try_module_get(ptr noundef %76) #18
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %72
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  br label %81

79:                                               ; preds = %74, %72, %62, %60, %57, %24
  %80 = phi ptr [ inttoptr (i32 -22 to ptr), %62 ], [ inttoptr (i32 -22 to ptr), %60 ], [ inttoptr (i32 -22 to ptr), %24 ], [ inttoptr (i32 -16 to ptr), %72 ], [ inttoptr (i32 -16 to ptr), %74 ], [ inttoptr (i32 -22 to ptr), %57 ]
  tail call void @trace_array_put(ptr noundef %25) #18
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  br label %81

81:                                               ; preds = %79, %78, %22, %16
  %82 = phi ptr [ %23, %22 ], [ %80, %79 ], [ inttoptr (i32 -2 to ptr), %16 ], [ %30, %78 ]
  ret ptr %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_array_find_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_array_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_array_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_put_event_file(ptr nocapture noundef readonly %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %2 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.trace_event_call, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @trace_event_dyn_put_ref(ptr noundef %3) #18
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %3, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  tail call void @module_put(ptr noundef %11) #18
  br label %12

12:                                               ; preds = %9, %8
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  %13 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  tail call void @trace_array_put(ptr noundef %14) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__trace_early_add_events(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @ftrace_events, align 4
  %4 = icmp eq ptr %3, @ftrace_events
  br i1 %4, label %69, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 25
  br label %9

9:                                                ; preds = %66, %5
  %10 = phi ptr [ %3, %5 ], [ %67, %66 ]
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %10, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %10, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp ne ptr %17, null
  %19 = load i1, ptr @__trace_early_add_events.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %15
  store i1 true, ptr @__trace_early_add_events.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3399, i32 noundef 9, ptr noundef null) #18
  br label %23

23:                                               ; preds = %22, %15
  br i1 %18, label %66, label %24

24:                                               ; preds = %23, %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  store i32 0, ptr %2, align 4, !annotation !20
  %25 = load ptr, ptr @file_cachep, align 4
  %26 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %25, i32 noundef 3520) #18
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  br label %53

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 8
  %31 = load ptr, ptr %7, align 4
  %32 = call i32 @trace_pid_list_first(ptr noundef %30, ptr noundef nonnull %2) #18
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = call i32 @trace_pid_list_first(ptr noundef %31, ptr noundef nonnull %2) #18
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34, %29
  %38 = getelementptr inbounds %struct.trace_event_file, ptr %26, i32 0, i32 7
  %39 = load i32, ptr %38, align 4
  %40 = or i32 %39, 512
  store i32 %40, ptr %38, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = getelementptr inbounds %struct.trace_event_file, ptr %26, i32 0, i32 1
  store ptr %10, ptr %42, align 8
  %43 = getelementptr inbounds %struct.trace_event_file, ptr %26, i32 0, i32 4
  store ptr %0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_file, ptr %26, i32 0, i32 8
  store volatile i32 0, ptr %44, align 8
  %45 = getelementptr inbounds %struct.trace_event_file, ptr %26, i32 0, i32 9
  store volatile i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_file, ptr %26, i32 0, i32 6
  store volatile ptr %46, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_file, ptr %26, i32 0, i32 6, i32 1
  store ptr %46, ptr %47, align 8
  %48 = load ptr, ptr %8, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %26, ptr %49, align 4
  store ptr %48, ptr %26, align 8
  %50 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %8, ptr %50, align 4
  store volatile ptr %26, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  %51 = call fastcc i32 @event_define_fields(ptr noundef %10) #18
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %41, %28
  %54 = load i32, ptr %11, align 4
  %55 = and i32 %54, 16
  %56 = icmp eq i32 %55, 0
  %57 = getelementptr inbounds %struct.trace_event_call, ptr %10, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  br i1 %56, label %63, label %59

59:                                               ; preds = %53
  %60 = icmp eq ptr %58, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = load ptr, ptr %58, align 4
  br label %63

63:                                               ; preds = %61, %59, %53
  %64 = phi ptr [ %62, %61 ], [ null, %59 ], [ %58, %53 ]
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %64) #19
  br label %66

66:                                               ; preds = %63, %41, %23
  %67 = load ptr, ptr %10, align 4
  %68 = icmp eq ptr %67, @ftrace_events
  br i1 %68, label %69, label %9

69:                                               ; preds = %66, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @setup_trace_event(ptr noundef %0) #6 section ".init.text" {
  %2 = tail call i32 @strlcpy(ptr noundef nonnull @bootup_event_buf, ptr noundef %0, i32 noundef 1024) #18
  store i8 1, ptr @ring_buffer_expanded, align 1
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @event_trace_add_tracer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @create_event_toplevel_files(ptr noundef %0, ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %35

5:                                                ; preds = %2
  tail call void @down_write(ptr noundef nonnull @trace_event_sem) #18
  %6 = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 25
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %10, label %9, !prof !21

9:                                                ; preds = %5
  tail call fastcc void @__trace_early_add_event_dirs(ptr noundef %1)
  br label %34

10:                                               ; preds = %5
  %11 = load ptr, ptr @ftrace_events, align 4
  %12 = icmp eq ptr %11, @ftrace_events
  br i1 %12, label %34, label %13

13:                                               ; preds = %31, %10
  %14 = phi ptr [ %32, %31 ], [ %11, %10 ]
  %15 = tail call fastcc i32 @__trace_add_new_event(ptr noundef %14, ptr noundef %1) #18
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %14, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.trace_event_call, ptr %14, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  br i1 %21, label %28, label %24

24:                                               ; preds = %17
  %25 = icmp eq ptr %23, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %23, align 4
  br label %28

28:                                               ; preds = %26, %24, %17
  %29 = phi ptr [ %27, %26 ], [ null, %24 ], [ %23, %17 ]
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %29) #19
  br label %31

31:                                               ; preds = %28, %13
  %32 = load ptr, ptr %14, align 4
  %33 = icmp eq ptr %32, @ftrace_events
  br i1 %33, label %34, label %13

34:                                               ; preds = %31, %10, %9
  tail call void @up_write(ptr noundef nonnull @trace_event_sem) #18
  br label %35

35:                                               ; preds = %34, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @create_event_toplevel_files(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.44, i16 noundef zeroext 416, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ftrace_set_event_fops) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #19
  br label %29

7:                                                ; preds = %2
  %8 = tail call ptr @tracefs_create_dir(ptr noundef nonnull @.str.46, ptr noundef %0) #18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #19
  br label %29

12:                                               ; preds = %7
  %13 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 416, ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull @ftrace_tr_enable_fops) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.48, i16 noundef zeroext 416, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ftrace_set_event_pid_fops) #18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #19
  br label %20

20:                                               ; preds = %18, %15
  %21 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.50, i16 noundef zeroext 416, ptr noundef %0, ptr noundef %1, ptr noundef nonnull @ftrace_set_event_notrace_pid_fops) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #19
  br label %25

25:                                               ; preds = %23, %20
  %26 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.52, i16 noundef zeroext 288, ptr noundef nonnull %8, ptr noundef nonnull @ring_buffer_print_page_header, ptr noundef nonnull @ftrace_show_header_fops) #18
  %27 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.53, i16 noundef zeroext 288, ptr noundef nonnull %8, ptr noundef nonnull @ring_buffer_print_entry_header, ptr noundef nonnull @ftrace_show_header_fops) #18
  %28 = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 22
  store ptr %8, ptr %28, align 4
  br label %29

29:                                               ; preds = %25, %12, %10, %5
  %30 = phi i32 [ 0, %25 ], [ -12, %10 ], [ -12, %5 ], [ -12, %12 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__trace_early_add_event_dirs(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 22
  br label %7

7:                                                ; preds = %28, %5
  %8 = phi ptr [ %3, %5 ], [ %29, %28 ]
  %9 = load ptr, ptr %6, align 4
  %10 = tail call fastcc i32 @event_create_dir(ptr noundef %9, ptr noundef %8)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.trace_event_file, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %14, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %14, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  br i1 %18, label %25, label %21

21:                                               ; preds = %12
  %22 = icmp eq ptr %20, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %20, align 4
  br label %25

25:                                               ; preds = %23, %21, %12
  %26 = phi ptr [ %24, %23 ], [ null, %21 ], [ %20, %12 ]
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %26) #19
  br label %28

28:                                               ; preds = %25, %7
  %29 = load ptr, ptr %8, align 4
  %30 = icmp eq ptr %29, %2
  br i1 %30, label %31, label %7

31:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @event_trace_del_tracer(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @clear_event_triggers(ptr noundef %0) #18
  tail call fastcc void @__ftrace_clear_event_pids(ptr noundef %0, i32 noundef 3)
  %2 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %38, label %5

5:                                                ; preds = %35, %1
  %6 = phi ptr [ %36, %35 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %8, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %8, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  br i1 %12, label %19, label %15

15:                                               ; preds = %5
  %16 = icmp eq ptr %14, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %14, align 4
  br label %19

19:                                               ; preds = %17, %5
  %20 = phi ptr [ %18, %17 ], [ %14, %5 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.trace_event_call, ptr %8, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.trace_event_class, ptr %24, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp ne ptr %28, null
  %30 = and i32 %10, 8
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = tail call fastcc i32 @__ftrace_event_enable_disable(ptr noundef %6, i32 noundef 0, i32 noundef 0) #18
  br label %35

35:                                               ; preds = %33, %26, %22, %19, %15
  %36 = load ptr, ptr %6, align 4
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %38, label %5

38:                                               ; preds = %35, %1
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #18
  tail call void @synchronize_rcu() #18
  tail call void @down_write(ptr noundef nonnull @trace_event_sem) #18
  %39 = load ptr, ptr %2, align 4
  %40 = icmp eq ptr %39, %2
  br i1 %40, label %45, label %41

41:                                               ; preds = %41, %38
  %42 = phi ptr [ %43, %41 ], [ %39, %38 ]
  %43 = load ptr, ptr %42, align 4
  tail call fastcc void @remove_event_file_dir(ptr noundef %42) #18
  %44 = icmp eq ptr %43, %2
  br i1 %44, label %45, label %41

45:                                               ; preds = %41, %38
  %46 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 22
  %47 = load ptr, ptr %46, align 4
  tail call void @tracefs_remove(ptr noundef %47) #18
  tail call void @up_write(ptr noundef nonnull @trace_event_sem) #18
  store ptr null, ptr %46, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_event_triggers(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__ftrace_clear_event_pids(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = and i32 %1, 1
  %8 = icmp ne i32 %7, 0
  %9 = icmp ne ptr %4, null
  %10 = and i1 %8, %9
  %11 = and i32 %1, 2
  br i1 %10, label %19, label %12

12:                                               ; preds = %2
  %13 = icmp ne i32 %11, 0
  %14 = icmp ne ptr %6, null
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %69

16:                                               ; preds = %12
  %17 = icmp eq i32 %7, 0
  %18 = and i1 %17, %9
  br i1 %18, label %57, label %23

19:                                               ; preds = %2
  %20 = icmp eq i32 %11, 0
  %21 = icmp ne ptr %6, null
  %22 = and i1 %20, %21
  br i1 %22, label %57, label %23

23:                                               ; preds = %19, %16
  %24 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_switch, ptr noundef nonnull @event_filter_pid_sched_switch_probe_pre, ptr noundef %0) #18
  %25 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_switch, ptr noundef nonnull @event_filter_pid_sched_switch_probe_post, ptr noundef %0) #18
  %26 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup, ptr noundef nonnull @event_filter_pid_sched_wakeup_probe_pre, ptr noundef %0) #18
  %27 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup, ptr noundef nonnull @event_filter_pid_sched_wakeup_probe_post, ptr noundef %0) #18
  %28 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup_new, ptr noundef nonnull @event_filter_pid_sched_wakeup_probe_pre, ptr noundef %0) #18
  %29 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_wakeup_new, ptr noundef nonnull @event_filter_pid_sched_wakeup_probe_post, ptr noundef %0) #18
  %30 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_waking, ptr noundef nonnull @event_filter_pid_sched_wakeup_probe_pre, ptr noundef %0) #18
  %31 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_sched_waking, ptr noundef nonnull @event_filter_pid_sched_wakeup_probe_post, ptr noundef %0) #18
  %32 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 25
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %35, label %41

35:                                               ; preds = %41, %23
  %36 = load i32, ptr @nr_cpu_ids, align 4
  %37 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %38 = icmp ult i32 %37, %36
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 2
  br label %46

41:                                               ; preds = %41, %23
  %42 = phi ptr [ %44, %41 ], [ %33, %23 ]
  %43 = getelementptr inbounds %struct.trace_event_file, ptr %42, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 9, ptr noundef %43) #18
  %44 = load ptr, ptr %42, align 4
  %45 = icmp eq ptr %44, %32
  br i1 %45, label %35, label %41

46:                                               ; preds = %46, %39
  %47 = phi i32 [ %37, %39 ], [ %55, %46 ]
  %48 = load ptr, ptr %40, align 8
  %49 = ptrtoint ptr %48 to i32
  %50 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %49
  %53 = inttoptr i32 %52 to ptr
  %54 = getelementptr inbounds %struct.trace_array_cpu, ptr %53, i32 0, i32 15
  store i8 0, ptr %54, align 8
  %55 = tail call i32 @cpumask_next(i32 noundef %47, ptr noundef nonnull @__cpu_possible_mask) #20
  %56 = icmp ult i32 %55, %36
  br i1 %56, label %46, label %57

57:                                               ; preds = %46, %35, %19, %16
  br i1 %8, label %58, label %59

58:                                               ; preds = %57
  store volatile ptr null, ptr %3, align 8
  br label %59

59:                                               ; preds = %58, %57
  %60 = and i32 %1, 2
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store volatile ptr null, ptr %5, align 4
  br label %63

63:                                               ; preds = %62, %59
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #18
  tail call void @synchronize_rcu() #18
  br i1 %10, label %64, label %65

64:                                               ; preds = %63
  tail call void @trace_pid_list_free(ptr noundef nonnull %4) #18
  br label %65

65:                                               ; preds = %64, %63
  %66 = icmp ne ptr %6, null
  %67 = and i1 %61, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  tail call void @trace_pid_list_free(ptr noundef nonnull %6) #18
  br label %69

69:                                               ; preds = %68, %65, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__ftrace_set_clr_event_nolock(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %71, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %1, null
  %11 = icmp eq ptr %2, null
  %12 = icmp eq ptr %3, null
  br label %13

13:                                               ; preds = %66, %9
  %14 = phi ptr [ %7, %9 ], [ %69, %66 ]
  %15 = phi i32 [ -22, %9 ], [ %68, %66 ]
  %16 = phi i32 [ 0, %9 ], [ %67, %66 ]
  %17 = getelementptr inbounds %struct.trace_event_file, ptr %14, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %18, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 16
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.trace_event_call, ptr %18, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  br i1 %22, label %29, label %25

25:                                               ; preds = %13
  %26 = icmp eq ptr %24, null
  br i1 %26, label %66, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %24, align 4
  br label %29

29:                                               ; preds = %27, %13
  %30 = phi ptr [ %28, %27 ], [ %24, %13 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %66, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.trace_event_call, ptr %18, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %66, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.trace_event_class, ptr %34, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp ne ptr %38, null
  %40 = and i32 %20, 8
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  br i1 %10, label %51, label %44

44:                                               ; preds = %43
  %45 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef nonnull %30)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %34, align 4
  %49 = tail call i32 @strcmp(ptr noundef nonnull %1, ptr noundef %48)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47, %44, %43
  br i1 %11, label %56, label %52

52:                                               ; preds = %51
  %53 = load ptr, ptr %34, align 4
  %54 = tail call i32 @strcmp(ptr noundef nonnull %2, ptr noundef %53)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52, %51
  br i1 %12, label %60, label %57

57:                                               ; preds = %56
  %58 = tail call i32 @strcmp(ptr noundef nonnull %3, ptr noundef nonnull %30)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57, %56
  %61 = tail call fastcc i32 @__ftrace_event_enable_disable(ptr noundef %14, i32 noundef %4, i32 noundef 0) #18
  %62 = icmp eq i32 %61, 0
  %63 = icmp ne i32 %16, 0
  %64 = select i1 %62, i1 true, i1 %63
  %65 = select i1 %64, i32 %16, i32 %61
  br label %66

66:                                               ; preds = %60, %57, %52, %47, %36, %32, %29, %25
  %67 = phi i32 [ %16, %47 ], [ %16, %52 ], [ %16, %57 ], [ %65, %60 ], [ %16, %36 ], [ %16, %32 ], [ %16, %29 ], [ %16, %25 ]
  %68 = phi i32 [ %15, %47 ], [ %15, %52 ], [ %15, %57 ], [ %65, %60 ], [ %15, %36 ], [ %15, %32 ], [ %15, %29 ], [ %15, %25 ]
  %69 = load ptr, ptr %14, align 4
  %70 = icmp eq ptr %69, %6
  br i1 %70, label %71, label %13

71:                                               ; preds = %66, %5
  %72 = phi i32 [ -22, %5 ], [ %68, %66 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracefs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @event_trace_enable_again() #7 section ".init.text" {
  %1 = load volatile ptr, ptr @ftrace_trace_arrays, align 4
  %2 = icmp eq ptr %1, @ftrace_trace_arrays
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ftrace_trace_arrays, i32 0, i32 1), align 4
  %5 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 16
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 419, i32 noundef 9, ptr noundef null) #18
  br label %10

10:                                               ; preds = %9, %3
  %11 = icmp eq ptr %4, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  tail call fastcc void @early_enable_events(ptr noundef nonnull %4, i1 noundef zeroext true) #21
  br label %13

13:                                               ; preds = %12, %10, %0
  %14 = phi i32 [ 0, %12 ], [ -19, %10 ], [ -19, %0 ]
  ret i32 %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @event_trace_init() local_unnamed_addr #7 section ".init.text" {
  %1 = load volatile ptr, ptr @ftrace_trace_arrays, align 4
  %2 = icmp eq ptr %1, @ftrace_trace_arrays
  br i1 %2, label %26, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ftrace_trace_arrays, i32 0, i32 1), align 4
  %5 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 16
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 419, i32 noundef 9, ptr noundef null) #18
  br label %10

10:                                               ; preds = %9, %3
  %11 = icmp eq ptr %4, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 288, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull @ftrace_avail_fops) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #19
  br label %17

17:                                               ; preds = %15, %12
  %18 = tail call fastcc i32 @early_event_add_tracer(ptr noundef nonnull %4) #21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = tail call i32 @register_module_notifier(ptr noundef nonnull @trace_module_nb) #18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #19
  br label %25

25:                                               ; preds = %23, %20
  store i1 true, ptr @eventdir_initialized, align 1
  br label %26

26:                                               ; preds = %25, %17, %10, %0
  %27 = phi i32 [ 0, %25 ], [ -19, %10 ], [ %18, %17 ], [ -19, %0 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tracefs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @early_event_add_tracer(ptr noundef %0) unnamed_addr #7 section ".init.text" {
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %2 = tail call fastcc i32 @create_event_toplevel_files(ptr noundef null, ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @down_write(ptr noundef nonnull @trace_event_sem) #18
  tail call fastcc void @__trace_early_add_event_dirs(ptr noundef %0)
  tail call void @up_write(ptr noundef nonnull @trace_event_sem) #18
  br label %5

5:                                                ; preds = %4, %1
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_module_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @trace_event_init() local_unnamed_addr #7 section ".init.text" {
  tail call fastcc void @event_trace_memsetup() #21
  tail call fastcc void @event_trace_enable() #21
  tail call fastcc void @event_trace_init_fields() #21
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @event_trace_memsetup() unnamed_addr #7 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.60, i32 noundef 32, i32 noundef 4, i32 noundef 262144, ptr noundef null) #18
  store ptr %1, ptr @field_cachep, align 4
  %2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.61, i32 noundef 48, i32 noundef 4, i32 noundef 262144, ptr noundef null) #18
  store ptr %2, ptr @file_cachep, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @event_trace_enable() unnamed_addr #7 section ".init.text" {
  %1 = load volatile ptr, ptr @ftrace_trace_arrays, align 4
  %2 = icmp eq ptr %1, @ftrace_trace_arrays
  br i1 %2, label %54, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ftrace_trace_arrays, i32 0, i32 1), align 4
  %5 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 16
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 419, i32 noundef 9, ptr noundef null) #18
  br label %10

10:                                               ; preds = %9, %3
  %11 = icmp eq ptr %4, null
  br i1 %11, label %54, label %12

12:                                               ; preds = %10
  br i1 icmp ult (ptr @__start_ftrace_events, ptr @__stop_ftrace_events), label %13, label %52

13:                                               ; preds = %49, %12
  %14 = phi ptr [ %50, %49 ], [ @__start_ftrace_events, %12 ]
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %15, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %15, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  br i1 %19, label %26, label %22

22:                                               ; preds = %13
  %23 = icmp eq ptr %21, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = load ptr, ptr %21, align 4
  br label %26

26:                                               ; preds = %24, %13
  %27 = phi ptr [ %25, %24 ], [ %21, %13 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30, !prof !9

29:                                               ; preds = %26, %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2508, i32 noundef 9, ptr noundef null) #18
  br label %49

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.trace_event_call, ptr %15, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_class, ptr %32, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = tail call i32 %34(ptr noundef %15) #18
  %38 = icmp slt i32 %37, 0
  %39 = icmp ne i32 %37, -38
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %27) #19
  br label %49

43:                                               ; preds = %36
  %44 = icmp eq i32 %37, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %43, %30
  %46 = load ptr, ptr @ftrace_events, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %15, ptr %47, align 4
  store ptr %46, ptr %15, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr @ftrace_events, ptr %48, align 4
  store volatile ptr %15, ptr @ftrace_events, align 4
  br label %49

49:                                               ; preds = %45, %43, %41, %29
  %50 = getelementptr ptr, ptr %14, i32 1
  %51 = icmp ult ptr %50, @__stop_ftrace_events
  br i1 %51, label %13, label %52

52:                                               ; preds = %49, %12
  tail call void @__trace_early_add_events(ptr noundef nonnull %4)
  tail call fastcc void @early_enable_events(ptr noundef nonnull %4, i1 noundef zeroext false) #21
  tail call void @trace_printk_start_comm() #18
  %53 = tail call i32 @register_trigger_cmds() #18
  br label %54

54:                                               ; preds = %52, %10, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @event_trace_init_fields() unnamed_addr #7 section ".init.text" {
  %1 = load ptr, ptr @field_cachep, align 4
  %2 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %1, i32 noundef 3520) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %53, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.ftrace_event_field, ptr %2, i32 0, i32 1
  store ptr @.str.65, ptr %5, align 8
  %6 = getelementptr inbounds %struct.ftrace_event_field, ptr %2, i32 0, i32 2
  store ptr @.str.64, ptr %6, align 4
  %7 = getelementptr inbounds %struct.ftrace_event_field, ptr %2, i32 0, i32 3
  store i32 7, ptr %7, align 8
  %8 = getelementptr inbounds %struct.ftrace_event_field, ptr %2, i32 0, i32 4
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ftrace_event_field, ptr %2, i32 0, i32 5
  store i32 0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.ftrace_event_field, ptr %2, i32 0, i32 6
  store i32 1, ptr %10, align 4
  %11 = load ptr, ptr @ftrace_generic_fields, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %2, ptr %12, align 4
  store ptr %11, ptr %2, align 8
  %13 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr @ftrace_generic_fields, ptr %13, align 4
  store volatile ptr %2, ptr @ftrace_generic_fields, align 4
  %14 = load ptr, ptr @field_cachep, align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %14, i32 noundef 3520) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %53, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.ftrace_event_field, ptr %15, i32 0, i32 1
  store ptr @.str.66, ptr %18, align 8
  %19 = getelementptr inbounds %struct.ftrace_event_field, ptr %15, i32 0, i32 2
  store ptr @.str.64, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ftrace_event_field, ptr %15, i32 0, i32 3
  store i32 7, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ftrace_event_field, ptr %15, i32 0, i32 4
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ftrace_event_field, ptr %15, i32 0, i32 5
  store i32 0, ptr %22, align 8
  %23 = getelementptr inbounds %struct.ftrace_event_field, ptr %15, i32 0, i32 6
  store i32 1, ptr %23, align 4
  %24 = load ptr, ptr @ftrace_generic_fields, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %15, ptr %25, align 4
  store ptr %24, ptr %15, align 8
  %26 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr @ftrace_generic_fields, ptr %26, align 4
  store volatile ptr %15, ptr @ftrace_generic_fields, align 4
  %27 = load ptr, ptr @field_cachep, align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %27, i32 noundef 3520) #18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %53, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.ftrace_event_field, ptr %28, i32 0, i32 1
  store ptr @.str.68, ptr %31, align 8
  %32 = getelementptr inbounds %struct.ftrace_event_field, ptr %28, i32 0, i32 2
  store ptr @.str.67, ptr %32, align 4
  %33 = getelementptr inbounds %struct.ftrace_event_field, ptr %28, i32 0, i32 3
  store i32 6, ptr %33, align 8
  %34 = getelementptr inbounds %struct.ftrace_event_field, ptr %28, i32 0, i32 4
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.ftrace_event_field, ptr %28, i32 0, i32 5
  store i32 0, ptr %35, align 8
  %36 = getelementptr inbounds %struct.ftrace_event_field, ptr %28, i32 0, i32 6
  store i32 0, ptr %36, align 4
  %37 = load ptr, ptr @ftrace_generic_fields, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %28, ptr %38, align 4
  store ptr %37, ptr %28, align 8
  %39 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr @ftrace_generic_fields, ptr %39, align 4
  store volatile ptr %28, ptr @ftrace_generic_fields, align 4
  %40 = load ptr, ptr @field_cachep, align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %40, i32 noundef 3520) #18
  %42 = icmp eq ptr %41, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.ftrace_event_field, ptr %41, i32 0, i32 1
  store ptr @.str.69, ptr %44, align 8
  %45 = getelementptr inbounds %struct.ftrace_event_field, ptr %41, i32 0, i32 2
  store ptr @.str.67, ptr %45, align 4
  %46 = getelementptr inbounds %struct.ftrace_event_field, ptr %41, i32 0, i32 3
  store i32 6, ptr %46, align 8
  %47 = getelementptr inbounds %struct.ftrace_event_field, ptr %41, i32 0, i32 4
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.ftrace_event_field, ptr %41, i32 0, i32 5
  store i32 0, ptr %48, align 8
  %49 = getelementptr inbounds %struct.ftrace_event_field, ptr %41, i32 0, i32 6
  store i32 0, ptr %49, align 4
  %50 = load ptr, ptr @ftrace_generic_fields, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %41, ptr %51, align 4
  store ptr %50, ptr %41, align 8
  %52 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr @ftrace_generic_fields, ptr %52, align 4
  store volatile ptr %41, ptr @ftrace_generic_fields, align 4
  br label %55

53:                                               ; preds = %30, %17, %4, %0
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #19
  br label %55

55:                                               ; preds = %53, %43
  %56 = load ptr, ptr @field_cachep, align 4
  %57 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %56, i32 noundef 3520) #18
  %58 = icmp eq ptr %57, null
  br i1 %58, label %112, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ftrace_event_field, ptr %57, i32 0, i32 1
  store ptr @.str.71, ptr %60, align 8
  %61 = getelementptr inbounds %struct.ftrace_event_field, ptr %57, i32 0, i32 2
  store ptr @.str.70, ptr %61, align 4
  %62 = tail call i32 @filter_assign_type(ptr noundef nonnull @.str.70) #18
  %63 = getelementptr inbounds %struct.ftrace_event_field, ptr %57, i32 0, i32 3
  store i32 %62, ptr %63, align 8
  %64 = getelementptr inbounds %struct.ftrace_event_field, ptr %57, i32 0, i32 4
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.ftrace_event_field, ptr %57, i32 0, i32 5
  store i32 2, ptr %65, align 8
  %66 = getelementptr inbounds %struct.ftrace_event_field, ptr %57, i32 0, i32 6
  store i32 0, ptr %66, align 4
  %67 = load ptr, ptr @ftrace_common_fields, align 4
  %68 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  store ptr %57, ptr %68, align 4
  store ptr %67, ptr %57, align 8
  %69 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr @ftrace_common_fields, ptr %69, align 4
  store volatile ptr %57, ptr @ftrace_common_fields, align 4
  %70 = load ptr, ptr @field_cachep, align 4
  %71 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %70, i32 noundef 3520) #18
  %72 = icmp eq ptr %71, null
  br i1 %72, label %112, label %73

73:                                               ; preds = %59
  %74 = getelementptr inbounds %struct.ftrace_event_field, ptr %71, i32 0, i32 1
  store ptr @.str.73, ptr %74, align 8
  %75 = getelementptr inbounds %struct.ftrace_event_field, ptr %71, i32 0, i32 2
  store ptr @.str.72, ptr %75, align 4
  %76 = tail call i32 @filter_assign_type(ptr noundef nonnull @.str.72) #18
  %77 = getelementptr inbounds %struct.ftrace_event_field, ptr %71, i32 0, i32 3
  store i32 %76, ptr %77, align 8
  %78 = getelementptr inbounds %struct.ftrace_event_field, ptr %71, i32 0, i32 4
  store i32 2, ptr %78, align 4
  %79 = getelementptr inbounds %struct.ftrace_event_field, ptr %71, i32 0, i32 5
  store i32 1, ptr %79, align 8
  %80 = getelementptr inbounds %struct.ftrace_event_field, ptr %71, i32 0, i32 6
  store i32 0, ptr %80, align 4
  %81 = load ptr, ptr @ftrace_common_fields, align 4
  %82 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  store ptr %71, ptr %82, align 4
  store ptr %81, ptr %71, align 8
  %83 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr @ftrace_common_fields, ptr %83, align 4
  store volatile ptr %71, ptr @ftrace_common_fields, align 4
  %84 = load ptr, ptr @field_cachep, align 4
  %85 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %84, i32 noundef 3520) #18
  %86 = icmp eq ptr %85, null
  br i1 %86, label %112, label %87

87:                                               ; preds = %73
  %88 = getelementptr inbounds %struct.ftrace_event_field, ptr %85, i32 0, i32 1
  store ptr @.str.74, ptr %88, align 8
  %89 = getelementptr inbounds %struct.ftrace_event_field, ptr %85, i32 0, i32 2
  store ptr @.str.72, ptr %89, align 4
  %90 = tail call i32 @filter_assign_type(ptr noundef nonnull @.str.72) #18
  %91 = getelementptr inbounds %struct.ftrace_event_field, ptr %85, i32 0, i32 3
  store i32 %90, ptr %91, align 8
  %92 = getelementptr inbounds %struct.ftrace_event_field, ptr %85, i32 0, i32 4
  store i32 3, ptr %92, align 4
  %93 = getelementptr inbounds %struct.ftrace_event_field, ptr %85, i32 0, i32 5
  store i32 1, ptr %93, align 8
  %94 = getelementptr inbounds %struct.ftrace_event_field, ptr %85, i32 0, i32 6
  store i32 0, ptr %94, align 4
  %95 = load ptr, ptr @ftrace_common_fields, align 4
  %96 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  store ptr %85, ptr %96, align 4
  store ptr %95, ptr %85, align 8
  %97 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  store ptr @ftrace_common_fields, ptr %97, align 4
  store volatile ptr %85, ptr @ftrace_common_fields, align 4
  %98 = load ptr, ptr @field_cachep, align 4
  %99 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %98, i32 noundef 3520) #18
  %100 = icmp eq ptr %99, null
  br i1 %100, label %112, label %101

101:                                              ; preds = %87
  %102 = getelementptr inbounds %struct.ftrace_event_field, ptr %99, i32 0, i32 1
  store ptr @.str.75, ptr %102, align 8
  %103 = getelementptr inbounds %struct.ftrace_event_field, ptr %99, i32 0, i32 2
  store ptr @.str.64, ptr %103, align 4
  %104 = tail call i32 @filter_assign_type(ptr noundef nonnull @.str.64) #18
  %105 = getelementptr inbounds %struct.ftrace_event_field, ptr %99, i32 0, i32 3
  store i32 %104, ptr %105, align 8
  %106 = getelementptr inbounds %struct.ftrace_event_field, ptr %99, i32 0, i32 4
  store i32 4, ptr %106, align 4
  %107 = getelementptr inbounds %struct.ftrace_event_field, ptr %99, i32 0, i32 5
  store i32 4, ptr %107, align 8
  %108 = getelementptr inbounds %struct.ftrace_event_field, ptr %99, i32 0, i32 6
  store i32 1, ptr %108, align 4
  %109 = load ptr, ptr @ftrace_common_fields, align 4
  %110 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  store ptr %99, ptr %110, align 4
  store ptr %109, ptr %99, align 8
  %111 = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  store ptr @ftrace_common_fields, ptr %111, align 4
  store volatile ptr %99, ptr @ftrace_common_fields, align 4
  br label %114

112:                                              ; preds = %87, %73, %59, %55
  %113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #19
  br label %114

114:                                              ; preds = %112, %101
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @filter_assign_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_gen_ctx_irq_test(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_buffered_event_enable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_buffered_event_disable() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_register_prio(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_filter_add_remove_task(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__trace_remove_event_call(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @ftrace_trace_arrays, align 4
  %3 = icmp eq ptr %2, @ftrace_trace_arrays
  br i1 %3, label %27, label %4

4:                                                ; preds = %24, %1
  %5 = phi ptr [ %25, %24 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 25
  br label %7

7:                                                ; preds = %11, %4
  %8 = phi ptr [ %6, %4 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.trace_event_file, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.trace_event_file, ptr %9, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1024
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 10
  store i8 1, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = tail call fastcc i32 @__ftrace_event_enable_disable(ptr noundef %9, i32 noundef 0, i32 noundef 0) #18
  br label %24

24:                                               ; preds = %22, %7
  %25 = load ptr, ptr %5, align 4
  %26 = icmp eq ptr %25, @ftrace_trace_arrays
  br i1 %26, label %27, label %4

27:                                               ; preds = %24, %1
  %28 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 3, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 3
  %33 = tail call i32 @__unregister_trace_event(ptr noundef %32) #18
  br label %34

34:                                               ; preds = %31, %27
  %35 = load ptr, ptr @ftrace_trace_arrays, align 4
  %36 = icmp eq ptr %35, @ftrace_trace_arrays
  br i1 %36, label %52, label %37

37:                                               ; preds = %49, %34
  %38 = phi ptr [ %50, %49 ], [ %35, %34 ]
  %39 = getelementptr inbounds %struct.trace_array, ptr %38, i32 0, i32 25
  br label %40

40:                                               ; preds = %44, %37
  %41 = phi ptr [ %39, %37 ], [ %42, %44 ]
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %39
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.trace_event_file, ptr %42, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %0
  br i1 %47, label %48, label %40

48:                                               ; preds = %44
  tail call fastcc void @remove_event_file_dir(ptr noundef %42) #18
  br label %49

49:                                               ; preds = %48, %40
  %50 = load ptr, ptr %38, align 4
  %51 = icmp eq ptr %50, @ftrace_trace_arrays
  br i1 %51, label %52, label %37

52:                                               ; preds = %49, %34
  %53 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %55, ptr %54, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %53, align 4
  %57 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.trace_event_class, ptr %58, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.trace_event_class, ptr %58, i32 0, i32 6
  br label %66

64:                                               ; preds = %52
  %65 = tail call ptr %60(ptr noundef %0) #18
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi ptr [ %65, %64 ], [ %63, %62 ]
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %67
  br i1 %69, label %78, label %70

70:                                               ; preds = %70, %66
  %71 = phi ptr [ %72, %70 ], [ %68, %66 ]
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %74, ptr %75, align 4
  store volatile ptr %72, ptr %74, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %71, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %73, align 4
  %76 = load ptr, ptr @field_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %76, ptr noundef %71) #18
  %77 = icmp eq ptr %72, %67
  br i1 %77, label %78, label %70

78:                                               ; preds = %70, %66
  %79 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 5
  %80 = load ptr, ptr %79, align 4
  tail call void @free_event_filter(ptr noundef %80) #18
  store ptr null, ptr %79, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_event_filter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__unregister_trace_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @remove_event_file_dir(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.dentry, ptr %3, i32 0, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %20, label %10

10:                                               ; preds = %17, %5
  %11 = phi ptr [ %18, %17 ], [ %8, %5 ]
  %12 = getelementptr i8, ptr %11, i32 -72
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 47
  store ptr null, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %10
  %18 = load ptr, ptr %11, align 8
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %20, label %10

20:                                               ; preds = %17, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %21 = load i16, ptr %6, align 4
  %22 = add i16 %21, 1
  store i16 %22, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  tail call void @tracefs_remove(ptr noundef nonnull %3) #18
  br label %23

23:                                               ; preds = %20, %1
  %24 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  %28 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %29, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  store i32 %34, ptr %32, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %29, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  tail call void @tracefs_remove(ptr noundef %38) #18
  %39 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %29, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %41, ptr %40, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %29, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %39, align 4
  tail call fastcc void @__put_system_dir(ptr noundef nonnull %29) #18
  br label %43

43:                                               ; preds = %36, %31, %23
  %44 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  tail call void @free_event_filter(ptr noundef %45) #18
  %46 = load ptr, ptr @file_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %46, ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__put_system_dir(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  %5 = load i1, ptr @__put_system_dir.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %1
  store i1 true, ptr @__put_system_dir.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 934, i32 noundef 9, ptr noundef null) #18
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.event_subsystem, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load i32, ptr %2, align 4
  %17 = icmp ne i32 %16, 1
  %18 = load i1, ptr @__put_system_dir.__already_done.19, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %23, !prof !9

21:                                               ; preds = %15
  store i1 true, ptr @__put_system_dir.__already_done.19, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 936, i32 noundef 9, ptr noundef null) #18
  %22 = load ptr, ptr %10, align 4
  br label %23

23:                                               ; preds = %21, %15, %9
  %24 = phi ptr [ %11, %9 ], [ %22, %21 ], [ %11, %15 ]
  tail call fastcc void @__put_system(ptr noundef %24)
  %25 = load i32, ptr %2, align 4
  %26 = add i32 %25, -1
  store i32 %26, ptr %2, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call void @kfree(ptr noundef %0) #18
  br label %29

29:                                               ; preds = %28, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__put_system(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.event_subsystem, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.event_subsystem, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = load i1, ptr @__put_system.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %12, !prof !9

10:                                               ; preds = %1
  store i1 true, ptr @__put_system.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 905, i32 noundef 9, ptr noundef null) #18
  %11 = load i32, ptr %4, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i32 [ %11, %10 ], [ %5, %1 ]
  %14 = add i32 %13, -1
  store i32 %14, ptr %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  %21 = icmp eq ptr %3, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.event_filter, ptr %3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #18
  tail call void @kfree(ptr noundef nonnull %3) #18
  br label %25

25:                                               ; preds = %22, %16
  %26 = getelementptr inbounds %struct.event_subsystem, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void @kfree_const(ptr noundef %27) #18
  tail call void @kfree(ptr noundef %0) #18
  br label %28

28:                                               ; preds = %25, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_event_dyn_try_get_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_dyn_put_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @event_define_fields(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.trace_event_class, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.trace_event_class, ptr %3, i32 0, i32 6
  br label %11

9:                                                ; preds = %1
  %10 = tail call ptr %5(ptr noundef %0) #18
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %10, %9 ], [ %8, %7 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %15, label %85

15:                                               ; preds = %11
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.trace_event_class, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %79, %15
  %20 = phi i32 [ 8, %15 ], [ %81, %79 ]
  %21 = phi ptr [ %18, %15 ], [ %82, %79 ]
  %22 = load ptr, ptr %21, align 4
  %23 = ptrtoint ptr %22 to i32
  switch i32 %23, label %28 [
    i32 0, label %83
    i32 -1, label %24
  ]

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.trace_event_fields, ptr %21, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %0) #18
  br label %85

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.trace_event_fields, ptr %21, i32 0, i32 1
  %30 = getelementptr inbounds %struct.trace_event_fields, ptr %21, i32 0, i32 1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %20, -1
  %33 = add i32 %32, %31
  %34 = sub i32 0, %31
  %35 = and i32 %33, %34
  %36 = load ptr, ptr %29, align 4
  %37 = getelementptr inbounds %struct.trace_event_fields, ptr %21, i32 0, i32 1, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_fields, ptr %21, i32 0, i32 1, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_fields, ptr %21, i32 0, i32 1, i32 0, i32 4
  %42 = load i32, ptr %41, align 4
  %43 = load ptr, ptr %2, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46, !prof !9

45:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef null) #18
  br label %79

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.trace_event_class, ptr %43, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.trace_event_class, ptr %43, i32 0, i32 6
  br label %54

52:                                               ; preds = %46
  %53 = tail call ptr %48(ptr noundef %0) #18
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi ptr [ %53, %52 ], [ %51, %50 ]
  %56 = load ptr, ptr @field_cachep, align 4
  %57 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %56, i32 noundef 3520) #18
  %58 = icmp eq ptr %57, null
  br i1 %58, label %74, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.ftrace_event_field, ptr %57, i32 0, i32 1
  store ptr %36, ptr %60, align 8
  %61 = getelementptr inbounds %struct.ftrace_event_field, ptr %57, i32 0, i32 2
  store ptr %22, ptr %61, align 4
  %62 = icmp eq i32 %42, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = tail call i32 @filter_assign_type(ptr noundef %22) #18
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi i32 [ %64, %63 ], [ %42, %59 ]
  %67 = getelementptr inbounds %struct.ftrace_event_field, ptr %57, i32 0, i32 3
  store i32 %66, ptr %67, align 8
  %68 = getelementptr inbounds %struct.ftrace_event_field, ptr %57, i32 0, i32 4
  store i32 %35, ptr %68, align 4
  %69 = getelementptr inbounds %struct.ftrace_event_field, ptr %57, i32 0, i32 5
  store i32 %38, ptr %69, align 8
  %70 = getelementptr inbounds %struct.ftrace_event_field, ptr %57, i32 0, i32 6
  store i32 %40, ptr %70, align 4
  %71 = load ptr, ptr %55, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %57, ptr %72, align 4
  store ptr %71, ptr %57, align 8
  %73 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %55, ptr %73, align 4
  store volatile ptr %57, ptr %55, align 4
  br label %79

74:                                               ; preds = %54
  %75 = load i1, ptr @event_define_fields.__already_done, align 1
  br i1 %75, label %77, label %76, !prof !21

76:                                               ; preds = %74
  store i1 true, ptr @event_define_fields.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2366, i32 noundef 9, ptr noundef null) #18
  br label %77

77:                                               ; preds = %76, %74
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef -12) #19
  br label %85

79:                                               ; preds = %65, %45
  %80 = load i32, ptr %37, align 4
  %81 = add i32 %80, %35
  %82 = getelementptr %struct.trace_event_fields, ptr %21, i32 1
  br label %19

83:                                               ; preds = %19
  %84 = ptrtoint ptr %22 to i32
  br label %85

85:                                               ; preds = %83, %77, %24, %11
  %86 = phi i32 [ 0, %11 ], [ 0, %24 ], [ -12, %77 ], [ %84, %83 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_pid_list_first(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__trace_add_new_event(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store i32 0, ptr %3, align 4, !annotation !20
  %4 = load ptr, ptr @file_cachep, align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3520) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  br label %40

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = call i32 @trace_pid_list_first(ptr noundef %10, ptr noundef nonnull %3) #18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = call i32 @trace_pid_list_first(ptr noundef %12, ptr noundef nonnull %3) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15, %8
  %19 = getelementptr inbounds %struct.trace_event_file, ptr %5, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, 512
  store i32 %21, ptr %19, align 4
  br label %22

22:                                               ; preds = %18, %15
  %23 = getelementptr inbounds %struct.trace_event_file, ptr %5, i32 0, i32 1
  store ptr %0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.trace_event_file, ptr %5, i32 0, i32 4
  store ptr %1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_file, ptr %5, i32 0, i32 8
  store volatile i32 0, ptr %25, align 8
  %26 = getelementptr inbounds %struct.trace_event_file, ptr %5, i32 0, i32 9
  store volatile i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_file, ptr %5, i32 0, i32 6
  store volatile ptr %27, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_file, ptr %5, i32 0, i32 6, i32 1
  store ptr %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 25
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %5, ptr %31, align 4
  store ptr %30, ptr %5, align 8
  %32 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %29, ptr %32, align 4
  store volatile ptr %5, ptr %29, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  %33 = load i1, ptr @eventdir_initialized, align 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.trace_array, ptr %1, i32 0, i32 22
  %36 = load ptr, ptr %35, align 4
  %37 = call fastcc i32 @event_create_dir(ptr noundef %36, ptr noundef nonnull %5)
  br label %40

38:                                               ; preds = %22
  %39 = call fastcc i32 @event_define_fields(ptr noundef %0)
  br label %40

40:                                               ; preds = %38, %34, %7
  %41 = phi i32 [ %37, %34 ], [ %39, %38 ], [ -12, %7 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @event_create_dir(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(13) @.str.21)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %114, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_array, ptr %12, i32 0, i32 24
  br label %14

14:                                               ; preds = %18, %10
  %15 = phi ptr [ %13, %10 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %13
  br i1 %17, label %31, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %16, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.event_subsystem, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @strcmp(ptr noundef %22, ptr noundef %7) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %14

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %16, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 5
  store ptr %16, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %16, i32 0, i32 3
  br label %110

31:                                               ; preds = %35, %14
  %32 = phi ptr [ %33, %35 ], [ @event_subsystems, %14 ]
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, @event_subsystems
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.event_subsystem, ptr %33, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @strcmp(ptr noundef %37, ptr noundef %7) #18
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %31

40:                                               ; preds = %35, %31
  %41 = phi ptr [ %33, %35 ], [ null, %31 ]
  %42 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %43 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %42, i32 noundef 3264, i32 noundef 28) #22
  %44 = icmp eq ptr %43, null
  br i1 %44, label %108, label %45

45:                                               ; preds = %40
  %46 = icmp eq ptr %41, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %45
  %48 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %49 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3264, i32 noundef 20) #22
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.event_subsystem, ptr %49, i32 0, i32 3
  store i32 1, ptr %52, align 8
  %53 = tail call ptr @kstrdup_const(ptr noundef %7, i32 noundef 3264) #18
  %54 = getelementptr inbounds %struct.event_subsystem, ptr %49, i32 0, i32 1
  store ptr %53, ptr %54, align 8
  %55 = icmp eq ptr %53, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.event_subsystem, ptr %49, i32 0, i32 2
  store ptr null, ptr %57, align 4
  %58 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %59 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 8) #22
  store ptr %59, ptr %57, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56, %51
  tail call void @kfree_const(ptr noundef %53) #18
  tail call void @kfree(ptr noundef nonnull %49) #18
  br label %62

62:                                               ; preds = %61, %47
  tail call void @kfree(ptr noundef nonnull %43) #18
  br label %108

63:                                               ; preds = %56
  %64 = load ptr, ptr @event_subsystems, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %49, ptr %65, align 4
  store ptr %64, ptr %49, align 8
  %66 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr @event_subsystems, ptr %66, align 4
  store volatile ptr %49, ptr @event_subsystems, align 4
  br label %79

67:                                               ; preds = %45
  %68 = getelementptr inbounds %struct.event_subsystem, ptr %41, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  %71 = load i1, ptr @__get_system.__already_done, align 1
  %72 = xor i1 %71, true
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %76, !prof !9

74:                                               ; preds = %67
  store i1 true, ptr @__get_system.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 921, i32 noundef 9, ptr noundef null) #18
  %75 = load i32, ptr %68, align 4
  br label %76

76:                                               ; preds = %74, %67
  %77 = phi i32 [ %75, %74 ], [ %69, %67 ]
  %78 = add i32 %77, 1
  store i32 %78, ptr %68, align 4
  br label %79

79:                                               ; preds = %76, %63
  %80 = phi ptr [ %33, %76 ], [ %49, %63 ]
  %81 = tail call ptr @tracefs_create_dir(ptr noundef %7, ptr noundef %0) #18
  %82 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %43, i32 0, i32 3
  store ptr %81, ptr %82, align 8
  %83 = icmp eq ptr %81, null
  br i1 %83, label %106, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %43, i32 0, i32 2
  store ptr %12, ptr %85, align 4
  %86 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %43, i32 0, i32 4
  store i32 1, ptr %86, align 4
  %87 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %43, i32 0, i32 5
  store i32 1, ptr %87, align 8
  %88 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %43, i32 0, i32 1
  store ptr %80, ptr %88, align 8
  %89 = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 5
  store ptr %43, ptr %89, align 4
  %90 = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(7) @.str.30) #18
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %84
  %93 = tail call ptr @tracefs_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 416, ptr noundef nonnull %81, ptr noundef nonnull %43, ptr noundef nonnull @ftrace_subsystem_filter_fops) #18
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.event_subsystem, ptr %80, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  tail call void @kfree(ptr noundef %97) #18
  store ptr null, ptr %96, align 4
  %98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %7) #19
  br label %99

99:                                               ; preds = %95, %92
  %100 = load ptr, ptr %82, align 8
  %101 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 416, ptr noundef %100, ptr noundef nonnull %43, ptr noundef nonnull @ftrace_system_enable_fops) #18
  br label %102

102:                                              ; preds = %99, %84
  %103 = load ptr, ptr %13, align 4
  %104 = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  store ptr %43, ptr %104, align 4
  store ptr %103, ptr %43, align 8
  %105 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %13, ptr %105, align 4
  store volatile ptr %43, ptr %13, align 4
  br label %110

106:                                              ; preds = %79
  %107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %7) #19
  tail call fastcc void @__put_system(ptr noundef nonnull %80) #18
  tail call void @kfree(ptr noundef nonnull %43) #18
  br label %174

108:                                              ; preds = %62, %40
  %109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %7) #19
  br label %174

110:                                              ; preds = %102, %25
  %111 = phi ptr [ %30, %25 ], [ %82, %102 ]
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %174, label %114

114:                                              ; preds = %110, %2
  %115 = phi ptr [ %112, %110 ], [ %0, %2 ]
  %116 = getelementptr inbounds %struct.trace_event_call, ptr %4, i32 0, i32 8
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 16
  %119 = icmp eq i32 %118, 0
  %120 = getelementptr inbounds %struct.trace_event_call, ptr %4, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  br i1 %119, label %126, label %122

122:                                              ; preds = %114
  %123 = icmp eq ptr %121, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %122
  %125 = load ptr, ptr %121, align 4
  br label %126

126:                                              ; preds = %124, %122, %114
  %127 = phi ptr [ %125, %124 ], [ null, %122 ], [ %121, %114 ]
  %128 = tail call ptr @tracefs_create_dir(ptr noundef %127, ptr noundef %115) #18
  %129 = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 3
  store ptr %128, ptr %129, align 4
  %130 = icmp eq ptr %128, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  %132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %127) #19
  br label %174

133:                                              ; preds = %126
  %134 = load ptr, ptr %5, align 4
  %135 = getelementptr inbounds %struct.trace_event_class, ptr %134, i32 0, i32 3
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %144, label %138

138:                                              ; preds = %133
  %139 = load i32, ptr %116, align 4
  %140 = and i32 %139, 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.23, i16 noundef zeroext 416, ptr noundef nonnull %128, ptr noundef %1, ptr noundef nonnull @ftrace_enable_fops) #18
  br label %144

144:                                              ; preds = %142, %138, %133
  %145 = getelementptr inbounds %struct.trace_event_call, ptr %4, i32 0, i32 3, i32 2
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr %5, align 4
  %150 = getelementptr inbounds %struct.trace_event_class, ptr %149, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %148
  %154 = load ptr, ptr %129, align 4
  %155 = inttoptr i32 %146 to ptr
  %156 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.24, i16 noundef zeroext 288, ptr noundef %154, ptr noundef nonnull %155, ptr noundef nonnull @ftrace_event_id_fops) #18
  br label %157

157:                                              ; preds = %153, %148, %144
  %158 = tail call fastcc i32 @event_define_fields(ptr noundef %4)
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %127) #19
  br label %174

162:                                              ; preds = %157
  %163 = load i32, ptr %116, align 4
  %164 = and i32 %163, 8
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load ptr, ptr %129, align 4
  %168 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.26, i16 noundef zeroext 416, ptr noundef %167, ptr noundef %1, ptr noundef nonnull @ftrace_event_filter_fops) #18
  %169 = load ptr, ptr %129, align 4
  %170 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.27, i16 noundef zeroext 416, ptr noundef %169, ptr noundef %1, ptr noundef nonnull @event_trigger_fops) #18
  br label %171

171:                                              ; preds = %166, %162
  %172 = load ptr, ptr %129, align 4
  %173 = tail call ptr @trace_create_file(ptr noundef nonnull @.str.28, i16 noundef zeroext 288, ptr noundef %172, ptr noundef %4, ptr noundef nonnull @ftrace_event_format_fops) #18
  br label %174

174:                                              ; preds = %171, %160, %131, %110, %108, %106
  %175 = phi i32 [ %158, %160 ], [ 0, %171 ], [ -1, %131 ], [ -12, %110 ], [ -12, %106 ], [ -12, %108 ]
  ret i32 %175
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tracefs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subsystem_filter_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load i64, ptr %3, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %4
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 4128) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.trace_seq, ptr %13, i32 0, i32 1
  store ptr %13, ptr %16, align 8
  %17 = getelementptr inbounds %struct.trace_seq, ptr %13, i32 0, i32 1, i32 1
  store i32 4096, ptr %17, align 4
  %18 = getelementptr inbounds %struct.trace_seq, ptr %13, i32 0, i32 1, i32 2
  store i32 0, ptr %18, align 8
  %19 = getelementptr inbounds %struct.trace_seq, ptr %13, i32 0, i32 1, i32 3
  store i64 0, ptr %19, align 8
  %20 = getelementptr inbounds %struct.trace_seq, ptr %13, i32 0, i32 2
  store i32 0, ptr %20, align 8
  tail call void @print_subsystem_event_filter(ptr noundef %8, ptr noundef nonnull %13) #18
  %21 = load i32, ptr %18, align 8
  %22 = load i32, ptr %17, align 4
  %23 = tail call i32 @llvm.umin.i32(i32 %21, i32 %22) #18
  %24 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %13, i32 noundef %23) #18
  tail call void @kfree(ptr noundef nonnull %13) #18
  br label %25

25:                                               ; preds = %15, %11, %4
  %26 = phi i32 [ %24, %15 ], [ 0, %4 ], [ -12, %11 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subsystem_filter_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ugt i32 %2, 4095
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @memdup_user_nul(ptr noundef %1, i32 noundef %2) #18
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  br label %20

13:                                               ; preds = %8
  %14 = tail call i32 @apply_subsystem_event_filter(ptr noundef %6, ptr noundef %9) #18
  tail call void @kfree(ptr noundef %9) #18
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = zext i32 %2 to i64
  %18 = load i64, ptr %3, align 8
  %19 = add i64 %18, %17
  store i64 %19, ptr %3, align 8
  br label %20

20:                                               ; preds = %16, %13, %11, %4
  %21 = phi i32 [ %12, %11 ], [ %2, %16 ], [ -22, %4 ], [ %14, %13 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subsystem_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call zeroext i1 @tracing_is_disabled() #18
  br i1 %3, label %69, label %4

4:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #18
  %5 = load ptr, ptr @ftrace_trace_arrays, align 4
  %6 = icmp eq ptr %5, @ftrace_trace_arrays
  br i1 %6, label %53, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  br label %12

9:                                                ; preds = %15
  %10 = load ptr, ptr %13, align 4
  %11 = icmp eq ptr %10, @ftrace_trace_arrays
  br i1 %11, label %53, label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %5, %7 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.trace_array, ptr %13, i32 0, i32 24
  br label %15

15:                                               ; preds = %19, %12
  %16 = phi ptr [ %14, %12 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %14
  br i1 %18, label %9, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %8, align 4
  %21 = icmp eq ptr %17, %20
  br i1 %21, label %22, label %15

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %17, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %17, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = load i1, ptr @__get_system_dir.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %35, !prof !9

33:                                               ; preds = %26
  store i1 true, ptr @__get_system_dir.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 927, i32 noundef 9, ptr noundef null) #18
  %34 = load i32, ptr %27, align 4
  br label %35

35:                                               ; preds = %33, %26
  %36 = phi i32 [ %34, %33 ], [ %28, %26 ]
  %37 = add i32 %36, 1
  store i32 %37, ptr %27, align 4
  %38 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %17, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.event_subsystem, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  %43 = load i1, ptr @__get_system.__already_done, align 1
  %44 = xor i1 %43, true
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %48, !prof !9

46:                                               ; preds = %35
  store i1 true, ptr @__get_system.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 921, i32 noundef 9, ptr noundef null) #18
  %47 = load i32, ptr %40, align 4
  br label %48

48:                                               ; preds = %46, %35
  %49 = phi i32 [ %47, %46 ], [ %41, %35 ]
  %50 = add i32 %49, 1
  store i32 %50, ptr %40, align 4
  %51 = load ptr, ptr %38, align 4
  %52 = icmp eq ptr %51, null
  br label %53

53:                                               ; preds = %48, %22, %9, %4
  %54 = phi ptr [ %13, %48 ], [ %13, %22 ], [ @ftrace_trace_arrays, %4 ], [ @ftrace_trace_arrays, %9 ]
  %55 = phi ptr [ %17, %48 ], [ %17, %22 ], [ null, %4 ], [ %14, %9 ]
  %56 = phi i1 [ %52, %48 ], [ true, %22 ], [ true, %4 ], [ true, %9 ]
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #18
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  br i1 %56, label %69, label %57

57:                                               ; preds = %53
  %58 = icmp eq ptr %55, null
  br i1 %58, label %59, label %60, !prof !9

59:                                               ; preds = %57
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1739, i32 noundef 9, ptr noundef null) #18
  br label %60

60:                                               ; preds = %59, %57
  %61 = tail call i32 @trace_array_get(ptr noundef %54) #18
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = tail call i32 @tracing_open_generic(ptr noundef %0, ptr noundef %1) #18
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  tail call void @trace_array_put(ptr noundef %54) #18
  br label %67

67:                                               ; preds = %66, %60
  %68 = phi i32 [ %64, %66 ], [ -19, %60 ]
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  tail call fastcc void @__put_system_dir(ptr noundef %55) #18
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  br label %69

69:                                               ; preds = %67, %63, %53, %2
  %70 = phi i32 [ -19, %2 ], [ -19, %53 ], [ %64, %63 ], [ %68, %67 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subsystem_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void @trace_array_put(ptr noundef %6) #18
  %7 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  tail call fastcc void @__put_system_dir(ptr noundef %4) #18
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  br label %12

11:                                               ; preds = %2
  tail call void @kfree(ptr noundef %4) #18
  br label %12

12:                                               ; preds = %11, %10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_subsystem_event_filter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apply_subsystem_event_filter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tracing_is_disabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_open_generic(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @system_enable_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #18
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %12 = getelementptr inbounds %struct.trace_array, ptr %11, i32 0, i32 25
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %64, label %15

15:                                               ; preds = %4
  %16 = icmp eq ptr %9, null
  %17 = getelementptr inbounds %struct.event_subsystem, ptr %9, i32 0, i32 1
  br label %18

18:                                               ; preds = %60, %15
  %19 = phi ptr [ %13, %15 ], [ %62, %60 ]
  %20 = phi i32 [ 0, %15 ], [ %61, %60 ]
  %21 = getelementptr inbounds %struct.trace_event_file, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_call, ptr %22, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %18
  %28 = and i32 %24, 16
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.trace_event_call, ptr %22, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  br i1 %29, label %36, label %32

32:                                               ; preds = %27
  %33 = icmp eq ptr %31, null
  br i1 %33, label %60, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr %31, align 4
  br label %36

36:                                               ; preds = %34, %27
  %37 = phi ptr [ %35, %34 ], [ %31, %27 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %60, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.trace_event_call, ptr %22, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.trace_event_class, ptr %41, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  br i1 %16, label %53, label %48

48:                                               ; preds = %47
  %49 = load ptr, ptr %41, align 4
  %50 = load ptr, ptr %17, align 4
  %51 = tail call i32 @strcmp(ptr noundef %49, ptr noundef %50)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48, %47
  %54 = getelementptr inbounds %struct.trace_event_file, ptr %19, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 1
  %57 = shl nuw nsw i32 1, %56
  %58 = or i32 %57, %20
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %64, label %60

60:                                               ; preds = %53, %48, %43, %39, %36, %32, %18
  %61 = phi i32 [ %20, %18 ], [ %20, %48 ], [ %58, %53 ], [ %20, %43 ], [ %20, %39 ], [ %20, %36 ], [ %20, %32 ]
  %62 = load ptr, ptr %19, align 4
  %63 = icmp eq ptr %62, %12
  br i1 %63, label %64, label %18

64:                                               ; preds = %60, %53, %4
  %65 = phi i32 [ 0, %4 ], [ 3, %53 ], [ %61, %60 ]
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  %66 = getelementptr [4 x i8], ptr @__const.system_enable_read.set_to_char, i32 0, i32 %65
  %67 = load i8, ptr %66, align 1
  store i8 %67, ptr %5, align 2
  %68 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 10, ptr %68, align 1
  %69 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef 2) #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #18
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @system_enable_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !20
  %10 = call i32 @kstrtoul_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 10, ptr noundef nonnull %5) #18
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %87

12:                                               ; preds = %4
  %13 = call i32 @tracing_update_buffers() #18
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %87, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %5, align 4
  %17 = icmp ugt i32 %16, 1
  br i1 %17, label %87, label %18

18:                                               ; preds = %15
  %19 = icmp eq ptr %9, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.event_subsystem, ptr %9, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %18
  %24 = phi ptr [ %22, %20 ], [ null, %18 ]
  %25 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %7, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %27 = getelementptr inbounds %struct.trace_array, ptr %26, i32 0, i32 25
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  br label %82

31:                                               ; preds = %23
  %32 = icmp eq ptr %24, null
  br label %33

33:                                               ; preds = %74, %31
  %34 = phi ptr [ %28, %31 ], [ %77, %74 ]
  %35 = phi i32 [ -22, %31 ], [ %76, %74 ]
  %36 = phi i32 [ 0, %31 ], [ %75, %74 ]
  %37 = getelementptr inbounds %struct.trace_event_file, ptr %34, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_call, ptr %38, i32 0, i32 8
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 16
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds %struct.trace_event_call, ptr %38, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  br i1 %42, label %49, label %45

45:                                               ; preds = %33
  %46 = icmp eq ptr %44, null
  br i1 %46, label %74, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %44, align 4
  br label %49

49:                                               ; preds = %47, %33
  %50 = phi ptr [ %48, %47 ], [ %44, %33 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %74, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.trace_event_call, ptr %38, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %74, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.trace_event_class, ptr %54, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp ne ptr %58, null
  %60 = and i32 %40, 8
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  br i1 %32, label %68, label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr %54, align 4
  %66 = call i32 @strcmp(ptr noundef nonnull %24, ptr noundef %65) #18
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64, %63
  %69 = call fastcc i32 @__ftrace_event_enable_disable(ptr noundef %34, i32 noundef %16, i32 noundef 0) #18
  %70 = icmp eq i32 %69, 0
  %71 = icmp ne i32 %36, 0
  %72 = select i1 %70, i1 true, i1 %71
  %73 = select i1 %72, i32 %36, i32 %69
  br label %74

74:                                               ; preds = %68, %64, %56, %52, %49, %45
  %75 = phi i32 [ %36, %64 ], [ %73, %68 ], [ %36, %56 ], [ %36, %52 ], [ %36, %49 ], [ %36, %45 ]
  %76 = phi i32 [ %35, %64 ], [ %73, %68 ], [ %35, %56 ], [ %35, %52 ], [ %35, %49 ], [ %35, %45 ]
  %77 = load ptr, ptr %34, align 4
  %78 = icmp eq ptr %77, %27
  br i1 %78, label %79, label %33

79:                                               ; preds = %74
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  %80 = icmp eq i32 %76, 0
  %81 = select i1 %80, i32 %2, i32 %76
  br label %82

82:                                               ; preds = %79, %30
  %83 = phi i32 [ -22, %30 ], [ %81, %79 ]
  %84 = zext i32 %2 to i64
  %85 = load i64, ptr %3, align 8
  %86 = add i64 %85, %84
  store i64 %86, ptr %3, align 8
  br label %87

87:                                               ; preds = %82, %15, %12, %4
  %88 = phi i32 [ %83, %82 ], [ %10, %4 ], [ %13, %12 ], [ -22, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret i32 %88
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoul_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_update_buffers() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @event_enable_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [4 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 48, ptr %5, align 4
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !9

11:                                               ; preds = %4
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  br label %29

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.trace_event_file, ptr %9, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  %15 = and i32 %14, 65
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i16 49, ptr %5, align 4
  br label %18

18:                                               ; preds = %17, %12
  %19 = and i32 %14, 96
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = call i32 @strlen(ptr nonnull %5)
  %23 = getelementptr i8, ptr %5, i32 %22
  store i16 42, ptr %23, align 1
  br label %24

24:                                               ; preds = %21, %18
  %25 = call i32 @strlen(ptr nonnull %5)
  %26 = getelementptr i8, ptr %5, i32 %25
  store i16 10, ptr %26, align 1
  %27 = call i32 @strlen(ptr noundef nonnull %5)
  %28 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %27) #18
  br label %29

29:                                               ; preds = %24, %11
  %30 = phi i32 [ %28, %24 ], [ -19, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @event_enable_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 0, ptr %5, align 4, !annotation !20
  %6 = call i32 @kstrtoul_from_user(ptr noundef %1, i32 noundef %2, i32 noundef 10, ptr noundef nonnull %5) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = call i32 @tracing_update_buffers() #18
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %5, align 4
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 47
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20, !prof !9

20:                                               ; preds = %14
  %21 = load i32, ptr %5, align 4
  %22 = call fastcc i32 @__ftrace_event_enable_disable(ptr noundef nonnull %18, i32 noundef %21, i32 noundef 0) #18
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i32 [ %22, %20 ], [ -19, %14 ]
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  %25 = zext i32 %2 to i64
  %26 = load i64, ptr %3, align 8
  %27 = add i64 %26, %25
  store i64 %27, ptr %3, align 8
  %28 = icmp eq i32 %24, 0
  %29 = select i1 %28, i32 %2, i32 %24
  br label %30

30:                                               ; preds = %23, %11, %8, %4
  %31 = phi i32 [ %6, %4 ], [ %9, %8 ], [ -22, %11 ], [ %29, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @event_id_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [32 x i8], align 1
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  %9 = load volatile ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !9

11:                                               ; preds = %4
  %12 = ptrtoint ptr %9 to i32
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.35, i32 noundef %12)
  %14 = call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %13) #18
  br label %15

15:                                               ; preds = %11, %4
  %16 = phi i32 [ %14, %11 ], [ -19, %4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  ret i32 %16
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @event_filter_read(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load i64, ptr %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 4128) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.trace_seq, ptr %9, i32 0, i32 1
  store ptr %9, ptr %12, align 8
  %13 = getelementptr inbounds %struct.trace_seq, ptr %9, i32 0, i32 1, i32 1
  store i32 4096, ptr %13, align 4
  %14 = getelementptr inbounds %struct.trace_seq, ptr %9, i32 0, i32 1, i32 2
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.trace_seq, ptr %9, i32 0, i32 1, i32 3
  store i64 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.trace_seq, ptr %9, i32 0, i32 2
  store i32 0, ptr %16, align 8
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %17 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 47
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %11
  tail call void @print_event_filter(ptr noundef nonnull %20, ptr noundef nonnull %9) #18
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  %23 = load i32, ptr %14, align 8
  %24 = load i32, ptr %13, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %23, i32 %24) #18
  %26 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %9, i32 noundef %25) #18
  br label %28

27:                                               ; preds = %11
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  br label %28

28:                                               ; preds = %27, %22
  %29 = phi i32 [ %26, %22 ], [ -19, %27 ]
  tail call void @kfree(ptr noundef nonnull %9) #18
  br label %30

30:                                               ; preds = %28, %7, %4
  %31 = phi i32 [ %29, %28 ], [ 0, %4 ], [ -12, %7 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @event_filter_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = icmp ugt i32 %2, 4095
  br i1 %5, label %26, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @memdup_user_nul(ptr noundef %1, i32 noundef %2) #18
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = ptrtoint ptr %7 to i32
  br label %26

11:                                               ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %12 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 47
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call i32 @apply_event_filter(ptr noundef nonnull %15, ptr noundef %7) #18
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi i32 [ %18, %17 ], [ -19, %11 ]
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  tail call void @kfree(ptr noundef %7) #18
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = zext i32 %2 to i64
  %24 = load i64, ptr %3, align 8
  %25 = add i64 %24, %23
  store i64 %25, ptr %3, align 8
  br label %26

26:                                               ; preds = %22, %19, %9, %4
  %27 = phi i32 [ %10, %9 ], [ %2, %22 ], [ -22, %4 ], [ %20, %19 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_event_filter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apply_event_filter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_format_open(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @trace_format_seq_ops) #18
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  store ptr %1, ptr %8, align 8
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %5 ], [ %3, %2 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @f_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %50, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr %1, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %46, %10
  %14 = phi ptr [ %49, %46 ], [ %6, %10 ]
  %15 = phi ptr [ %41, %46 ], [ inttoptr (i32 1 to ptr), %10 ]
  %16 = phi i64 [ %30, %46 ], [ 0, %10 ]
  %17 = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 47
  %18 = load volatile ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_class, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.trace_event_class, ptr %20, i32 0, i32 6
  br label %28

26:                                               ; preds = %13
  %27 = tail call ptr %22(ptr noundef %18) #18
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi ptr [ %27, %26 ], [ %25, %24 ]
  %30 = add nuw nsw i64 %16, 1
  %31 = ptrtoint ptr %15 to i32
  switch i32 %31, label %34 [
    i32 1, label %32
    i32 2, label %33
    i32 3, label %50
  ]

32:                                               ; preds = %28
  br label %34

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %32, %28
  %35 = phi ptr [ %15, %28 ], [ %29, %33 ], [ @ftrace_common_fields, %32 ]
  %36 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, @ftrace_common_fields
  %39 = icmp eq ptr %37, %29
  %40 = select i1 %39, ptr inttoptr (i32 3 to ptr), ptr %37
  %41 = select i1 %38, ptr inttoptr (i32 2 to ptr), ptr %40
  %42 = load i64, ptr %1, align 8
  %43 = icmp slt i64 %30, %42
  %44 = icmp ne ptr %41, null
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load ptr, ptr %3, align 8
  %48 = getelementptr inbounds %struct.file, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  br label %13

50:                                               ; preds = %34, %28, %10, %2
  %51 = phi ptr [ inttoptr (i32 -19 to ptr), %2 ], [ inttoptr (i32 1 to ptr), %10 ], [ null, %28 ], [ %41, %34 ]
  ret ptr %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @f_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @f_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 47
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_class, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.trace_event_class, ptr %11, i32 0, i32 6
  br label %19

17:                                               ; preds = %3
  %18 = tail call ptr %13(ptr noundef %9) #18
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %18, %17 ], [ %16, %15 ]
  %21 = load i64, ptr %2, align 8
  %22 = add i64 %21, 1
  store i64 %22, ptr %2, align 8
  %23 = ptrtoint ptr %1 to i32
  switch i32 %23, label %26 [
    i32 1, label %24
    i32 2, label %25
    i32 3, label %34
  ]

24:                                               ; preds = %19
  br label %26

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %24, %19
  %27 = phi ptr [ %1, %19 ], [ %20, %25 ], [ @ftrace_common_fields, %24 ]
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, @ftrace_common_fields
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = icmp eq ptr %29, %20
  %33 = select i1 %32, ptr inttoptr (i32 3 to ptr), ptr %29
  br label %34

34:                                               ; preds = %31, %26, %19
  %35 = phi ptr [ null, %19 ], [ inttoptr (i32 2 to ptr), %26 ], [ %33, %31 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @f_show(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.file, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 47
  %8 = load volatile ptr, ptr %7, align 4
  %9 = ptrtoint ptr %1 to i32
  switch i32 %9, label %29 [
    i32 1, label %10
    i32 2, label %25
    i32 3, label %26
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %8, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %8, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  br i1 %14, label %21, label %17

17:                                               ; preds = %10
  %18 = icmp eq ptr %16, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %16, align 4
  br label %21

21:                                               ; preds = %19, %17, %10
  %22 = phi ptr [ %20, %19 ], [ null, %17 ], [ %16, %10 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef %22) #18
  %23 = getelementptr inbounds %struct.trace_event_call, ptr %8, i32 0, i32 3, i32 2
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %24) #18
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.38) #18
  br label %62

25:                                               ; preds = %2
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #18
  br label %62

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.trace_event_call, ptr %8, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef %28) #18
  br label %62

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.ftrace_event_field, ptr %1, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = tail call ptr @strchr(ptr noundef %31, i32 noundef 91)
  %33 = tail call i32 @strncmp(ptr noundef %31, ptr noundef nonnull dereferenceable(11) @.str.40, i32 noundef 10) #18
  %34 = icmp eq i32 %33, 0
  %35 = icmp eq ptr %32, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.ftrace_event_field, ptr %1, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.ftrace_event_field, ptr %1, i32 0, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.ftrace_event_field, ptr %1, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ftrace_event_field, ptr %1, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef %31, ptr noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %47) #18
  br label %62

48:                                               ; preds = %29
  %49 = ptrtoint ptr %32 to i32
  %50 = ptrtoint ptr %31 to i32
  %51 = sub i32 %49, %50
  %52 = getelementptr inbounds %struct.ftrace_event_field, ptr %1, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.ftrace_event_field, ptr %1, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.ftrace_event_field, ptr %1, i32 0, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.ftrace_event_field, ptr %1, i32 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %51, ptr noundef %31, ptr noundef %53, ptr noundef nonnull %32, i32 noundef %55, i32 noundef %57, i32 noundef %61) #18
  br label %62

62:                                               ; preds = %48, %37, %26, %25, %21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_print_page_header(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_print_entry_header(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftrace_event_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.trace_parser, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !20
  %6 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %4
  %12 = tail call i32 @tracing_update_buffers() #18
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %11
  %15 = call i32 @trace_parser_get_init(ptr noundef nonnull %5, i32 noundef 128) #18
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = call i32 @trace_get_user(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2, ptr noundef %3) #18
  %19 = icmp sgt i32 %18, -1
  %20 = getelementptr inbounds %struct.trace_parser, ptr %5, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %19, i1 %22, i1 false
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.trace_parser, ptr %5, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load i8, ptr %26, align 1
  %28 = icmp ne i8 %27, 33
  %29 = zext i1 %28 to i32
  %30 = xor i1 %28, true
  %31 = zext i1 %30 to i32
  %32 = getelementptr i8, ptr %26, i32 %31
  %33 = call i32 @ftrace_set_clr_event(ptr noundef %9, ptr noundef %32, i32 noundef %29)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24, %17
  br label %36

36:                                               ; preds = %35, %24
  %37 = phi i32 [ %33, %24 ], [ %18, %35 ]
  call void @trace_parser_put(ptr noundef nonnull %5) #18
  br label %38

38:                                               ; preds = %36, %14, %11, %4
  %39 = phi i32 [ %37, %36 ], [ 0, %4 ], [ %12, %11 ], [ -12, %14 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftrace_event_set_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @tracing_check_open_get_tr(ptr noundef %4) #18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %18 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 25
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %26, label %21

21:                                               ; preds = %21, %17
  %22 = phi ptr [ %24, %21 ], [ %19, %17 ]
  %23 = tail call fastcc i32 @__ftrace_event_enable_disable(ptr noundef %22, i32 noundef 0, i32 noundef 0) #18
  %24 = load ptr, ptr %22, align 4
  %25 = icmp eq ptr %24, %18
  br i1 %25, label %26, label %21

26:                                               ; preds = %21, %17
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  br label %27

27:                                               ; preds = %26, %12, %7
  %28 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @show_set_event_seq_ops) #18
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr inbounds %struct.seq_file, ptr %32, i32 0, i32 11
  store ptr %33, ptr %34, align 8
  br label %36

35:                                               ; preds = %27
  tail call void @trace_array_put(ptr noundef %4) #18
  br label %36

36:                                               ; preds = %35, %30, %2
  %37 = phi i32 [ %5, %2 ], [ %28, %35 ], [ %28, %30 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftrace_event_release(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  tail call void @trace_array_put(ptr noundef %4) #18
  %5 = tail call i32 @seq_release(ptr noundef %0, ptr noundef %1) #18
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_parser_get_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_get_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_parser_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_check_open_get_tr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @s_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %5 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 25
  %6 = load i64, ptr %1, align 8
  br label %7

7:                                                ; preds = %24, %2
  %8 = phi i64 [ 0, %2 ], [ %13, %24 ]
  %9 = phi ptr [ %5, %2 ], [ %17, %24 ]
  %10 = icmp sgt i64 %8, %6
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8
  %13 = add i64 %8, 1
  %14 = getelementptr inbounds %struct.trace_array, ptr %12, i32 0, i32 25
  br label %15

15:                                               ; preds = %19, %11
  %16 = phi ptr [ %9, %11 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %14
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.trace_event_file, ptr %17, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %15, label %24

24:                                               ; preds = %19
  %25 = icmp eq ptr %17, null
  br i1 %25, label %26, label %7

26:                                               ; preds = %24, %15, %7
  %27 = phi ptr [ null, %15 ], [ %9, %7 ], [ null, %24 ]
  ret ptr %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @t_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @s_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #14 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %2, align 8
  %7 = add i64 %6, 1
  store i64 %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 25
  br label %9

9:                                                ; preds = %13, %3
  %10 = phi ptr [ %1, %3 ], [ %11, %13 ]
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %8
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.trace_event_file, ptr %11, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %9, label %18

18:                                               ; preds = %13, %9
  %19 = phi ptr [ %11, %13 ], [ null, %9 ]
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @t_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.trace_event_file, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(13) @.str.21)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, ptr noundef %7) #18
  br label %11

11:                                               ; preds = %10, %2
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %4, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %4, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  br i1 %15, label %22, label %18

18:                                               ; preds = %11
  %19 = icmp eq ptr %17, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %17, align 4
  br label %22

22:                                               ; preds = %20, %18, %11
  %23 = phi ptr [ %21, %20 ], [ null, %18 ], [ %17, %11 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.55, ptr noundef %23) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @system_tr_open(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 28) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @tracing_open_generic_tr(ptr noundef %0, ptr noundef %1) #18
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @kfree(ptr noundef nonnull %6) #18
  br label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.trace_subsystem_dir, ptr %6, i32 0, i32 2
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  store ptr %6, ptr %14, align 8
  br label %15

15:                                               ; preds = %12, %11, %2
  %16 = phi i32 [ %9, %11 ], [ 0, %12 ], [ -12, %2 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracing_open_generic_tr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftrace_event_pid_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = tail call fastcc i32 @event_pid_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 1)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftrace_event_set_pid_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @tracing_check_open_get_tr(ptr noundef %4) #18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  tail call fastcc void @__ftrace_clear_event_pids(ptr noundef %4, i32 noundef 1) #18
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  br label %18

18:                                               ; preds = %17, %12, %7
  %19 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @show_set_pid_seq_ops) #18
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr inbounds %struct.seq_file, ptr %23, i32 0, i32 11
  store ptr %24, ptr %25, align 8
  br label %27

26:                                               ; preds = %18
  tail call void @trace_array_put(ptr noundef %4) #18
  br label %27

27:                                               ; preds = %26, %21, %2
  %28 = phi i32 [ %5, %2 ], [ %19, %26 ], [ %19, %21 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @event_pid_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.seq_file, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store ptr null, ptr %6, align 4, !annotation !20
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %62, label %12

12:                                               ; preds = %5
  %13 = tail call i32 @tracing_update_buffers() #18
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %62, label %15

15:                                               ; preds = %12
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %16 = icmp eq i32 %4, 1
  %17 = getelementptr inbounds %struct.trace_array, ptr %10, i32 0, i32 3
  %18 = getelementptr inbounds %struct.trace_array, ptr %10, i32 0, i32 4
  %19 = select i1 %16, ptr %18, ptr %17
  %20 = select i1 %16, ptr %17, ptr %18
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = call i32 @trace_pid_write(ptr noundef %21, ptr noundef nonnull %6, ptr noundef %1, i32 noundef %2) #18
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  br label %62

26:                                               ; preds = %15
  %27 = load ptr, ptr %6, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18
  br i1 %16, label %28, label %29

28:                                               ; preds = %26
  store volatile ptr %27, ptr %17, align 8
  br label %30

29:                                               ; preds = %26
  store volatile ptr %27, ptr %18, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = getelementptr inbounds %struct.trace_array, ptr %10, i32 0, i32 25
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %39, label %34

34:                                               ; preds = %34, %30
  %35 = phi ptr [ %37, %34 ], [ %32, %30 ]
  %36 = getelementptr inbounds %struct.trace_event_file, ptr %35, i32 0, i32 7
  call void @_set_bit(i32 noundef 9, ptr noundef %36) #18
  %37 = load ptr, ptr %35, align 4
  %38 = icmp eq ptr %37, %31
  br i1 %38, label %39, label %34

39:                                               ; preds = %34, %30
  %40 = icmp eq ptr %21, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #18
  call void @synchronize_rcu() #18
  call void @trace_pid_list_free(ptr noundef nonnull %21) #18
  br label %56

42:                                               ; preds = %39
  %43 = load ptr, ptr %6, align 4
  %44 = icmp eq ptr %43, null
  %45 = icmp ne ptr %22, null
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = call i32 @tracepoint_probe_register_prio(ptr noundef nonnull @__tracepoint_sched_switch, ptr noundef nonnull @event_filter_pid_sched_switch_probe_pre, ptr noundef %10, i32 noundef 2147483647) #18
  %49 = call i32 @tracepoint_probe_register_prio(ptr noundef nonnull @__tracepoint_sched_switch, ptr noundef nonnull @event_filter_pid_sched_switch_probe_post, ptr noundef %10, i32 noundef 0) #18
  %50 = call i32 @tracepoint_probe_register_prio(ptr noundef nonnull @__tracepoint_sched_wakeup, ptr noundef nonnull @event_filter_pid_sched_wakeup_probe_pre, ptr noundef %10, i32 noundef 2147483647) #18
  %51 = call i32 @tracepoint_probe_register_prio(ptr noundef nonnull @__tracepoint_sched_wakeup, ptr noundef nonnull @event_filter_pid_sched_wakeup_probe_post, ptr noundef %10, i32 noundef 0) #18
  %52 = call i32 @tracepoint_probe_register_prio(ptr noundef nonnull @__tracepoint_sched_wakeup_new, ptr noundef nonnull @event_filter_pid_sched_wakeup_probe_pre, ptr noundef %10, i32 noundef 2147483647) #18
  %53 = call i32 @tracepoint_probe_register_prio(ptr noundef nonnull @__tracepoint_sched_wakeup_new, ptr noundef nonnull @event_filter_pid_sched_wakeup_probe_post, ptr noundef %10, i32 noundef 0) #18
  %54 = call i32 @tracepoint_probe_register_prio(ptr noundef nonnull @__tracepoint_sched_waking, ptr noundef nonnull @event_filter_pid_sched_wakeup_probe_pre, ptr noundef %10, i32 noundef 2147483647) #18
  %55 = call i32 @tracepoint_probe_register_prio(ptr noundef nonnull @__tracepoint_sched_waking, ptr noundef nonnull @event_filter_pid_sched_wakeup_probe_post, ptr noundef %10, i32 noundef 0) #18
  br label %56

56:                                               ; preds = %47, %42, %41
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef nonnull @ignore_task_cpu, ptr noundef %10, i1 noundef zeroext true, ptr noundef nonnull @__cpu_online_mask) #18
  call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  %57 = icmp sgt i32 %23, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = zext i32 %23 to i64
  %60 = load i64, ptr %3, align 8
  %61 = add i64 %60, %59
  store i64 %61, ptr %3, align 8
  br label %62

62:                                               ; preds = %58, %56, %25, %12, %5
  %63 = phi i32 [ 0, %5 ], [ %13, %12 ], [ %23, %58 ], [ %23, %56 ], [ %23, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_pid_write(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_pid_list_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ignore_task_cpu(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !26
  %7 = tail call ptr @llvm.thread.pointer() #18
  %8 = tail call zeroext i1 @trace_ignore_this_task(ptr noundef %3, ptr noundef %5, ptr noundef %7) #18
  %9 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.trace_array_cpu, ptr %10, i32 0, i32 15
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #8, !srcloc !10
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = zext i1 %8 to i8
  store i8 %18, ptr %17, align 1
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #18, !srcloc !27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @event_filter_pid_sched_switch_probe_pre(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 3
  %6 = load volatile ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 4
  %8 = load volatile ptr, ptr %7, align 4
  %9 = tail call zeroext i1 @trace_ignore_this_task(ptr noundef null, ptr noundef %8, ptr noundef %2) #18
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !26
  br label %15

12:                                               ; preds = %4
  %13 = tail call zeroext i1 @trace_ignore_this_task(ptr noundef null, ptr noundef %8, ptr noundef %3) #18
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !26
  br i1 %13, label %20, label %15

15:                                               ; preds = %12, %10
  %16 = phi i32 [ %11, %10 ], [ %14, %12 ]
  %17 = tail call zeroext i1 @trace_ignore_this_task(ptr noundef %6, ptr noundef null, ptr noundef %2) #18
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call zeroext i1 @trace_ignore_this_task(ptr noundef %6, ptr noundef null, ptr noundef %3) #18
  br label %20

20:                                               ; preds = %18, %15, %12
  %21 = phi i32 [ %14, %12 ], [ %16, %15 ], [ %16, %18 ]
  %22 = phi i1 [ true, %12 ], [ false, %15 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.trace_array_cpu, ptr %24, i32 0, i32 15
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #8, !srcloc !10
  %30 = add i32 %29, %26
  %31 = inttoptr i32 %30 to ptr
  %32 = zext i1 %22 to i8
  store i8 %32, ptr %31, align 1
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #18, !srcloc !27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @event_filter_pid_sched_switch_probe_post(ptr noundef %0, i1 noundef zeroext %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 3
  %6 = load volatile ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 4
  %8 = load volatile ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !26
  %10 = tail call zeroext i1 @trace_ignore_this_task(ptr noundef %6, ptr noundef %8, ptr noundef %3) #18
  %11 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.trace_array_cpu, ptr %12, i32 0, i32 15
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #8, !srcloc !10
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = zext i1 %10 to i8
  store i8 %20, ptr %19, align 1
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %9) #18, !srcloc !27
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @event_filter_pid_sched_wakeup_probe_pre(ptr noundef %0, ptr noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !28
  %3 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.trace_array_cpu, ptr %4, i32 0, i32 15
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #8, !srcloc !10
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load volatile i8, ptr %11, align 1, !range !11
  %13 = icmp eq i8 %12, 0
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !29
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 3
  %16 = load volatile ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 4
  %18 = load volatile ptr, ptr %17, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !26
  %20 = tail call zeroext i1 @trace_ignore_this_task(ptr noundef %16, ptr noundef %18, ptr noundef %1) #18
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.trace_array_cpu, ptr %21, i32 0, i32 15
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #8, !srcloc !10
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = zext i1 %20 to i8
  store i8 %29, ptr %28, align 1
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #18, !srcloc !27
  br label %30

30:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @event_filter_pid_sched_wakeup_probe_post(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !30
  %3 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 2, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.trace_array_cpu, ptr %4, i32 0, i32 15
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #8, !srcloc !10
  %10 = add i32 %9, %6
  %11 = inttoptr i32 %10 to ptr
  %12 = load volatile i8, ptr %11, align 1, !range !11
  %13 = icmp eq i8 %12, 0
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !31
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 3
  %16 = load volatile ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.trace_array, ptr %0, i32 0, i32 4
  %18 = load volatile ptr, ptr %17, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !26
  %20 = tail call ptr @llvm.thread.pointer() #18
  %21 = tail call zeroext i1 @trace_ignore_this_task(ptr noundef %16, ptr noundef %18, ptr noundef %20) #18
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.trace_array_cpu, ptr %22, i32 0, i32 15
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #8, !srcloc !10
  %28 = add i32 %27, %24
  %29 = inttoptr i32 %28 to ptr
  %30 = zext i1 %21 to i8
  store i8 %30, ptr %29, align 1
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #18, !srcloc !27
  br label %31

31:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_ignore_this_task(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @p_start(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !32
  %5 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 3
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @trace_pid_start(ptr noundef nonnull %6, ptr noundef %1) #18
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @p_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !33
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @p_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 3
  %7 = load volatile ptr, ptr %6, align 4
  %8 = tail call ptr @trace_pid_next(ptr noundef %7, ptr noundef %1, ptr noundef %2) #18
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_pid_show(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_pid_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_pid_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftrace_event_npid_write(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = tail call fastcc i32 @event_pid_write(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 2)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftrace_event_set_npid_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @tracing_check_open_get_tr(ptr noundef %4) #18
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 8
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 512
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  tail call fastcc void @__ftrace_clear_event_pids(ptr noundef %4, i32 noundef 2) #18
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  br label %18

18:                                               ; preds = %17, %12, %7
  %19 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @show_set_no_pid_seq_ops) #18
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %3, align 4
  %25 = getelementptr inbounds %struct.seq_file, ptr %23, i32 0, i32 11
  store ptr %24, ptr %25, align 8
  br label %27

26:                                               ; preds = %18
  tail call void @trace_array_put(ptr noundef %4) #18
  br label %27

27:                                               ; preds = %26, %21, %2
  %28 = phi i32 [ %5, %2 ], [ %19, %26 ], [ %19, %21 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @np_start(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !32
  %5 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 4
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @trace_pid_start(ptr noundef nonnull %6, ptr noundef %1) #18
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @np_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = tail call ptr @trace_pid_next(ptr noundef %7, ptr noundef %1, ptr noundef %2) #18
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_header(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = load i64, ptr %3, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 4128) #22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.trace_seq, ptr %11, i32 0, i32 1
  store ptr %11, ptr %14, align 8
  %15 = getelementptr inbounds %struct.trace_seq, ptr %11, i32 0, i32 1, i32 1
  store i32 4096, ptr %15, align 4
  %16 = getelementptr inbounds %struct.trace_seq, ptr %11, i32 0, i32 1, i32 2
  store i32 0, ptr %16, align 8
  %17 = getelementptr inbounds %struct.trace_seq, ptr %11, i32 0, i32 1, i32 3
  store i64 0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.trace_seq, ptr %11, i32 0, i32 2
  store i32 0, ptr %18, align 8
  %19 = tail call i32 %6(ptr noundef nonnull %11) #18
  %20 = load i32, ptr %16, align 8
  %21 = load i32, ptr %15, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %20, i32 %21) #18
  %23 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %11, i32 noundef %22) #18
  tail call void @kfree(ptr noundef nonnull %11) #18
  br label %24

24:                                               ; preds = %13, %9, %4
  %25 = phi i32 [ %23, %13 ], [ 0, %4 ], [ -12, %9 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @early_enable_events(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #7 section ".init.text" {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  store ptr @bootup_event_buf, ptr %3, align 4
  %4 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str.57) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %23, %2
  %7 = phi ptr [ %24, %23 ], [ %4, %2 ]
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  br i1 %1, label %11, label %13

11:                                               ; preds = %10
  %12 = call i32 @ftrace_set_clr_event(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 0)
  br label %13

13:                                               ; preds = %11, %10
  %14 = call i32 @ftrace_set_clr_event(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 1)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull %7) #19
  br label %18

18:                                               ; preds = %16, %13, %6
  %19 = load ptr, ptr %3, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = getelementptr i8, ptr %19, i32 -1
  store i8 44, ptr %22, align 1
  br label %23

23:                                               ; preds = %21, %18
  %24 = call ptr @strsep(ptr noundef nonnull %3, ptr noundef nonnull @.str.57) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %6

26:                                               ; preds = %23, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ftrace_event_avail_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @show_event_seq_ops) #18
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 11
  store ptr %9, ptr %10, align 8
  br label %11

11:                                               ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @t_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  %5 = getelementptr inbounds %struct.trace_array, ptr %4, i32 0, i32 25
  %6 = load i64, ptr %1, align 8
  br label %7

7:                                                ; preds = %36, %2
  %8 = phi i64 [ 0, %2 ], [ %13, %36 ]
  %9 = phi ptr [ %5, %2 ], [ %18, %36 ]
  %10 = icmp sgt i64 %8, %6
  br i1 %10, label %38, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8
  %13 = add i64 %8, 1
  %14 = getelementptr inbounds %struct.trace_array, ptr %12, i32 0, i32 25
  %15 = load ptr, ptr %9, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %38, label %17

17:                                               ; preds = %33, %11
  %18 = phi ptr [ %34, %33 ], [ %15, %11 ]
  %19 = getelementptr inbounds %struct.trace_event_file, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.trace_event_class, ptr %22, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.trace_event_call, ptr %20, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28, %24, %17
  %34 = load ptr, ptr %18, align 4
  %35 = icmp eq ptr %34, %14
  br i1 %35, label %38, label %17

36:                                               ; preds = %28
  %37 = icmp eq ptr %18, null
  br i1 %37, label %38, label %7

38:                                               ; preds = %36, %33, %11, %7
  %39 = phi ptr [ null, %33 ], [ null, %11 ], [ %9, %7 ], [ null, %36 ]
  ret ptr %39
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @t_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #14 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %2, align 8
  %7 = add i64 %6, 1
  store i64 %7, ptr %2, align 8
  %8 = getelementptr inbounds %struct.trace_array, ptr %5, i32 0, i32 25
  %9 = load ptr, ptr %1, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %30, label %11

11:                                               ; preds = %27, %3
  %12 = phi ptr [ %28, %27 ], [ %9, %3 ]
  %13 = getelementptr inbounds %struct.trace_event_file, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.trace_event_class, ptr %16, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.trace_event_call, ptr %14, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %18, %11
  %28 = load ptr, ptr %12, align 4
  %29 = icmp eq ptr %28, %8
  br i1 %29, label %30, label %11

30:                                               ; preds = %27, %22, %3
  %31 = phi ptr [ null, %3 ], [ null, %27 ], [ %12, %22 ]
  ret ptr %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_module_notify(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @event_mutex) #18
  tail call void @mutex_lock(ptr noundef nonnull @trace_types_lock) #18
  switch i32 %1, label %92 [
    i32 1, label %4
    i32 2, label %72
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 46
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %92, label %8

8:                                                ; preds = %4
  %9 = tail call zeroext i1 @trace_module_has_bad_taint(ptr noundef %2) #18
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %11) #19
  br label %92

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 45
  %15 = load ptr, ptr %14, align 16
  %16 = load i32, ptr %5, align 4
  %17 = getelementptr ptr, ptr %15, i32 %16
  %18 = icmp ult ptr %15, %17
  br i1 %18, label %19, label %92

19:                                               ; preds = %69, %13
  %20 = phi ptr [ %70, %69 ], [ %15, %13 ]
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_call, ptr %21, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.trace_event_call, ptr %21, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  br i1 %25, label %32, label %28

28:                                               ; preds = %19
  %29 = icmp eq ptr %27, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %27, align 4
  br label %32

32:                                               ; preds = %30, %19
  %33 = phi ptr [ %31, %30 ], [ %27, %19 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !9

35:                                               ; preds = %32, %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2508, i32 noundef 9, ptr noundef null) #18
  br label %60

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.trace_event_call, ptr %21, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_class, ptr %38, i32 0, i32 7
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = tail call i32 %40(ptr noundef %21) #18
  %44 = icmp slt i32 %43, 0
  %45 = icmp ne i32 %43, -38
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull %33) #19
  br label %60

49:                                               ; preds = %42
  br i1 %44, label %60, label %50

50:                                               ; preds = %49, %36
  %51 = load ptr, ptr @ftrace_events, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %21, ptr %52, align 4
  store ptr %51, ptr %21, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr @ftrace_events, ptr %53, align 4
  store volatile ptr %21, ptr @ftrace_events, align 4
  %54 = load i32, ptr %22, align 4
  %55 = and i32 %54, 32
  %56 = icmp eq i32 %55, 0
  %57 = getelementptr inbounds %struct.trace_event_call, ptr %21, i32 0, i32 6
  br i1 %56, label %59, label %58

58:                                               ; preds = %50
  store volatile i32 0, ptr %57, align 4
  br label %60

59:                                               ; preds = %50
  store ptr %2, ptr %57, align 4
  br label %60

60:                                               ; preds = %59, %58, %49, %47, %35
  %61 = load ptr, ptr %20, align 4
  %62 = load ptr, ptr @ftrace_trace_arrays, align 4
  %63 = icmp eq ptr %62, @ftrace_trace_arrays
  br i1 %63, label %69, label %64

64:                                               ; preds = %64, %60
  %65 = phi ptr [ %67, %64 ], [ %62, %60 ]
  %66 = tail call fastcc i32 @__trace_add_new_event(ptr noundef %61, ptr noundef %65) #18
  %67 = load ptr, ptr %65, align 4
  %68 = icmp eq ptr %67, @ftrace_trace_arrays
  br i1 %68, label %69, label %64

69:                                               ; preds = %64, %60
  %70 = getelementptr ptr, ptr %20, i32 1
  %71 = icmp ult ptr %70, %17
  br i1 %71, label %19, label %92

72:                                               ; preds = %3
  tail call void @down_write(ptr noundef nonnull @trace_event_sem) #18
  %73 = load ptr, ptr @ftrace_events, align 4
  %74 = icmp eq ptr %73, @ftrace_events
  br i1 %74, label %91, label %75

75:                                               ; preds = %89, %72
  %76 = phi ptr [ %77, %89 ], [ %73, %72 ]
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.trace_event_call, ptr %76, i32 0, i32 8
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.trace_event_call, ptr %76, i32 0, i32 6
  %84 = load ptr, ptr %83, align 4
  %85 = icmp ne ptr %84, null
  %86 = icmp eq ptr %84, %2
  %87 = and i1 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  tail call fastcc void @__trace_remove_event_call(ptr noundef %76) #18
  br label %89

89:                                               ; preds = %88, %82, %75
  %90 = icmp eq ptr %77, @ftrace_events
  br i1 %90, label %91, label %75

91:                                               ; preds = %89, %72
  tail call void @up_write(ptr noundef nonnull @trace_event_sem) #18
  tail call void @tracing_reset_all_online_cpus() #18
  br label %92

92:                                               ; preds = %91, %69, %13, %10, %4, %3
  tail call void @mutex_unlock(ptr noundef nonnull @trace_types_lock) #18
  tail call void @mutex_unlock(ptr noundef nonnull @event_mutex) #18
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trace_module_has_bad_taint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tracing_reset_all_online_cpus() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_printk_start_comm() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_trigger_cmds() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nofree nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { nounwind }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { cold }
attributes #22 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 559320}
!11 = !{i8 0, i8 2}
!12 = !{i64 543352}
!13 = !{i64 2148237007}
!14 = !{i64 634942, i64 2148124913, i64 2148124939, i64 2148124986, i64 2148125008, i64 2148125036, i64 2148125056}
!15 = !{i64 2148139369, i64 2148139401, i64 2148139430, i64 2148139464, i64 2148139495, i64 2148139518}
!16 = !{i64 2148237210}
!17 = !{i64 2148234174}
!18 = !{i64 2148137012, i64 2148137044, i64 2148137073, i64 2148137107, i64 2148137138, i64 2148137161}
!19 = !{i64 2148234377}
!20 = !{!"auto-init"}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2149020163}
!23 = !{i64 2149015987}
!24 = !{i64 2149016062, i64 2149016089, i64 2149016136, i64 2149016158, i64 2149016186, i64 2149016206}
!25 = !{i64 2149043166}
!26 = !{i64 540620, i64 540681}
!27 = !{i64 543637}
!28 = !{i64 2154699241}
!29 = !{i64 2154717370}
!30 = !{i64 2154801420}
!31 = !{i64 2154819549}
!32 = !{i64 2149121991}
!33 = !{i64 2149122613}
