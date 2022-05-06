; ModuleID = '/llk/IR/drivers/i2c/i2c-core-smbus.c_pt.bc'
source_filename = "../drivers/i2c/i2c-core-smbus.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_smbus_pec:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_smbus_pec\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_smbus_pec:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_smbus_read_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_smbus_read_byte\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_smbus_read_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_smbus_write_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_smbus_write_byte\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_smbus_write_byte:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_smbus_read_byte_data:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_smbus_read_byte_data\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_smbus_read_byte_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_smbus_write_byte_data:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_smbus_write_byte_data\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_smbus_write_byte_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_smbus_read_word_data:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_smbus_read_word_data\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_smbus_read_word_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_smbus_write_word_data:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_smbus_write_word_data\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_smbus_write_word_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_smbus_read_block_data:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_smbus_read_block_data\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_smbus_read_block_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_smbus_write_block_data:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_smbus_write_block_data\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_smbus_write_block_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_smbus_read_i2c_block_data:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_smbus_read_i2c_block_data\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_smbus_read_i2c_block_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_smbus_write_i2c_block_data:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_smbus_write_i2c_block_data\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_smbus_write_i2c_block_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_smbus_xfer:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_smbus_xfer\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_smbus_xfer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___i2c_smbus_xfer:\09\09\09\09\09"
module asm "\09.asciz \09\22__i2c_smbus_xfer\22\09\09\09\09\09"
module asm "__kstrtabns___i2c_smbus_xfer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_smbus_read_i2c_block_data_or_emulated:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_smbus_read_i2c_block_data_or_emulated\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_smbus_read_i2c_block_data_or_emulated:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_i2c_new_smbus_alert_device:\09\09\09\09\09"
module asm "\09.asciz \09\22i2c_new_smbus_alert_device\22\09\09\09\09\09"
module asm "__kstrtabns_i2c_new_smbus_alert_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_i2c_setup_smbus_alert:\09\09\09\09\09"
module asm "\09.asciz \09\22of_i2c_setup_smbus_alert\22\09\09\09\09\09"
module asm "__kstrtabns_of_i2c_setup_smbus_alert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.91 }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.93, %struct.trace_event, ptr, ptr, %union.anon.94, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.93 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.94 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_event_raw_smbus_write = type { %struct.trace_entry, i32, i16, i16, i8, i8, i32, [34 x i8], [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_smbus_read = type { %struct.trace_entry, i32, i16, i16, i8, i32, [34 x i8], [0 x i8] }
%struct.trace_event_raw_smbus_reply = type { %struct.trace_entry, i32, i16, i16, i8, i8, i32, [34 x i8], [0 x i8] }
%struct.trace_event_raw_smbus_result = type { %struct.trace_entry, i32, i16, i16, i8, i8, i16, i32, [0 x i8] }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_smbus_write = internal constant [12 x i8] c"smbus_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smbus_write = dso_local global %struct.static_call_key { ptr @__traceiter_smbus_write }, align 4
@__tracepoint_smbus_write = dso_local global %struct.tracepoint { ptr @__tpstrtab_smbus_write, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_smbus_write, ptr null, ptr @__traceiter_smbus_write, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smbus_write = internal constant ptr @__tracepoint_smbus_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_smbus_read = internal constant [11 x i8] c"smbus_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smbus_read = dso_local global %struct.static_call_key { ptr @__traceiter_smbus_read }, align 4
@__tracepoint_smbus_read = dso_local global %struct.tracepoint { ptr @__tpstrtab_smbus_read, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_smbus_read, ptr null, ptr @__traceiter_smbus_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smbus_read = internal constant ptr @__tracepoint_smbus_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_smbus_reply = internal constant [12 x i8] c"smbus_reply\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smbus_reply = dso_local global %struct.static_call_key { ptr @__traceiter_smbus_reply }, align 4
@__tracepoint_smbus_reply = dso_local global %struct.tracepoint { ptr @__tpstrtab_smbus_reply, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_smbus_reply, ptr null, ptr @__traceiter_smbus_reply, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smbus_reply = internal constant ptr @__tracepoint_smbus_reply, section "__tracepoints_ptrs", align 4
@__tpstrtab_smbus_result = internal constant [13 x i8] c"smbus_result\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_smbus_result = dso_local global %struct.static_call_key { ptr @__traceiter_smbus_result }, align 4
@__tracepoint_smbus_result = dso_local global %struct.tracepoint { ptr @__tpstrtab_smbus_result, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_smbus_result, ptr null, ptr @__traceiter_smbus_result, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_smbus_result = internal constant ptr @__tracepoint_smbus_result, section "__tracepoints_ptrs", align 4
@str__smbus__trace_system_name = internal constant [6 x i8] c"smbus\00", align 1
@trace_event_fields_smbus_write = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.91 { %struct.anon.92 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.91 { %struct.anon.92 { ptr @.str.6, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.91 { %struct.anon.92 { ptr @.str.7, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.9, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.10, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.91 { %struct.anon.92 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.91 { %struct.anon.92 { ptr @.str.14, i32 34, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_smbus_write = internal global %struct.trace_event_class { ptr @str__smbus__trace_system_name, ptr @trace_event_raw_event_smbus_write, ptr @perf_trace_smbus_write, ptr @trace_event_reg, ptr @trace_event_fields_smbus_write, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smbus_write, i64 24), ptr getelementptr (i8, ptr @event_class_smbus_write, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smbus_write = internal global %struct.trace_event_functions { ptr @trace_raw_output_smbus_write, ptr null, ptr null, ptr null }, align 4
@print_fmt_smbus_write = internal global [351 x i8] c"\22i2c-%d a=%03x f=%04x c=%x %s l=%u [%*phD]\22, REC->adapter_nr, REC->addr, REC->flags, REC->command, __print_symbolic(REC->protocol, { 0, \22QUICK\22 }, { 1, \22BYTE\22 }, { 2, \22BYTE_DATA\22 }, { 3, \22WORD_DATA\22 }, { 4, \22PROC_CALL\22 }, { 5, \22BLOCK_DATA\22 }, { 6, \22I2C_BLOCK_BROKEN\22 }, { 7, \22BLOCK_PROC_CALL\22 }, { 8, \22I2C_BLOCK_DATA\22 }), REC->len, REC->len, REC->buf\00", align 1
@event_smbus_write = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smbus_write, %union.anon.93 { ptr @__tracepoint_smbus_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smbus_write }, ptr @print_fmt_smbus_write, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_smbus_write = internal global ptr @event_smbus_write, section "_ftrace_events", align 4
@trace_event_fields_smbus_read = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.91 { %struct.anon.92 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.91 { %struct.anon.92 { ptr @.str.7, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.91 { %struct.anon.92 { ptr @.str.6, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.9, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.91 { %struct.anon.92 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.91 { %struct.anon.92 { ptr @.str.14, i32 34, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_smbus_read = internal global %struct.trace_event_class { ptr @str__smbus__trace_system_name, ptr @trace_event_raw_event_smbus_read, ptr @perf_trace_smbus_read, ptr @trace_event_reg, ptr @trace_event_fields_smbus_read, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smbus_read, i64 24), ptr getelementptr (i8, ptr @event_class_smbus_read, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smbus_read = internal global %struct.trace_event_functions { ptr @trace_raw_output_smbus_read, ptr null, ptr null, ptr null }, align 4
@print_fmt_smbus_read = internal global [308 x i8] c"\22i2c-%d a=%03x f=%04x c=%x %s\22, REC->adapter_nr, REC->addr, REC->flags, REC->command, __print_symbolic(REC->protocol, { 0, \22QUICK\22 }, { 1, \22BYTE\22 }, { 2, \22BYTE_DATA\22 }, { 3, \22WORD_DATA\22 }, { 4, \22PROC_CALL\22 }, { 5, \22BLOCK_DATA\22 }, { 6, \22I2C_BLOCK_BROKEN\22 }, { 7, \22BLOCK_PROC_CALL\22 }, { 8, \22I2C_BLOCK_DATA\22 })\00", align 1
@event_smbus_read = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smbus_read, %union.anon.93 { ptr @__tracepoint_smbus_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smbus_read }, ptr @print_fmt_smbus_read, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_smbus_read = internal global ptr @event_smbus_read, section "_ftrace_events", align 4
@trace_event_fields_smbus_reply = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.91 { %struct.anon.92 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.91 { %struct.anon.92 { ptr @.str.6, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.91 { %struct.anon.92 { ptr @.str.7, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.9, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.10, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.91 { %struct.anon.92 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.91 { %struct.anon.92 { ptr @.str.14, i32 34, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_smbus_reply = internal global %struct.trace_event_class { ptr @str__smbus__trace_system_name, ptr @trace_event_raw_event_smbus_reply, ptr @perf_trace_smbus_reply, ptr @trace_event_reg, ptr @trace_event_fields_smbus_reply, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smbus_reply, i64 24), ptr getelementptr (i8, ptr @event_class_smbus_reply, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smbus_reply = internal global %struct.trace_event_functions { ptr @trace_raw_output_smbus_reply, ptr null, ptr null, ptr null }, align 4
@print_fmt_smbus_reply = internal global [351 x i8] c"\22i2c-%d a=%03x f=%04x c=%x %s l=%u [%*phD]\22, REC->adapter_nr, REC->addr, REC->flags, REC->command, __print_symbolic(REC->protocol, { 0, \22QUICK\22 }, { 1, \22BYTE\22 }, { 2, \22BYTE_DATA\22 }, { 3, \22WORD_DATA\22 }, { 4, \22PROC_CALL\22 }, { 5, \22BLOCK_DATA\22 }, { 6, \22I2C_BLOCK_BROKEN\22 }, { 7, \22BLOCK_PROC_CALL\22 }, { 8, \22I2C_BLOCK_DATA\22 }), REC->len, REC->len, REC->buf\00", align 1
@event_smbus_reply = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smbus_reply, %union.anon.93 { ptr @__tracepoint_smbus_reply }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smbus_reply }, ptr @print_fmt_smbus_reply, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_smbus_reply = internal global ptr @event_smbus_reply, section "_ftrace_events", align 4
@trace_event_fields_smbus_result = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.91 { %struct.anon.92 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.91 { %struct.anon.92 { ptr @.str.6, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.91 { %struct.anon.92 { ptr @.str.7, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.26, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.9, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.27, %union.anon.91 { %struct.anon.92 { ptr @.str.28, i32 2, i32 2, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.91 { %struct.anon.92 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_smbus_result = internal global %struct.trace_event_class { ptr @str__smbus__trace_system_name, ptr @trace_event_raw_event_smbus_result, ptr @perf_trace_smbus_result, ptr @trace_event_reg, ptr @trace_event_fields_smbus_result, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_smbus_result, i64 24), ptr getelementptr (i8, ptr @event_class_smbus_result, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_smbus_result = internal global %struct.trace_event_functions { ptr @trace_raw_output_smbus_result, ptr null, ptr null, ptr null }, align 4
@print_fmt_smbus_result = internal global [364 x i8] c"\22i2c-%d a=%03x f=%04x c=%x %s %s res=%d\22, REC->adapter_nr, REC->addr, REC->flags, REC->command, __print_symbolic(REC->protocol, { 0, \22QUICK\22 }, { 1, \22BYTE\22 }, { 2, \22BYTE_DATA\22 }, { 3, \22WORD_DATA\22 }, { 4, \22PROC_CALL\22 }, { 5, \22BLOCK_DATA\22 }, { 6, \22I2C_BLOCK_BROKEN\22 }, { 7, \22BLOCK_PROC_CALL\22 }, { 8, \22I2C_BLOCK_DATA\22 }), REC->read_write == 0 ? \22wr\22 : \22rd\22, REC->res\00", align 1
@event_smbus_result = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_smbus_result, %union.anon.93 { ptr @__tracepoint_smbus_result }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_smbus_result }, ptr @print_fmt_smbus_result, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_smbus_result = internal global ptr @event_smbus_result, section "_ftrace_events", align 4
@__kstrtab_i2c_smbus_pec = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_smbus_pec = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_smbus_pec = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_smbus_pec to i32), ptr @__kstrtab_i2c_smbus_pec, ptr @__kstrtabns_i2c_smbus_pec }, section "___ksymtab+i2c_smbus_pec", align 4
@__kstrtab_i2c_smbus_read_byte = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_smbus_read_byte = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_smbus_read_byte = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_smbus_read_byte to i32), ptr @__kstrtab_i2c_smbus_read_byte, ptr @__kstrtabns_i2c_smbus_read_byte }, section "___ksymtab+i2c_smbus_read_byte", align 4
@__kstrtab_i2c_smbus_write_byte = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_smbus_write_byte = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_smbus_write_byte = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_smbus_write_byte to i32), ptr @__kstrtab_i2c_smbus_write_byte, ptr @__kstrtabns_i2c_smbus_write_byte }, section "___ksymtab+i2c_smbus_write_byte", align 4
@__kstrtab_i2c_smbus_read_byte_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_smbus_read_byte_data = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_smbus_read_byte_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_smbus_read_byte_data to i32), ptr @__kstrtab_i2c_smbus_read_byte_data, ptr @__kstrtabns_i2c_smbus_read_byte_data }, section "___ksymtab+i2c_smbus_read_byte_data", align 4
@__kstrtab_i2c_smbus_write_byte_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_smbus_write_byte_data = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_smbus_write_byte_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_smbus_write_byte_data to i32), ptr @__kstrtab_i2c_smbus_write_byte_data, ptr @__kstrtabns_i2c_smbus_write_byte_data }, section "___ksymtab+i2c_smbus_write_byte_data", align 4
@__kstrtab_i2c_smbus_read_word_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_smbus_read_word_data = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_smbus_read_word_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_smbus_read_word_data to i32), ptr @__kstrtab_i2c_smbus_read_word_data, ptr @__kstrtabns_i2c_smbus_read_word_data }, section "___ksymtab+i2c_smbus_read_word_data", align 4
@__kstrtab_i2c_smbus_write_word_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_smbus_write_word_data = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_smbus_write_word_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_smbus_write_word_data to i32), ptr @__kstrtab_i2c_smbus_write_word_data, ptr @__kstrtabns_i2c_smbus_write_word_data }, section "___ksymtab+i2c_smbus_write_word_data", align 4
@__kstrtab_i2c_smbus_read_block_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_smbus_read_block_data = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_smbus_read_block_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_smbus_read_block_data to i32), ptr @__kstrtab_i2c_smbus_read_block_data, ptr @__kstrtabns_i2c_smbus_read_block_data }, section "___ksymtab+i2c_smbus_read_block_data", align 4
@__kstrtab_i2c_smbus_write_block_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_smbus_write_block_data = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_smbus_write_block_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_smbus_write_block_data to i32), ptr @__kstrtab_i2c_smbus_write_block_data, ptr @__kstrtabns_i2c_smbus_write_block_data }, section "___ksymtab+i2c_smbus_write_block_data", align 4
@__kstrtab_i2c_smbus_read_i2c_block_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_smbus_read_i2c_block_data = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_smbus_read_i2c_block_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_smbus_read_i2c_block_data to i32), ptr @__kstrtab_i2c_smbus_read_i2c_block_data, ptr @__kstrtabns_i2c_smbus_read_i2c_block_data }, section "___ksymtab+i2c_smbus_read_i2c_block_data", align 4
@__kstrtab_i2c_smbus_write_i2c_block_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_smbus_write_i2c_block_data = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_smbus_write_i2c_block_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_smbus_write_i2c_block_data to i32), ptr @__kstrtab_i2c_smbus_write_i2c_block_data, ptr @__kstrtabns_i2c_smbus_write_i2c_block_data }, section "___ksymtab+i2c_smbus_write_i2c_block_data", align 4
@__kstrtab_i2c_smbus_xfer = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_smbus_xfer = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_smbus_xfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_smbus_xfer to i32), ptr @__kstrtab_i2c_smbus_xfer, ptr @__kstrtabns_i2c_smbus_xfer }, section "___ksymtab+i2c_smbus_xfer", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab___i2c_smbus_xfer = external dso_local constant [0 x i8], align 1
@__kstrtabns___i2c_smbus_xfer = external dso_local constant [0 x i8], align 1
@__ksymtab___i2c_smbus_xfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__i2c_smbus_xfer to i32), ptr @__kstrtab___i2c_smbus_xfer, ptr @__kstrtabns___i2c_smbus_xfer }, section "___ksymtab+__i2c_smbus_xfer", align 4
@__kstrtab_i2c_smbus_read_i2c_block_data_or_emulated = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_smbus_read_i2c_block_data_or_emulated = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_smbus_read_i2c_block_data_or_emulated = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_smbus_read_i2c_block_data_or_emulated to i32), ptr @__kstrtab_i2c_smbus_read_i2c_block_data_or_emulated, ptr @__kstrtabns_i2c_smbus_read_i2c_block_data_or_emulated }, section "___ksymtab+i2c_smbus_read_i2c_block_data_or_emulated", align 4
@.str = private unnamed_addr constant [20 x i8] c"smbus_alert\00\00\00\00\00\00\00\00\00", align 1
@__kstrtab_i2c_new_smbus_alert_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_i2c_new_smbus_alert_device = external dso_local constant [0 x i8], align 1
@__ksymtab_i2c_new_smbus_alert_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @i2c_new_smbus_alert_device to i32), ptr @__kstrtab_i2c_new_smbus_alert_device, ptr @__kstrtabns_i2c_new_smbus_alert_device }, section "___ksymtab_gpl+i2c_new_smbus_alert_device", align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"interrupt-names\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"smbus_alert\00", align 1
@__kstrtab_of_i2c_setup_smbus_alert = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_i2c_setup_smbus_alert = external dso_local constant [0 x i8], align 1
@__ksymtab_of_i2c_setup_smbus_alert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_i2c_setup_smbus_alert to i32), ptr @__kstrtab_of_i2c_setup_smbus_alert, ptr @__kstrtabns_of_i2c_setup_smbus_alert }, section "___ksymtab_gpl+of_i2c_setup_smbus_alert", align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"__u16\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"__u8\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"__u32\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"__u8[32 + 2]\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"i2c-%d a=%03x f=%04x c=%x %s l=%u [%*phD]\0A\00", align 1
@trace_raw_output_smbus_write.symbols = internal constant [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.16 }, %struct.trace_print_flags { i32 1, ptr @.str.17 }, %struct.trace_print_flags { i32 2, ptr @.str.18 }, %struct.trace_print_flags { i32 3, ptr @.str.19 }, %struct.trace_print_flags { i32 4, ptr @.str.20 }, %struct.trace_print_flags { i32 5, ptr @.str.21 }, %struct.trace_print_flags { i32 6, ptr @.str.22 }, %struct.trace_print_flags { i32 7, ptr @.str.23 }, %struct.trace_print_flags { i32 8, ptr @.str.24 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"QUICK\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"BYTE\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"BYTE_DATA\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"WORD_DATA\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"PROC_CALL\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"BLOCK_DATA\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"I2C_BLOCK_BROKEN\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"BLOCK_PROC_CALL\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"I2C_BLOCK_DATA\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"i2c-%d a=%03x f=%04x c=%x %s\0A\00", align 1
@trace_raw_output_smbus_read.symbols = internal constant [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.16 }, %struct.trace_print_flags { i32 1, ptr @.str.17 }, %struct.trace_print_flags { i32 2, ptr @.str.18 }, %struct.trace_print_flags { i32 3, ptr @.str.19 }, %struct.trace_print_flags { i32 4, ptr @.str.20 }, %struct.trace_print_flags { i32 5, ptr @.str.21 }, %struct.trace_print_flags { i32 6, ptr @.str.22 }, %struct.trace_print_flags { i32 7, ptr @.str.23 }, %struct.trace_print_flags { i32 8, ptr @.str.24 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_smbus_reply.symbols = internal constant [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.16 }, %struct.trace_print_flags { i32 1, ptr @.str.17 }, %struct.trace_print_flags { i32 2, ptr @.str.18 }, %struct.trace_print_flags { i32 3, ptr @.str.19 }, %struct.trace_print_flags { i32 4, ptr @.str.20 }, %struct.trace_print_flags { i32 5, ptr @.str.21 }, %struct.trace_print_flags { i32 6, ptr @.str.22 }, %struct.trace_print_flags { i32 7, ptr @.str.23 }, %struct.trace_print_flags { i32 8, ptr @.str.24 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"read_write\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"__s16\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"res\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"i2c-%d a=%03x f=%04x c=%x %s %s res=%d\0A\00", align 1
@trace_raw_output_smbus_result.symbols = internal constant [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.16 }, %struct.trace_print_flags { i32 1, ptr @.str.17 }, %struct.trace_print_flags { i32 2, ptr @.str.18 }, %struct.trace_print_flags { i32 3, ptr @.str.19 }, %struct.trace_print_flags { i32 4, ptr @.str.20 }, %struct.trace_print_flags { i32 5, ptr @.str.21 }, %struct.trace_print_flags { i32 6, ptr @.str.22 }, %struct.trace_print_flags { i32 7, ptr @.str.23 }, %struct.trace_print_flags { i32 8, ptr @.str.24 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.30 = private unnamed_addr constant [3 x i8] c"wr\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"rd\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"drivers/i2c/i2c-core.h\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"No atomic I2C transfer handler for '%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"%s %s: Transfer while suspended\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.36 = private unnamed_addr constant [29 x i8] c"Invalid block write size %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"Invalid block %s size %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"Invalid block size returned: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [36 x ptr] [ptr @__event_smbus_read, ptr @__event_smbus_reply, ptr @__event_smbus_result, ptr @__event_smbus_write, ptr @__ksymtab___i2c_smbus_xfer, ptr @__ksymtab_i2c_new_smbus_alert_device, ptr @__ksymtab_i2c_smbus_pec, ptr @__ksymtab_i2c_smbus_read_block_data, ptr @__ksymtab_i2c_smbus_read_byte, ptr @__ksymtab_i2c_smbus_read_byte_data, ptr @__ksymtab_i2c_smbus_read_i2c_block_data, ptr @__ksymtab_i2c_smbus_read_i2c_block_data_or_emulated, ptr @__ksymtab_i2c_smbus_read_word_data, ptr @__ksymtab_i2c_smbus_write_block_data, ptr @__ksymtab_i2c_smbus_write_byte, ptr @__ksymtab_i2c_smbus_write_byte_data, ptr @__ksymtab_i2c_smbus_write_i2c_block_data, ptr @__ksymtab_i2c_smbus_write_word_data, ptr @__ksymtab_i2c_smbus_xfer, ptr @__ksymtab_of_i2c_setup_smbus_alert, ptr @__tracepoint_ptr_smbus_read, ptr @__tracepoint_ptr_smbus_reply, ptr @__tracepoint_ptr_smbus_result, ptr @__tracepoint_ptr_smbus_write, ptr @__tracepoint_smbus_read, ptr @__tracepoint_smbus_reply, ptr @__tracepoint_smbus_result, ptr @__tracepoint_smbus_write, ptr @event_class_smbus_read, ptr @event_class_smbus_reply, ptr @event_class_smbus_result, ptr @event_class_smbus_write, ptr @event_smbus_read, ptr @event_smbus_reply, ptr @event_smbus_result, ptr @event_smbus_write], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_smbus_write(ptr nocapture readnone %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, ptr noundef %7) #0 {
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smbus_write, i32 0, i32 7), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %16, %11 ], [ %9, %8 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tracepoint_func, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %13(ptr noundef %15, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, ptr noundef %7) #13
  %16 = getelementptr %struct.tracepoint_func, ptr %12, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11

19:                                               ; preds = %11, %8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_smbus_read(ptr nocapture readnone %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smbus_read, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6) #13
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_smbus_reply(ptr nocapture readnone %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #0 {
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smbus_reply, i32 0, i32 7), align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %12, %9
  %13 = phi ptr [ %17, %12 ], [ %10, %9 ]
  %14 = load volatile ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.tracepoint_func, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void %14(ptr noundef %16, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, ptr noundef %7, i32 noundef %8) #13
  %17 = getelementptr %struct.tracepoint_func, ptr %13, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %12

20:                                               ; preds = %12, %9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_smbus_result(ptr nocapture readnone %0, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smbus_result, i32 0, i32 7), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %16, %11 ], [ %9, %8 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tracepoint_func, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %13(ptr noundef %15, ptr noundef %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7) #13
  %16 = getelementptr %struct.tracepoint_func, ptr %12, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11

19:                                               ; preds = %11, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smbus_write(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, ptr nocapture noundef readonly %7) #0 {
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
  br i1 %18, label %45, label %19

19:                                               ; preds = %17, %14, %8
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %9, ptr noundef %0, i32 noundef 60) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %20, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %20, i32 0, i32 2
  store i16 %2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %20, i32 0, i32 3
  store i16 %3, ptr %27, align 2
  %28 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %20, i32 0, i32 4
  store i8 %5, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %20, i32 0, i32 6
  store i32 %6, ptr %29, align 4
  switch i32 %6, label %42 [
    i32 2, label %30
    i32 3, label %32
    i32 4, label %32
    i32 5, label %34
    i32 7, label %34
    i32 8, label %34
  ]

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %20, i32 0, i32 5
  store i8 1, ptr %31, align 1
  br label %39

32:                                               ; preds = %22, %22
  %33 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %20, i32 0, i32 5
  store i8 2, ptr %33, align 1
  br label %39

34:                                               ; preds = %22, %22, %22
  %35 = load i8, ptr %7, align 2
  %36 = add i8 %35, 1
  %37 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %20, i32 0, i32 5
  store i8 %36, ptr %37, align 1
  %38 = zext i8 %36 to i32
  br label %39

39:                                               ; preds = %34, %32, %30
  %40 = phi i32 [ %38, %34 ], [ 2, %32 ], [ 1, %30 ]
  %41 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %20, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %41, ptr align 2 %7, i32 %40, i1 false)
  br label %44

42:                                               ; preds = %22
  %43 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %20, i32 0, i32 5
  store i8 0, ptr %43, align 1
  br label %44

44:                                               ; preds = %42, %39
  call void @trace_event_buffer_commit(ptr noundef nonnull %9) #13
  br label %45

45:                                               ; preds = %44, %19, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_smbus_write(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, ptr nocapture noundef readonly %7) #0 {
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
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #6, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %63, label %25

25:                                               ; preds = %22, %8
  %26 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %9, ptr noundef nonnull %10) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %63, label %28

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
  %39 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %26, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %26, i32 0, i32 2
  store i16 %2, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %26, i32 0, i32 3
  store i16 %3, ptr %43, align 2
  %44 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %26, i32 0, i32 4
  store i8 %5, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %26, i32 0, i32 6
  store i32 %6, ptr %45, align 4
  switch i32 %6, label %58 [
    i32 2, label %46
    i32 3, label %48
    i32 4, label %48
    i32 5, label %50
    i32 7, label %50
    i32 8, label %50
  ]

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %26, i32 0, i32 5
  store i8 1, ptr %47, align 1
  br label %55

48:                                               ; preds = %28, %28
  %49 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %26, i32 0, i32 5
  store i8 2, ptr %49, align 1
  br label %55

50:                                               ; preds = %28, %28, %28
  %51 = load i8, ptr %7, align 2
  %52 = add i8 %51, 1
  %53 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %26, i32 0, i32 5
  store i8 %52, ptr %53, align 1
  %54 = zext i8 %52 to i32
  br label %55

55:                                               ; preds = %50, %48, %46
  %56 = phi i32 [ %54, %50 ], [ 2, %48 ], [ 1, %46 ]
  %57 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %26, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %57, ptr align 2 %7, i32 %56, i1 false)
  br label %60

58:                                               ; preds = %28
  %59 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %26, i32 0, i32 5
  store i8 0, ptr %59, align 1
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i32, ptr %10, align 4
  %62 = load ptr, ptr %9, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %26, i32 noundef 60, i32 noundef %61, ptr noundef %0, i64 noundef 1, ptr noundef %62, ptr noundef %18, ptr noundef null) #13
  br label %63

63:                                               ; preds = %60, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smbus_read(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6) #0 {
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
  br i1 %17, label %29, label %18

18:                                               ; preds = %16, %13, %7
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %8, ptr noundef %0, i32 noundef 60) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_smbus_read, ptr %19, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_smbus_read, ptr %19, i32 0, i32 3
  store i16 %2, ptr %25, align 2
  %26 = getelementptr inbounds %struct.trace_event_raw_smbus_read, ptr %19, i32 0, i32 2
  store i16 %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_smbus_read, ptr %19, i32 0, i32 4
  store i8 %5, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_smbus_read, ptr %19, i32 0, i32 5
  store i32 %6, ptr %28, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %8) #13
  br label %29

29:                                               ; preds = %21, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_smbus_read(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6) #0 {
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
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #6, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %21, %7
  %25 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %8, ptr noundef nonnull %9) #13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

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
  %38 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_smbus_read, ptr %25, i32 0, i32 1
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_smbus_read, ptr %25, i32 0, i32 3
  store i16 %2, ptr %41, align 2
  %42 = getelementptr inbounds %struct.trace_event_raw_smbus_read, ptr %25, i32 0, i32 2
  store i16 %3, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_smbus_read, ptr %25, i32 0, i32 4
  store i8 %5, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_smbus_read, ptr %25, i32 0, i32 5
  store i32 %6, ptr %44, align 4
  %45 = load i32, ptr %9, align 4
  %46 = load ptr, ptr %8, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %25, i32 noundef 60, i32 noundef %45, ptr noundef %0, i64 noundef 1, ptr noundef %46, ptr noundef %17, ptr noundef null) #13
  br label %47

