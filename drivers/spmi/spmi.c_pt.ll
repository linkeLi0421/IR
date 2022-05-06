; ModuleID = '/llk/IR/drivers/spmi/spmi.c_pt.bc'
source_filename = "../drivers/spmi/spmi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_device_add\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_device_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_device_remove\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_device_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_register_read:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_register_read\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_register_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_ext_register_read:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_ext_register_read\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_ext_register_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_ext_register_readl:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_ext_register_readl\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_ext_register_readl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_register_write:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_register_write\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_register_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_register_zero_write:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_register_zero_write\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_register_zero_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_ext_register_write:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_ext_register_write\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_ext_register_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_ext_register_writel:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_ext_register_writel\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_ext_register_writel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_command_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_command_reset\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_command_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_command_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_command_sleep\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_command_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_command_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_command_wakeup\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_command_wakeup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_command_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_command_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_command_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_device_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_device_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_device_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_controller_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_controller_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_controller_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_controller_add:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_controller_add\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_controller_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spmi_controller_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22spmi_controller_remove\22\09\09\09\09\09"
module asm "__kstrtabns_spmi_controller_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___spmi_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__spmi_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns___spmi_driver_register:\09\09\09\09\09"
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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_spmi_write_begin = type { %struct.trace_entry, i8, i8, i16, i8, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_spmi_write_end = type { %struct.trace_entry, i8, i8, i16, i32, [0 x i8] }
%struct.trace_event_raw_spmi_read_begin = type { %struct.trace_entry, i8, i8, i16, [0 x i8] }
%struct.trace_event_raw_spmi_read_end = type { %struct.trace_entry, i8, i8, i16, i32, i8, i32, [0 x i8] }
%struct.trace_event_raw_spmi_cmd = type { %struct.trace_entry, i8, i8, i32, [0 x i8] }
%struct.spmi_device = type { %struct.device, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spmi_controller = type { %struct.device, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.spmi_driver = type { %struct.device_driver, ptr, ptr, ptr }

@__tpstrtab_spmi_write_begin = internal constant [17 x i8] c"spmi_write_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_spmi_write_begin = dso_local global %struct.static_call_key { ptr @__traceiter_spmi_write_begin }, align 4
@__tracepoint_spmi_write_begin = dso_local global %struct.tracepoint { ptr @__tpstrtab_spmi_write_begin, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_spmi_write_begin, ptr null, ptr @__traceiter_spmi_write_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_spmi_write_begin = internal constant ptr @__tracepoint_spmi_write_begin, section "__tracepoints_ptrs", align 4
@__tpstrtab_spmi_write_end = internal constant [15 x i8] c"spmi_write_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_spmi_write_end = dso_local global %struct.static_call_key { ptr @__traceiter_spmi_write_end }, align 4
@__tracepoint_spmi_write_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_spmi_write_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_spmi_write_end, ptr null, ptr @__traceiter_spmi_write_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_spmi_write_end = internal constant ptr @__tracepoint_spmi_write_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_spmi_read_begin = internal constant [16 x i8] c"spmi_read_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_spmi_read_begin = dso_local global %struct.static_call_key { ptr @__traceiter_spmi_read_begin }, align 4
@__tracepoint_spmi_read_begin = dso_local global %struct.tracepoint { ptr @__tpstrtab_spmi_read_begin, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_spmi_read_begin, ptr null, ptr @__traceiter_spmi_read_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_spmi_read_begin = internal constant ptr @__tracepoint_spmi_read_begin, section "__tracepoints_ptrs", align 4
@__tpstrtab_spmi_read_end = internal constant [14 x i8] c"spmi_read_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_spmi_read_end = dso_local global %struct.static_call_key { ptr @__traceiter_spmi_read_end }, align 4
@__tracepoint_spmi_read_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_spmi_read_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_spmi_read_end, ptr null, ptr @__traceiter_spmi_read_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_spmi_read_end = internal constant ptr @__tracepoint_spmi_read_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_spmi_cmd = internal constant [9 x i8] c"spmi_cmd\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_spmi_cmd = dso_local global %struct.static_call_key { ptr @__traceiter_spmi_cmd }, align 4
@__tracepoint_spmi_cmd = dso_local global %struct.tracepoint { ptr @__tpstrtab_spmi_cmd, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_spmi_cmd, ptr null, ptr @__traceiter_spmi_cmd, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_spmi_cmd = internal constant ptr @__tracepoint_spmi_cmd, section "__tracepoints_ptrs", align 4
@trace_event_fields_spmi_write_begin = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.6, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.7, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon { %struct.anon { ptr @.str.9, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.10, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon { %struct.anon { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_spmi_write_begin = internal global %struct.trace_event_class { ptr @.str.21, ptr @trace_event_raw_event_spmi_write_begin, ptr @perf_trace_spmi_write_begin, ptr @trace_event_reg, ptr @trace_event_fields_spmi_write_begin, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_spmi_write_begin, i64 24), ptr getelementptr (i8, ptr @event_class_spmi_write_begin, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_spmi_write_begin = internal global %struct.trace_event_functions { ptr @trace_raw_output_spmi_write_begin, ptr null, ptr null, ptr null }, align 4
@print_fmt_spmi_write_begin = internal global [156 x i8] c"\22opc=%d sid=%02d addr=0x%04x len=%d buf=0x[%*phD]\22, (int)REC->opcode, (int)REC->sid, (int)REC->addr, (int)REC->len, (int)REC->len, __get_dynamic_array(buf)\00", align 1
@event_spmi_write_begin = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_spmi_write_begin, %union.anon.0 { ptr @__tracepoint_spmi_write_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_spmi_write_begin }, ptr @print_fmt_spmi_write_begin, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_spmi_write_begin = internal global ptr @event_spmi_write_begin, section "_ftrace_events", align 4
@trace_event_fields_spmi_write_end = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.6, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.7, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon { %struct.anon { ptr @.str.9, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon { %struct.anon { ptr @.str.15, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_spmi_write_end = internal global %struct.trace_event_class { ptr @.str.21, ptr @trace_event_raw_event_spmi_write_end, ptr @perf_trace_spmi_write_end, ptr @trace_event_reg, ptr @trace_event_fields_spmi_write_end, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_spmi_write_end, i64 24), ptr getelementptr (i8, ptr @event_class_spmi_write_end, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_spmi_write_end = internal global %struct.trace_event_functions { ptr @trace_raw_output_spmi_write_end, ptr null, ptr null, ptr null }, align 4
@print_fmt_spmi_write_end = internal global [96 x i8] c"\22opc=%d sid=%02d addr=0x%04x ret=%d\22, (int)REC->opcode, (int)REC->sid, (int)REC->addr, REC->ret\00", align 1
@event_spmi_write_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_spmi_write_end, %union.anon.0 { ptr @__tracepoint_spmi_write_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_spmi_write_end }, ptr @print_fmt_spmi_write_end, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_spmi_write_end = internal global ptr @event_spmi_write_end, section "_ftrace_events", align 4
@trace_event_fields_spmi_read_begin = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.6, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.7, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon { %struct.anon { ptr @.str.9, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_spmi_read_begin = internal global %struct.trace_event_class { ptr @.str.21, ptr @trace_event_raw_event_spmi_read_begin, ptr @perf_trace_spmi_read_begin, ptr @trace_event_reg, ptr @trace_event_fields_spmi_read_begin, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_spmi_read_begin, i64 24), ptr getelementptr (i8, ptr @event_class_spmi_read_begin, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_spmi_read_begin = internal global %struct.trace_event_functions { ptr @trace_raw_output_spmi_read_begin, ptr null, ptr null, ptr null }, align 4
@print_fmt_spmi_read_begin = internal global [79 x i8] c"\22opc=%d sid=%02d addr=0x%04x\22, (int)REC->opcode, (int)REC->sid, (int)REC->addr\00", align 1
@event_spmi_read_begin = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_spmi_read_begin, %union.anon.0 { ptr @__tracepoint_spmi_read_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_spmi_read_begin }, ptr @print_fmt_spmi_read_begin, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_spmi_read_begin = internal global ptr @event_spmi_read_begin, section "_ftrace_events", align 4
@trace_event_fields_spmi_read_end = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.6, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.7, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon { %struct.anon { ptr @.str.9, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon { %struct.anon { ptr @.str.15, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.10, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon { %struct.anon { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_spmi_read_end = internal global %struct.trace_event_class { ptr @.str.21, ptr @trace_event_raw_event_spmi_read_end, ptr @perf_trace_spmi_read_end, ptr @trace_event_reg, ptr @trace_event_fields_spmi_read_end, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_spmi_read_end, i64 24), ptr getelementptr (i8, ptr @event_class_spmi_read_end, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_spmi_read_end = internal global %struct.trace_event_functions { ptr @trace_raw_output_spmi_read_end, ptr null, ptr null, ptr null }, align 4
@print_fmt_spmi_read_end = internal global [175 x i8] c"\22opc=%d sid=%02d addr=0x%04x ret=%d len=%02d buf=0x[%*phD]\22, (int)REC->opcode, (int)REC->sid, (int)REC->addr, REC->ret, (int)REC->len, (int)REC->len, __get_dynamic_array(buf)\00", align 1
@event_spmi_read_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_spmi_read_end, %union.anon.0 { ptr @__tracepoint_spmi_read_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_spmi_read_end }, ptr @print_fmt_spmi_read_end, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_spmi_read_end = internal global ptr @event_spmi_read_end, section "_ftrace_events", align 4
@trace_event_fields_spmi_cmd = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.6, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.7, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon { %struct.anon { ptr @.str.15, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_spmi_cmd = internal global %struct.trace_event_class { ptr @.str.21, ptr @trace_event_raw_event_spmi_cmd, ptr @perf_trace_spmi_cmd, ptr @trace_event_reg, ptr @trace_event_fields_spmi_cmd, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_spmi_cmd, i64 24), ptr getelementptr (i8, ptr @event_class_spmi_cmd, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_spmi_cmd = internal global %struct.trace_event_functions { ptr @trace_raw_output_spmi_cmd, ptr null, ptr null, ptr null }, align 4
@print_fmt_spmi_cmd = internal global [63 x i8] c"\22opc=%d sid=%02d ret=%d\22, (int)REC->opcode, (int)REC->sid, ret\00", align 1
@event_spmi_cmd = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_spmi_cmd, %union.anon.0 { ptr @__tracepoint_spmi_cmd }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_spmi_cmd }, ptr @print_fmt_spmi_cmd, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_spmi_cmd = internal global ptr @event_spmi_cmd, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [8 x i8] c"%d-%02x\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Can't add %s, status %d\0A\00", align 1
@__kstrtab_spmi_device_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_device_add = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_device_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_device_add to i32), ptr @__kstrtab_spmi_device_add, ptr @__kstrtabns_spmi_device_add }, section "___ksymtab_gpl+spmi_device_add", align 4
@__kstrtab_spmi_device_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_device_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_device_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_device_remove to i32), ptr @__kstrtab_spmi_device_remove, ptr @__kstrtabns_spmi_device_remove }, section "___ksymtab_gpl+spmi_device_remove", align 4
@__kstrtab_spmi_register_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_register_read = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_register_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_register_read to i32), ptr @__kstrtab_spmi_register_read, ptr @__kstrtabns_spmi_register_read }, section "___ksymtab_gpl+spmi_register_read", align 4
@__kstrtab_spmi_ext_register_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_ext_register_read = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_ext_register_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_ext_register_read to i32), ptr @__kstrtab_spmi_ext_register_read, ptr @__kstrtabns_spmi_ext_register_read }, section "___ksymtab_gpl+spmi_ext_register_read", align 4
@__kstrtab_spmi_ext_register_readl = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_ext_register_readl = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_ext_register_readl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_ext_register_readl to i32), ptr @__kstrtab_spmi_ext_register_readl, ptr @__kstrtabns_spmi_ext_register_readl }, section "___ksymtab_gpl+spmi_ext_register_readl", align 4
@__kstrtab_spmi_register_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_register_write = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_register_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_register_write to i32), ptr @__kstrtab_spmi_register_write, ptr @__kstrtabns_spmi_register_write }, section "___ksymtab_gpl+spmi_register_write", align 4
@__kstrtab_spmi_register_zero_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_register_zero_write = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_register_zero_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_register_zero_write to i32), ptr @__kstrtab_spmi_register_zero_write, ptr @__kstrtabns_spmi_register_zero_write }, section "___ksymtab_gpl+spmi_register_zero_write", align 4
@__kstrtab_spmi_ext_register_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_ext_register_write = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_ext_register_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_ext_register_write to i32), ptr @__kstrtab_spmi_ext_register_write, ptr @__kstrtabns_spmi_ext_register_write }, section "___ksymtab_gpl+spmi_ext_register_write", align 4
@__kstrtab_spmi_ext_register_writel = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_ext_register_writel = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_ext_register_writel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_ext_register_writel to i32), ptr @__kstrtab_spmi_ext_register_writel, ptr @__kstrtabns_spmi_ext_register_writel }, section "___ksymtab_gpl+spmi_ext_register_writel", align 4
@__kstrtab_spmi_command_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_command_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_command_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_command_reset to i32), ptr @__kstrtab_spmi_command_reset, ptr @__kstrtabns_spmi_command_reset }, section "___ksymtab_gpl+spmi_command_reset", align 4
@__kstrtab_spmi_command_sleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_command_sleep = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_command_sleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_command_sleep to i32), ptr @__kstrtab_spmi_command_sleep, ptr @__kstrtabns_spmi_command_sleep }, section "___ksymtab_gpl+spmi_command_sleep", align 4
@__kstrtab_spmi_command_wakeup = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_command_wakeup = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_command_wakeup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_command_wakeup to i32), ptr @__kstrtab_spmi_command_wakeup, ptr @__kstrtabns_spmi_command_wakeup }, section "___ksymtab_gpl+spmi_command_wakeup", align 4
@__kstrtab_spmi_command_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_command_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_command_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_command_shutdown to i32), ptr @__kstrtab_spmi_command_shutdown, ptr @__kstrtabns_spmi_command_shutdown }, section "___ksymtab_gpl+spmi_command_shutdown", align 4
@spmi_bus_type = internal global %struct.bus_type { ptr @.str.21, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spmi_device_match, ptr @spmi_drv_uevent, ptr @spmi_drv_probe, ptr null, ptr @spmi_drv_remove, ptr @spmi_drv_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@spmi_dev_type = internal constant %struct.device_type { ptr null, ptr null, ptr null, ptr null, ptr @spmi_dev_release, ptr null }, align 4
@__kstrtab_spmi_device_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_device_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_device_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_device_alloc to i32), ptr @__kstrtab_spmi_device_alloc, ptr @__kstrtabns_spmi_device_alloc }, section "___ksymtab_gpl+spmi_device_alloc", align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"drivers/spmi/spmi.c\00", align 1
@spmi_ctrl_type = internal constant %struct.device_type { ptr null, ptr null, ptr null, ptr null, ptr @spmi_ctrl_release, ptr null }, align 4
@ctrl_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"unable to allocate SPMI controller identifier.\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"spmi-%d\00", align 1
@__kstrtab_spmi_controller_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_controller_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_controller_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_controller_alloc to i32), ptr @__kstrtab_spmi_controller_alloc, ptr @__kstrtabns_spmi_controller_alloc }, section "___ksymtab_gpl+spmi_controller_alloc", align 4
@is_registered = internal unnamed_addr global i1 false, align 1
@__kstrtab_spmi_controller_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_controller_add = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_controller_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_controller_add to i32), ptr @__kstrtab_spmi_controller_add, ptr @__kstrtabns_spmi_controller_add }, section "___ksymtab_gpl+spmi_controller_add", align 4
@__kstrtab_spmi_controller_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_spmi_controller_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_spmi_controller_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spmi_controller_remove to i32), ptr @__kstrtab_spmi_controller_remove, ptr @__kstrtabns_spmi_controller_remove }, section "___ksymtab_gpl+spmi_controller_remove", align 4
@__kstrtab___spmi_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___spmi_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab___spmi_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__spmi_driver_register to i32), ptr @__kstrtab___spmi_driver_register, ptr @__kstrtabns___spmi_driver_register }, section "___ksymtab_gpl+__spmi_driver_register", align 4
@__exitcall_spmi_exit = internal global ptr @spmi_exit, section ".exitcall.exit", align 4
@__initcall__kmod_spmi__265_599_spmi_init2 = internal global ptr @spmi_init, section ".initcall2.init", align 4
@__UNIQUE_ID_file266 = internal constant [28 x i8] c"spmi.file=drivers/spmi/spmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [20 x i8] c"spmi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description268 = internal constant [29 x i8] c"spmi.description=SPMI module\00", section ".modinfo", align 1
@__UNIQUE_ID_alias269 = internal constant [25 x i8] c"spmi.alias=platform:spmi\00", section ".modinfo", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"opcode\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"sid\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"u16\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"__data_loc u8[]\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"opc=%d sid=%02d addr=0x%04x len=%d buf=0x[%*phD]\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"opc=%d sid=%02d addr=0x%04x ret=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"opc=%d sid=%02d addr=0x%04x\0A\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"opc=%d sid=%02d addr=0x%04x ret=%d len=%02d buf=0x[%*phD]\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"opc=%d sid=%02d ret=%d\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.21 = private constant [5 x i8] c"spmi\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"node %pOF err (%d) does not have 'reg' property\0A\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"node %pOF contains unsupported 'reg' entry\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"invalid usid on node %pOF\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"failure adding device. status %d\0A\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_alias269, ptr @__UNIQUE_ID_description268, ptr @__UNIQUE_ID_file266, ptr @__UNIQUE_ID_license267, ptr @__event_spmi_cmd, ptr @__event_spmi_read_begin, ptr @__event_spmi_read_end, ptr @__event_spmi_write_begin, ptr @__event_spmi_write_end, ptr @__exitcall_spmi_exit, ptr @__initcall__kmod_spmi__265_599_spmi_init2, ptr @__ksymtab___spmi_driver_register, ptr @__ksymtab_spmi_command_reset, ptr @__ksymtab_spmi_command_shutdown, ptr @__ksymtab_spmi_command_sleep, ptr @__ksymtab_spmi_command_wakeup, ptr @__ksymtab_spmi_controller_add, ptr @__ksymtab_spmi_controller_alloc, ptr @__ksymtab_spmi_controller_remove, ptr @__ksymtab_spmi_device_add, ptr @__ksymtab_spmi_device_alloc, ptr @__ksymtab_spmi_device_remove, ptr @__ksymtab_spmi_ext_register_read, ptr @__ksymtab_spmi_ext_register_readl, ptr @__ksymtab_spmi_ext_register_write, ptr @__ksymtab_spmi_ext_register_writel, ptr @__ksymtab_spmi_register_read, ptr @__ksymtab_spmi_register_write, ptr @__ksymtab_spmi_register_zero_write, ptr @__tracepoint_ptr_spmi_cmd, ptr @__tracepoint_ptr_spmi_read_begin, ptr @__tracepoint_ptr_spmi_read_end, ptr @__tracepoint_ptr_spmi_write_begin, ptr @__tracepoint_ptr_spmi_write_end, ptr @__tracepoint_spmi_cmd, ptr @__tracepoint_spmi_read_begin, ptr @__tracepoint_spmi_read_end, ptr @__tracepoint_spmi_write_begin, ptr @__tracepoint_spmi_write_end, ptr @event_class_spmi_cmd, ptr @event_class_spmi_read_begin, ptr @event_class_spmi_read_end, ptr @event_class_spmi_write_begin, ptr @event_class_spmi_write_end, ptr @event_spmi_cmd, ptr @event_spmi_read_begin, ptr @event_spmi_read_end, ptr @event_spmi_write_begin, ptr @event_spmi_write_end, ptr @spmi_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_spmi_write_begin(ptr nocapture readnone %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_begin, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5) #12
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_spmi_write_end(ptr nocapture readnone %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_end, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4) #12
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_spmi_read_begin(ptr nocapture readnone %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_read_begin, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) #12
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_spmi_read_end(ptr nocapture readnone %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4, i8 noundef zeroext %5, ptr noundef %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_read_end, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4, i8 noundef zeroext %5, ptr noundef %6) #12
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_spmi_cmd(ptr nocapture readnone %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_cmd, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3) #12
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_spmi_write_begin(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
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
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %16, label %33, label %17

17:                                               ; preds = %15, %12, %6
  %18 = zext i8 %4 to i32
  %19 = add nuw nsw i32 %18, 21
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef %19) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = add nuw nsw i32 %18, 1
  %24 = shl nuw nsw i32 %23, 16
  %25 = or i32 %24, 20
  %26 = getelementptr inbounds %struct.trace_event_raw_spmi_write_begin, ptr %20, i32 0, i32 5
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_spmi_write_begin, ptr %20, i32 0, i32 1
  store i8 %1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_spmi_write_begin, ptr %20, i32 0, i32 2
  store i8 %2, ptr %28, align 1
  %29 = getelementptr inbounds %struct.trace_event_raw_spmi_write_begin, ptr %20, i32 0, i32 3
  store i16 %3, ptr %29, align 2
  %30 = trunc i32 %23 to i8
  %31 = getelementptr inbounds %struct.trace_event_raw_spmi_write_begin, ptr %20, i32 0, i32 4
  store i8 %30, ptr %31, align 4
  %32 = getelementptr i8, ptr %20, i32 20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %32, ptr noundef align 1 %5, i32 %23, i1 false)
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #12
  br label %33

