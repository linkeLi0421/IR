; ModuleID = '/llk/IR/drivers/fsi/fsi-master-gpio.c_pt.bc'
source_filename = "../drivers/fsi/fsi-master-gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.fsi_master = type { %struct.device, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.trace_event_raw_fsi_master_gpio_in = type { %struct.trace_entry, i32, i32, i64, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_fsi_master_gpio_out = type { %struct.trace_entry, i32, i32, i64, [0 x i8] }
%struct.trace_event_raw_fsi_master_gpio_clock_zeros = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_gpio_break = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_gpio_crc_cmd_error = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_gpio_crc_rsp_error = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_gpio_poll_response_busy = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_gpio_cmd_abs_addr = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_gpio_cmd_rel_addr = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_gpio_cmd_same_addr = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fsi_master_gpio = type { %struct.fsi_master, ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i8, i8 }
%struct.fsi_gpio_msg = type { i64, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__tpstrtab_fsi_master_gpio_in = internal constant [19 x i8] c"fsi_master_gpio_in\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_in = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_in }, align 4
@__tracepoint_fsi_master_gpio_in = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_gpio_in, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_in, ptr null, ptr @__traceiter_fsi_master_gpio_in, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_in = internal constant ptr @__tracepoint_fsi_master_gpio_in, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_out = internal constant [20 x i8] c"fsi_master_gpio_out\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_out = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_out }, align 4
@__tracepoint_fsi_master_gpio_out = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_gpio_out, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_out, ptr null, ptr @__traceiter_fsi_master_gpio_out, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_out = internal constant ptr @__tracepoint_fsi_master_gpio_out, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_clock_zeros = internal constant [28 x i8] c"fsi_master_gpio_clock_zeros\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_clock_zeros = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_clock_zeros }, align 4
@__tracepoint_fsi_master_gpio_clock_zeros = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_gpio_clock_zeros, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_clock_zeros, ptr null, ptr @__traceiter_fsi_master_gpio_clock_zeros, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_clock_zeros = internal constant ptr @__tracepoint_fsi_master_gpio_clock_zeros, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_break = internal constant [22 x i8] c"fsi_master_gpio_break\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_break = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_break }, align 4
@__tracepoint_fsi_master_gpio_break = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_gpio_break, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_break, ptr null, ptr @__traceiter_fsi_master_gpio_break, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_break = internal constant ptr @__tracepoint_fsi_master_gpio_break, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_crc_cmd_error = internal constant [30 x i8] c"fsi_master_gpio_crc_cmd_error\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_crc_cmd_error = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_crc_cmd_error }, align 4
@__tracepoint_fsi_master_gpio_crc_cmd_error = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_gpio_crc_cmd_error, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_crc_cmd_error, ptr null, ptr @__traceiter_fsi_master_gpio_crc_cmd_error, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_crc_cmd_error = internal constant ptr @__tracepoint_fsi_master_gpio_crc_cmd_error, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_crc_rsp_error = internal constant [30 x i8] c"fsi_master_gpio_crc_rsp_error\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_crc_rsp_error = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_crc_rsp_error }, align 4
@__tracepoint_fsi_master_gpio_crc_rsp_error = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_gpio_crc_rsp_error, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_crc_rsp_error, ptr null, ptr @__traceiter_fsi_master_gpio_crc_rsp_error, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_crc_rsp_error = internal constant ptr @__tracepoint_fsi_master_gpio_crc_rsp_error, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_poll_response_busy = internal constant [35 x i8] c"fsi_master_gpio_poll_response_busy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_poll_response_busy = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_poll_response_busy }, align 4
@__tracepoint_fsi_master_gpio_poll_response_busy = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_gpio_poll_response_busy, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_poll_response_busy, ptr null, ptr @__traceiter_fsi_master_gpio_poll_response_busy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_poll_response_busy = internal constant ptr @__tracepoint_fsi_master_gpio_poll_response_busy, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_cmd_abs_addr = internal constant [29 x i8] c"fsi_master_gpio_cmd_abs_addr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_cmd_abs_addr = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_cmd_abs_addr }, align 4
@__tracepoint_fsi_master_gpio_cmd_abs_addr = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_gpio_cmd_abs_addr, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_cmd_abs_addr, ptr null, ptr @__traceiter_fsi_master_gpio_cmd_abs_addr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_cmd_abs_addr = internal constant ptr @__tracepoint_fsi_master_gpio_cmd_abs_addr, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_cmd_rel_addr = internal constant [29 x i8] c"fsi_master_gpio_cmd_rel_addr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_cmd_rel_addr = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_cmd_rel_addr }, align 4
@__tracepoint_fsi_master_gpio_cmd_rel_addr = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_gpio_cmd_rel_addr, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_cmd_rel_addr, ptr null, ptr @__traceiter_fsi_master_gpio_cmd_rel_addr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_cmd_rel_addr = internal constant ptr @__tracepoint_fsi_master_gpio_cmd_rel_addr, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_gpio_cmd_same_addr = internal constant [30 x i8] c"fsi_master_gpio_cmd_same_addr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_gpio_cmd_same_addr = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_gpio_cmd_same_addr }, align 4
@__tracepoint_fsi_master_gpio_cmd_same_addr = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_gpio_cmd_same_addr, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_gpio_cmd_same_addr, ptr null, ptr @__traceiter_fsi_master_gpio_cmd_same_addr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_gpio_cmd_same_addr = internal constant ptr @__tracepoint_fsi_master_gpio_cmd_same_addr, section "__tracepoints_ptrs", align 4
@str__fsi_master_gpio__trace_system_name = internal constant [16 x i8] c"fsi_master_gpio\00", align 1
@trace_event_fields_fsi_master_gpio_in = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.2, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.89 { %struct.anon.90 { ptr @.str.4, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_gpio_in = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_in, ptr @perf_trace_fsi_master_gpio_in, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_in, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_in, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_in, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_in = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_in, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_gpio_in = internal global [86 x i8] c"\22fsi-gpio%d => %0*llx[%d]\22, REC->master_idx, (REC->bits + 3) / 4, REC->msg, REC->bits\00", align 1
@event_fsi_master_gpio_in = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_in, %union.anon.91 { ptr @__tracepoint_fsi_master_gpio_in }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_in }, ptr @print_fmt_fsi_master_gpio_in, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_gpio_in = internal global ptr @event_fsi_master_gpio_in, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_out = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.2, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.89 { %struct.anon.90 { ptr @.str.4, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_gpio_out = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_out, ptr @perf_trace_fsi_master_gpio_out, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_out, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_out, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_out, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_out = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_out, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_gpio_out = internal global [86 x i8] c"\22fsi-gpio%d <= %0*llx[%d]\22, REC->master_idx, (REC->bits + 3) / 4, REC->msg, REC->bits\00", align 1
@event_fsi_master_gpio_out = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_out, %union.anon.91 { ptr @__tracepoint_fsi_master_gpio_out }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_out }, ptr @print_fmt_fsi_master_gpio_out, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_gpio_out = internal global ptr @event_fsi_master_gpio_out, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_clock_zeros = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_gpio_clock_zeros = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_clock_zeros, ptr @perf_trace_fsi_master_gpio_clock_zeros, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_clock_zeros, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_clock_zeros, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_clock_zeros, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_clock_zeros = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_clock_zeros, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_gpio_clock_zeros = internal global [58 x i8] c"\22fsi-gpio%d clock %d zeros\22, REC->master_idx, REC->clocks\00", align 1
@event_fsi_master_gpio_clock_zeros = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_clock_zeros, %union.anon.91 { ptr @__tracepoint_fsi_master_gpio_clock_zeros }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_clock_zeros }, ptr @print_fmt_fsi_master_gpio_clock_zeros, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_gpio_clock_zeros = internal global ptr @event_fsi_master_gpio_clock_zeros, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_break = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_gpio_break = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_break, ptr @perf_trace_fsi_master_gpio_break, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_break, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_break, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_break, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_break = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_break, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_gpio_break = internal global [43 x i8] c"\22fsi-gpio%d ----break---\22, REC->master_idx\00", align 1
@event_fsi_master_gpio_break = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_break, %union.anon.91 { ptr @__tracepoint_fsi_master_gpio_break }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_break }, ptr @print_fmt_fsi_master_gpio_break, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_gpio_break = internal global ptr @event_fsi_master_gpio_break, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_crc_cmd_error = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_gpio_crc_cmd_error = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_crc_cmd_error, ptr @perf_trace_fsi_master_gpio_crc_cmd_error, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_crc_cmd_error, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_crc_cmd_error, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_crc_cmd_error, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_crc_cmd_error = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_crc_cmd_error, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_gpio_crc_cmd_error = internal global [55 x i8] c"\22fsi-gpio%d ----CRC command retry---\22, REC->master_idx\00", align 1
@event_fsi_master_gpio_crc_cmd_error = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_crc_cmd_error, %union.anon.91 { ptr @__tracepoint_fsi_master_gpio_crc_cmd_error }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_crc_cmd_error }, ptr @print_fmt_fsi_master_gpio_crc_cmd_error, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_gpio_crc_cmd_error = internal global ptr @event_fsi_master_gpio_crc_cmd_error, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_crc_rsp_error = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_gpio_crc_rsp_error = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_crc_rsp_error, ptr @perf_trace_fsi_master_gpio_crc_rsp_error, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_crc_rsp_error, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_crc_rsp_error, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_crc_rsp_error, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_crc_rsp_error = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_crc_rsp_error, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_gpio_crc_rsp_error = internal global [50 x i8] c"\22fsi-gpio%d ----CRC response---\22, REC->master_idx\00", align 1
@event_fsi_master_gpio_crc_rsp_error = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_crc_rsp_error, %union.anon.91 { ptr @__tracepoint_fsi_master_gpio_crc_rsp_error }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_crc_rsp_error }, ptr @print_fmt_fsi_master_gpio_crc_rsp_error, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_gpio_crc_rsp_error = internal global ptr @event_fsi_master_gpio_crc_rsp_error, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_poll_response_busy = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.12, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_gpio_poll_response_busy = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_poll_response_busy, ptr @perf_trace_fsi_master_gpio_poll_response_busy, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_poll_response_busy, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_poll_response_busy, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_poll_response_busy, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_poll_response_busy = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_poll_response_busy, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_gpio_poll_response_busy = internal global [72 x i8] c"\22fsi-gpio%d: device reported busy %d times\22, REC->master_idx, REC->busy\00", align 1
@event_fsi_master_gpio_poll_response_busy = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_poll_response_busy, %union.anon.91 { ptr @__tracepoint_fsi_master_gpio_poll_response_busy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_poll_response_busy }, ptr @print_fmt_fsi_master_gpio_poll_response_busy, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_gpio_poll_response_busy = internal global ptr @event_fsi_master_gpio_poll_response_busy, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_cmd_abs_addr = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.89 { %struct.anon.90 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_gpio_cmd_abs_addr = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_cmd_abs_addr, ptr @perf_trace_fsi_master_gpio_cmd_abs_addr, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_cmd_abs_addr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_cmd_abs_addr, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_cmd_abs_addr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_cmd_abs_addr = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_cmd_abs_addr, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_gpio_cmd_abs_addr = internal global [63 x i8] c"\22fsi-gpio%d: Sending ABS_ADR %06x\22, REC->master_idx, REC->addr\00", align 1
@event_fsi_master_gpio_cmd_abs_addr = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_cmd_abs_addr, %union.anon.91 { ptr @__tracepoint_fsi_master_gpio_cmd_abs_addr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_cmd_abs_addr }, ptr @print_fmt_fsi_master_gpio_cmd_abs_addr, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_gpio_cmd_abs_addr = internal global ptr @event_fsi_master_gpio_cmd_abs_addr, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_cmd_rel_addr = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.89 { %struct.anon.90 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_gpio_cmd_rel_addr = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_cmd_rel_addr, ptr @perf_trace_fsi_master_gpio_cmd_rel_addr, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_cmd_rel_addr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_cmd_rel_addr, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_cmd_rel_addr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_cmd_rel_addr = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_cmd_rel_addr, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_gpio_cmd_rel_addr = internal global [67 x i8] c"\22fsi-gpio%d: Sending REL_ADR %03x\22, REC->master_idx, REC->rel_addr\00", align 1
@event_fsi_master_gpio_cmd_rel_addr = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_cmd_rel_addr, %union.anon.91 { ptr @__tracepoint_fsi_master_gpio_cmd_rel_addr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_cmd_rel_addr }, ptr @print_fmt_fsi_master_gpio_cmd_rel_addr, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_gpio_cmd_rel_addr = internal global ptr @event_fsi_master_gpio_cmd_rel_addr, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_gpio_cmd_same_addr = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_gpio_cmd_same_addr = internal global %struct.trace_event_class { ptr @str__fsi_master_gpio__trace_system_name, ptr @trace_event_raw_event_fsi_master_gpio_cmd_same_addr, ptr @perf_trace_fsi_master_gpio_cmd_same_addr, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_gpio_cmd_same_addr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_cmd_same_addr, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_gpio_cmd_same_addr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_gpio_cmd_same_addr = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_gpio_cmd_same_addr, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_gpio_cmd_same_addr = internal global [48 x i8] c"\22fsi-gpio%d: Sending SAME_ADR\22, REC->master_idx\00", align 1
@event_fsi_master_gpio_cmd_same_addr = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_gpio_cmd_same_addr, %union.anon.91 { ptr @__tracepoint_fsi_master_gpio_cmd_same_addr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_gpio_cmd_same_addr }, ptr @print_fmt_fsi_master_gpio_cmd_same_addr, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_gpio_cmd_same_addr = internal global ptr @event_fsi_master_gpio_cmd_same_addr, section "_ftrace_events", align 4
@fsi_master_gpio_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsi-master-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license289 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"master_idx\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"uint64_t\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"fsi-gpio%d => %0*llx[%d]\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"fsi-gpio%d <= %0*llx[%d]\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"fsi-gpio%d clock %d zeros\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"fsi-gpio%d ----break---\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"fsi-gpio%d ----CRC command retry---\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"fsi-gpio%d ----CRC response---\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"busy\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"fsi-gpio%d: device reported busy %d times\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"fsi-gpio%d: Sending ABS_ADR %06x\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"rel_addr\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"fsi-gpio%d: Sending REL_ADR %03x\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"fsi-gpio%d: Sending SAME_ADR\0A\00", align 1
@fsi_master_gpio_driver = internal global %struct.platform_driver { ptr @fsi_master_gpio_probe, ptr @fsi_master_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.20, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsi_master_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.20 = private unnamed_addr constant [16 x i8] c"fsi-master-gpio\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"failed to get clock gpio\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"failed to get data gpio\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"trans\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"failed to get trans gpio\0A\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"failed to get enable gpio\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"mux\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"failed to get mux gpio\0A\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"no-gpio-delays\00", align 1
@fsi_master_gpio_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"&master->cmd_lock\00", align 1
@dev_attr_external_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 436 }, ptr @external_mode_show, ptr @external_mode_store }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.34 = private unnamed_addr constant [15 x i8] c"ECRC retry %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"trying to output 0 bits\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.36 = private unnamed_addr constant [48 x i8] c"ERR slave is stuck in busy state, issuing TERM\0A\00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"TERM failed; lost communication with slave\0A\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"TERM failed; response %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"external_mode\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_license289, ptr @__event_fsi_master_gpio_break, ptr @__event_fsi_master_gpio_clock_zeros, ptr @__event_fsi_master_gpio_cmd_abs_addr, ptr @__event_fsi_master_gpio_cmd_rel_addr, ptr @__event_fsi_master_gpio_cmd_same_addr, ptr @__event_fsi_master_gpio_crc_cmd_error, ptr @__event_fsi_master_gpio_crc_rsp_error, ptr @__event_fsi_master_gpio_in, ptr @__event_fsi_master_gpio_out, ptr @__event_fsi_master_gpio_poll_response_busy, ptr @__tracepoint_fsi_master_gpio_break, ptr @__tracepoint_fsi_master_gpio_clock_zeros, ptr @__tracepoint_fsi_master_gpio_cmd_abs_addr, ptr @__tracepoint_fsi_master_gpio_cmd_rel_addr, ptr @__tracepoint_fsi_master_gpio_cmd_same_addr, ptr @__tracepoint_fsi_master_gpio_crc_cmd_error, ptr @__tracepoint_fsi_master_gpio_crc_rsp_error, ptr @__tracepoint_fsi_master_gpio_in, ptr @__tracepoint_fsi_master_gpio_out, ptr @__tracepoint_fsi_master_gpio_poll_response_busy, ptr @__tracepoint_ptr_fsi_master_gpio_break, ptr @__tracepoint_ptr_fsi_master_gpio_clock_zeros, ptr @__tracepoint_ptr_fsi_master_gpio_cmd_abs_addr, ptr @__tracepoint_ptr_fsi_master_gpio_cmd_rel_addr, ptr @__tracepoint_ptr_fsi_master_gpio_cmd_same_addr, ptr @__tracepoint_ptr_fsi_master_gpio_crc_cmd_error, ptr @__tracepoint_ptr_fsi_master_gpio_crc_rsp_error, ptr @__tracepoint_ptr_fsi_master_gpio_in, ptr @__tracepoint_ptr_fsi_master_gpio_out, ptr @__tracepoint_ptr_fsi_master_gpio_poll_response_busy, ptr @event_class_fsi_master_gpio_break, ptr @event_class_fsi_master_gpio_clock_zeros, ptr @event_class_fsi_master_gpio_cmd_abs_addr, ptr @event_class_fsi_master_gpio_cmd_rel_addr, ptr @event_class_fsi_master_gpio_cmd_same_addr, ptr @event_class_fsi_master_gpio_crc_cmd_error, ptr @event_class_fsi_master_gpio_crc_rsp_error, ptr @event_class_fsi_master_gpio_in, ptr @event_class_fsi_master_gpio_out, ptr @event_class_fsi_master_gpio_poll_response_busy, ptr @event_fsi_master_gpio_break, ptr @event_fsi_master_gpio_clock_zeros, ptr @event_fsi_master_gpio_cmd_abs_addr, ptr @event_fsi_master_gpio_cmd_rel_addr, ptr @event_fsi_master_gpio_cmd_same_addr, ptr @event_fsi_master_gpio_crc_cmd_error, ptr @event_fsi_master_gpio_crc_rsp_error, ptr @event_fsi_master_gpio_in, ptr @event_fsi_master_gpio_out, ptr @event_fsi_master_gpio_poll_response_busy], section "llvm.metadata"

@__mod_of__fsi_master_gpio_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @fsi_master_gpio_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_gpio_in(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_in, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i64 noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_gpio_out(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_out, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i64 noundef %3) #13
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_gpio_clock_zeros(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_clock_zeros, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_gpio_break(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_break, i32 0, i32 7), align 4
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_gpio_crc_cmd_error(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_crc_cmd_error, i32 0, i32 7), align 4
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_gpio_crc_rsp_error(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_crc_rsp_error, i32 0, i32 7), align 4
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_gpio_poll_response_busy(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_poll_response_busy, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_gpio_cmd_abs_addr(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_cmd_abs_addr, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_gpio_cmd_rel_addr(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_cmd_rel_addr, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #13
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_gpio_cmd_same_addr(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_cmd_same_addr, i32 0, i32 7), align 4
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_gpio_in(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3) #0 {
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
  br i1 %14, label %28, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 24) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %16, i32 0, i32 1
  store i32 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %16, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = zext i32 %2 to i64
  %24 = shl nsw i64 -1, %23
  %25 = xor i64 %24, -1
  %26 = and i64 %25, %3
  %27 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %16, i32 0, i32 3
  store i64 %26, ptr %27, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %28

28:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_gpio_in(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3) #0 {
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
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #5, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

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
  %35 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %22, i32 0, i32 1
  store i32 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %22, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = zext i32 %2 to i64
  %40 = shl nsw i64 -1, %39
  %41 = xor i64 %40, -1
  %42 = and i64 %41, %3
  %43 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %22, i32 0, i32 3
  store i64 %42, ptr %43, align 8
  %44 = load i32, ptr %6, align 4
  %45 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 28, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %14, ptr noundef null) #13
  br label %46

46:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_gpio_out(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3) #0 {
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
  br i1 %14, label %28, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 24) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %16, i32 0, i32 1
  store i32 %20, ptr %21, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %16, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = zext i32 %2 to i64
  %24 = shl nsw i64 -1, %23
  %25 = xor i64 %24, -1
  %26 = and i64 %25, %3
  %27 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %16, i32 0, i32 3
  store i64 %26, ptr %27, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #13
  br label %28

28:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_gpio_out(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3) #0 {
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
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #5, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %5, ptr noundef nonnull %6) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

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
  %35 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %22, i32 0, i32 1
  store i32 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %22, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = zext i32 %2 to i64
  %40 = shl nsw i64 -1, %39
  %41 = xor i64 %40, -1
  %42 = and i64 %41, %3
  %43 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %22, i32 0, i32 3
  store i64 %42, ptr %43, align 8
  %44 = load i32, ptr %6, align 4
  %45 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 28, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %14, ptr noundef null) #13
  br label %46

46:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_gpio_clock_zeros(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
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
  br i1 %13, label %22, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_clock_zeros, ptr %15, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_clock_zeros, ptr %15, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #13
  br label %22

22:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_gpio_clock_zeros(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
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
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #5, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

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
  %34 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_clock_zeros, ptr %21, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_clock_zeros, ptr %21, i32 0, i32 2
  store i32 %2, ptr %37, align 4
  %38 = load i32, ptr %5, align 4
  %39 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %13, ptr noundef null) #13
  br label %40

40:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_gpio_break(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  br i1 %12, label %20, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_break, ptr %14, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #13
  br label %20

20:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_gpio_break(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #5, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

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
  %33 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_break, ptr %20, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %4, align 4
  %37 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %12, ptr noundef null) #13
  br label %38

38:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_gpio_crc_cmd_error(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  br i1 %12, label %20, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_crc_cmd_error, ptr %14, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #13
  br label %20

20:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_gpio_crc_cmd_error(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #5, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

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
  %33 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_crc_cmd_error, ptr %20, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %4, align 4
  %37 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %12, ptr noundef null) #13
  br label %38

38:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_gpio_crc_rsp_error(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  br i1 %12, label %20, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_crc_rsp_error, ptr %14, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #13
  br label %20

20:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_gpio_crc_rsp_error(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #5, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

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
  %33 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_crc_rsp_error, ptr %20, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %4, align 4
  %37 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %12, ptr noundef null) #13
  br label %38

38:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_gpio_poll_response_busy(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
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
  br i1 %13, label %22, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_poll_response_busy, ptr %15, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_poll_response_busy, ptr %15, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #13
  br label %22

22:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_gpio_poll_response_busy(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
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
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #5, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

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
  %34 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_poll_response_busy, ptr %21, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_poll_response_busy, ptr %21, i32 0, i32 2
  store i32 %2, ptr %37, align 4
  %38 = load i32, ptr %5, align 4
  %39 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %13, ptr noundef null) #13
  br label %40

40:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_gpio_cmd_abs_addr(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
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
  br i1 %13, label %22, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_abs_addr, ptr %15, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_abs_addr, ptr %15, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #13
  br label %22

22:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_gpio_cmd_abs_addr(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
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
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #5, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

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
  %34 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_abs_addr, ptr %21, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_abs_addr, ptr %21, i32 0, i32 2
  store i32 %2, ptr %37, align 4
  %38 = load i32, ptr %5, align 4
  %39 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %13, ptr noundef null) #13
  br label %40

40:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_gpio_cmd_rel_addr(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
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
  br i1 %13, label %22, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_rel_addr, ptr %15, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_rel_addr, ptr %15, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #13
  br label %22

22:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_gpio_cmd_rel_addr(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
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
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #5, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

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
  %34 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_rel_addr, ptr %21, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_rel_addr, ptr %21, i32 0, i32 2
  store i32 %2, ptr %37, align 4
  %38 = load i32, ptr %5, align 4
  %39 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %13, ptr noundef null) #13
  br label %40

40:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_gpio_cmd_same_addr(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  br i1 %12, label %20, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_same_addr, ptr %14, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #13
  br label %20

20:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_gpio_cmd_same_addr(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #5, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22

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
  %33 = getelementptr inbounds %struct.fsi_master, ptr %1, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_same_addr, ptr %20, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %4, align 4
  %37 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %12, ptr noundef null) #13
  br label %38

38:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsi_master_gpio_driver, ptr noundef nonnull @__this_module) #13
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsi_master_gpio_driver) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_in(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 3
  %15 = sdiv i32 %14, 4
  %16 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_in, ptr %5, i32 0, i32 3
  %17 = load i64, ptr %16, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %11, i32 noundef %15, i64 noundef %17, i32 noundef %13) #13
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #13
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
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_out(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 3
  %15 = sdiv i32 %14, 4
  %16 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_out, ptr %5, i32 0, i32 3
  %17 = load i64, ptr %16, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %11, i32 noundef %15, i64 noundef %17, i32 noundef %13) #13
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_clock_zeros(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_clock_zeros, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_clock_zeros, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %11, i32 noundef %13) #13
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_break(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_break, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %11) #13
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_crc_cmd_error(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_crc_cmd_error, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %11) #13
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_crc_rsp_error(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_crc_rsp_error, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %11) #13
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_poll_response_busy(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_poll_response_busy, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_poll_response_busy, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %11, i32 noundef %13) #13
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_cmd_abs_addr(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_abs_addr, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_abs_addr, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %11, i32 noundef %13) #13
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_cmd_rel_addr(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_rel_addr, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_rel_addr, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %11, i32 noundef %13) #13
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_gpio_cmd_same_addr(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_gpio_cmd_same_addr, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %11) #13
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #13
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_probe(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 584) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %77, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %7 = getelementptr inbounds %struct.fsi_master_gpio, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 8
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  %9 = icmp eq ptr %6, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi ptr [ %12, %10 ], [ null, %5 ]
  %15 = tail call ptr @of_node_get(ptr noundef %14) #13
  %16 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 33
  store ptr @fsi_master_gpio_release, ptr %17, align 4
  %18 = getelementptr inbounds %struct.fsi_master_gpio, ptr %3, i32 0, i32 10
  store i32 1, ptr %18, align 8
  %19 = tail call ptr @devm_gpiod_get(ptr noundef %6, ptr noundef nonnull @.str.21, i32 noundef 0) #13
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %71, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.fsi_master_gpio, ptr %3, i32 0, i32 3
  store ptr %19, ptr %22, align 8
  %23 = tail call ptr @devm_gpiod_get(ptr noundef %6, ptr noundef nonnull @.str.23, i32 noundef 0) #13
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %71, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.fsi_master_gpio, ptr %3, i32 0, i32 4
  store ptr %23, ptr %26, align 4
  %27 = tail call ptr @devm_gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.25, i32 noundef 0) #13
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %71, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.fsi_master_gpio, ptr %3, i32 0, i32 5
  store ptr %27, ptr %30, align 8
  %31 = tail call ptr @devm_gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.27, i32 noundef 0) #13
  %32 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %71, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.fsi_master_gpio, ptr %3, i32 0, i32 6
  store ptr %31, ptr %34, align 4
  %35 = tail call ptr @devm_gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.29, i32 noundef 0) #13
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %71, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.fsi_master_gpio, ptr %3, i32 0, i32 7
  store ptr %35, ptr %38, align 8
  %39 = tail call zeroext i1 @device_property_present(ptr noundef %6, ptr noundef nonnull @.str.31) #13
  %40 = getelementptr inbounds %struct.fsi_master_gpio, ptr %3, i32 0, i32 9
  %41 = zext i1 %39 to i8
  store i8 %41, ptr %40, align 1
  %42 = getelementptr inbounds %struct.fsi_master_gpio, ptr %3, i32 0, i32 11
  store i8 16, ptr %42, align 4
  %43 = getelementptr inbounds %struct.fsi_master_gpio, ptr %3, i32 0, i32 12
  store i8 16, ptr %43, align 1
  %44 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 2
  store i32 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 3
  store i32 1, ptr %45, align 8
  %46 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 5
  store ptr @fsi_master_gpio_read, ptr %46, align 8
  %47 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 6
  store ptr @fsi_master_gpio_write, ptr %47, align 4
  %48 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 7
  store ptr @fsi_master_gpio_term, ptr %48, align 8
  %49 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 8
  store ptr @fsi_master_gpio_break, ptr %49, align 4
  %50 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 9
  store ptr @fsi_master_gpio_link_enable, ptr %50, align 8
  %51 = getelementptr inbounds %struct.fsi_master, ptr %3, i32 0, i32 10
  store ptr @fsi_master_gpio_link_config, ptr %51, align 4
  %52 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %52, align 8
  %53 = getelementptr inbounds %struct.fsi_master_gpio, ptr %3, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %53, ptr noundef nonnull @.str.32, ptr noundef nonnull @fsi_master_gpio_probe.__key) #13
  %54 = load ptr, ptr %38, align 8
  %55 = tail call i32 @gpiod_direction_output(ptr noundef %54, i32 noundef 1) #13
  %56 = load ptr, ptr %30, align 8
  %57 = tail call i32 @gpiod_direction_output(ptr noundef %56, i32 noundef 1) #13
  %58 = load ptr, ptr %34, align 4
  %59 = tail call i32 @gpiod_direction_output(ptr noundef %58, i32 noundef 1) #13
  %60 = load ptr, ptr %22, align 8
  %61 = tail call i32 @gpiod_direction_output(ptr noundef %60, i32 noundef 1) #13
  %62 = load ptr, ptr %26, align 4
  %63 = tail call i32 @gpiod_direction_output(ptr noundef %62, i32 noundef 1) #13
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !13
  tail call fastcc void @clock_zeros(ptr noundef nonnull %3, i32 noundef 5000) #13
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %64) #13, !srcloc !14
  %65 = tail call i32 @device_create_file(ptr noundef %6, ptr noundef nonnull @dev_attr_external_mode) #13
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %37
  %68 = tail call i32 @fsi_master_register(ptr noundef nonnull %3) #13
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %67
  tail call void @device_remove_file(ptr noundef %6, ptr noundef nonnull @dev_attr_external_mode) #13
  tail call void @put_device(ptr noundef nonnull %3) #13
  br label %77

71:                                               ; preds = %33, %29, %25, %21, %13
  %72 = phi ptr [ @.str.22, %13 ], [ @.str.24, %21 ], [ @.str.26, %25 ], [ @.str.28, %29 ], [ @.str.30, %33 ]
  %73 = phi ptr [ %19, %13 ], [ %23, %21 ], [ %27, %25 ], [ %31, %29 ], [ %35, %33 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull %72) #15
  %74 = ptrtoint ptr %73 to i32
  br label %75

75:                                               ; preds = %71, %37
  %76 = phi i32 [ %65, %37 ], [ %74, %71 ]
  tail call void @kfree(ptr noundef nonnull %3) #13
  br label %77

77:                                               ; preds = %75, %70, %67, %1
  %78 = phi i32 [ %76, %75 ], [ %68, %70 ], [ -12, %1 ], [ 0, %67 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %4, ptr noundef nonnull @dev_attr_external_mode) #13
  tail call void @fsi_master_unregister(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsi_master_gpio_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  tail call void @of_node_put(ptr noundef %9) #13
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_read(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.fsi_gpio_msg, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !9
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %10) #13
  call fastcc void @build_ar_command(ptr noundef %0, ptr noundef nonnull %7, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %5, ptr noundef null)
  %11 = call fastcc i32 @fsi_master_gpio_xfer(ptr noundef %0, i8 noundef zeroext %2, ptr noundef nonnull %7, i32 noundef %5, ptr noundef %4)
  %12 = zext i8 %2 to i32
  %13 = icmp eq i32 %11, 0
  %14 = shl nuw nsw i32 %12, 21
  %15 = and i32 %14, 6291456
  %16 = and i32 %3, -4
  %17 = or i32 %15, %16
  %18 = select i1 %13, i32 %17, i32 1
  %19 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 10
  store i32 %18, ptr %19, align 8
  call void @mutex_unlock(ptr noundef %10) #13
  br label %20

20:                                               ; preds = %9, %6
  %21 = phi i32 [ %11, %9 ], [ -19, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_write(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.fsi_gpio_msg, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !9
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %10) #13
  call fastcc void @build_ar_command(ptr noundef %0, ptr noundef nonnull %7, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %5, ptr noundef %4)
  %11 = call fastcc i32 @fsi_master_gpio_xfer(ptr noundef %0, i8 noundef zeroext %2, ptr noundef nonnull %7, i32 noundef 0, ptr noundef null)
  %12 = zext i8 %2 to i32
  %13 = icmp eq i32 %11, 0
  %14 = shl nuw nsw i32 %12, 21
  %15 = and i32 %14, 6291456
  %16 = and i32 %3, -4
  %17 = or i32 %15, %16
  %18 = select i1 %13, i32 %17, i32 1
  %19 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 10
  store i32 %18, ptr %19, align 8
  call void @mutex_unlock(ptr noundef %10) #13
  br label %20

20:                                               ; preds = %9, %6
  %21 = phi i32 [ %11, %9 ], [ -19, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_term(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) #0 {
  %4 = alloca %struct.fsi_gpio_msg, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  store i64 0, ptr %5, align 8, !annotation !9
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.fsi_gpio_msg, ptr %4, i32 0, i32 1
  %10 = shl i8 %2, 6
  %11 = or i8 %10, 63
  %12 = zext i8 %11 to i64
  %13 = tail call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef 1, i32 noundef 1) #13
  %14 = tail call zeroext i8 @crc4(i8 noundef zeroext %13, i64 noundef %12, i32 noundef 8) #13
  %15 = shl nuw nsw i64 %12, 4
  %16 = and i8 %14, 15
  %17 = zext i8 %16 to i64
  %18 = or i64 %15, %17
  store i64 %18, ptr %4, align 8
  store i8 12, ptr %9, align 8
  %19 = call fastcc i32 @fsi_master_gpio_xfer(ptr noundef %0, i8 noundef zeroext %2, ptr noundef nonnull %4, i32 noundef 0, ptr noundef null)
  %20 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 10
  store i32 1, ptr %20, align 8
  tail call void @mutex_unlock(ptr noundef %8) #13
  br label %21

21:                                               ; preds = %7, %3
  %22 = phi i32 [ %19, %7 ], [ -19, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_break(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %104

4:                                                ; preds = %2
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_break, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %4
  %8 = tail call ptr @llvm.thread.pointer() #13
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !15
  %19 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_break, i32 0, i32 7), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %26, %21 ], [ %19, %18 ]
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tracepoint_func, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %23(ptr noundef %25, ptr noundef %0) #13
  %26 = getelementptr %struct.tracepoint_func, ptr %22, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %21

29:                                               ; preds = %21, %18
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !16
  br label %30

30:                                               ; preds = %29, %7, %4
  %31 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %31) #13
  %32 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 8
  %33 = load i8, ptr %32, align 4, !range !17
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  tail call void @mutex_unlock(ptr noundef %31) #13
  br label %104

36:                                               ; preds = %30
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !13
  %38 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 5
  %39 = load ptr, ptr %38, align 8
  tail call void @gpiod_set_value(ptr noundef %39, i32 noundef 1) #13
  %40 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @gpiod_direction_output(ptr noundef %41, i32 noundef 1) #13
  %43 = load ptr, ptr %40, align 4
  tail call void @gpiod_set_value(ptr noundef %43, i32 noundef 1) #13
  %44 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 9
  %45 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 3
  br label %46

46:                                               ; preds = %58, %36
  %47 = phi i32 [ 0, %36 ], [ %60, %58 ]
  %48 = load i8, ptr %44, align 1, !range !17
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748) #13
  br label %52

52:                                               ; preds = %50, %46
  %53 = load ptr, ptr %45, align 8
  tail call void @gpiod_set_value(ptr noundef %53, i32 noundef 0) #13
  %54 = load i8, ptr %44, align 1, !range !17
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748) #13
  br label %58

58:                                               ; preds = %56, %52
  %59 = load ptr, ptr %45, align 8
  tail call void @gpiod_set_value(ptr noundef %59, i32 noundef 1) #13
  %60 = add nuw nsw i32 %47, 1
  %61 = icmp eq i32 %60, 50
  br i1 %61, label %62, label %46

62:                                               ; preds = %58
  %63 = load ptr, ptr %40, align 4
  tail call void @gpiod_set_value(ptr noundef %63, i32 noundef 0) #13
  br label %64

64:                                               ; preds = %76, %62
  %65 = phi i32 [ 0, %62 ], [ %78, %76 ]
  %66 = load i8, ptr %44, align 1, !range !17
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748) #13
  br label %70

70:                                               ; preds = %68, %64
  %71 = load ptr, ptr %45, align 8
  tail call void @gpiod_set_value(ptr noundef %71, i32 noundef 0) #13
  %72 = load i8, ptr %44, align 1, !range !17
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748) #13
  br label %76