47:                                               ; preds = %27, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smbus_reply(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8) #0 {
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
  br i1 %19, label %46, label %20

20:                                               ; preds = %18, %15, %9
  %21 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %10, ptr noundef %0, i32 noundef 60) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %21, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %21, i32 0, i32 2
  store i16 %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %21, i32 0, i32 3
  store i16 %3, ptr %28, align 2
  %29 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %21, i32 0, i32 4
  store i8 %5, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %21, i32 0, i32 6
  store i32 %6, ptr %30, align 4
  switch i32 %6, label %43 [
    i32 1, label %31
    i32 2, label %31
    i32 3, label %33
    i32 4, label %33
    i32 5, label %35
    i32 7, label %35
    i32 8, label %35
  ]

31:                                               ; preds = %23, %23
  %32 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %21, i32 0, i32 5
  store i8 1, ptr %32, align 1
  br label %40

33:                                               ; preds = %23, %23
  %34 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %21, i32 0, i32 5
  store i8 2, ptr %34, align 1
  br label %40

35:                                               ; preds = %23, %23, %23
  %36 = load i8, ptr %7, align 2
  %37 = add i8 %36, 1
  %38 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %21, i32 0, i32 5
  store i8 %37, ptr %38, align 1
  %39 = zext i8 %37 to i32
  br label %40