33:                                               ; preds = %22, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_spmi_write_begin(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i8 noundef zeroext %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = zext i8 %4 to i32
  %10 = add nuw nsw i32 %9, 1
  %11 = shl nuw nsw i32 %10, 16
  %12 = or i32 %11, 20
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #7, !srcloc !12
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load volatile ptr, ptr %20, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %53, label %27

27:                                               ; preds = %24, %6
  %28 = add nuw nsw i32 %9, 32
  %29 = and i32 %28, 504
  %30 = add nsw i32 %29, -4
  %31 = call ptr @perf_trace_buf_alloc(i32 noundef %30, ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %53, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %7, align 4
  %35 = call ptr @llvm.returnaddress(i32 0) #12
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %34, i32 0, i32 15
  store i32 %36, ptr %37, align 4
  %38 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %39 = ptrtoint ptr %38 to i32
  %40 = getelementptr [18 x i32], ptr %34, i32 0, i32 11
  store i32 %39, ptr %40, align 4
  %41 = call i32 @llvm.read_register.i32(metadata !0) #12
  %42 = getelementptr [18 x i32], ptr %34, i32 0, i32 13
  store i32 %41, ptr %42, align 4
  %43 = getelementptr [18 x i32], ptr %34, i32 0, i32 16
  store i32 19, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_spmi_write_begin, ptr %31, i32 0, i32 5
  store i32 %12, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_spmi_write_begin, ptr %31, i32 0, i32 1
  store i8 %1, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_spmi_write_begin, ptr %31, i32 0, i32 2
  store i8 %2, ptr %46, align 1
  %47 = getelementptr inbounds %struct.trace_event_raw_spmi_write_begin, ptr %31, i32 0, i32 3
  store i16 %3, ptr %47, align 2
  %48 = trunc i32 %10 to i8
  %49 = getelementptr inbounds %struct.trace_event_raw_spmi_write_begin, ptr %31, i32 0, i32 4
  store i8 %48, ptr %49, align 4
  %50 = getelementptr i8, ptr %31, i32 20
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %50, ptr noundef align 1 %5, i32 %10, i1 false)
  %51 = load i32, ptr %8, align 4
  %52 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %31, i32 noundef %30, i32 noundef %51, ptr noundef %0, i64 noundef 1, ptr noundef %52, ptr noundef %20, ptr noundef null) #12
  br label %53