76:                                               ; preds = %74, %70
  %77 = load ptr, ptr %45, align 8
  tail call void @gpiod_set_value(ptr noundef %77, i32 noundef 1) #13
  %78 = add nuw nsw i32 %65, 1
  %79 = icmp eq i32 %78, 256
  br i1 %79, label %80, label %64

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 12
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  tail call fastcc void @clock_zeros(ptr noundef %0, i32 noundef %83) #13
  %84 = load ptr, ptr %40, align 4
  tail call void @gpiod_set_value(ptr noundef %84, i32 noundef 1) #13
  br label %85

85:                                               ; preds = %97, %80
  %86 = phi i32 [ 0, %80 ], [ %99, %97 ]
  %87 = load i8, ptr %44, align 1, !range !17
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %90(i32 noundef 214748) #13
  br label %91

91:                                               ; preds = %89, %85
  %92 = load ptr, ptr %45, align 8
  tail call void @gpiod_set_value(ptr noundef %92, i32 noundef 0) #13
  %93 = load i8, ptr %44, align 1, !range !17
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748) #13
  br label %97

97:                                               ; preds = %95, %91
  %98 = load ptr, ptr %45, align 8
  tail call void @gpiod_set_value(ptr noundef %98, i32 noundef 1) #13
  %99 = add nuw nsw i32 %86, 1
  %100 = icmp eq i32 %99, 16000
  br i1 %100, label %101, label %85