40:                                               ; preds = %35, %33, %31
  %41 = phi i32 [ %39, %35 ], [ 2, %33 ], [ 1, %31 ]
  %42 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %21, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %42, ptr align 2 %7, i32 %41, i1 false)
  br label %45

43:                                               ; preds = %23
  %44 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %21, i32 0, i32 5
  store i8 0, ptr %44, align 1
  br label %45

45:                                               ; preds = %43, %40
  call void @trace_event_buffer_commit(ptr noundef nonnull %10) #13
  br label %46

46:                                               ; preds = %45, %20, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_smbus_reply(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8) #0 {
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
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #6, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %9
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %64, label %26

26:                                               ; preds = %23, %9
  %27 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %64, label %29

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
  %40 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %27, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %27, i32 0, i32 2
  store i16 %2, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %27, i32 0, i32 3
  store i16 %3, ptr %44, align 2
  %45 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %27, i32 0, i32 4
  store i8 %5, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %27, i32 0, i32 6
  store i32 %6, ptr %46, align 4
  switch i32 %6, label %59 [
    i32 1, label %47
    i32 2, label %47
    i32 3, label %49
    i32 4, label %49
    i32 5, label %51
    i32 7, label %51
    i32 8, label %51
  ]

47:                                               ; preds = %29, %29
  %48 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %27, i32 0, i32 5
  store i8 1, ptr %48, align 1
  br label %56