53:                                               ; preds = %33, %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_spmi_write_end(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
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
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %15, label %24, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 16) #12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_spmi_write_end, ptr %17, i32 0, i32 1
  store i8 %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_spmi_write_end, ptr %17, i32 0, i32 2
  store i8 %2, ptr %21, align 1
  %22 = getelementptr inbounds %struct.trace_event_raw_spmi_write_end, ptr %17, i32 0, i32 3
  store i16 %3, ptr %22, align 2
  %23 = getelementptr inbounds %struct.trace_event_raw_spmi_write_end, ptr %17, i32 0, i32 4
  store i32 %4, ptr %23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #12
  br label %24

24:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_spmi_write_end(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #7, !srcloc !12
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
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #12
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #12
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_spmi_write_end, ptr %23, i32 0, i32 1
  store i8 %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_spmi_write_end, ptr %23, i32 0, i32 2
  store i8 %2, ptr %37, align 1
  %38 = getelementptr inbounds %struct.trace_event_raw_spmi_write_end, ptr %23, i32 0, i32 3
  store i16 %3, ptr %38, align 2
  %39 = getelementptr inbounds %struct.trace_event_raw_spmi_write_end, ptr %23, i32 0, i32 4
  store i32 %4, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 20, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %15, ptr noundef null) #12
  br label %42

42:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_spmi_read_begin(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 12) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_spmi_read_begin, ptr %16, i32 0, i32 1
  store i8 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_spmi_read_begin, ptr %16, i32 0, i32 2
  store i8 %2, ptr %20, align 1
  %21 = getelementptr inbounds %struct.trace_event_raw_spmi_read_begin, ptr %16, i32 0, i32 3
  store i16 %3, ptr %21, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #12
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_spmi_read_begin(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #7, !srcloc !12
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
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #12
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #12
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_spmi_read_begin, ptr %22, i32 0, i32 1
  store i8 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_spmi_read_begin, ptr %22, i32 0, i32 2
  store i8 %2, ptr %36, align 1
  %37 = getelementptr inbounds %struct.trace_event_raw_spmi_read_begin, ptr %22, i32 0, i32 3
  store i16 %3, ptr %37, align 2
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 12, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #12
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_spmi_read_end(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4, i8 noundef zeroext %5, ptr nocapture noundef readonly %6) #0 {
  %8 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #12
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
  %17 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %17, label %35, label %18

18:                                               ; preds = %16, %13, %7
  %19 = zext i8 %5 to i32
  %20 = add nuw nsw i32 %19, 25
  %21 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %8, ptr noundef %0, i32 noundef %20) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = add nuw nsw i32 %19, 1
  %25 = shl nuw nsw i32 %24, 16
  %26 = or i32 %25, 24
  %27 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %21, i32 0, i32 6
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %21, i32 0, i32 1
  store i8 %1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %21, i32 0, i32 2
  store i8 %2, ptr %29, align 1
  %30 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %21, i32 0, i32 3
  store i16 %3, ptr %30, align 2
  %31 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %21, i32 0, i32 4
  store i32 %4, ptr %31, align 4
  %32 = trunc i32 %24 to i8
  %33 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %21, i32 0, i32 5
  store i8 %32, ptr %33, align 4
  %34 = getelementptr i8, ptr %21, i32 24
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %34, ptr noundef align 1 %6, i32 %24, i1 false)
  call void @trace_event_buffer_commit(ptr noundef nonnull %8) #12
  br label %35

35:                                               ; preds = %23, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_spmi_read_end(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i16 noundef zeroext %3, i32 noundef %4, i8 noundef zeroext %5, ptr nocapture noundef readonly %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #12
  store i32 0, ptr %9, align 4, !annotation !9
  %10 = zext i8 %5 to i32
  %11 = add nuw nsw i32 %10, 1
  %12 = shl nuw nsw i32 %11, 16
  %13 = or i32 %12, 24
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #7, !srcloc !12
  %20 = add i32 %19, %16
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load volatile ptr, ptr %21, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %55, label %28

28:                                               ; preds = %25, %7
  %29 = add nuw nsw i32 %10, 36
  %30 = and i32 %29, 504
  %31 = add nsw i32 %30, -4
  %32 = call ptr @perf_trace_buf_alloc(i32 noundef %31, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %55, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %8, align 4
  %36 = call ptr @llvm.returnaddress(i32 0) #12
  %37 = ptrtoint ptr %36 to i32
  %38 = getelementptr [18 x i32], ptr %35, i32 0, i32 15
  store i32 %37, ptr %38, align 4
  %39 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %40 = ptrtoint ptr %39 to i32
  %41 = getelementptr [18 x i32], ptr %35, i32 0, i32 11
  store i32 %40, ptr %41, align 4
  %42 = call i32 @llvm.read_register.i32(metadata !0) #12
  %43 = getelementptr [18 x i32], ptr %35, i32 0, i32 13
  store i32 %42, ptr %43, align 4
  %44 = getelementptr [18 x i32], ptr %35, i32 0, i32 16
  store i32 19, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %32, i32 0, i32 6
  store i32 %13, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %32, i32 0, i32 1
  store i8 %1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %32, i32 0, i32 2
  store i8 %2, ptr %47, align 1
  %48 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %32, i32 0, i32 3
  store i16 %3, ptr %48, align 2
  %49 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %32, i32 0, i32 4
  store i32 %4, ptr %49, align 4
  %50 = trunc i32 %11 to i8
  %51 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %32, i32 0, i32 5
  store i8 %50, ptr %51, align 4
  %52 = getelementptr i8, ptr %32, i32 24
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %52, ptr noundef align 1 %6, i32 %11, i1 false)
  %53 = load i32, ptr %9, align 4
  %54 = load ptr, ptr %8, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %32, i32 noundef %31, i32 noundef %53, ptr noundef %0, i64 noundef 1, ptr noundef %54, ptr noundef %21, ptr noundef null) #12
  br label %55