101:                                              ; preds = %97
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #13, !srcloc !14
  %102 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 10
  store i32 1, ptr %102, align 8
  tail call void @mutex_unlock(ptr noundef %31) #13
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 42949600) #13
  br label %104

104:                                              ; preds = %101, %35, %2
  %105 = phi i32 [ -16, %35 ], [ 0, %101 ], [ -19, %2 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_link_enable(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %6) #13
  %7 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 8
  %8 = load i8, ptr %7, align 4, !range !17
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = zext i1 %2 to i32
  tail call void @gpiod_set_value(ptr noundef %12, i32 noundef %13) #13
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi i32 [ -16, %5 ], [ 0, %10 ]
  tail call void @mutex_unlock(ptr noundef %6) #13
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i32 [ %15, %14 ], [ -19, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_master_gpio_link_config(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %7) #13
  %8 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 11
  store i8 %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 12
  store i8 %3, ptr %9, align 1
  tail call void @mutex_unlock(ptr noundef %7) #13
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ 0, %6 ], [ -19, %4 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_master_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @build_ar_command(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly %5) unnamed_addr #0 {
  %7 = icmp ne ptr %5, null
  %8 = getelementptr inbounds %struct.fsi_gpio_msg, ptr %1, i32 0, i32 1
  store i8 0, ptr %8, align 8
  store i64 0, ptr %1, align 8
  %9 = and i32 %3, 2097151
  %10 = zext i8 %2 to i32
  %11 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 8
  %13 = shl nuw nsw i32 %10, 21
  %14 = and i32 %13, 6291456
  %15 = and i32 %3, 2097148
  %16 = or i32 %14, %15
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %6
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_cmd_same_addr, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %107

21:                                               ; preds = %18
  %22 = tail call ptr @llvm.thread.pointer() #13
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %107, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !18
  %33 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_cmd_same_addr, i32 0, i32 7), align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %40, %35 ], [ %33, %32 ]
  %37 = load volatile ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.tracepoint_func, ptr %36, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void %37(ptr noundef %39, ptr noundef %0) #13
  %40 = getelementptr %struct.tracepoint_func, ptr %36, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %35