49:                                               ; preds = %29, %29
  %50 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %27, i32 0, i32 5
  store i8 2, ptr %50, align 1
  br label %56

51:                                               ; preds = %29, %29, %29
  %52 = load i8, ptr %7, align 2
  %53 = add i8 %52, 1
  %54 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %27, i32 0, i32 5
  store i8 %53, ptr %54, align 1
  %55 = zext i8 %53 to i32
  br label %56

56:                                               ; preds = %51, %49, %47
  %57 = phi i32 [ %55, %51 ], [ 2, %49 ], [ 1, %47 ]
  %58 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %27, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %58, ptr align 2 %7, i32 %57, i1 false)
  br label %61

59:                                               ; preds = %29
  %60 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %27, i32 0, i32 5
  store i8 0, ptr %60, align 1
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, ptr %11, align 4
  %63 = load ptr, ptr %10, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %27, i32 noundef 60, i32 noundef %62, ptr noundef %0, i64 noundef 1, ptr noundef %63, ptr noundef %19, ptr noundef null) #13
  br label %64

64:                                               ; preds = %61, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_smbus_result(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7) #0 {
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
  br i1 %18, label %33, label %19

19:                                               ; preds = %17, %14, %8
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %9, ptr noundef %0, i32 noundef 24) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %20, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %20, i32 0, i32 2
  store i16 %2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %20, i32 0, i32 3
  store i16 %3, ptr %27, align 2
  %28 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %20, i32 0, i32 4
  store i8 %4, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %20, i32 0, i32 5
  store i8 %5, ptr %29, align 1
  %30 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %20, i32 0, i32 7
  store i32 %6, ptr %30, align 4
  %31 = trunc i32 %7 to i16
  %32 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %20, i32 0, i32 6
  store i16 %31, ptr %32, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %9) #13
  br label %33

33:                                               ; preds = %22, %19, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_smbus_result(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7) #0 {
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
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #6, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %51, label %25

25:                                               ; preds = %22, %8
  %26 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %9, ptr noundef nonnull %10) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %51, label %28

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
  %39 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %26, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %26, i32 0, i32 2
  store i16 %2, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %26, i32 0, i32 3
  store i16 %3, ptr %43, align 2
  %44 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %26, i32 0, i32 4
  store i8 %4, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %26, i32 0, i32 5
  store i8 %5, ptr %45, align 1
  %46 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %26, i32 0, i32 7
  store i32 %6, ptr %46, align 4
  %47 = trunc i32 %7 to i16
  %48 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %26, i32 0, i32 6
  store i16 %47, ptr %48, align 2
  %49 = load i32, ptr %10, align 4
  %50 = load ptr, ptr %9, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %26, i32 noundef 28, i32 noundef %49, ptr noundef %0, i64 noundef 1, ptr noundef %50, ptr noundef %18, ptr noundef null) #13
  br label %51

51:                                               ; preds = %28, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i8 @i2c_smbus_pec(i8 noundef zeroext %0, ptr nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %50, label %5

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %46, %5 ], [ 0, %3 ]
  %7 = phi i8 [ %45, %5 ], [ %0, %3 ]
  %8 = getelementptr i8, ptr %1, i32 %6
  %9 = load i8, ptr %8, align 1
  %10 = xor i8 %9, %7
  %11 = zext i8 %10 to i16
  %12 = and i16 %11, 128
  %13 = icmp eq i16 %12, 0
  %14 = shl i16 %11, 9
  %15 = xor i16 %14, 1792
  %16 = select i1 %13, i16 %14, i16 %15
  %17 = icmp slt i16 %16, 0
  %18 = shl i16 %16, 1
  %19 = xor i16 %18, 1792
  %20 = select i1 %17, i16 %19, i16 %18
  %21 = icmp slt i16 %20, 0
  %22 = shl i16 %20, 1
  %23 = xor i16 %22, 1792
  %24 = select i1 %21, i16 %23, i16 %22
  %25 = icmp slt i16 %24, 0
  %26 = shl i16 %24, 1
  %27 = xor i16 %26, 1792
  %28 = select i1 %25, i16 %27, i16 %26
  %29 = icmp slt i16 %28, 0
  %30 = shl i16 %28, 1
  %31 = xor i16 %30, 1792
  %32 = select i1 %29, i16 %31, i16 %30
  %33 = icmp slt i16 %32, 0
  %34 = shl i16 %32, 1
  %35 = xor i16 %34, 1792
  %36 = select i1 %33, i16 %35, i16 %34
  %37 = icmp slt i16 %36, 0
  %38 = shl i16 %36, 1
  %39 = xor i16 %38, 1792
  %40 = select i1 %37, i16 %39, i16 %38
  %41 = icmp slt i16 %40, 0
  %42 = lshr i16 %40, 7
  %43 = xor i16 %42, 7
  %44 = select i1 %41, i16 %43, i16 %42
  %45 = trunc i16 %44 to i8
  %46 = add nuw i32 %6, 1
  %47 = icmp eq i32 %46, %2
  br i1 %47, label %48, label %5

48:                                               ; preds = %5
  %49 = trunc i16 %44 to i8
  br label %50

50:                                               ; preds = %48, %3
  %51 = phi i8 [ %0, %3 ], [ %49, %48 ]
  ret i8 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_smbus_read_byte(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %union.i2c_smbus_data, align 2
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %2, i8 0, i32 34, i1 false), !annotation !9
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %6 = load i16, ptr %5, align 2
  %7 = load i16, ptr %0, align 8
  %8 = call i32 @i2c_smbus_xfer(ptr noundef %4, i16 noundef zeroext %6, i16 noundef zeroext %7, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %2)
  %9 = icmp slt i32 %8, 0
  %10 = load i8, ptr %2, align 2
  %11 = zext i8 %10 to i32
  %12 = select i1 %9, i32 %8, i32 %11
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %2) #13
  ret i32 %12
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_smbus_xfer(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = load i32, ptr @system_state, align 4
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !13
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %40, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.i2c_algorithm, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.i2c_algorithm, ptr %16, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %33, !prof !11

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = phi ptr [ %30, %28 ], [ %26, %24 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 41, i32 noundef 9, ptr noundef nonnull @.str.33, ptr noundef %32) #13
  br label %33

33:                                               ; preds = %31, %20, %14
  %34 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.i2c_lock_operations, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %0, i32 noundef 2) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %44

40:                                               ; preds = %10, %7
  %41 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 4
  %42 = load ptr, ptr %41, align 8
  %43 = load ptr, ptr %42, align 4
  tail call void %43(ptr noundef %0, i32 noundef 2) #13
  br label %44

44:                                               ; preds = %40, %33
  %45 = tail call i32 @__i2c_smbus_xfer(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6)
  %46 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 4
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.i2c_lock_operations, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef %0, i32 noundef 2) #13
  br label %50