55:                                               ; preds = %34, %28, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_spmi_cmd(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #12
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 16) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_spmi_cmd, ptr %16, i32 0, i32 1
  store i8 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_spmi_cmd, ptr %16, i32 0, i32 2
  store i8 %2, ptr %20, align 1
  %21 = getelementptr inbounds %struct.trace_event_raw_spmi_cmd, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #12
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_spmi_cmd(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #12
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #7, !srcloc !12
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
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #12
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #12
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #12
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_spmi_cmd, ptr %22, i32 0, i32 1
  store i8 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_spmi_cmd, ptr %22, i32 0, i32 2
  store i8 %2, ptr %36, align 1
  %37 = getelementptr inbounds %struct.trace_event_raw_spmi_cmd, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #12
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spmi_device_add(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.spmi_controller, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %8) #12
  %10 = tail call i32 @device_add(ptr noundef %0) #12
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi ptr [ %17, %16 ], [ %14, %12 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %19, i32 noundef %10) #13
  br label %20

20:                                               ; preds = %18, %1
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spmi_device_remove(ptr noundef %0) #0 {
  tail call void @device_unregister(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spmi_register_read(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = icmp ugt i8 %1, 31
  br i1 %4, label %75, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %1 to i16
  %11 = icmp eq ptr %7, null
  br i1 %11, label %75, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.spmi_controller, ptr %7, i32 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %75, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, @spmi_ctrl_type
  br i1 %19, label %20, label %75

20:                                               ; preds = %16
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_read_begin, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = tail call ptr @llvm.thread.pointer() #12
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 5
  %28 = getelementptr i32, ptr @__cpu_online_mask, i32 %27
  %29 = load volatile i32, ptr %28, align 4
  %30 = and i32 %26, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %23
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %35 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_read_begin, i32 0, i32 7), align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %37, %34
  %38 = phi ptr [ %42, %37 ], [ %35, %34 ]
  %39 = load volatile ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.tracepoint_func, ptr %38, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  tail call void %39(ptr noundef %41, i8 noundef zeroext 96, i8 noundef zeroext %9, i16 noundef zeroext %10) #12
  %42 = getelementptr %struct.tracepoint_func, ptr %38, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %37

45:                                               ; preds = %37, %34
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %46 = load ptr, ptr %13, align 8
  br label %47

47:                                               ; preds = %45, %23, %20
  %48 = phi ptr [ %14, %20 ], [ %14, %23 ], [ %46, %45 ]
  %49 = tail call i32 %48(ptr noundef nonnull %7, i8 noundef zeroext 96, i8 noundef zeroext %9, i16 noundef zeroext %10, ptr noundef %2, i32 noundef 1) #12
  %50 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_read_end, i32 0, i32 1), align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %47
  %53 = tail call ptr @llvm.thread.pointer() #12
  %54 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 8
  %56 = lshr i32 %55, 5
  %57 = getelementptr i32, ptr @__cpu_online_mask, i32 %56
  %58 = load volatile i32, ptr %57, align 4
  %59 = and i32 %55, 31
  %60 = shl nuw i32 1, %59
  %61 = and i32 %60, %58
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %52
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %64 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_read_end, i32 0, i32 7), align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %66, %63
  %67 = phi ptr [ %71, %66 ], [ %64, %63 ]
  %68 = load volatile ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.tracepoint_func, ptr %67, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  tail call void %68(ptr noundef %70, i8 noundef zeroext 96, i8 noundef zeroext %9, i16 noundef zeroext %10, i32 noundef %49, i8 noundef zeroext 1, ptr noundef %2) #12
  %71 = getelementptr %struct.tracepoint_func, ptr %67, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %66

74:                                               ; preds = %66, %63
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  br label %75

75:                                               ; preds = %74, %52, %47, %16, %12, %5, %3
  %76 = phi i32 [ -22, %3 ], [ -22, %16 ], [ -22, %12 ], [ -22, %5 ], [ %49, %47 ], [ %49, %52 ], [ %49, %74 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spmi_ext_register_read(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = add i32 %3, -17
  %6 = icmp ult i32 %5, -16
  br i1 %6, label %78, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %1 to i16
  %13 = icmp eq ptr %9, null
  br i1 %13, label %78, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.spmi_controller, ptr %9, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %78, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, @spmi_ctrl_type
  br i1 %21, label %22, label %78

22:                                               ; preds = %18
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_read_begin, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %22
  %26 = tail call ptr @llvm.thread.pointer() #12
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 5
  %30 = getelementptr i32, ptr @__cpu_online_mask, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %28, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %25
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %37 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_read_begin, i32 0, i32 7), align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %39, %36
  %40 = phi ptr [ %44, %39 ], [ %37, %36 ]
  %41 = load volatile ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.tracepoint_func, ptr %40, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void %41(ptr noundef %43, i8 noundef zeroext 32, i8 noundef zeroext %11, i16 noundef zeroext %12) #12
  %44 = getelementptr %struct.tracepoint_func, ptr %40, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %39

47:                                               ; preds = %39, %36
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %48 = load ptr, ptr %15, align 8
  br label %49

49:                                               ; preds = %47, %25, %22
  %50 = phi ptr [ %16, %22 ], [ %16, %25 ], [ %48, %47 ]
  %51 = tail call i32 %50(ptr noundef nonnull %9, i8 noundef zeroext 32, i8 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef %2, i32 noundef %3) #12
  %52 = trunc i32 %3 to i8
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_read_end, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %49
  %56 = tail call ptr @llvm.thread.pointer() #12
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %67 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_read_end, i32 0, i32 7), align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %69, %66
  %70 = phi ptr [ %74, %69 ], [ %67, %66 ]
  %71 = load volatile ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.tracepoint_func, ptr %70, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  tail call void %71(ptr noundef %73, i8 noundef zeroext 32, i8 noundef zeroext %11, i16 noundef zeroext %12, i32 noundef %51, i8 noundef zeroext %52, ptr noundef %2) #12
  %74 = getelementptr %struct.tracepoint_func, ptr %70, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %69

77:                                               ; preds = %69, %66
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  br label %78

78:                                               ; preds = %77, %55, %49, %18, %14, %7, %4
  %79 = phi i32 [ -22, %4 ], [ -22, %18 ], [ -22, %14 ], [ -22, %7 ], [ %51, %49 ], [ %51, %55 ], [ %51, %77 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spmi_ext_register_readl(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = add i32 %3, -9
  %6 = icmp ult i32 %5, -8
  br i1 %6, label %77, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq ptr %9, null
  br i1 %12, label %77, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.spmi_controller, ptr %9, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %77, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 4
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, @spmi_ctrl_type
  br i1 %20, label %21, label %77

21:                                               ; preds = %17
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_read_begin, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = tail call ptr @llvm.thread.pointer() #12
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !13
  %36 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_read_begin, i32 0, i32 7), align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %38, %35
  %39 = phi ptr [ %43, %38 ], [ %36, %35 ]
  %40 = load volatile ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.tracepoint_func, ptr %39, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void %40(ptr noundef %42, i8 noundef zeroext 56, i8 noundef zeroext %11, i16 noundef zeroext %1) #12
  %43 = getelementptr %struct.tracepoint_func, ptr %39, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %38

46:                                               ; preds = %38, %35
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !14
  %47 = load ptr, ptr %14, align 8
  br label %48

48:                                               ; preds = %46, %24, %21
  %49 = phi ptr [ %15, %21 ], [ %15, %24 ], [ %47, %46 ]
  %50 = tail call i32 %49(ptr noundef nonnull %9, i8 noundef zeroext 56, i8 noundef zeroext %11, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #12
  %51 = trunc i32 %3 to i8
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_read_end, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %48
  %55 = tail call ptr @llvm.thread.pointer() #12
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !15
  %66 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_read_end, i32 0, i32 7), align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %68, %65
  %69 = phi ptr [ %73, %68 ], [ %66, %65 ]
  %70 = load volatile ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.tracepoint_func, ptr %69, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  tail call void %70(ptr noundef %72, i8 noundef zeroext 56, i8 noundef zeroext %11, i16 noundef zeroext %1, i32 noundef %50, i8 noundef zeroext %51, ptr noundef %2) #12
  %73 = getelementptr %struct.tracepoint_func, ptr %69, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %68

76:                                               ; preds = %68, %65
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !16
  br label %77

77:                                               ; preds = %76, %54, %48, %17, %13, %7, %4
  %78 = phi i32 [ -22, %4 ], [ -22, %17 ], [ -22, %13 ], [ -22, %7 ], [ %50, %48 ], [ %50, %54 ], [ %50, %76 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spmi_register_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = alloca i8, align 1
  store i8 %2, ptr %4, align 1
  %5 = icmp ugt i8 %1, 31
  br i1 %5, label %76, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 2
  %10 = load i8, ptr %9, align 4
  %11 = zext i8 %1 to i16
  %12 = icmp eq ptr %8, null
  br i1 %12, label %76, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.spmi_controller, ptr %8, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %76, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 4
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, @spmi_ctrl_type
  br i1 %20, label %21, label %76

21:                                               ; preds = %17
  %22 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_begin, i32 0, i32 1), align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = tail call ptr @llvm.thread.pointer() #12
  %26 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 5
  %29 = getelementptr i32, ptr @__cpu_online_mask, i32 %28
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %27, 31
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %24
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %36 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_begin, i32 0, i32 7), align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %38, %35
  %39 = phi ptr [ %43, %38 ], [ %36, %35 ]
  %40 = load volatile ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.tracepoint_func, ptr %39, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  call void %40(ptr noundef %42, i8 noundef zeroext 64, i8 noundef zeroext %10, i16 noundef zeroext %11, i8 noundef zeroext 1, ptr noundef nonnull %4) #12
  %43 = getelementptr %struct.tracepoint_func, ptr %39, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %38