43:                                               ; preds = %35, %32
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !19
  br label %107

44:                                               ; preds = %6
  %45 = icmp ne i32 %12, 1
  %46 = lshr i32 %12, 21
  %47 = and i32 %46, 3
  %48 = icmp eq i32 %47, %10
  %49 = select i1 %45, i1 %48, i1 false
  br i1 %49, label %50, label %81

50:                                               ; preds = %44
  %51 = and i32 %12, 2097151
  %52 = sub nsw i32 %9, %51
  %53 = add nsw i32 %52, -256
  %54 = icmp ult i32 %53, -512
  br i1 %54, label %81, label %55

55:                                               ; preds = %50
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_cmd_rel_addr, i32 0, i32 1), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %107

58:                                               ; preds = %55
  %59 = tail call ptr @llvm.thread.pointer() #13
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = lshr i32 %61, 5
  %63 = getelementptr i32, ptr @__cpu_online_mask, i32 %62
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %61, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %107, label %69

69:                                               ; preds = %58
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !20
  %70 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_cmd_rel_addr, i32 0, i32 7), align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %72, %69
  %73 = phi ptr [ %77, %72 ], [ %70, %69 ]
  %74 = load volatile ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.tracepoint_func, ptr %73, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  tail call void %74(ptr noundef %76, ptr noundef %0, i32 noundef %52) #13
  %77 = getelementptr %struct.tracepoint_func, ptr %73, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %72