50:                                               ; preds = %44, %33
  %51 = phi i32 [ %45, %44 ], [ -11, %33 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_smbus_write_byte(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %6 = load i16, ptr %5, align 2
  %7 = load i16, ptr %0, align 8
  %8 = tail call i32 @i2c_smbus_xfer(ptr noundef %4, i16 noundef zeroext %6, i16 noundef zeroext %7, i8 noundef zeroext 0, i8 noundef zeroext %1, i32 noundef 1, ptr noundef null)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_smbus_read_byte_data(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %union.i2c_smbus_data, align 2
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %3, i8 0, i32 34, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = load i16, ptr %0, align 8
  %9 = call i32 @i2c_smbus_xfer(ptr noundef %5, i16 noundef zeroext %7, i16 noundef zeroext %8, i8 noundef zeroext 1, i8 noundef zeroext %1, i32 noundef 2, ptr noundef nonnull %3)
  %10 = icmp slt i32 %9, 0
  %11 = load i8, ptr %3, align 2
  %12 = zext i8 %11 to i32
  %13 = select i1 %10, i32 %9, i32 %12
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #13
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_smbus_write_byte_data(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = alloca %union.i2c_smbus_data, align 2
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %4, i8 0, i32 34, i1 false), !annotation !9
  store i8 %2, ptr %4, align 2
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  %9 = load i16, ptr %0, align 8
  %10 = call i32 @i2c_smbus_xfer(ptr noundef %6, i16 noundef zeroext %8, i16 noundef zeroext %9, i8 noundef zeroext 0, i8 noundef zeroext %1, i32 noundef 2, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #13
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_smbus_read_word_data(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %union.i2c_smbus_data, align 2
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %3, i8 0, i32 34, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = load i16, ptr %0, align 8
  %9 = call i32 @i2c_smbus_xfer(ptr noundef %5, i16 noundef zeroext %7, i16 noundef zeroext %8, i8 noundef zeroext 1, i8 noundef zeroext %1, i32 noundef 3, ptr noundef nonnull %3)
  %10 = icmp slt i32 %9, 0
  %11 = load i16, ptr %3, align 2
  %12 = zext i16 %11 to i32
  %13 = select i1 %10, i32 %9, i32 %12
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %3) #13
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_smbus_write_word_data(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = alloca %union.i2c_smbus_data, align 2
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #13
  %5 = getelementptr inbounds i8, ptr %4, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %5, i8 0, i32 32, i1 false), !annotation !9
  store i16 %2, ptr %4, align 2
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = load i16, ptr %0, align 8
  %11 = call i32 @i2c_smbus_xfer(ptr noundef %7, i16 noundef zeroext %9, i16 noundef zeroext %10, i8 noundef zeroext 0, i8 noundef zeroext %1, i32 noundef 3, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #13
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_smbus_read_block_data(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %union.i2c_smbus_data, align 2
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %4, i8 0, i32 34, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  %9 = load i16, ptr %0, align 8
  %10 = call i32 @i2c_smbus_xfer(ptr noundef %6, i16 noundef zeroext %8, i16 noundef zeroext %9, i8 noundef zeroext 1, i8 noundef zeroext %1, i32 noundef 5, ptr noundef nonnull %4)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds [34 x i8], ptr %4, i32 0, i32 1
  %14 = load i8, ptr %4, align 2
  %15 = zext i8 %14 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %2, ptr align 1 %13, i32 %15, i1 false)
  br label %16

16:                                               ; preds = %12, %3
  %17 = phi i32 [ %15, %12 ], [ %10, %3 ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %4) #13
  ret i32 %17
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_smbus_write_block_data(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %union.i2c_smbus_data, align 2
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %5, i8 0, i32 34, i1 false), !annotation !9
  %6 = tail call i8 @llvm.umin.i8(i8 %2, i8 32)
  store i8 %6, ptr %5, align 2
  %7 = getelementptr inbounds [34 x i8], ptr %5, i32 0, i32 1
  %8 = zext i8 %6 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %7, ptr align 1 %3, i32 %8, i1 false)
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = load i16, ptr %0, align 8
  %14 = call i32 @i2c_smbus_xfer(ptr noundef %10, i16 noundef zeroext %12, i16 noundef zeroext %13, i8 noundef zeroext 0, i8 noundef zeroext %1, i32 noundef 5, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %5) #13
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_smbus_read_i2c_block_data(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %union.i2c_smbus_data, align 2
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %5, i8 0, i32 34, i1 false), !annotation !9
  %6 = tail call i8 @llvm.umin.i8(i8 %2, i8 32)
  store i8 %6, ptr %5, align 2
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = load i16, ptr %0, align 8
  %12 = call i32 @i2c_smbus_xfer(ptr noundef %8, i16 noundef zeroext %10, i16 noundef zeroext %11, i8 noundef zeroext 1, i8 noundef zeroext %1, i32 noundef 8, ptr noundef nonnull %5)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds [34 x i8], ptr %5, i32 0, i32 1
  %16 = load i8, ptr %5, align 2
  %17 = zext i8 %16 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %15, i32 %17, i1 false)
  br label %18

18:                                               ; preds = %14, %4
  %19 = phi i32 [ %17, %14 ], [ %12, %4 ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %5) #13
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_smbus_write_i2c_block_data(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %union.i2c_smbus_data, align 2
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %5, i8 0, i32 34, i1 false), !annotation !9
  %6 = tail call i8 @llvm.umin.i8(i8 %2, i8 32)
  store i8 %6, ptr %5, align 2
  %7 = getelementptr inbounds i8, ptr %5, i32 1
  %8 = zext i8 %6 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %7, ptr align 1 %3, i32 %8, i1 false)
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = load i16, ptr %0, align 8
  %14 = call i32 @i2c_smbus_xfer(ptr noundef %10, i16 noundef zeroext %12, i16 noundef zeroext %13, i8 noundef zeroext 0, i8 noundef zeroext %1, i32 noundef 8, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %5) #13
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__i2c_smbus_xfer(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6) #0 {
  %8 = alloca [35 x i8], align 1
  %9 = getelementptr inbounds i8, ptr %8, i32 1
  %10 = alloca [34 x i8], align 1
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 10
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %7
  %17 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %12) #13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %432

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %21 = tail call ptr @dev_driver_string(ptr noundef %20) #13
  %22 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi ptr [ %26, %25 ], [ %23, %19 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.34, ptr noundef %21, ptr noundef %28) #13
  br label %432

29:                                               ; preds = %7
  %30 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smbus_write, i32 0, i32 1), align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = tail call ptr @llvm.thread.pointer() #13
  %34 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = lshr i32 %35, 5
  %37 = getelementptr i32, ptr @__cpu_online_mask, i32 %36
  %38 = load volatile i32, ptr %37, align 4
  %39 = and i32 %35, 31
  %40 = shl nuw i32 1, %39
  %41 = and i32 %40, %38
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %32
  %44 = icmp eq i8 %3, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %43
  switch i32 %5, label %58 [
    i32 7, label %46
    i32 4, label %46
  ]

46:                                               ; preds = %45, %45, %43
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !14
  %47 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smbus_write, i32 0, i32 7), align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %57, label %49

49:                                               ; preds = %49, %46
  %50 = phi ptr [ %54, %49 ], [ %47, %46 ]
  %51 = load volatile ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.tracepoint_func, ptr %50, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void %51(ptr noundef %53, ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6) #13
  %54 = getelementptr %struct.tracepoint_func, ptr %50, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %49

57:                                               ; preds = %49, %46
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  br label %58

58:                                               ; preds = %57, %45, %32, %29
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smbus_read, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %58
  %62 = tail call ptr @llvm.thread.pointer() #13
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  %72 = icmp eq i8 %3, 0
  %73 = or i1 %72, %71
  %74 = icmp eq i32 %5, 4
  %75 = or i1 %74, %73
  %76 = icmp eq i32 %5, 7
  %77 = or i1 %76, %75
  br i1 %77, label %90, label %78

78:                                               ; preds = %61
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  %79 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smbus_read, i32 0, i32 7), align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %81, %78
  %82 = phi ptr [ %86, %81 ], [ %79, %78 ]
  %83 = load volatile ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.tracepoint_func, ptr %82, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  tail call void %83(ptr noundef %85, ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5) #13
  %86 = getelementptr %struct.tracepoint_func, ptr %82, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %81

89:                                               ; preds = %81, %78
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !17
  br label %90

90:                                               ; preds = %89, %61, %58
  %91 = and i16 %2, -28652
  %92 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 2
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.i2c_algorithm, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = load i32, ptr @system_state, align 4
  %97 = icmp ugt i32 %96, 3
  br i1 %97, label %98, label %113

98:                                               ; preds = %90
  %99 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #13, !srcloc !13
  %100 = and i32 %99, 128
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %92, align 8
  %104 = getelementptr inbounds %struct.i2c_algorithm, ptr %103, i32 0, i32 3
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.i2c_algorithm, ptr %103, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = icmp ne ptr %109, null
  %111 = icmp eq ptr %95, null
  %112 = select i1 %110, i1 true, i1 %111
  br i1 %112, label %140, label %115

113:                                              ; preds = %98, %90
  %114 = icmp eq ptr %95, null
  br i1 %114, label %140, label %115

115:                                              ; preds = %113, %107, %102
  %116 = phi ptr [ %95, %113 ], [ %105, %102 ], [ %95, %107 ]
  %117 = load volatile i32, ptr @jiffies, align 64
  %118 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 8
  %119 = load i32, ptr %118, align 8
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %375, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 7
  br label %127

123:                                              ; preds = %130
  %124 = add i32 %128, 1
  %125 = load i32, ptr %118, align 8
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %375, label %127

127:                                              ; preds = %123, %121
  %128 = phi i32 [ 0, %121 ], [ %124, %123 ]
  %129 = tail call i32 %116(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %91, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6) #13
  switch i32 %129, label %375 [
    i32 -11, label %130
    i32 -95, label %136
  ]

130:                                              ; preds = %127
  %131 = load i32, ptr %122, align 4
  %132 = add i32 %131, %117
  %133 = load volatile i32, ptr @jiffies, align 64
  %134 = sub i32 %132, %133
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %375, label %123

136:                                              ; preds = %127
  %137 = load ptr, ptr %92, align 8
  %138 = load ptr, ptr %137, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %375, label %140

140:                                              ; preds = %136, %113, %107
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(35) %9, i8 0, i32 34, i1 false) #13, !annotation !9
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %10) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(34) %10, i8 0, i32 34, i1 false) #13, !annotation !9
  %141 = icmp eq i8 %3, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #13
  %142 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %142, i8 0, i32 16, i1 false) #13, !annotation !9
  store i16 %1, ptr %11, align 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 %91, ptr %143, align 2
  store i16 1, ptr %142, align 4
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %8, ptr %144, align 4
  %145 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 %1, ptr %145, align 4
  %146 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  %147 = or i16 %91, 1
  store i16 %147, ptr %146, align 2
  %148 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  %149 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr %10, ptr %149, align 4
  %150 = and i16 %2, 4
  %151 = icmp ne i16 %150, 0
  %152 = and i32 %5, -9
  %153 = icmp ne i32 %152, 0
  %154 = and i1 %151, %153
  store i8 %4, ptr %8, align 1
  switch i32 %5, label %272 [
    i32 0, label %155
    i32 1, label %158
    i32 2, label %160
    i32 3, label %164
    i32 4, label %172
    i32 5, label %178
    i32 7, label %209
    i32 8, label %241
  ]

155:                                              ; preds = %140
  store i16 0, ptr %142, align 4
  %156 = zext i1 %141 to i16
  %157 = or i16 %91, %156
  store i16 %157, ptr %143, align 2
  br label %274

158:                                              ; preds = %140
  br i1 %141, label %159, label %274

159:                                              ; preds = %158
  store i16 %147, ptr %143, align 2
  br label %274

160:                                              ; preds = %140
  br i1 %141, label %161, label %162

161:                                              ; preds = %160
  store i16 1, ptr %148, align 4
  br label %274

162:                                              ; preds = %160
  store i16 2, ptr %142, align 4
  %163 = load i8, ptr %6, align 2
  store i8 %163, ptr %9, align 1
  br label %274

164:                                              ; preds = %140
  br i1 %141, label %165, label %166

165:                                              ; preds = %164
  store i16 2, ptr %148, align 4
  br label %274

166:                                              ; preds = %164
  store i16 3, ptr %142, align 4
  %167 = load i16, ptr %6, align 2
  %168 = trunc i16 %167 to i8
  store i8 %168, ptr %9, align 1
  %169 = lshr i16 %167, 8
  %170 = trunc i16 %169 to i8
  %171 = getelementptr inbounds [35 x i8], ptr %8, i32 0, i32 2
  store i8 %170, ptr %171, align 1
  br label %274

172:                                              ; preds = %140
  store i16 3, ptr %142, align 4
  store i16 2, ptr %148, align 4
  %173 = load i16, ptr %6, align 2
  %174 = trunc i16 %173 to i8
  store i8 %174, ptr %9, align 1
  %175 = lshr i16 %173, 8
  %176 = trunc i16 %175 to i8
  %177 = getelementptr inbounds [35 x i8], ptr %8, i32 0, i32 2
  store i8 %176, ptr %177, align 1
  br label %274

178:                                              ; preds = %140
  br i1 %141, label %179, label %186

179:                                              ; preds = %178
  %180 = or i16 %91, 1025
  store i16 %180, ptr %146, align 2
  store i16 1, ptr %148, align 4
  %181 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %182 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %181, i32 noundef 3520, i32 noundef 34) #14
  %183 = icmp eq ptr %182, null
  br i1 %183, label %274, label %184

184:                                              ; preds = %179
  store ptr %182, ptr %149, align 4
  %185 = or i16 %91, 1537
  store i16 %185, ptr %146, align 2
  br label %274