46:                                               ; preds = %38, %35
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  %47 = load ptr, ptr %14, align 4
  br label %48

48:                                               ; preds = %46, %24, %21
  %49 = phi ptr [ %15, %21 ], [ %15, %24 ], [ %47, %46 ]
  %50 = call i32 %49(ptr noundef nonnull %8, i8 noundef zeroext 64, i8 noundef zeroext %10, i16 noundef zeroext %11, ptr noundef nonnull %4, i32 noundef 1) #12
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_end, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %48
  %54 = tail call ptr @llvm.thread.pointer() #12
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
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  %65 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_end, i32 0, i32 7), align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %67, %64
  %68 = phi ptr [ %72, %67 ], [ %65, %64 ]
  %69 = load volatile ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.tracepoint_func, ptr %68, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  call void %69(ptr noundef %71, i8 noundef zeroext 64, i8 noundef zeroext %10, i16 noundef zeroext %11, i32 noundef %50) #12
  %72 = getelementptr %struct.tracepoint_func, ptr %68, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %67

75:                                               ; preds = %67, %64
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  br label %76

76:                                               ; preds = %75, %53, %48, %17, %13, %6, %3
  %77 = phi i32 [ -22, %3 ], [ -22, %17 ], [ -22, %13 ], [ -22, %6 ], [ %50, %48 ], [ %50, %53 ], [ %50, %75 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spmi_register_zero_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1
  %4 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq ptr %5, null
  br i1 %8, label %72, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.spmi_controller, ptr %5, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %72, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 4
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, @spmi_ctrl_type
  br i1 %16, label %17, label %72

17:                                               ; preds = %13
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_begin, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = tail call ptr @llvm.thread.pointer() #12
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %20
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %32 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_begin, i32 0, i32 7), align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %34, %31
  %35 = phi ptr [ %39, %34 ], [ %32, %31 ]
  %36 = load volatile ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tracepoint_func, ptr %35, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  call void %36(ptr noundef %38, i8 noundef zeroext -128, i8 noundef zeroext %7, i16 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef nonnull %3) #12
  %39 = getelementptr %struct.tracepoint_func, ptr %35, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %34

42:                                               ; preds = %34, %31
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  %43 = load ptr, ptr %10, align 4
  br label %44

44:                                               ; preds = %42, %20, %17
  %45 = phi ptr [ %11, %17 ], [ %11, %20 ], [ %43, %42 ]
  %46 = call i32 %45(ptr noundef nonnull %5, i8 noundef zeroext -128, i8 noundef zeroext %7, i16 noundef zeroext 0, ptr noundef nonnull %3, i32 noundef 1) #12
  %47 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_end, i32 0, i32 1), align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %44
  %50 = tail call ptr @llvm.thread.pointer() #12
  %51 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = lshr i32 %52, 5
  %54 = getelementptr i32, ptr @__cpu_online_mask, i32 %53
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %52, 31
  %57 = shl nuw i32 1, %56
  %58 = and i32 %57, %55
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %49
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  %61 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_end, i32 0, i32 7), align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %63, %60
  %64 = phi ptr [ %68, %63 ], [ %61, %60 ]
  %65 = load volatile ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.tracepoint_func, ptr %64, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  call void %65(ptr noundef %67, i8 noundef zeroext -128, i8 noundef zeroext %7, i16 noundef zeroext 0, i32 noundef %46) #12
  %68 = getelementptr %struct.tracepoint_func, ptr %64, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %63

71:                                               ; preds = %63, %60
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  br label %72

72:                                               ; preds = %71, %49, %44, %13, %9, %2
  %73 = phi i32 [ -22, %13 ], [ -22, %9 ], [ -22, %2 ], [ %46, %44 ], [ %46, %49 ], [ %46, %71 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spmi_ext_register_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = add i32 %3, -17
  %6 = icmp ult i32 %5, -16
  br i1 %6, label %78, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %1 to i16
  %13 = icmp eq ptr %9, null
  br i1 %13, label %78, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.spmi_controller, ptr %9, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %78, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 4
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, @spmi_ctrl_type
  br i1 %21, label %22, label %78

22:                                               ; preds = %18
  %23 = trunc i32 %3 to i8
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_begin, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #12
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 5
  %31 = getelementptr i32, ptr @__cpu_online_mask, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %29, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %38 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_begin, i32 0, i32 7), align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %40, %37
  %41 = phi ptr [ %45, %40 ], [ %38, %37 ]
  %42 = load volatile ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.tracepoint_func, ptr %41, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void %42(ptr noundef %44, i8 noundef zeroext 0, i8 noundef zeroext %11, i16 noundef zeroext %12, i8 noundef zeroext %23, ptr noundef %2) #12
  %45 = getelementptr %struct.tracepoint_func, ptr %41, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %40

48:                                               ; preds = %40, %37
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  %49 = load ptr, ptr %15, align 4
  br label %50

50:                                               ; preds = %48, %26, %22
  %51 = phi ptr [ %16, %22 ], [ %16, %26 ], [ %49, %48 ]
  %52 = tail call i32 %51(ptr noundef nonnull %9, i8 noundef zeroext 0, i8 noundef zeroext %11, i16 noundef zeroext %12, ptr noundef %2, i32 noundef %3) #12
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_end, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %50
  %56 = tail call ptr @llvm.thread.pointer() #12
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  %67 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_end, i32 0, i32 7), align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %69, %66
  %70 = phi ptr [ %74, %69 ], [ %67, %66 ]
  %71 = load volatile ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.tracepoint_func, ptr %70, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  tail call void %71(ptr noundef %73, i8 noundef zeroext 0, i8 noundef zeroext %11, i16 noundef zeroext %12, i32 noundef %52) #12
  %74 = getelementptr %struct.tracepoint_func, ptr %70, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %69

77:                                               ; preds = %69, %66
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  br label %78

78:                                               ; preds = %77, %55, %50, %18, %14, %7, %4
  %79 = phi i32 [ -22, %4 ], [ -22, %18 ], [ -22, %14 ], [ -22, %7 ], [ %52, %50 ], [ %52, %55 ], [ %52, %77 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spmi_ext_register_writel(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = add i32 %3, -9
  %6 = icmp ult i32 %5, -8
  br i1 %6, label %77, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 2
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq ptr %9, null
  br i1 %12, label %77, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.spmi_controller, ptr %9, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %77, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 4
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, @spmi_ctrl_type
  br i1 %20, label %21, label %77

21:                                               ; preds = %17
  %22 = trunc i32 %3 to i8
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_begin, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = tail call ptr @llvm.thread.pointer() #12
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 5
  %30 = getelementptr i32, ptr @__cpu_online_mask, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %28, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %25
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %37 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_begin, i32 0, i32 7), align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %39, %36
  %40 = phi ptr [ %44, %39 ], [ %37, %36 ]
  %41 = load volatile ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.tracepoint_func, ptr %40, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void %41(ptr noundef %43, i8 noundef zeroext 48, i8 noundef zeroext %11, i16 noundef zeroext %1, i8 noundef zeroext %22, ptr noundef %2) #12
  %44 = getelementptr %struct.tracepoint_func, ptr %40, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %39

47:                                               ; preds = %39, %36
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !18
  %48 = load ptr, ptr %14, align 4
  br label %49

49:                                               ; preds = %47, %25, %21
  %50 = phi ptr [ %15, %21 ], [ %15, %25 ], [ %48, %47 ]
  %51 = tail call i32 %50(ptr noundef nonnull %9, i8 noundef zeroext 48, i8 noundef zeroext %11, i16 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #12
  %52 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_end, i32 0, i32 1), align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %49
  %55 = tail call ptr @llvm.thread.pointer() #12
  %56 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 8
  %58 = lshr i32 %57, 5
  %59 = getelementptr i32, ptr @__cpu_online_mask, i32 %58
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %57, 31
  %62 = shl nuw i32 1, %61
  %63 = and i32 %62, %60
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %54
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  %66 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_write_end, i32 0, i32 7), align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %68, %65
  %69 = phi ptr [ %73, %68 ], [ %66, %65 ]
  %70 = load volatile ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.tracepoint_func, ptr %69, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  tail call void %70(ptr noundef %72, i8 noundef zeroext 48, i8 noundef zeroext %11, i16 noundef zeroext %1, i32 noundef %51) #12
  %73 = getelementptr %struct.tracepoint_func, ptr %69, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %68