80:                                               ; preds = %72, %69
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !21
  br label %107

81:                                               ; preds = %50, %44
  %82 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_cmd_abs_addr, i32 0, i32 1), align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %81
  %85 = tail call ptr @llvm.thread.pointer() #13
  %86 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %87 = load i32, ptr %86, align 8
  %88 = lshr i32 %87, 5
  %89 = getelementptr i32, ptr @__cpu_online_mask, i32 %88
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %87, 31
  %92 = shl nuw i32 1, %91
  %93 = and i32 %92, %90
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %84
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !22
  %96 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_cmd_abs_addr, i32 0, i32 7), align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %98, %95
  %99 = phi ptr [ %103, %98 ], [ %96, %95 ]
  %100 = load volatile ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.tracepoint_func, ptr %99, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  tail call void %100(ptr noundef %102, ptr noundef %0, i32 noundef %9) #13
  %103 = getelementptr %struct.tracepoint_func, ptr %99, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %98

106:                                              ; preds = %98, %95
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !23
  br label %107

107:                                              ; preds = %106, %84, %81, %80, %58, %55, %43, %21, %18
  %108 = phi i32 [ %9, %18 ], [ %9, %21 ], [ %9, %43 ], [ %52, %55 ], [ %52, %58 ], [ %52, %80 ], [ %9, %81 ], [ %9, %84 ], [ %9, %106 ]
  %109 = phi i32 [ 2, %18 ], [ 2, %21 ], [ 2, %43 ], [ 9, %55 ], [ 9, %58 ], [ 9, %80 ], [ 21, %81 ], [ 21, %84 ], [ 21, %106 ]
  %110 = phi i32 [ 2, %18 ], [ 2, %21 ], [ 2, %43 ], [ 3, %55 ], [ 3, %58 ], [ 3, %80 ], [ 3, %81 ], [ 3, %84 ], [ 3, %106 ]
  %111 = phi i8 [ 3, %18 ], [ 3, %21 ], [ 3, %43 ], [ 5, %55 ], [ 5, %58 ], [ 5, %80 ], [ 4, %81 ], [ 4, %84 ], [ 4, %106 ]
  %112 = icmp ugt i32 %4, 1
  %113 = sub i32 0, %4
  %114 = and i32 %108, %113
  %115 = icmp eq i32 %4, 4
  %116 = zext i1 %115 to i32
  %117 = or i32 %114, %116
  %118 = load i64, ptr %1, align 8
  %119 = shl i64 %118, 2
  %120 = and i8 %2, 3
  %121 = zext i8 %120 to i64
  %122 = or i64 %119, %121
  %123 = load i8, ptr %8, align 8
  %124 = add i8 %123, 2
  %125 = zext i8 %111 to i64
  %126 = zext i32 %110 to i64
  %127 = shl i64 %122, %126
  %128 = shl nsw i64 -1, %126
  %129 = xor i64 %128, -1
  %130 = and i64 %129, %125
  %131 = or i64 %127, %130
  %132 = trunc i32 %110 to i8
  %133 = add i8 %124, %132
  %134 = xor i1 %7, true
  %135 = zext i1 %134 to i64
  %136 = shl i64 %131, 1
  %137 = or i64 %136, %135
  %138 = add i8 %133, 1
  %139 = zext i32 %117 to i64
  %140 = zext i32 %109 to i64
  %141 = shl i64 %137, %140
  %142 = shl nsw i64 -1, %140
  %143 = xor i64 %142, -1
  %144 = and i64 %143, %139
  %145 = or i64 %141, %144
  %146 = trunc i32 %109 to i8
  %147 = add i8 %138, %146
  %148 = zext i1 %112 to i64
  %149 = shl i64 %145, 1
  %150 = or i64 %149, %148
  store i64 %150, ptr %1, align 8
  %151 = add i8 %147, 1
  store i8 %151, ptr %8, align 8
  %152 = icmp ne i32 %4, 0
  %153 = and i1 %7, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %154, %107
  %155 = phi i8 [ %163, %154 ], [ %151, %107 ]
  %156 = phi i64 [ %162, %154 ], [ %150, %107 ]
  %157 = phi i32 [ %164, %154 ], [ 0, %107 ]
  %158 = getelementptr i8, ptr %5, i32 %157
  %159 = load i8, ptr %158, align 1
  %160 = zext i8 %159 to i64
  %161 = shl i64 %156, 8
  %162 = or i64 %161, %160
  store i64 %162, ptr %1, align 8
  %163 = add i8 %155, 8
  store i8 %163, ptr %8, align 8
  %164 = add nuw i32 %157, 1
  %165 = icmp ult i32 %164, %4
  br i1 %165, label %154, label %166