186:                                              ; preds = %178
  %187 = load i8, ptr %6, align 2
  %188 = zext i8 %187 to i16
  %189 = add nuw nsw i16 %188, 2
  store i16 %189, ptr %142, align 4
  %190 = icmp ugt i8 %187, 32
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %193 = zext i8 %187 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull @.str.36, i32 noundef %193) #15
  br label %373

194:                                              ; preds = %186
  %195 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %196 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %195, i32 noundef 3520, i32 noundef 35) #14
  %197 = getelementptr i8, ptr %196, i32 1
  %198 = icmp eq ptr %196, null
  br i1 %198, label %204, label %199

199:                                              ; preds = %194
  store ptr %196, ptr %144, align 4
  %200 = load i16, ptr %143, align 2
  %201 = or i16 %200, 512
  store i16 %201, ptr %143, align 2
  %202 = icmp eq i8 %4, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %199
  store i8 %4, ptr %196, align 8
  br label %204

204:                                              ; preds = %203, %199, %194
  %205 = phi ptr [ %197, %199 ], [ %197, %203 ], [ %9, %194 ]
  %206 = load i16, ptr %142, align 4
  %207 = zext i16 %206 to i32
  %208 = add nsw i32 %207, -1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %205, ptr align 2 %6, i32 %208, i1 false) #13
  br label %274

209:                                              ; preds = %140
  %210 = load i8, ptr %6, align 2
  %211 = icmp ugt i8 %210, 32
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = zext i8 %210 to i32
  %214 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %214, ptr noundef nonnull @.str.36, i32 noundef %213) #15
  br label %373

215:                                              ; preds = %209
  %216 = zext i8 %210 to i16
  %217 = add nuw nsw i16 %216, 2
  store i16 %217, ptr %142, align 4
  %218 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %219 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %218, i32 noundef 3520, i32 noundef 35) #14
  %220 = getelementptr i8, ptr %219, i32 1
  %221 = icmp eq ptr %219, null
  br i1 %221, label %227, label %222

222:                                              ; preds = %215
  store ptr %219, ptr %144, align 4
  %223 = load i16, ptr %143, align 2
  %224 = or i16 %223, 512
  store i16 %224, ptr %143, align 2
  %225 = icmp eq i8 %4, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %222
  store i8 %4, ptr %219, align 8
  br label %227

227:                                              ; preds = %226, %222, %215
  %228 = phi ptr [ %220, %222 ], [ %220, %226 ], [ %9, %215 ]
  %229 = load i16, ptr %142, align 4
  %230 = zext i16 %229 to i32
  %231 = add nsw i32 %230, -1
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %228, ptr align 2 %6, i32 %231, i1 false) #13
  %232 = load i16, ptr %146, align 2
  %233 = or i16 %232, 1024
  store i16 %233, ptr %146, align 2
  store i16 1, ptr %148, align 4
  %234 = and i16 %232, 1
  %235 = icmp eq i16 %234, 0
  %236 = select i1 %235, i32 35, i32 34
  %237 = call noalias align 64 ptr @__kmalloc(i32 noundef %236, i32 noundef 3520) #16
  %238 = icmp eq ptr %237, null
  br i1 %238, label %274, label %239

239:                                              ; preds = %227
  store ptr %237, ptr %149, align 4
  %240 = or i16 %232, 1536
  store i16 %240, ptr %146, align 2
  br label %274

241:                                              ; preds = %140
  %242 = load i8, ptr %6, align 2
  %243 = icmp ugt i8 %242, 32
  br i1 %243, label %244, label %248

244:                                              ; preds = %241
  %245 = zext i8 %242 to i32
  %246 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  %247 = select i1 %141, ptr @.str.38, ptr @.str.39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %246, ptr noundef nonnull @.str.37, ptr noundef nonnull %247, i32 noundef %245) #15
  br label %373

248:                                              ; preds = %241
  %249 = zext i8 %242 to i16
  br i1 %141, label %250, label %256

250:                                              ; preds = %248
  store i16 %249, ptr %148, align 4
  %251 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %252 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %251, i32 noundef 3520, i32 noundef 34) #14
  %253 = icmp eq ptr %252, null
  br i1 %253, label %274, label %254

254:                                              ; preds = %250
  store ptr %252, ptr %149, align 4
  %255 = or i16 %91, 513
  store i16 %255, ptr %146, align 2
  br label %274

256:                                              ; preds = %248
  %257 = add nuw nsw i16 %249, 1
  store i16 %257, ptr %142, align 4
  %258 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %259 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %258, i32 noundef 3520, i32 noundef 35) #14
  %260 = getelementptr i8, ptr %259, i32 1
  %261 = icmp eq ptr %259, null
  br i1 %261, label %267, label %262

262:                                              ; preds = %256
  store ptr %259, ptr %144, align 4
  %263 = load i16, ptr %143, align 2
  %264 = or i16 %263, 512
  store i16 %264, ptr %143, align 2
  %265 = icmp eq i8 %4, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %262
  store i8 %4, ptr %259, align 8
  br label %267

267:                                              ; preds = %266, %262, %256
  %268 = phi ptr [ %260, %262 ], [ %260, %266 ], [ %9, %256 ]
  %269 = getelementptr i8, ptr %6, i32 1
  %270 = load i8, ptr %6, align 2
  %271 = zext i8 %270 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %268, ptr align 1 %269, i32 %271, i1 false) #13
  br label %274

272:                                              ; preds = %140
  %273 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %273, ptr noundef nonnull @.str.40, i32 noundef %5) #15
  br label %373

274:                                              ; preds = %267, %254, %250, %239, %227, %204, %184, %179, %172, %166, %165, %162, %161, %159, %158, %155
  %275 = phi i8 [ %3, %267 ], [ %3, %204 ], [ 1, %172 ], [ 1, %165 ], [ %3, %166 ], [ 1, %161 ], [ %3, %162 ], [ 1, %159 ], [ %3, %158 ], [ %3, %155 ], [ 1, %179 ], [ 1, %184 ], [ 1, %227 ], [ 1, %239 ], [ 1, %250 ], [ 1, %254 ]
  %276 = phi i1 [ true, %267 ], [ true, %204 ], [ false, %172 ], [ false, %165 ], [ true, %166 ], [ false, %161 ], [ true, %162 ], [ true, %159 ], [ true, %158 ], [ true, %155 ], [ false, %179 ], [ false, %184 ], [ false, %227 ], [ false, %239 ], [ false, %250 ], [ false, %254 ]
  %277 = phi i32 [ 1, %267 ], [ 1, %204 ], [ 2, %172 ], [ 2, %165 ], [ 1, %166 ], [ 2, %161 ], [ 1, %162 ], [ 1, %159 ], [ 1, %158 ], [ 1, %155 ], [ 2, %179 ], [ 2, %184 ], [ 2, %227 ], [ 2, %239 ], [ 2, %250 ], [ 2, %254 ]
  br i1 %154, label %278, label %302

278:                                              ; preds = %274
  %279 = load i16, ptr %143, align 2
  %280 = and i16 %279, 1
  %281 = icmp eq i16 %280, 0
  br i1 %281, label %282, label %291

282:                                              ; preds = %278
  %283 = call fastcc zeroext i8 @i2c_smbus_msg_pec(i8 noundef zeroext 0, ptr noundef nonnull %11) #13
  br i1 %276, label %284, label %291

284:                                              ; preds = %282
  %285 = load ptr, ptr %144, align 4
  %286 = load i16, ptr %142, align 4
  %287 = zext i16 %286 to i32
  %288 = getelementptr i8, ptr %285, i32 %287
  store i8 %283, ptr %288, align 1
  %289 = load i16, ptr %142, align 4
  %290 = add i16 %289, 1
  store i16 %290, ptr %142, align 4
  br label %291

291:                                              ; preds = %284, %282, %278
  %292 = phi i8 [ 0, %278 ], [ 0, %284 ], [ %283, %282 ]
  %293 = add nsw i32 %277, -1
  %294 = getelementptr [2 x %struct.i2c_msg], ptr %11, i32 0, i32 %293, i32 1
  %295 = load i16, ptr %294, align 2
  %296 = and i16 %295, 1
  %297 = icmp eq i16 %296, 0
  br i1 %297, label %302, label %298

298:                                              ; preds = %291
  %299 = getelementptr [2 x %struct.i2c_msg], ptr %11, i32 0, i32 %293, i32 2
  %300 = load i16, ptr %299, align 4
  %301 = add i16 %300, 1
  store i16 %301, ptr %299, align 4
  br label %302

302:                                              ; preds = %298, %291, %274
  %303 = phi i8 [ %292, %298 ], [ %292, %291 ], [ 0, %274 ]
  %304 = call i32 @__i2c_transfer(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %277) #13
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %360, label %306

306:                                              ; preds = %302
  %307 = icmp eq i32 %304, %277
  br i1 %307, label %308, label %360

308:                                              ; preds = %306
  br i1 %154, label %309, label %330

309:                                              ; preds = %308
  %310 = add nsw i32 %277, -1
  %311 = getelementptr [2 x %struct.i2c_msg], ptr %11, i32 0, i32 %310, i32 1
  %312 = load i16, ptr %311, align 2
  %313 = and i16 %312, 1
  %314 = icmp eq i16 %313, 0
  br i1 %314, label %330, label %315

315:                                              ; preds = %309
  %316 = getelementptr [2 x %struct.i2c_msg], ptr %11, i32 0, i32 %310
  %317 = getelementptr [2 x %struct.i2c_msg], ptr %11, i32 0, i32 %310, i32 3
  %318 = load ptr, ptr %317, align 4
  %319 = getelementptr [2 x %struct.i2c_msg], ptr %11, i32 0, i32 %310, i32 2
  %320 = load i16, ptr %319, align 4
  %321 = add i16 %320, -1
  store i16 %321, ptr %319, align 4
  %322 = zext i16 %321 to i32
  %323 = getelementptr i8, ptr %318, i32 %322
  %324 = load i8, ptr %323, align 1
  %325 = call fastcc zeroext i8 @i2c_smbus_msg_pec(i8 noundef zeroext %303, ptr noundef %316) #13
  %326 = icmp eq i8 %324, %325
  %327 = select i1 %326, i32 0, i32 -74
  %328 = icmp eq i8 %275, 1
  %329 = and i1 %328, %326
  br i1 %329, label %332, label %360

330:                                              ; preds = %309, %308
  %331 = icmp eq i8 %275, 1
  br i1 %331, label %332, label %360