76:                                               ; preds = %68, %65
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !20
  br label %77

77:                                               ; preds = %76, %54, %49, %17, %13, %7, %4
  %78 = phi i32 [ -22, %4 ], [ -22, %17 ], [ -22, %13 ], [ -22, %7 ], [ %51, %49 ], [ %51, %54 ], [ %51, %76 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spmi_command_reset(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq ptr %3, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.spmi_controller, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, @spmi_ctrl_type
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = tail call i32 %9(ptr noundef nonnull %3, i8 noundef zeroext 16, i8 noundef zeroext %5) #12
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_cmd, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #12
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !21
  %31 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_cmd, i32 0, i32 7), align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %33, %30
  %34 = phi ptr [ %38, %33 ], [ %31, %30 ]
  %35 = load volatile ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.tracepoint_func, ptr %34, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %35(ptr noundef %37, i8 noundef zeroext 16, i8 noundef zeroext %5, i32 noundef %16) #12
  %38 = getelementptr %struct.tracepoint_func, ptr %34, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %33

41:                                               ; preds = %33, %30
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  br label %42

42:                                               ; preds = %41, %19, %15, %11, %7, %1
  %43 = phi i32 [ -22, %11 ], [ -22, %7 ], [ -22, %1 ], [ %16, %15 ], [ %16, %19 ], [ %16, %41 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spmi_command_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq ptr %3, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.spmi_controller, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, @spmi_ctrl_type
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = tail call i32 %9(ptr noundef nonnull %3, i8 noundef zeroext 17, i8 noundef zeroext %5) #12
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_cmd, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #12
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !21
  %31 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_cmd, i32 0, i32 7), align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %33, %30
  %34 = phi ptr [ %38, %33 ], [ %31, %30 ]
  %35 = load volatile ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.tracepoint_func, ptr %34, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %35(ptr noundef %37, i8 noundef zeroext 17, i8 noundef zeroext %5, i32 noundef %16) #12
  %38 = getelementptr %struct.tracepoint_func, ptr %34, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %33

41:                                               ; preds = %33, %30
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  br label %42

42:                                               ; preds = %41, %19, %15, %11, %7, %1
  %43 = phi i32 [ -22, %11 ], [ -22, %7 ], [ -22, %1 ], [ %16, %15 ], [ %16, %19 ], [ %16, %41 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spmi_command_wakeup(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq ptr %3, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.spmi_controller, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, @spmi_ctrl_type
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = tail call i32 %9(ptr noundef nonnull %3, i8 noundef zeroext 19, i8 noundef zeroext %5) #12
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_cmd, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #12
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !21
  %31 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_cmd, i32 0, i32 7), align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %33, %30
  %34 = phi ptr [ %38, %33 ], [ %31, %30 ]
  %35 = load volatile ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.tracepoint_func, ptr %34, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %35(ptr noundef %37, i8 noundef zeroext 19, i8 noundef zeroext %5, i32 noundef %16) #12
  %38 = getelementptr %struct.tracepoint_func, ptr %34, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %33

41:                                               ; preds = %33, %30
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  br label %42

42:                                               ; preds = %41, %19, %15, %11, %7, %1
  %43 = phi i32 [ -22, %11 ], [ -22, %7 ], [ -22, %1 ], [ %16, %15 ], [ %16, %19 ], [ %16, %41 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spmi_command_shutdown(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.spmi_device, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq ptr %3, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.spmi_controller, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, @spmi_ctrl_type
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = tail call i32 %9(ptr noundef nonnull %3, i8 noundef zeroext 18, i8 noundef zeroext %5) #12
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_cmd, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #12
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %19
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !21
  %31 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_spmi_cmd, i32 0, i32 7), align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %33, %30
  %34 = phi ptr [ %38, %33 ], [ %31, %30 ]
  %35 = load volatile ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.tracepoint_func, ptr %34, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %35(ptr noundef %37, i8 noundef zeroext 18, i8 noundef zeroext %5, i32 noundef %16) #12
  %38 = getelementptr %struct.tracepoint_func, ptr %34, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %33

41:                                               ; preds = %33, %30
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
  br label %42

42:                                               ; preds = %41, %19, %15, %11, %7, %1
  %43 = phi i32 [ -22, %11 ], [ -22, %7 ], [ -22, %1 ], [ %16, %15 ], [ %16, %19 ], [ %16, %41 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @spmi_device_alloc(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 480) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.spmi_device, ptr %3, i32 0, i32 1
  store ptr %0, ptr %6, align 8
  tail call void @device_initialize(ptr noundef nonnull %3) #12
  %7 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  store ptr %0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 5
  store ptr @spmi_bus_type, ptr %8, align 4
  %9 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 4
  store ptr @spmi_dev_type, ptr %9, align 8
  br label %10

10:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @spmi_controller_alloc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !11

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 429, i32 noundef 9, ptr noundef null) #12
  br label %24

5:                                                ; preds = %2
  %6 = add i32 %1, 488
  %7 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  tail call void @device_initialize(ptr noundef nonnull %7) #12
  %10 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 4
  store ptr @spmi_ctrl_type, ptr %10, align 16
  %11 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 5
  store ptr @spmi_bus_type, ptr %11, align 4
  %12 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 25
  store ptr %14, ptr %15, align 32
  %16 = getelementptr %struct.spmi_controller, ptr %7, i32 1
  %17 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  store ptr %16, ptr %17, align 64
  %18 = tail call i32 @ida_alloc_range(ptr noundef nonnull @ctrl_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #12
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #13
  tail call void @put_device(ptr noundef nonnull %7) #12
  br label %24

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.spmi_controller, ptr %7, i32 0, i32 1
  store i32 %18, ptr %22, align 8
  %23 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %7, ptr noundef nonnull @.str.4, i32 noundef %18) #12
  br label %24

24:                                               ; preds = %21, %20, %5, %4
  %25 = phi ptr [ null, %4 ], [ null, %20 ], [ %7, %21 ], [ null, %5 ]
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @spmi_controller_add(ptr noundef %0) #0 {
  %2 = alloca [2 x i32], align 8
  %3 = load i1, ptr @is_registered, align 1
  br i1 %3, label %5, label %4, !prof !10

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 523, i32 noundef 9, ptr noundef null) #12
  br label %65

5:                                                ; preds = %1
  %6 = tail call i32 @device_add(ptr noundef %0) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %65

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %65, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %10, ptr noundef null) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %65, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  br label %17

17:                                               ; preds = %61, %15
  %18 = phi ptr [ %13, %15 ], [ %63, %61 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8, !annotation !9
  %19 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %18, ptr noundef nonnull @.str.22, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 0) #12
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %18, i32 noundef %19) #13
  br label %61