166:                                              ; preds = %154, %107
  %167 = phi i64 [ %150, %107 ], [ %162, %154 ]
  %168 = phi i8 [ %151, %107 ], [ %163, %154 ]
  %169 = zext i8 %168 to i32
  %170 = and i32 %169, 3
  %171 = shl nuw nsw i32 1, %170
  %172 = zext i32 %171 to i64
  %173 = and i32 %169, 252
  %174 = zext i32 %173 to i64
  %175 = lshr i64 %167, %174
  %176 = or i64 %175, %172
  %177 = add nuw nsw i32 %170, 1
  %178 = tail call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef %176, i32 noundef %177) #13
  %179 = load i64, ptr %1, align 8
  %180 = load i8, ptr %8, align 8
  %181 = zext i8 %180 to i32
  %182 = sub nsw i32 %181, %170
  %183 = tail call zeroext i8 @crc4(i8 noundef zeroext %178, i64 noundef %179, i32 noundef %182) #13
  %184 = load i64, ptr %1, align 8
  %185 = shl i64 %184, 4
  %186 = and i8 %183, 15
  %187 = zext i8 %186 to i64
  %188 = or i64 %185, %187
  store i64 %188, ptr %1, align 8
  %189 = load i8, ptr %8, align 8
  %190 = add i8 %189, 4
  store i8 %190, ptr %8, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fsi_master_gpio_xfer(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca %struct.fsi_gpio_msg, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.fsi_gpio_msg, align 8
  %9 = alloca %struct.fsi_gpio_msg, align 8
  %10 = alloca i8, align 1
  %11 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 8
  %12 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 12
  %13 = trunc i32 %3 to i8
  %14 = getelementptr inbounds %struct.fsi_gpio_msg, ptr %9, i32 0, i32 1
  %15 = and i8 %1, 3
  %16 = zext i8 %15 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = or i64 %17, 2
  %19 = lshr i64 %16, 1
  %20 = or i64 %19, 2
  %21 = shl nuw nsw i64 %18, 4
  %22 = or i64 %17, 3
  %23 = shl nuw nsw i64 %22, 4
  %24 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 1
  %25 = getelementptr inbounds i8, ptr %6, i32 8
  %26 = shl i8 %1, 6
  %27 = or i8 %26, 63
  %28 = zext i8 %27 to i64
  %29 = shl nuw nsw i64 %28, 4
  %30 = and i32 %3, 255
  %31 = icmp ne i8 %13, 0
  %32 = icmp ne ptr %4, null
  %33 = and i1 %31, %32
  %34 = shl nuw nsw i32 %30, 3
  %35 = zext i32 %34 to i64
  %36 = shl nsw i64 -1, %35
  %37 = xor i64 %36, -1
  %38 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 11
  br label %39

39:                                               ; preds = %207, %5
  %40 = phi i32 [ 1, %5 ], [ %209, %207 ]
  %41 = load i8, ptr %11, align 4, !range !17
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %211

43:                                               ; preds = %39
  %44 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !13
  call fastcc void @serial_out(ptr noundef %0, ptr noundef %2) #13
  %45 = load i8, ptr %12, align 1
  %46 = zext i8 %45 to i32
  call fastcc void @clock_zeros(ptr noundef %0, i32 noundef %46) #13
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %44) #13, !srcloc !14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i32 16, i1 false) #13, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #13
  store i8 0, ptr %10, align 1, !annotation !9
  br label %47

47:                                               ; preds = %83, %43
  %48 = phi i32 [ %57, %83 ], [ 0, %43 ]
  %49 = phi i32 [ %52, %83 ], [ 0, %43 ]
  %50 = call i32 @llvm.smax.i32(i32 %49, i32 200) #13
  br label %51

51:                                               ; preds = %111, %47
  %52 = phi i32 [ %112, %111 ], [ %49, %47 ]
  %53 = call fastcc i32 @read_one_response(ptr noundef %0, i8 noundef zeroext %13, ptr noundef nonnull %8, ptr noundef nonnull %10) #13
  switch i32 %53, label %201 [
    i32 -11, label %54
    i32 0, label %92
  ]

54:                                               ; preds = %51
  %55 = icmp eq i32 %48, 11
  br i1 %55, label %201, label %56

56:                                               ; preds = %54
  %57 = add nuw nsw i32 %48, 1
  %58 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_crc_rsp_error, i32 0, i32 1), align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %56
  %61 = tail call ptr @llvm.thread.pointer() #13
  %62 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 2
  %63 = load i32, ptr %62, align 8
  %64 = lshr i32 %63, 5
  %65 = getelementptr i32, ptr @__cpu_online_mask, i32 %64
  %66 = load volatile i32, ptr %65, align 4
  %67 = and i32 %63, 31
  %68 = shl nuw i32 1, %67
  %69 = and i32 %68, %66
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %60
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !24
  %72 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_crc_rsp_error, i32 0, i32 7), align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %74, %71
  %75 = phi ptr [ %79, %74 ], [ %72, %71 ]
  %76 = load volatile ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.tracepoint_func, ptr %75, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  call void %76(ptr noundef %78, ptr noundef %0) #13
  %79 = getelementptr %struct.tracepoint_func, ptr %75, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %74

82:                                               ; preds = %74, %71
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !25
  br label %83

83:                                               ; preds = %82, %60, %56
  %84 = call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef %20, i32 noundef 2) #13
  %85 = call zeroext i8 @crc4(i8 noundef zeroext %84, i64 noundef %22, i32 noundef 4) #13
  %86 = and i8 %85, 15
  %87 = zext i8 %86 to i64
  %88 = or i64 %23, %87
  store i64 %88, ptr %9, align 8
  store i8 9, ptr %14, align 8
  %89 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !13
  call fastcc void @clock_zeros(ptr noundef %0, i32 noundef 50) #13
  call fastcc void @serial_out(ptr noundef %0, ptr noundef nonnull %9) #13
  %90 = load i8, ptr %12, align 1
  %91 = zext i8 %90 to i32
  call fastcc void @clock_zeros(ptr noundef %0, i32 noundef %91) #13
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %89) #13, !srcloc !14
  br label %47

92:                                               ; preds = %51
  %93 = load i8, ptr %10, align 1
  switch i8 %93, label %171 [
    i8 0, label %94
    i8 1, label %109
    i8 2, label %170
    i8 3, label %144
  ]

94:                                               ; preds = %92
  br i1 %33, label %95, label %171

95:                                               ; preds = %94
  %96 = load i64, ptr %8, align 8
  %97 = lshr i64 %96, 4
  %98 = and i64 %97, %37
  br label %99

99:                                               ; preds = %99, %95
  %100 = phi i32 [ %107, %99 ], [ 0, %95 ]
  %101 = phi i64 [ %106, %99 ], [ %98, %95 ]
  %102 = trunc i64 %101 to i8
  %103 = xor i32 %100, -1
  %104 = add nsw i32 %30, %103
  %105 = getelementptr i8, ptr %4, i32 %104
  store i8 %102, ptr %105, align 1
  %106 = lshr i64 %101, 8
  %107 = add nuw nsw i32 %100, 1
  %108 = icmp eq i32 %107, %30
  br i1 %108, label %171, label %99

109:                                              ; preds = %92
  %110 = icmp eq i32 %52, %50
  br i1 %110, label %121, label %111

111:                                              ; preds = %109
  %112 = add i32 %52, 1
  %113 = call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef %20, i32 noundef 2) #13
  %114 = call zeroext i8 @crc4(i8 noundef zeroext %113, i64 noundef %18, i32 noundef 4) #13
  %115 = and i8 %114, 15
  %116 = zext i8 %115 to i64
  %117 = or i64 %21, %116
  store i64 %117, ptr %9, align 8
  store i8 9, ptr %14, align 8
  %118 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !13
  call fastcc void @clock_zeros(ptr noundef %0, i32 noundef 50) #13
  call fastcc void @serial_out(ptr noundef %0, ptr noundef nonnull %9) #13
  %119 = load i8, ptr %12, align 1
  %120 = zext i8 %119 to i32
  call fastcc void @clock_zeros(ptr noundef %0, i32 noundef %120) #13
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %118) #13, !srcloc !14
  br label %51

121:                                              ; preds = %109
  %122 = add nuw i32 %50, 1
  %123 = load ptr, ptr %24, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %123, ptr noundef nonnull @.str.36) #15
  %124 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !13
  call fastcc void @clock_zeros(ptr noundef %0, i32 noundef 50) #13
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %124) #13, !srcloc !14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  store i64 12, ptr %25, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  store i8 0, ptr %7, align 1, !annotation !9
  %125 = call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef 1, i32 noundef 1) #13
  %126 = call zeroext i8 @crc4(i8 noundef zeroext %125, i64 noundef %28, i32 noundef 8) #13
  %127 = and i8 %126, 15
  %128 = zext i8 %127 to i64
  %129 = or i64 %29, %128
  store i64 %129, ptr %6, align 8
  %130 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !13
  call fastcc void @serial_out(ptr noundef %0, ptr noundef nonnull %6) #13
  %131 = load i8, ptr %12, align 1
  %132 = zext i8 %131 to i32
  call fastcc void @clock_zeros(ptr noundef %0, i32 noundef %132) #13
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %130) #13, !srcloc !14
  %133 = call fastcc i32 @read_one_response(ptr noundef %0, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull %7) #13
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %121
  %136 = load ptr, ptr %24, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.37) #15
  br label %143

137:                                              ; preds = %121
  %138 = load i8, ptr %7, align 1
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = zext i8 %138 to i32
  %142 = load ptr, ptr %24, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.38, i32 noundef %141) #15
  br label %143

143:                                              ; preds = %140, %137, %135
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %171