332:                                              ; preds = %330, %315
  %333 = phi i32 [ %327, %315 ], [ 0, %330 ]
  switch i32 %5, label %360 [
    i32 1, label %334
    i32 2, label %336
    i32 3, label %338
    i32 4, label %338
    i32 8, label %346
    i32 5, label %351
    i32 7, label %351
  ]

334:                                              ; preds = %332
  %335 = load i8, ptr %8, align 1
  store i8 %335, ptr %6, align 2
  br label %360

336:                                              ; preds = %332
  %337 = load i8, ptr %10, align 1
  store i8 %337, ptr %6, align 2
  br label %360

338:                                              ; preds = %332, %332
  %339 = load i8, ptr %10, align 1
  %340 = zext i8 %339 to i16
  %341 = getelementptr inbounds [34 x i8], ptr %10, i32 0, i32 1
  %342 = load i8, ptr %341, align 1
  %343 = zext i8 %342 to i16
  %344 = shl nuw i16 %343, 8
  %345 = or i16 %344, %340
  store i16 %345, ptr %6, align 2
  br label %360

346:                                              ; preds = %332
  %347 = getelementptr i8, ptr %6, i32 1
  %348 = load ptr, ptr %149, align 4
  %349 = load i8, ptr %6, align 2
  %350 = zext i8 %349 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %347, ptr align 1 %348, i32 %350, i1 false) #13
  br label %360

351:                                              ; preds = %332, %332
  %352 = load ptr, ptr %149, align 4
  %353 = load i8, ptr %352, align 1
  %354 = zext i8 %353 to i32
  %355 = icmp ugt i8 %353, 32
  br i1 %355, label %356, label %358

356:                                              ; preds = %351
  %357 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %357, ptr noundef nonnull @.str.41, i32 noundef %354) #15
  br label %360

358:                                              ; preds = %351
  %359 = add nuw nsw i32 %354, 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 %6, ptr noundef align 1 %352, i32 %359, i1 false) #13
  br label %360

360:                                              ; preds = %358, %356, %346, %338, %336, %334, %332, %330, %315, %306, %302
  %361 = phi i32 [ %304, %302 ], [ %333, %332 ], [ -71, %356 ], [ %333, %358 ], [ %333, %346 ], [ %333, %338 ], [ %333, %336 ], [ %333, %334 ], [ %327, %315 ], [ 0, %330 ], [ -5, %306 ]
  %362 = load i16, ptr %143, align 2
  %363 = and i16 %362, 512
  %364 = icmp eq i16 %363, 0
  br i1 %364, label %367, label %365

365:                                              ; preds = %360
  %366 = load ptr, ptr %144, align 4
  call void @kfree(ptr noundef %366) #13
  br label %367

367:                                              ; preds = %365, %360
  %368 = load i16, ptr %146, align 2
  %369 = and i16 %368, 512
  %370 = icmp eq i16 %369, 0
  br i1 %370, label %373, label %371

371:                                              ; preds = %367
  %372 = load ptr, ptr %149, align 4
  call void @kfree(ptr noundef %372) #13
  br label %373

373:                                              ; preds = %371, %367, %272, %244, %212, %191
  %374 = phi i32 [ -95, %272 ], [ -22, %244 ], [ -22, %212 ], [ -22, %191 ], [ %361, %371 ], [ %361, %367 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %8) #13
  br label %375

375:                                              ; preds = %373, %136, %130, %127, %123, %115
  %376 = phi i32 [ %374, %373 ], [ -95, %136 ], [ 0, %115 ], [ -11, %130 ], [ -11, %123 ], [ %129, %127 ]
  %377 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smbus_reply, i32 0, i32 1), align 4
  %378 = icmp sgt i32 %377, 0
  br i1 %378, label %379, label %406

379:                                              ; preds = %375
  %380 = tail call ptr @llvm.thread.pointer() #13
  %381 = getelementptr inbounds %struct.thread_info, ptr %380, i32 0, i32 2
  %382 = load i32, ptr %381, align 8
  %383 = lshr i32 %382, 5
  %384 = getelementptr i32, ptr @__cpu_online_mask, i32 %383
  %385 = load volatile i32, ptr %384, align 4
  %386 = and i32 %382, 31
  %387 = shl nuw i32 1, %386
  %388 = and i32 %387, %385
  %389 = icmp ne i32 %388, 0
  %390 = icmp sgt i32 %376, -1
  %391 = and i1 %390, %389
  %392 = icmp eq i8 %3, 1
  %393 = and i1 %392, %391
  br i1 %393, label %394, label %406

394:                                              ; preds = %379
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %395 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smbus_reply, i32 0, i32 7), align 4
  %396 = icmp eq ptr %395, null
  br i1 %396, label %405, label %397

397:                                              ; preds = %397, %394
  %398 = phi ptr [ %402, %397 ], [ %395, %394 ]
  %399 = load volatile ptr, ptr %398, align 4
  %400 = getelementptr inbounds %struct.tracepoint_func, ptr %398, i32 0, i32 1
  %401 = load ptr, ptr %400, align 4
  call void %399(ptr noundef %401, ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %91, i8 noundef zeroext 1, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6, i32 noundef %376) #13
  %402 = getelementptr %struct.tracepoint_func, ptr %398, i32 1
  %403 = load ptr, ptr %402, align 4
  %404 = icmp eq ptr %403, null
  br i1 %404, label %405, label %397

405:                                              ; preds = %397, %394
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  br label %406

406:                                              ; preds = %405, %379, %375
  %407 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smbus_result, i32 0, i32 1), align 4
  %408 = icmp sgt i32 %407, 0
  br i1 %408, label %409, label %432

409:                                              ; preds = %406
  %410 = tail call ptr @llvm.thread.pointer() #13
  %411 = getelementptr inbounds %struct.thread_info, ptr %410, i32 0, i32 2
  %412 = load i32, ptr %411, align 8
  %413 = lshr i32 %412, 5
  %414 = getelementptr i32, ptr @__cpu_online_mask, i32 %413
  %415 = load volatile i32, ptr %414, align 4
  %416 = and i32 %412, 31
  %417 = shl nuw i32 1, %416
  %418 = and i32 %417, %415
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %432, label %420

420:                                              ; preds = %409
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %421 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_smbus_result, i32 0, i32 7), align 4
  %422 = icmp eq ptr %421, null
  br i1 %422, label %431, label %423

423:                                              ; preds = %423, %420
  %424 = phi ptr [ %428, %423 ], [ %421, %420 ]
  %425 = load volatile ptr, ptr %424, align 4
  %426 = getelementptr inbounds %struct.tracepoint_func, ptr %424, i32 0, i32 1
  %427 = load ptr, ptr %426, align 4
  call void %425(ptr noundef %427, ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %91, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %376) #13
  %428 = getelementptr %struct.tracepoint_func, ptr %424, i32 1
  %429 = load ptr, ptr %428, align 4
  %430 = icmp eq ptr %429, null
  br i1 %430, label %431, label %423

431:                                              ; preds = %423, %420
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %432

432:                                              ; preds = %431, %409, %406, %27, %16
  %433 = phi i32 [ %376, %406 ], [ %376, %409 ], [ %376, %431 ], [ -108, %27 ], [ -108, %16 ]
  ret i32 %433
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %union.i2c_smbus_data, align 2
  %6 = alloca %union.i2c_smbus_data, align 2
  %7 = alloca %union.i2c_smbus_data, align 2
  %8 = tail call i8 @llvm.umin.i8(i8 %2, i8 32)
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.i2c_algorithm, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %10) #13
  %16 = and i32 %15, 67108864
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %7, i8 0, i32 34, i1 false) #13, !annotation !9
  store i8 %8, ptr %7, align 2
  %19 = load ptr, ptr %9, align 8
  %20 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = load i16, ptr %0, align 8
  %23 = call i32 @i2c_smbus_xfer(ptr noundef %19, i16 noundef zeroext %21, i16 noundef zeroext %22, i8 noundef zeroext 1, i8 noundef zeroext %1, i32 noundef 8, ptr noundef nonnull %7) #13
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds [34 x i8], ptr %7, i32 0, i32 1
  %27 = load i8, ptr %7, align 2
  %28 = zext i8 %27 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %3, ptr align 1 %26, i32 %28, i1 false) #13
  br label %29

29:                                               ; preds = %25, %18
  %30 = phi i32 [ %28, %25 ], [ %23, %18 ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %7) #13
  br label %99

31:                                               ; preds = %4
  %32 = load ptr, ptr %9, align 8
  %33 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.i2c_algorithm, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %32) #13
  %38 = and i32 %37, 524288
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %99, label %40

40:                                               ; preds = %31
  %41 = load ptr, ptr %9, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.i2c_algorithm, ptr %43, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef %41) #13
  %47 = and i32 %46, 2097152
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %78, label %49

49:                                               ; preds = %40
  %50 = zext i8 %8 to i32
  %51 = icmp ult i8 %8, 2
  br i1 %51, label %78, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  br label %54

54:                                               ; preds = %65, %52
  %55 = phi i32 [ 2, %52 ], [ %74, %65 ]
  %56 = phi i32 [ 0, %52 ], [ %73, %65 ]
  %57 = phi i8 [ 0, %52 ], [ %72, %65 ]
  %58 = add i8 %57, %1
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %6) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %6, i8 0, i32 34, i1 false) #13, !annotation !9
  %59 = load ptr, ptr %9, align 8
  %60 = load i16, ptr %53, align 2
  %61 = load i16, ptr %0, align 8
  %62 = call i32 @i2c_smbus_xfer(ptr noundef %59, i16 noundef zeroext %60, i16 noundef zeroext %61, i8 noundef zeroext 1, i8 noundef zeroext %58, i32 noundef 3, ptr noundef nonnull %6) #13
  %63 = icmp slt i32 %62, 0
  %64 = load i16, ptr %6, align 2
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %6) #13
  br i1 %63, label %99, label %65

65:                                               ; preds = %54
  %66 = trunc i16 %64 to i8
  %67 = getelementptr i8, ptr %3, i32 %56
  store i8 %66, ptr %67, align 1
  %68 = lshr i16 %64, 8
  %69 = trunc i16 %68 to i8
  %70 = add nuw nsw i32 %56, 1
  %71 = getelementptr i8, ptr %3, i32 %70
  store i8 %69, ptr %71, align 1
  %72 = trunc i32 %55 to i8
  %73 = and i32 %55, 255
  %74 = add nuw nsw i32 %73, 2
  %75 = icmp ugt i32 %74, %50
  br i1 %75, label %76, label %54

76:                                               ; preds = %65
  %77 = trunc i32 %55 to i8
  br label %78