22:                                               ; preds = %17
  %23 = load i32, ptr %16, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %18) #13
  br label %61

26:                                               ; preds = %22
  %27 = load i32, ptr %2, align 8
  %28 = icmp ugt i32 %27, 15
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %18) #13
  br label %61

30:                                               ; preds = %26
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %32 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 480) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %61, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.spmi_device, ptr %32, i32 0, i32 1
  store ptr %0, ptr %35, align 8
  call void @device_initialize(ptr noundef nonnull %32) #12
  %36 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 1
  store ptr %0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 5
  store ptr @spmi_bus_type, ptr %37, align 4
  %38 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 4
  store ptr @spmi_dev_type, ptr %38, align 8
  %39 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 25
  store ptr %18, ptr %39, align 8
  %40 = load i32, ptr %2, align 8
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.spmi_device, ptr %32, i32 0, i32 2
  store i8 %41, ptr %42, align 4
  %43 = load ptr, ptr %35, align 8
  %44 = getelementptr inbounds %struct.spmi_controller, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %40, 255
  %47 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %32, ptr noundef nonnull @.str, i32 noundef %45, i32 noundef %46) #12
  %48 = call i32 @device_add(ptr noundef nonnull %32) #12
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load ptr, ptr %32, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi ptr [ %55, %54 ], [ %52, %50 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %32, ptr noundef nonnull @.str.1, ptr noundef %57, i32 noundef %48) #13
  br label %60

58:                                               ; preds = %34
  %59 = icmp eq i32 %48, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %58, %56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %32, ptr noundef nonnull @.str.26, i32 noundef %48) #13
  call void @put_device(ptr noundef nonnull %32) #12
  br label %61

61:                                               ; preds = %60, %58, %30, %29, %25, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  %62 = load ptr, ptr %9, align 8
  %63 = call ptr @of_get_next_available_child(ptr noundef %62, ptr noundef nonnull %18) #12
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %17

65:                                               ; preds = %61, %12, %8, %5, %4
  %66 = phi i32 [ -11, %4 ], [ %6, %5 ], [ 0, %8 ], [ 0, %12 ], [ 0, %61 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @spmi_controller_remove(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @device_for_each_child(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @spmi_ctrl_remove_device) #12
  tail call void @device_del(ptr noundef nonnull %0) #12
  br label %5

5:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spmi_ctrl_remove_device(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, @spmi_dev_type
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @device_unregister(ptr noundef %0) #12
  br label %7

7:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__spmi_driver_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  store ptr @spmi_bus_type, ptr %3, align 4
  %4 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 2
  store ptr %1, ptr %4, align 4
  %5 = tail call i32 @driver_register(ptr noundef %0) #12
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @spmi_exit() #4 section ".exit.text" {
  tail call void @bus_unregister(ptr noundef nonnull @spmi_bus_type) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @spmi_init() #4 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @spmi_bus_type) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i1 true, ptr @is_registered, align 1
  br label %4

4:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_spmi_write_begin(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_spmi_write_begin, ptr %5, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.trace_event_raw_spmi_write_begin, ptr %5, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.trace_event_raw_spmi_write_begin, ptr %5, i32 0, i32 3
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.trace_event_raw_spmi_write_begin, ptr %5, i32 0, i32 4
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.trace_event_raw_spmi_write_begin, ptr %5, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 65535
  %25 = getelementptr i8, ptr %5, i32 %24
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %21, i32 noundef %21, ptr noundef %25) #12
  %26 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %27

27:                                               ; preds = %8, %3
  %28 = phi i32 [ %26, %8 ], [ %6, %3 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_spmi_write_end(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_spmi_write_end, ptr %5, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.trace_event_raw_spmi_write_end, ptr %5, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.trace_event_raw_spmi_write_end, ptr %5, i32 0, i32 3
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.trace_event_raw_spmi_write_end, ptr %5, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %20) #12
  %21 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %22

22:                                               ; preds = %8, %3
  %23 = phi i32 [ %21, %8 ], [ %6, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_spmi_read_begin(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_spmi_read_begin, ptr %5, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.trace_event_raw_spmi_read_begin, ptr %5, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.trace_event_raw_spmi_read_begin, ptr %5, i32 0, i32 3
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %12, i32 noundef %15, i32 noundef %18) #12
  %19 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %20

20:                                               ; preds = %8, %3
  %21 = phi i32 [ %19, %8 ], [ %6, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_spmi_read_end(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %5, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %5, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %5, i32 0, i32 3
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %5, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %5, i32 0, i32 5
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.trace_event_raw_spmi_read_end, ptr %5, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 65535
  %27 = getelementptr i8, ptr %5, i32 %26
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %12, i32 noundef %15, i32 noundef %18, i32 noundef %20, i32 noundef %23, i32 noundef %23, ptr noundef %27) #12
  %28 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %29

29:                                               ; preds = %8, %3
  %30 = phi i32 [ %28, %8 ], [ %6, %3 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_spmi_cmd(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #12
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_spmi_cmd, ptr %5, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.trace_event_raw_spmi_cmd, ptr %5, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %12, i32 noundef %15, i32 noundef 1) #12
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #12
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spmi_device_match(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @of_match_device(ptr noundef %4, ptr noundef %0) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 4
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ %12, %10 ]
  %18 = tail call i32 @strncmp(ptr noundef %17, ptr noundef nonnull %8, i32 noundef 32)
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %16, %7, %2
  %22 = phi i32 [ %20, %16 ], [ 1, %2 ], [ 0, %7 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spmi_drv_uevent(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @of_device_uevent_modalias(ptr noundef %0, ptr noundef %1) #12
  %4 = icmp eq i32 %3, -19
  %5 = select i1 %4, i32 0, i32 %3
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spmi_drv_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #12, !srcloc !23
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #12, !srcloc !24
  %6 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 0) #12
  tail call void @pm_runtime_enable(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.spmi_driver, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #12
  %12 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 2) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #12, !srcloc !23
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 0, i32 -1, ptr elementtype(i32) %4) #12, !srcloc !26
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  br label %17

17:                                               ; preds = %16, %11, %1
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spmi_drv_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #12
  %5 = getelementptr inbounds %struct.spmi_driver, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #12, !srcloc !23
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #12, !srcloc !26
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  br label %12

12:                                               ; preds = %11, %1
  tail call void @__pm_runtime_disable(ptr noundef %0, i1 noundef zeroext true) #12
  %13 = tail call i32 @__pm_runtime_set_status(ptr noundef %0, i32 noundef 2) #12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !25
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #12, !srcloc !23
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 0, i32 -1, ptr elementtype(i32) %7) #12, !srcloc !26
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !27
  br label %18

18:                                               ; preds = %17, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spmi_drv_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.spmi_driver, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void %7(ptr noundef %0) #12
  br label %10

10:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_uevent_modalias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spmi_dev_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spmi_ctrl_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.spmi_controller, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  tail call void @ida_free(ptr noundef nonnull @ctrl_ida, i32 noundef %3) #12
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

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
!12 = !{i64 337437}
!13 = !{i64 2151499672}
!14 = !{i64 2151499848}
!15 = !{i64 2151516316}
!16 = !{i64 2151516518}
!17 = !{i64 2151463022}
!18 = !{i64 2151463220}
!19 = !{i64 2151483532}
!20 = !{i64 2151483716}
!21 = !{i64 2151532241}
!22 = !{i64 2151532401}
!23 = !{i64 423498, i64 2147913469, i64 2147913495, i64 2147913542, i64 2147913564, i64 2147913592, i64 2147913612}
!24 = !{i64 2147925681, i64 2147925707, i64 2147925736, i64 2147925770, i64 2147925801, i64 2147925824}
!25 = !{i64 2147925188}
!26 = !{i64 410067, i64 410092, i64 410114, i64 410130, i64 410142, i64 410162, i64 410186, i64 410202, i64 410214}
!27 = !{i64 2147925314}