144:                                              ; preds = %92
  %145 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_crc_cmd_error, i32 0, i32 1), align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %171

147:                                              ; preds = %144
  %148 = tail call ptr @llvm.thread.pointer() #13
  %149 = getelementptr inbounds %struct.thread_info, ptr %148, i32 0, i32 2
  %150 = load i32, ptr %149, align 8
  %151 = lshr i32 %150, 5
  %152 = getelementptr i32, ptr @__cpu_online_mask, i32 %151
  %153 = load volatile i32, ptr %152, align 4
  %154 = and i32 %150, 31
  %155 = shl nuw i32 1, %154
  %156 = and i32 %155, %153
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %171, label %158

158:                                              ; preds = %147
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !26
  %159 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_crc_cmd_error, i32 0, i32 7), align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %169, label %161

161:                                              ; preds = %161, %158
  %162 = phi ptr [ %166, %161 ], [ %159, %158 ]
  %163 = load volatile ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.tracepoint_func, ptr %162, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  call void %163(ptr noundef %165, ptr noundef %0) #13
  %166 = getelementptr %struct.tracepoint_func, ptr %162, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %161

169:                                              ; preds = %161, %158
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !27
  br label %171

170:                                              ; preds = %92
  br label %171

171:                                              ; preds = %170, %169, %147, %144, %143, %99, %94, %92
  %172 = phi i32 [ -5, %143 ], [ 0, %94 ], [ -11, %144 ], [ -11, %147 ], [ -11, %169 ], [ -5, %170 ], [ 0, %92 ], [ 0, %99 ]
  %173 = phi i32 [ %122, %143 ], [ %52, %94 ], [ %52, %144 ], [ %52, %147 ], [ %52, %169 ], [ %52, %170 ], [ %52, %92 ], [ %52, %99 ]
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %201

175:                                              ; preds = %171
  %176 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_poll_response_busy, i32 0, i32 1), align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %201

178:                                              ; preds = %175
  %179 = tail call ptr @llvm.thread.pointer() #13
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
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !28
  %190 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_poll_response_busy, i32 0, i32 7), align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %200, label %192

192:                                              ; preds = %192, %189
  %193 = phi ptr [ %197, %192 ], [ %190, %189 ]
  %194 = load volatile ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.tracepoint_func, ptr %193, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  call void %194(ptr noundef %196, ptr noundef %0, i32 noundef %173) #13
  %197 = getelementptr %struct.tracepoint_func, ptr %193, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %192

200:                                              ; preds = %192, %189
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !29
  br label %201

201:                                              ; preds = %200, %178, %175, %171, %54, %51
  %202 = phi i32 [ %172, %171 ], [ %172, %175 ], [ %172, %178 ], [ %172, %200 ], [ %53, %51 ], [ -5, %54 ]
  %203 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !13
  %204 = load i8, ptr %38, align 4
  %205 = zext i8 %204 to i32
  call fastcc void @clock_zeros(ptr noundef %0, i32 noundef %205) #13
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %203) #13, !srcloc !14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  %206 = icmp eq i32 %202, -11
  br i1 %206, label %207, label %211

207:                                              ; preds = %201
  %208 = load ptr, ptr %24, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %208, ptr noundef nonnull @.str.34, i32 noundef %40) #15
  call void @msleep(i32 noundef 1) #13
  %209 = add nuw nsw i32 %40, 1
  %210 = icmp eq i32 %209, 11
  br i1 %210, label %211, label %39

211:                                              ; preds = %207, %201, %39
  %212 = phi i32 [ %202, %201 ], [ -5, %207 ], [ -16, %39 ]
  ret i32 %212
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc4(i8 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @serial_out(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = getelementptr inbounds %struct.fsi_gpio_msg, ptr %1, i32 0, i32 1
  %5 = load i8, ptr %4, align 8
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = shl nuw i64 1, %8
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_out, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = tail call ptr @llvm.thread.pointer() #13
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 5
  %17 = getelementptr i32, ptr @__cpu_online_mask, i32 %16
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %15, 31
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %12
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !30
  %24 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_out, i32 0, i32 7), align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %26, %23
  %27 = phi ptr [ %31, %26 ], [ %24, %23 ]
  %28 = load volatile ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.tracepoint_func, ptr %27, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void %28(ptr noundef %30, ptr noundef %0, i32 noundef %6, i64 noundef %3) #13
  %31 = getelementptr %struct.tracepoint_func, ptr %27, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %26

34:                                               ; preds = %26, %23
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !31
  %35 = load i8, ptr %4, align 8
  br label %36

36:                                               ; preds = %34, %12, %2
  %37 = phi i8 [ %5, %2 ], [ %5, %12 ], [ %35, %34 ]
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.35) #15
  br label %100

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 5
  %44 = load ptr, ptr %43, align 8
  tail call void @gpiod_set_value(ptr noundef %44, i32 noundef 1) #13
  %45 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = tail call i32 @gpiod_direction_output(ptr noundef %46, i32 noundef 0) #13
  %48 = load ptr, ptr %45, align 4
  tail call void @gpiod_set_value(ptr noundef %48, i32 noundef 0) #13
  %49 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 9
  %50 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 3
  %51 = load i8, ptr %49, align 1, !range !17
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748) #13
  br label %55

55:                                               ; preds = %53, %42
  %56 = load ptr, ptr %50, align 8
  tail call void @gpiod_set_value(ptr noundef %56, i32 noundef 0) #13
  %57 = load i8, ptr %49, align 1, !range !17
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748) #13
  br label %61

61:                                               ; preds = %59, %55
  %62 = load ptr, ptr %50, align 8
  tail call void @gpiod_set_value(ptr noundef %62, i32 noundef 1) #13
  %63 = load i8, ptr %4, align 8
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %100, label %65

65:                                               ; preds = %61
  %66 = xor i64 %3, -1
  br label %67

67:                                               ; preds = %94, %65
  %68 = phi i8 [ %98, %94 ], [ %63, %65 ]
  %69 = phi i64 [ %83, %94 ], [ -1, %65 ]
  %70 = phi i64 [ %96, %94 ], [ %66, %65 ]
  %71 = phi i8 [ %97, %94 ], [ 0, %65 ]
  %72 = zext i8 %68 to i32
  %73 = and i64 %70, %9
  %74 = add nsw i32 %72, -1
  %75 = zext i32 %74 to i64
  %76 = lshr i64 %73, %75
  %77 = trunc i64 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = icmp eq i64 %69, %78
  br i1 %79, label %82, label %80

80:                                               ; preds = %67
  %81 = load ptr, ptr %45, align 4
  tail call void @gpiod_set_value(ptr noundef %81, i32 noundef %77) #13
  br label %82

82:                                               ; preds = %80, %67
  %83 = phi i64 [ %78, %80 ], [ %69, %67 ]
  %84 = load i8, ptr %49, align 1, !range !17
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 214748) #13
  br label %88

88:                                               ; preds = %86, %82
  %89 = load ptr, ptr %50, align 8
  tail call void @gpiod_set_value(ptr noundef %89, i32 noundef 0) #13
  %90 = load i8, ptr %49, align 1, !range !17
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %93(i32 noundef 214748) #13
  br label %94

94:                                               ; preds = %92, %88
  %95 = load ptr, ptr %50, align 8
  tail call void @gpiod_set_value(ptr noundef %95, i32 noundef 1) #13
  %96 = shl i64 %70, 1
  %97 = add nuw i8 %71, 1
  %98 = load i8, ptr %4, align 8
  %99 = icmp ult i8 %97, %98
  br i1 %99, label %67, label %100

100:                                              ; preds = %94, %61, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clock_zeros(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_clock_zeros, i32 0, i32 1), align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %2
  %6 = tail call ptr @llvm.thread.pointer() #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !32
  %17 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_clock_zeros, i32 0, i32 7), align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %19, %16
  %20 = phi ptr [ %24, %19 ], [ %17, %16 ]
  %21 = load volatile ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tracepoint_func, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call void %21(ptr noundef %23, ptr noundef %0, i32 noundef %1) #13
  %24 = getelementptr %struct.tracepoint_func, ptr %20, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %19

27:                                               ; preds = %19, %16
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !33
  br label %28

28:                                               ; preds = %27, %5, %2
  %29 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 8
  tail call void @gpiod_set_value(ptr noundef %30, i32 noundef 1) #13
  %31 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @gpiod_direction_output(ptr noundef %32, i32 noundef 1) #13
  %34 = icmp sgt i32 %1, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 9
  %37 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 3
  br label %38

38:                                               ; preds = %50, %35
  %39 = phi i32 [ 0, %35 ], [ %52, %50 ]
  %40 = load i8, ptr %36, align 1, !range !17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748) #13
  br label %44

44:                                               ; preds = %42, %38
  %45 = load ptr, ptr %37, align 8
  tail call void @gpiod_set_value(ptr noundef %45, i32 noundef 0) #13
  %46 = load i8, ptr %36, align 1, !range !17
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #13
  br label %50

50:                                               ; preds = %48, %44
  %51 = load ptr, ptr %37, align 8
  tail call void @gpiod_set_value(ptr noundef %51, i32 noundef 1) #13
  %52 = add nuw nsw i32 %39, 1
  %53 = icmp eq i32 %52, %1
  br i1 %53, label %54, label %38