78:                                               ; preds = %76, %49, %40
  %79 = phi i8 [ 0, %40 ], [ 0, %49 ], [ %77, %76 ]
  %80 = zext i8 %79 to i32
  %81 = icmp ult i8 %79, %8
  br i1 %81, label %82, label %99

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %84 = zext i8 %8 to i32
  br label %85

85:                                               ; preds = %95, %82
  %86 = phi i32 [ %80, %82 ], [ %97, %95 ]
  %87 = trunc i32 %86 to i8
  %88 = add i8 %87, %1
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(34) %5, i8 0, i32 34, i1 false) #13, !annotation !9
  %89 = load ptr, ptr %9, align 8
  %90 = load i16, ptr %83, align 2
  %91 = load i16, ptr %0, align 8
  %92 = call i32 @i2c_smbus_xfer(ptr noundef %89, i16 noundef zeroext %90, i16 noundef zeroext %91, i8 noundef zeroext 1, i8 noundef zeroext %88, i32 noundef 2, ptr noundef nonnull %5) #13
  %93 = icmp slt i32 %92, 0
  %94 = load i8, ptr %5, align 2
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %5) #13
  br i1 %93, label %99, label %95

95:                                               ; preds = %85
  %96 = getelementptr i8, ptr %3, i32 %86
  store i8 %94, ptr %96, align 1
  %97 = add nuw nsw i32 %86, 1
  %98 = icmp eq i32 %97, %84
  br i1 %98, label %99, label %85

99:                                               ; preds = %95, %85, %78, %54, %31, %29
  %100 = phi i32 [ %30, %29 ], [ -95, %31 ], [ %80, %78 ], [ %92, %85 ], [ %84, %95 ], [ %62, %54 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @i2c_new_smbus_alert_device(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.i2c_board_info, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 1 dereferenceable(20) @.str, i32 20, i1 false)
  %4 = getelementptr inbounds %struct.i2c_board_info, ptr %3, i32 0, i32 1
  store i16 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.i2c_board_info, ptr %3, i32 0, i32 2
  store i16 12, ptr %5, align 2
  %6 = getelementptr inbounds %struct.i2c_board_info, ptr %3, i32 0, i32 3
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.i2c_board_info, ptr %3, i32 0, i32 4
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.i2c_board_info, ptr %3, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %9 = call ptr @i2c_new_client_device(ptr noundef %0, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #13
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_i2c_setup_smbus_alert(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_board_info, align 4
  %3 = getelementptr inbounds %struct.i2c_adapter, ptr %0, i32 0, i32 9, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @of_property_match_string(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #13
  switch i32 %5, label %6 [
    i32 -22, label %16
    i32 -61, label %16
  ]

6:                                                ; preds = %1
  %7 = icmp slt i32 %5, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 1 dereferenceable(20) @.str, i32 20, i1 false) #13
  %9 = getelementptr inbounds %struct.i2c_board_info, ptr %2, i32 0, i32 1
  store i16 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_board_info, ptr %2, i32 0, i32 2
  store i16 12, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_board_info, ptr %2, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %12 = call ptr @i2c_new_client_device(ptr noundef %0, ptr noundef nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #13
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %14 = ptrtoint ptr %12 to i32
  %15 = select i1 %13, i32 %14, i32 0
  br label %16

16:                                               ; preds = %8, %6, %1, %1
  %17 = phi i32 [ %15, %8 ], [ 0, %1 ], [ 0, %1 ], [ %5, %6 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smbus_write(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %5, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %5, i32 0, i32 3
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %5, i32 0, i32 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %23, ptr noundef nonnull @trace_raw_output_smbus_write.symbols) #13
  %25 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %5, i32 0, i32 5
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.trace_event_raw_smbus_write, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %21, ptr noundef %24, i32 noundef %27, i32 noundef %27, ptr noundef %28) #13
  %29 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %30

30:                                               ; preds = %8, %3
  %31 = phi i32 [ %29, %8 ], [ %6, %3 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smbus_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_smbus_read, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_smbus_read, ptr %5, i32 0, i32 3
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.trace_event_raw_smbus_read, ptr %5, i32 0, i32 2
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.trace_event_raw_smbus_read, ptr %5, i32 0, i32 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.trace_event_raw_smbus_read, ptr %5, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %23, ptr noundef nonnull @trace_raw_output_smbus_read.symbols) #13
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %21, ptr noundef %24) #13
  %25 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %26

26:                                               ; preds = %8, %3
  %27 = phi i32 [ %25, %8 ], [ %6, %3 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smbus_reply(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %5, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %5, i32 0, i32 3
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %5, i32 0, i32 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %23, ptr noundef nonnull @trace_raw_output_smbus_reply.symbols) #13
  %25 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %5, i32 0, i32 5
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.trace_event_raw_smbus_reply, ptr %5, i32 0, i32 7
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %21, ptr noundef %24, i32 noundef %27, i32 noundef %27, ptr noundef %28) #13
  %29 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %30

30:                                               ; preds = %8, %3
  %31 = phi i32 [ %29, %8 ], [ %6, %3 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_smbus_result(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %33

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %5, i32 0, i32 2
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %5, i32 0, i32 3
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %5, i32 0, i32 5
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %5, i32 0, i32 7
  %23 = load i32, ptr %22, align 4
  %24 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %23, ptr noundef nonnull @trace_raw_output_smbus_result.symbols) #13
  %25 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %5, i32 0, i32 4
  %26 = load i8, ptr %25, align 4
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, ptr @.str.30, ptr @.str.31
  %29 = getelementptr inbounds %struct.trace_event_raw_smbus_result, ptr %5, i32 0, i32 6
  %30 = load i16, ptr %29, align 2
  %31 = sext i16 %30 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %21, ptr noundef %24, ptr noundef nonnull %28, i32 noundef %31) #13
  %32 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %33

33:                                               ; preds = %8, %3
  %34 = phi i32 [ %32, %8 ], [ %6, %3 ]
  ret i32 %34
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc zeroext i8 @i2c_smbus_msg_pec(i8 noundef zeroext %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = load i16, ptr %1, align 4
  %4 = trunc i16 %3 to i8
  %5 = shl i8 %4, 1
  %6 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = trunc i16 %7 to i8
  %9 = and i8 %8, 1
  %10 = or i8 %9, %5
  %11 = xor i8 %10, %0
  %12 = zext i8 %11 to i16
  %13 = and i16 %12, 128
  %14 = icmp eq i16 %13, 0
  %15 = shl i16 %12, 9
  %16 = xor i16 %15, 1792
  %17 = select i1 %14, i16 %15, i16 %16
  %18 = icmp slt i16 %17, 0
  %19 = shl i16 %17, 1
  %20 = xor i16 %19, 1792
  %21 = select i1 %18, i16 %20, i16 %19
  %22 = icmp slt i16 %21, 0
  %23 = shl i16 %21, 1
  %24 = xor i16 %23, 1792
  %25 = select i1 %22, i16 %24, i16 %23
  %26 = icmp slt i16 %25, 0
  %27 = shl i16 %25, 1
  %28 = xor i16 %27, 1792
  %29 = select i1 %26, i16 %28, i16 %27
  %30 = icmp slt i16 %29, 0
  %31 = shl i16 %29, 1
  %32 = xor i16 %31, 1792
  %33 = select i1 %30, i16 %32, i16 %31
  %34 = icmp slt i16 %33, 0
  %35 = shl i16 %33, 1
  %36 = xor i16 %35, 1792
  %37 = select i1 %34, i16 %36, i16 %35
  %38 = icmp slt i16 %37, 0
  %39 = shl i16 %37, 1
  %40 = xor i16 %39, 1792
  %41 = select i1 %38, i16 %40, i16 %39
  %42 = icmp slt i16 %41, 0
  %43 = lshr i16 %41, 7
  %44 = xor i16 %43, 7
  %45 = select i1 %42, i16 %44, i16 %43
  %46 = trunc i16 %45 to i8
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %50 = load i16, ptr %49, align 4
  %51 = zext i16 %50 to i32
  %52 = icmp eq i16 %50, 0
  br i1 %52, label %98, label %53

53:                                               ; preds = %53, %2
  %54 = phi i32 [ %94, %53 ], [ 0, %2 ]
  %55 = phi i8 [ %93, %53 ], [ %46, %2 ]
  %56 = getelementptr i8, ptr %48, i32 %54
  %57 = load i8, ptr %56, align 1
  %58 = xor i8 %57, %55
  %59 = zext i8 %58 to i16
  %60 = and i16 %59, 128
  %61 = icmp eq i16 %60, 0
  %62 = shl i16 %59, 9
  %63 = xor i16 %62, 1792
  %64 = select i1 %61, i16 %62, i16 %63
  %65 = icmp slt i16 %64, 0
  %66 = shl i16 %64, 1
  %67 = xor i16 %66, 1792
  %68 = select i1 %65, i16 %67, i16 %66
  %69 = icmp slt i16 %68, 0
  %70 = shl i16 %68, 1
  %71 = xor i16 %70, 1792
  %72 = select i1 %69, i16 %71, i16 %70
  %73 = icmp slt i16 %72, 0
  %74 = shl i16 %72, 1
  %75 = xor i16 %74, 1792
  %76 = select i1 %73, i16 %75, i16 %74
  %77 = icmp slt i16 %76, 0
  %78 = shl i16 %76, 1
  %79 = xor i16 %78, 1792
  %80 = select i1 %77, i16 %79, i16 %78
  %81 = icmp slt i16 %80, 0
  %82 = shl i16 %80, 1
  %83 = xor i16 %82, 1792
  %84 = select i1 %81, i16 %83, i16 %82
  %85 = icmp slt i16 %84, 0
  %86 = shl i16 %84, 1
  %87 = xor i16 %86, 1792
  %88 = select i1 %85, i16 %87, i16 %86
  %89 = icmp slt i16 %88, 0
  %90 = lshr i16 %88, 7
  %91 = xor i16 %90, 7
  %92 = select i1 %89, i16 %91, i16 %90
  %93 = trunc i16 %92 to i8
  %94 = add nuw nsw i32 %54, 1
  %95 = icmp eq i32 %94, %51
  br i1 %95, label %96, label %53

96:                                               ; preds = %53
  %97 = trunc i16 %92 to i8
  br label %98

98:                                               ; preds = %96, %2
  %99 = phi i8 [ %46, %2 ], [ %97, %96 ]
  ret i8 %99
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

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
!12 = !{i64 627301}
!13 = !{i64 622928}
!14 = !{i64 2154141180}
!15 = !{i64 2154141422}
!16 = !{i64 2154160014}
!17 = !{i64 2154160242}
!18 = !{i64 2154179042}
!19 = !{i64 2154179294}
!20 = !{i64 2154197424}
!21 = !{i64 2154197666}