54:                                               ; preds = %50, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @read_one_response(ptr noundef %0, i8 noundef zeroext %1, ptr noundef writeonly %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.fsi_gpio_msg, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %6 = getelementptr inbounds i8, ptr %5, i32 8
  store i64 0, ptr %6, align 8, !annotation !9
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !13
  %8 = getelementptr inbounds %struct.fsi_gpio_msg, ptr %5, i32 0, i32 1
  br label %9

9:                                                ; preds = %13, %4
  %10 = phi i32 [ 0, %4 ], [ %14, %13 ]
  store i8 0, ptr %8, align 8
  store i64 0, ptr %5, align 8
  call fastcc void @serial_in(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 1)
  %11 = load i64, ptr %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = add nuw nsw i32 %10, 1
  %15 = icmp eq i32 %14, 1000
  br i1 %15, label %16, label %9

16:                                               ; preds = %13
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #13, !srcloc !14
  br label %45

17:                                               ; preds = %9
  store i8 0, ptr %8, align 8
  store i64 0, ptr %5, align 8
  call fastcc void @serial_in(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 4)
  %18 = load i64, ptr %5, align 8
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 3
  %21 = icmp eq i8 %20, 0
  %22 = icmp ne i8 %1, 0
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = shl i8 %1, 3
  call fastcc void @serial_in(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext %25)
  br label %26

26:                                               ; preds = %24, %17
  call fastcc void @serial_in(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 4)
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #13, !srcloc !14
  %27 = tail call zeroext i8 @crc4(i8 noundef zeroext 0, i64 noundef 1, i32 noundef 1) #13
  %28 = load i64, ptr %5, align 8
  %29 = load i8, ptr %8, align 8
  %30 = zext i8 %29 to i32
  %31 = tail call zeroext i8 @crc4(i8 noundef zeroext %27, i64 noundef %28, i32 noundef %30) #13
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = zext i8 %29 to i64
  %35 = shl nsw i64 -1, %34
  %36 = or i64 %35, %28
  %37 = icmp eq i64 %36, -1
  %38 = select i1 %37, i32 -19, i32 -11
  br label %45

39:                                               ; preds = %26
  %40 = icmp eq ptr %2, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %39
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 16, i1 false)
  br label %42

42:                                               ; preds = %41, %39
  %43 = icmp eq ptr %3, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  store i8 %20, ptr %3, align 1
  br label %45

45:                                               ; preds = %44, %42, %33, %16
  %46 = phi i32 [ -110, %16 ], [ %38, %33 ], [ 0, %44 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @serial_in(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @gpiod_direction_input(ptr noundef %5) #13
  %7 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 0) #13
  %9 = icmp eq i8 %2, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i64, ptr %1, align 8
  br label %40

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 9
  %14 = getelementptr inbounds %struct.fsi_master_gpio, ptr %0, i32 0, i32 3
  br label %15

15:                                               ; preds = %31, %12
  %16 = phi i8 [ 0, %12 ], [ %38, %31 ]
  %17 = load i8, ptr %13, align 1, !range !17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #13
  br label %21

21:                                               ; preds = %19, %15
  %22 = load ptr, ptr %14, align 8
  tail call void @gpiod_set_value(ptr noundef %22, i32 noundef 0) #13
  %23 = load ptr, ptr %4, align 4
  %24 = tail call i32 @gpiod_get_value(ptr noundef %23) #13
  %25 = load ptr, ptr %4, align 4
  %26 = tail call i32 @gpiod_get_value(ptr noundef %25) #13
  %27 = load i8, ptr %13, align 1, !range !17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #13
  br label %31

31:                                               ; preds = %29, %21
  %32 = load ptr, ptr %14, align 8
  tail call void @gpiod_set_value(ptr noundef %32, i32 noundef 1) #13
  %33 = icmp eq i32 %26, 0
  %34 = load i64, ptr %1, align 8
  %35 = shl i64 %34, 1
  %36 = zext i1 %33 to i64
  %37 = or i64 %35, %36
  store i64 %37, ptr %1, align 8
  %38 = add nuw i8 %16, 1
  %39 = icmp ult i8 %38, %2
  br i1 %39, label %15, label %40

40:                                               ; preds = %31, %10
  %41 = phi i64 [ %11, %10 ], [ %37, %31 ]
  %42 = zext i8 %2 to i32
  %43 = getelementptr inbounds %struct.fsi_gpio_msg, ptr %1, i32 0, i32 1
  %44 = load i8, ptr %43, align 8
  %45 = add i8 %44, %2
  store i8 %45, ptr %43, align 8
  %46 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_in, i32 0, i32 1), align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %40
  %49 = tail call ptr @llvm.thread.pointer() #13
  %50 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 8
  %52 = lshr i32 %51, 5
  %53 = getelementptr i32, ptr @__cpu_online_mask, i32 %52
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %51, 31
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, %54
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %48
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !34
  %60 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_gpio_in, i32 0, i32 7), align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %62, %59
  %63 = phi ptr [ %67, %62 ], [ %60, %59 ]
  %64 = load volatile ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.tracepoint_func, ptr %63, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  tail call void %64(ptr noundef %66, ptr noundef %0, i32 noundef %42, i64 noundef %41) #13
  %67 = getelementptr %struct.tracepoint_func, ptr %63, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %62

70:                                               ; preds = %62, %59
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !35
  br label %71

71:                                               ; preds = %70, %48, %40
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @external_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fsi_master_gpio, ptr %5, i32 0, i32 8
  %7 = load i8, ptr %6, align 4, !range !17
  %8 = zext i8 %7 to i32
  %9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %2, i32 noundef 4095, ptr noundef nonnull @.str.40, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @external_mode_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !9
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = icmp ne i32 %11, 0
  %13 = getelementptr inbounds %struct.fsi_master_gpio, ptr %7, i32 0, i32 2
  call void @mutex_lock(ptr noundef %13) #13
  %14 = getelementptr inbounds %struct.fsi_master_gpio, ptr %7, i32 0, i32 8
  %15 = load i8, ptr %14, align 4, !range !17
  %16 = zext i1 %12 to i8
  %17 = icmp eq i8 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  call void @mutex_unlock(ptr noundef %13) #13
  br label %53

19:                                               ; preds = %10
  store i8 %16, ptr %14, align 4
  %20 = getelementptr inbounds %struct.fsi_master_gpio, ptr %7, i32 0, i32 7
  %21 = load ptr, ptr %20, align 8
  br i1 %12, label %22, label %36

22:                                               ; preds = %19
  %23 = call i32 @gpiod_direction_output(ptr noundef %21, i32 noundef 0) #13
  %24 = getelementptr inbounds %struct.fsi_master_gpio, ptr %7, i32 0, i32 5
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @gpiod_direction_output(ptr noundef %25, i32 noundef 0) #13
  %27 = getelementptr inbounds %struct.fsi_master_gpio, ptr %7, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @gpiod_direction_output(ptr noundef %28, i32 noundef 1) #13
  %30 = getelementptr inbounds %struct.fsi_master_gpio, ptr %7, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = call i32 @gpiod_direction_input(ptr noundef %31) #13
  %33 = getelementptr inbounds %struct.fsi_master_gpio, ptr %7, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 @gpiod_direction_input(ptr noundef %34) #13
  br label %51

36:                                               ; preds = %19
  %37 = call i32 @gpiod_direction_output(ptr noundef %21, i32 noundef 1) #13
  %38 = getelementptr inbounds %struct.fsi_master_gpio, ptr %7, i32 0, i32 5
  %39 = load ptr, ptr %38, align 8
  %40 = call i32 @gpiod_direction_output(ptr noundef %39, i32 noundef 1) #13
  %41 = getelementptr inbounds %struct.fsi_master_gpio, ptr %7, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = call i32 @gpiod_direction_output(ptr noundef %42, i32 noundef 1) #13
  %44 = getelementptr inbounds %struct.fsi_master_gpio, ptr %7, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = call i32 @gpiod_direction_output(ptr noundef %45, i32 noundef 1) #13
  %47 = getelementptr inbounds %struct.fsi_master_gpio, ptr %7, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 @gpiod_direction_output(ptr noundef %48, i32 noundef 1) #13
  %50 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #13, !srcloc !13
  call fastcc void @clock_zeros(ptr noundef %7, i32 noundef 5000) #13
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %50) #13, !srcloc !14
  br label %51

51:                                               ; preds = %36, %22
  call void @mutex_unlock(ptr noundef %13) #13
  %52 = call i32 @fsi_master_rescan(ptr noundef %7) #13
  br label %53

53:                                               ; preds = %51, %18, %4
  %54 = phi i32 [ %3, %18 ], [ %3, %51 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  ret i32 %54
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_master_rescan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_master_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

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
!12 = !{i64 323190}
!13 = !{i64 304490, i64 304551}
!14 = !{i64 307507}
!15 = !{i64 2151582856}
!16 = !{i64 2151583022}
!17 = !{i8 0, i8 2}
!18 = !{i64 2151675819}
!19 = !{i64 2151676001}
!20 = !{i64 2151661805}
!21 = !{i64 2151662005}
!22 = !{i64 2151643490}
!23 = !{i64 2151643682}
!24 = !{i64 2151614628}
!25 = !{i64 2151614810}
!26 = !{i64 2151596527}
!27 = !{i64 2151596709}
!28 = !{i64 2151629052}
!29 = !{i64 2151629256}
!30 = !{i64 2151555432}
!31 = !{i64 2151555616}
!32 = !{i64 2151569197}
!33 = !{i64 2151569391}
!34 = !{i64 2151537761}
!35 = !{i64 2151537943}
