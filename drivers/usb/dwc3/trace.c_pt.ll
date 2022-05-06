; ModuleID = '/llk/IR/drivers/usb/dwc3/trace.c_pt.bc'
source_filename = "../drivers/usb/dwc3/trace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_dwc3_log_io = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_dwc3_log_event = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.dwc3 = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.dwc3_request, %struct.completion, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, [2 x %struct.resource], ptr, [32 x ptr], ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, ptr, i8, ptr, i32, i32, i32, i32, ptr, %struct.notifier_block, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8, %struct.dwc3_hwparams, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, [6 x i8], i16, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dwc3_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i8, ptr, i32, i32, i8 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.dwc3_hwparams = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.trace_event_raw_dwc3_log_ctrl = type { %struct.trace_entry, i8, i8, i16, i16, i16, i32, [0 x i8] }
%struct.usb_ctrlrequest = type { i8, i8, i16, i16, i16 }
%struct.dwc3_ep = type { %struct.usb_ep, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, i8, i8, i32, i32, [20 x i8], i8, i8, i32 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.trace_event_raw_dwc3_log_request = type { %struct.trace_entry, i32, ptr, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dwc3_log_generic_cmd = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_dwc3_log_gadget_ep_cmd = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dwc3_gadget_ep_cmd_params = type { i32, i32, i32 }
%struct.trace_event_raw_dwc3_log_trb = type { %struct.trace_entry, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.dwc3_trb = type { i32, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.trace_event_raw_dwc3_log_ep = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i8, i8, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_dwc3_readl = internal constant [11 x i8] c"dwc3_readl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_readl = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_readl }, align 4
@__tracepoint_dwc3_readl = dso_local global %struct.tracepoint { ptr @__tpstrtab_dwc3_readl, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dwc3_readl, ptr null, ptr @__traceiter_dwc3_readl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_readl = internal constant ptr @__tracepoint_dwc3_readl, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_writel = internal constant [12 x i8] c"dwc3_writel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_writel = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_writel }, align 4
@__tracepoint_dwc3_writel = dso_local global %struct.tracepoint { ptr @__tpstrtab_dwc3_writel, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dwc3_writel, ptr null, ptr @__traceiter_dwc3_writel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_writel = internal constant ptr @__tracepoint_dwc3_writel, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_event = internal constant [11 x i8] c"dwc3_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_event = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_event }, align 4
@__tracepoint_dwc3_event = dso_local global %struct.tracepoint { ptr @__tpstrtab_dwc3_event, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dwc3_event, ptr null, ptr @__traceiter_dwc3_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_event = internal constant ptr @__tracepoint_dwc3_event, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_ctrl_req = internal constant [14 x i8] c"dwc3_ctrl_req\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_ctrl_req = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_ctrl_req }, align 4
@__tracepoint_dwc3_ctrl_req = dso_local global %struct.tracepoint { ptr @__tpstrtab_dwc3_ctrl_req, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dwc3_ctrl_req, ptr null, ptr @__traceiter_dwc3_ctrl_req, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_ctrl_req = internal constant ptr @__tracepoint_dwc3_ctrl_req, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_alloc_request = internal constant [19 x i8] c"dwc3_alloc_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_alloc_request = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_alloc_request }, align 4
@__tracepoint_dwc3_alloc_request = dso_local global %struct.tracepoint { ptr @__tpstrtab_dwc3_alloc_request, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dwc3_alloc_request, ptr null, ptr @__traceiter_dwc3_alloc_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_alloc_request = internal constant ptr @__tracepoint_dwc3_alloc_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_free_request = internal constant [18 x i8] c"dwc3_free_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_free_request = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_free_request }, align 4
@__tracepoint_dwc3_free_request = dso_local global %struct.tracepoint { ptr @__tpstrtab_dwc3_free_request, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dwc3_free_request, ptr null, ptr @__traceiter_dwc3_free_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_free_request = internal constant ptr @__tracepoint_dwc3_free_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_ep_queue = internal constant [14 x i8] c"dwc3_ep_queue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_ep_queue = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_ep_queue }, align 4
@__tracepoint_dwc3_ep_queue = dso_local global %struct.tracepoint { ptr @__tpstrtab_dwc3_ep_queue, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dwc3_ep_queue, ptr null, ptr @__traceiter_dwc3_ep_queue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_ep_queue = internal constant ptr @__tracepoint_dwc3_ep_queue, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_ep_dequeue = internal constant [16 x i8] c"dwc3_ep_dequeue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_ep_dequeue = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_ep_dequeue }, align 4
@__tracepoint_dwc3_ep_dequeue = dso_local global %struct.tracepoint { ptr @__tpstrtab_dwc3_ep_dequeue, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dwc3_ep_dequeue, ptr null, ptr @__traceiter_dwc3_ep_dequeue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_ep_dequeue = internal constant ptr @__tracepoint_dwc3_ep_dequeue, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_gadget_giveback = internal constant [21 x i8] c"dwc3_gadget_giveback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_gadget_giveback = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_gadget_giveback }, align 4
@__tracepoint_dwc3_gadget_giveback = dso_local global %struct.tracepoint { ptr @__tpstrtab_dwc3_gadget_giveback, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dwc3_gadget_giveback, ptr null, ptr @__traceiter_dwc3_gadget_giveback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_gadget_giveback = internal constant ptr @__tracepoint_dwc3_gadget_giveback, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_gadget_generic_cmd = internal constant [24 x i8] c"dwc3_gadget_generic_cmd\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_gadget_generic_cmd = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_gadget_generic_cmd }, align 4
@__tracepoint_dwc3_gadget_generic_cmd = dso_local global %struct.tracepoint { ptr @__tpstrtab_dwc3_gadget_generic_cmd, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dwc3_gadget_generic_cmd, ptr null, ptr @__traceiter_dwc3_gadget_generic_cmd, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_gadget_generic_cmd = internal constant ptr @__tracepoint_dwc3_gadget_generic_cmd, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_gadget_ep_cmd = internal constant [19 x i8] c"dwc3_gadget_ep_cmd\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_gadget_ep_cmd = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_gadget_ep_cmd }, align 4
@__tracepoint_dwc3_gadget_ep_cmd = dso_local global %struct.tracepoint { ptr @__tpstrtab_dwc3_gadget_ep_cmd, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dwc3_gadget_ep_cmd, ptr null, ptr @__traceiter_dwc3_gadget_ep_cmd, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_gadget_ep_cmd = internal constant ptr @__tracepoint_dwc3_gadget_ep_cmd, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_prepare_trb = internal constant [17 x i8] c"dwc3_prepare_trb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_prepare_trb = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_prepare_trb }, align 4
@__tracepoint_dwc3_prepare_trb = dso_local global %struct.tracepoint { ptr @__tpstrtab_dwc3_prepare_trb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dwc3_prepare_trb, ptr null, ptr @__traceiter_dwc3_prepare_trb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_prepare_trb = internal constant ptr @__tracepoint_dwc3_prepare_trb, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_complete_trb = internal constant [18 x i8] c"dwc3_complete_trb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_complete_trb = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_complete_trb }, align 4
@__tracepoint_dwc3_complete_trb = dso_local global %struct.tracepoint { ptr @__tpstrtab_dwc3_complete_trb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dwc3_complete_trb, ptr null, ptr @__traceiter_dwc3_complete_trb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_complete_trb = internal constant ptr @__tracepoint_dwc3_complete_trb, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_gadget_ep_enable = internal constant [22 x i8] c"dwc3_gadget_ep_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_gadget_ep_enable = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_gadget_ep_enable }, align 4
@__tracepoint_dwc3_gadget_ep_enable = dso_local global %struct.tracepoint { ptr @__tpstrtab_dwc3_gadget_ep_enable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dwc3_gadget_ep_enable, ptr null, ptr @__traceiter_dwc3_gadget_ep_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_gadget_ep_enable = internal constant ptr @__tracepoint_dwc3_gadget_ep_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_dwc3_gadget_ep_disable = internal constant [23 x i8] c"dwc3_gadget_ep_disable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_dwc3_gadget_ep_disable = dso_local global %struct.static_call_key { ptr @__traceiter_dwc3_gadget_ep_disable }, align 4
@__tracepoint_dwc3_gadget_ep_disable = dso_local global %struct.tracepoint { ptr @__tpstrtab_dwc3_gadget_ep_disable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_dwc3_gadget_ep_disable, ptr null, ptr @__traceiter_dwc3_gadget_ep_disable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_dwc3_gadget_ep_disable = internal constant ptr @__tracepoint_dwc3_gadget_ep_disable, section "__tracepoints_ptrs", align 4
@str__dwc3__trace_system_name = internal constant [5 x i8] c"dwc3\00", align 1
@trace_event_fields_dwc3_log_io = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.91 { %struct.anon.92 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.91 { %struct.anon.92 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.91 { %struct.anon.92 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dwc3_log_io = internal global %struct.trace_event_class { ptr @str__dwc3__trace_system_name, ptr @trace_event_raw_event_dwc3_log_io, ptr @perf_trace_dwc3_log_io, ptr @trace_event_reg, ptr @trace_event_fields_dwc3_log_io, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dwc3_log_io, i64 24), ptr getelementptr (i8, ptr @event_class_dwc3_log_io, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dwc3_log_io = internal global %struct.trace_event_functions { ptr @trace_raw_output_dwc3_log_io, ptr null, ptr null, ptr null }, align 4
@print_fmt_dwc3_log_io = internal global [83 x i8] c"\22addr %p offset %04x value %08x\22, REC->base + REC->offset, REC->offset, REC->value\00", align 1
@event_dwc3_readl = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_io, %union.anon.93 { ptr @__tracepoint_dwc3_readl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_io }, ptr @print_fmt_dwc3_log_io, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dwc3_readl = internal global ptr @event_dwc3_readl, section "_ftrace_events", align 4
@event_dwc3_writel = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_io, %union.anon.93 { ptr @__tracepoint_dwc3_writel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_io }, ptr @print_fmt_dwc3_log_io, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dwc3_writel = internal global ptr @event_dwc3_writel, section "_ftrace_events", align 4
@trace_event_fields_dwc3_log_event = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.2, %union.anon.91 { %struct.anon.92 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.91 { %struct.anon.92 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dwc3_log_event = internal global %struct.trace_event_class { ptr @str__dwc3__trace_system_name, ptr @trace_event_raw_event_dwc3_log_event, ptr @perf_trace_dwc3_log_event, ptr @trace_event_reg, ptr @trace_event_fields_dwc3_log_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dwc3_log_event, i64 24), ptr getelementptr (i8, ptr @event_class_dwc3_log_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dwc3_log_event = internal global %struct.trace_event_functions { ptr @trace_raw_output_dwc3_log_event, ptr null, ptr null, ptr null }, align 4
@print_fmt_dwc3_log_event = internal global [98 x i8] c"\22event (%08x): %s\22, REC->event, dwc3_decode_event(__get_str(str), 500, REC->event, REC->ep0state)\00", align 1
@event_dwc3_event = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_event, %union.anon.93 { ptr @__tracepoint_dwc3_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_event }, ptr @print_fmt_dwc3_log_event, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dwc3_event = internal global ptr @event_dwc3_event, section "_ftrace_events", align 4
@trace_event_fields_dwc3_log_ctrl = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.56, %union.anon.91 { %struct.anon.92 { ptr @.str.57, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.56, %union.anon.91 { %struct.anon.92 { ptr @.str.58, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.59, %union.anon.91 { %struct.anon.92 { ptr @.str.60, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.59, %union.anon.91 { %struct.anon.92 { ptr @.str.61, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.59, %union.anon.91 { %struct.anon.92 { ptr @.str.62, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dwc3_log_ctrl = internal global %struct.trace_event_class { ptr @str__dwc3__trace_system_name, ptr @trace_event_raw_event_dwc3_log_ctrl, ptr @perf_trace_dwc3_log_ctrl, ptr @trace_event_reg, ptr @trace_event_fields_dwc3_log_ctrl, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dwc3_log_ctrl, i64 24), ptr getelementptr (i8, ptr @event_class_dwc3_log_ctrl, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dwc3_log_ctrl = internal global %struct.trace_event_functions { ptr @trace_raw_output_dwc3_log_ctrl, ptr null, ptr null, ptr null }, align 4
@print_fmt_dwc3_log_ctrl = internal global [117 x i8] c"\22%s\22, usb_decode_ctrl(__get_str(str), 500, REC->bRequestType, REC->bRequest, REC->wValue, REC->wIndex, REC->wLength)\00", align 1
@event_dwc3_ctrl_req = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_ctrl, %union.anon.93 { ptr @__tracepoint_dwc3_ctrl_req }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_ctrl }, ptr @print_fmt_dwc3_log_ctrl, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dwc3_ctrl_req = internal global ptr @event_dwc3_ctrl_req, section "_ftrace_events", align 4
@trace_event_fields_dwc3_log_request = internal global [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.66, %union.anon.91 { %struct.anon.92 { ptr @.str.67, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.91 { %struct.anon.92 { ptr @.str.69, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.91 { %struct.anon.92 { ptr @.str.70, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.91 { %struct.anon.92 { ptr @.str.72, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.91 { %struct.anon.92 { ptr @.str.73, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.91 { %struct.anon.92 { ptr @.str.74, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.91 { %struct.anon.92 { ptr @.str.75, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dwc3_log_request = internal global %struct.trace_event_class { ptr @str__dwc3__trace_system_name, ptr @trace_event_raw_event_dwc3_log_request, ptr @perf_trace_dwc3_log_request, ptr @trace_event_reg, ptr @trace_event_fields_dwc3_log_request, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dwc3_log_request, i64 24), ptr getelementptr (i8, ptr @event_class_dwc3_log_request, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dwc3_log_request = internal global %struct.trace_event_functions { ptr @trace_raw_output_dwc3_log_request, ptr null, ptr null, ptr null }, align 4
@print_fmt_dwc3_log_request = internal global [191 x i8] c"\22%s: req %p length %u/%u %s%s%s ==> %d\22, __get_str(name), REC->req, REC->actual, REC->length, REC->zero ? \22Z\22 : \22z\22, REC->short_not_ok ? \22S\22 : \22s\22, REC->no_interrupt ? \22i\22 : \22I\22, REC->status\00", align 1
@event_dwc3_alloc_request = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_request, %union.anon.93 { ptr @__tracepoint_dwc3_alloc_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_request }, ptr @print_fmt_dwc3_log_request, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dwc3_alloc_request = internal global ptr @event_dwc3_alloc_request, section "_ftrace_events", align 4
@event_dwc3_free_request = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_request, %union.anon.93 { ptr @__tracepoint_dwc3_free_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_request }, ptr @print_fmt_dwc3_log_request, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dwc3_free_request = internal global ptr @event_dwc3_free_request, section "_ftrace_events", align 4
@event_dwc3_ep_queue = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_request, %union.anon.93 { ptr @__tracepoint_dwc3_ep_queue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_request }, ptr @print_fmt_dwc3_log_request, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dwc3_ep_queue = internal global ptr @event_dwc3_ep_queue, section "_ftrace_events", align 4
@event_dwc3_ep_dequeue = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_request, %union.anon.93 { ptr @__tracepoint_dwc3_ep_dequeue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_request }, ptr @print_fmt_dwc3_log_request, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dwc3_ep_dequeue = internal global ptr @event_dwc3_ep_dequeue, section "_ftrace_events", align 4
@event_dwc3_gadget_giveback = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_request, %union.anon.93 { ptr @__tracepoint_dwc3_gadget_giveback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_request }, ptr @print_fmt_dwc3_log_request, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dwc3_gadget_giveback = internal global ptr @event_dwc3_gadget_giveback, section "_ftrace_events", align 4
@trace_event_fields_dwc3_log_generic_cmd = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.68, %union.anon.91 { %struct.anon.92 { ptr @.str.83, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.91 { %struct.anon.92 { ptr @.str.84, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.91 { %struct.anon.92 { ptr @.str.72, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dwc3_log_generic_cmd = internal global %struct.trace_event_class { ptr @str__dwc3__trace_system_name, ptr @trace_event_raw_event_dwc3_log_generic_cmd, ptr @perf_trace_dwc3_log_generic_cmd, ptr @trace_event_reg, ptr @trace_event_fields_dwc3_log_generic_cmd, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dwc3_log_generic_cmd, i64 24), ptr getelementptr (i8, ptr @event_class_dwc3_log_generic_cmd, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dwc3_log_generic_cmd = internal global %struct.trace_event_functions { ptr @trace_raw_output_dwc3_log_generic_cmd, ptr null, ptr null, ptr null }, align 4
@print_fmt_dwc3_log_generic_cmd = internal global [158 x i8] c"\22cmd '%s' [%x] param %08x --> status: %s\22, dwc3_gadget_generic_cmd_string(REC->cmd), REC->cmd, REC->param, dwc3_gadget_generic_cmd_status_string(REC->status)\00", align 1
@event_dwc3_gadget_generic_cmd = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_generic_cmd, %union.anon.93 { ptr @__tracepoint_dwc3_gadget_generic_cmd }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_generic_cmd }, ptr @print_fmt_dwc3_log_generic_cmd, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dwc3_gadget_generic_cmd = internal global ptr @event_dwc3_gadget_generic_cmd, section "_ftrace_events", align 4
@trace_event_fields_dwc3_log_gadget_ep_cmd = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.91 { %struct.anon.92 { ptr @.str.83, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.91 { %struct.anon.92 { ptr @.str.99, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.91 { %struct.anon.92 { ptr @.str.100, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.91 { %struct.anon.92 { ptr @.str.101, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.71, %union.anon.91 { %struct.anon.92 { ptr @.str.102, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dwc3_log_gadget_ep_cmd = internal global %struct.trace_event_class { ptr @str__dwc3__trace_system_name, ptr @trace_event_raw_event_dwc3_log_gadget_ep_cmd, ptr @perf_trace_dwc3_log_gadget_ep_cmd, ptr @trace_event_reg, ptr @trace_event_fields_dwc3_log_gadget_ep_cmd, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dwc3_log_gadget_ep_cmd, i64 24), ptr getelementptr (i8, ptr @event_class_dwc3_log_gadget_ep_cmd, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dwc3_log_gadget_ep_cmd = internal global %struct.trace_event_functions { ptr @trace_raw_output_dwc3_log_gadget_ep_cmd, ptr null, ptr null, ptr null }, align 4
@print_fmt_dwc3_log_gadget_ep_cmd = internal global [204 x i8] c"\22%s: cmd '%s' [%x] params %08x %08x %08x --> status: %s\22, __get_str(name), dwc3_gadget_ep_cmd_string(REC->cmd), REC->cmd, REC->param0, REC->param1, REC->param2, dwc3_ep_cmd_status_string(REC->cmd_status)\00", align 1
@event_dwc3_gadget_ep_cmd = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_gadget_ep_cmd, %union.anon.93 { ptr @__tracepoint_dwc3_gadget_ep_cmd }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_gadget_ep_cmd }, ptr @print_fmt_dwc3_log_gadget_ep_cmd, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dwc3_gadget_ep_cmd = internal global ptr @event_dwc3_gadget_ep_cmd, section "_ftrace_events", align 4
@trace_event_fields_dwc3_log_trb = internal global [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.116, %union.anon.91 { %struct.anon.92 { ptr @.str.117, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.91 { %struct.anon.92 { ptr @.str.118, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.91 { %struct.anon.92 { ptr @.str.119, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.91 { %struct.anon.92 { ptr @.str.120, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.91 { %struct.anon.92 { ptr @.str.121, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.91 { %struct.anon.92 { ptr @.str.122, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.91 { %struct.anon.92 { ptr @.str.123, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.91 { %struct.anon.92 { ptr @.str.124, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dwc3_log_trb = internal global %struct.trace_event_class { ptr @str__dwc3__trace_system_name, ptr @trace_event_raw_event_dwc3_log_trb, ptr @perf_trace_dwc3_log_trb, ptr @trace_event_reg, ptr @trace_event_fields_dwc3_log_trb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dwc3_log_trb, i64 24), ptr getelementptr (i8, ptr @event_class_dwc3_log_trb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dwc3_log_trb = internal global %struct.trace_event_functions { ptr @trace_raw_output_dwc3_log_trb, ptr null, ptr null, ptr null }, align 4
@print_fmt_dwc3_log_trb = internal global [732 x i8] c"\22%s: trb %p (E%d:D%d) buf %08x%08x size %s%d ctrl %08x (%c%c%c%c:%c%c:%s)\22, __get_str(name), REC->trb, REC->enqueue, REC->dequeue, REC->bph, REC->bpl, ({char *s; int pcm = ((REC->size >> 24) & 3) + 1; switch (REC->type) { case 3: case 1: switch (pcm) { case 1: s = \221x \22; break; case 2: s = \222x \22; break; case 3: default: s = \223x \22; break; } break; default: s = \22\22; } s; }), ((REC->size) & (0x00ffffff)), REC->ctrl, REC->ctrl & ((((1UL))) << (0)) ? 'H' : 'h', REC->ctrl & ((((1UL))) << (1)) ? 'L' : 'l', REC->ctrl & ((((1UL))) << (2)) ? 'C' : 'c', REC->ctrl & ((((1UL))) << (3)) ? 'S' : 's', REC->ctrl & ((((1UL))) << (10)) ? 'S' : 's', REC->ctrl & ((((1UL))) << (11)) ? 'C' : 'c', dwc3_trb_type_string(((REC->ctrl) & (0x3f << 4)))\00", align 1
@event_dwc3_prepare_trb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_trb, %union.anon.93 { ptr @__tracepoint_dwc3_prepare_trb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_trb }, ptr @print_fmt_dwc3_log_trb, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dwc3_prepare_trb = internal global ptr @event_dwc3_prepare_trb, section "_ftrace_events", align 4
@event_dwc3_complete_trb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_trb, %union.anon.93 { ptr @__tracepoint_dwc3_complete_trb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_trb }, ptr @print_fmt_dwc3_log_trb, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dwc3_complete_trb = internal global ptr @event_dwc3_complete_trb, section "_ftrace_events", align 4
@trace_event_fields_dwc3_log_ep = internal global [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.8, %union.anon.91 { %struct.anon.92 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.91 { %struct.anon.92 { ptr @.str.138, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.91 { %struct.anon.92 { ptr @.str.139, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.91 { %struct.anon.92 { ptr @.str.140, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.91 { %struct.anon.92 { ptr @.str.141, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.91 { %struct.anon.92 { ptr @.str.142, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.68, %union.anon.91 { %struct.anon.92 { ptr @.str.143, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.144, %union.anon.91 { %struct.anon.92 { ptr @.str.145, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.144, %union.anon.91 { %struct.anon.92 { ptr @.str.146, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_dwc3_log_ep = internal global %struct.trace_event_class { ptr @str__dwc3__trace_system_name, ptr @trace_event_raw_event_dwc3_log_ep, ptr @perf_trace_dwc3_log_ep, ptr @trace_event_reg, ptr @trace_event_fields_dwc3_log_ep, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_dwc3_log_ep, i64 24), ptr getelementptr (i8, ptr @event_class_dwc3_log_ep, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_dwc3_log_ep = internal global %struct.trace_event_functions { ptr @trace_raw_output_dwc3_log_ep, ptr null, ptr null, ptr null }, align 4
@print_fmt_dwc3_log_ep = internal global [445 x i8] c"\22%s: mps %d/%d streams %d burst %d ring %d/%d flags %c:%c%c%c%c:%c\22, __get_str(name), REC->maxpacket, REC->maxpacket_limit, REC->max_streams, REC->maxburst, REC->trb_enqueue, REC->trb_dequeue, REC->flags & ((((1UL))) << (0)) ? 'E' : 'e', REC->flags & ((((1UL))) << (1)) ? 'S' : 's', REC->flags & ((((1UL))) << (2)) ? 'W' : 'w', REC->flags & ((((1UL))) << (3)) ? 'B' : 'b', REC->flags & ((((1UL))) << (5)) ? 'P' : 'p', REC->direction ? '<' : '>'\00", align 1
@event_dwc3_gadget_ep_enable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_ep, %union.anon.93 { ptr @__tracepoint_dwc3_gadget_ep_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_ep }, ptr @print_fmt_dwc3_log_ep, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dwc3_gadget_ep_enable = internal global ptr @event_dwc3_gadget_ep_enable, section "_ftrace_events", align 4
@event_dwc3_gadget_ep_disable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_dwc3_log_ep, %union.anon.93 { ptr @__tracepoint_dwc3_gadget_ep_disable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_dwc3_log_ep }, ptr @print_fmt_dwc3_log_ep, ptr null, %union.anon.94 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_dwc3_gadget_ep_disable = internal global ptr @event_dwc3_gadget_ep_disable, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"addr %p offset %04x value %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ep0state\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"event (%08x): %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Disconnect: [%s]\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Reset [%s]\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Connection Done [%s]\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Link Change [%s]\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"WakeUp [%s]\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Suspend [%s]\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Start-Of-Frame [%s]\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Erratic Error [%s]\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Command Complete [%s]\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Overflow [%s]\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"U0\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"U1\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"U2\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"U3\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"SS.Disabled\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"RX.Detect\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"SS.Inactive\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Polling\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Recovery\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"Hot Reset\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"Compliance\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"Loopback\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Resume\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"UNKNOWN link state\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"ep%d%s: \00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"Transfer Complete (%c%c%c)\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"Transfer In Progress [%d] (%c%c%c)\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"Transfer Not Ready [%d]%s\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c" (Active)\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c" (Not Active)\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c" [Data Phase]\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c" [Status Phase]\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"FIFO\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c" Stream %d Found\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c" Stream Not Found\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"Endpoint Command Complete\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"Unconnected\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"Setup Phase\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"Data Phase\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"Status Phase\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"__u8\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"bRequestType\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"bRequest\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"__u16\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"wValue\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"wIndex\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"wLength\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"struct dwc3_request *\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"actual\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"short_not_ok\00", align 1
@.str.75 = private unnamed_addr constant [13 x i8] c"no_interrupt\00", align 1
@.str.76 = private unnamed_addr constant [39 x i8] c"%s: req %p length %u/%u %s%s%s ==> %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.82 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.85 = private unnamed_addr constant [41 x i8] c"cmd '%s' [%x] param %08x --> status: %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"Set LMP\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"Set Periodic Parameters\00", align 1
@.str.88 = private unnamed_addr constant [43 x i8] c"Transmit Function Wake Device Notification\00", align 1
@.str.89 = private unnamed_addr constant [39 x i8] c"Set Scratchpad Buffer Array Address Lo\00", align 1
@.str.90 = private unnamed_addr constant [39 x i8] c"Set Scratchpad Buffer Array Address Hi\00", align 1
@.str.91 = private unnamed_addr constant [20 x i8] c"Selected FIFO Flush\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"All FIFO Flush\00", align 1
@.str.93 = private unnamed_addr constant [18 x i8] c"Set Endpoint NRDY\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"Set Endpoint Prime\00", align 1
@.str.95 = private unnamed_addr constant [26 x i8] c"Run SoC Bus Loopback Test\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"Timed Out\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"Successful\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"param0\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"param1\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"param2\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"cmd_status\00", align 1
@.str.103 = private unnamed_addr constant [56 x i8] c"%s: cmd '%s' [%x] params %08x %08x %08x --> status: %s\0A\00", align 1
@.str.104 = private unnamed_addr constant [24 x i8] c"Start New Configuration\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"End Transfer\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"Update Transfer\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"Start Transfer\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"Clear Stall\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"Set Stall\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"Get Endpoint State\00", align 1
@.str.111 = private unnamed_addr constant [31 x i8] c"Set Endpoint Transfer Resource\00", align 1
@.str.112 = private unnamed_addr constant [27 x i8] c"Set Endpoint Configuration\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"UNKNOWN command\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"No Resource\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"Bus Expiry\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"struct dwc3_trb *\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"trb\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"bpl\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"bph\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"enqueue\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"dequeue\00", align 1
@.str.125 = private unnamed_addr constant [74 x i8] c"%s: trb %p (E%d:D%d) buf %08x%08x size %s%d ctrl %08x (%c%c%c%c:%c%c:%s)\0A\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"1x \00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"2x \00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"3x \00", align 1
@.str.129 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"setup\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"status2\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"status3\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.135 = private unnamed_addr constant [11 x i8] c"isoc-first\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"isoc\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"maxpacket\00", align 1
@.str.139 = private unnamed_addr constant [16 x i8] c"maxpacket_limit\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"max_streams\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"maxburst\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.144 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"trb_enqueue\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"trb_dequeue\00", align 1
@.str.147 = private unnamed_addr constant [67 x i8] c"%s: mps %d/%d streams %d burst %d ring %d/%d flags %c:%c%c%c%c:%c\0A\00", align 1
@llvm.compiler.used = appending global [68 x ptr] [ptr @__event_dwc3_alloc_request, ptr @__event_dwc3_complete_trb, ptr @__event_dwc3_ctrl_req, ptr @__event_dwc3_ep_dequeue, ptr @__event_dwc3_ep_queue, ptr @__event_dwc3_event, ptr @__event_dwc3_free_request, ptr @__event_dwc3_gadget_ep_cmd, ptr @__event_dwc3_gadget_ep_disable, ptr @__event_dwc3_gadget_ep_enable, ptr @__event_dwc3_gadget_generic_cmd, ptr @__event_dwc3_gadget_giveback, ptr @__event_dwc3_prepare_trb, ptr @__event_dwc3_readl, ptr @__event_dwc3_writel, ptr @__tracepoint_dwc3_alloc_request, ptr @__tracepoint_dwc3_complete_trb, ptr @__tracepoint_dwc3_ctrl_req, ptr @__tracepoint_dwc3_ep_dequeue, ptr @__tracepoint_dwc3_ep_queue, ptr @__tracepoint_dwc3_event, ptr @__tracepoint_dwc3_free_request, ptr @__tracepoint_dwc3_gadget_ep_cmd, ptr @__tracepoint_dwc3_gadget_ep_disable, ptr @__tracepoint_dwc3_gadget_ep_enable, ptr @__tracepoint_dwc3_gadget_generic_cmd, ptr @__tracepoint_dwc3_gadget_giveback, ptr @__tracepoint_dwc3_prepare_trb, ptr @__tracepoint_dwc3_readl, ptr @__tracepoint_dwc3_writel, ptr @__tracepoint_ptr_dwc3_alloc_request, ptr @__tracepoint_ptr_dwc3_complete_trb, ptr @__tracepoint_ptr_dwc3_ctrl_req, ptr @__tracepoint_ptr_dwc3_ep_dequeue, ptr @__tracepoint_ptr_dwc3_ep_queue, ptr @__tracepoint_ptr_dwc3_event, ptr @__tracepoint_ptr_dwc3_free_request, ptr @__tracepoint_ptr_dwc3_gadget_ep_cmd, ptr @__tracepoint_ptr_dwc3_gadget_ep_disable, ptr @__tracepoint_ptr_dwc3_gadget_ep_enable, ptr @__tracepoint_ptr_dwc3_gadget_generic_cmd, ptr @__tracepoint_ptr_dwc3_gadget_giveback, ptr @__tracepoint_ptr_dwc3_prepare_trb, ptr @__tracepoint_ptr_dwc3_readl, ptr @__tracepoint_ptr_dwc3_writel, ptr @event_class_dwc3_log_ctrl, ptr @event_class_dwc3_log_ep, ptr @event_class_dwc3_log_event, ptr @event_class_dwc3_log_gadget_ep_cmd, ptr @event_class_dwc3_log_generic_cmd, ptr @event_class_dwc3_log_io, ptr @event_class_dwc3_log_request, ptr @event_class_dwc3_log_trb, ptr @event_dwc3_alloc_request, ptr @event_dwc3_complete_trb, ptr @event_dwc3_ctrl_req, ptr @event_dwc3_ep_dequeue, ptr @event_dwc3_ep_queue, ptr @event_dwc3_event, ptr @event_dwc3_free_request, ptr @event_dwc3_gadget_ep_cmd, ptr @event_dwc3_gadget_ep_disable, ptr @event_dwc3_gadget_ep_enable, ptr @event_dwc3_gadget_generic_cmd, ptr @event_dwc3_gadget_giveback, ptr @event_dwc3_prepare_trb, ptr @event_dwc3_readl, ptr @event_dwc3_writel], section "llvm.metadata"
@switch.table.trace_raw_output_dwc3_log_event.156 = private unnamed_addr constant [16 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.36, ptr @.str.34, ptr @.str.35], align 4
@switch.table.trace_raw_output_dwc3_log_event.157 = private unnamed_addr constant [4 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], align 4
@switch.table.trace_raw_output_dwc3_log_generic_cmd = private unnamed_addr constant [16 x ptr] [ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.21, ptr @.str.21, ptr @.str.21, ptr @.str.91, ptr @.str.92, ptr @.str.21, ptr @.str.93, ptr @.str.94, ptr @.str.21, ptr @.str.21, ptr @.str.95], align 4
@switch.table.trace_raw_output_dwc3_log_gadget_ep_cmd = private unnamed_addr constant [9 x ptr] [ptr @.str.112, ptr @.str.111, ptr @.str.110, ptr @.str.109, ptr @.str.108, ptr @.str.107, ptr @.str.106, ptr @.str.105, ptr @.str.104], align 4
@switch.table.trace_raw_output_dwc3_log_trb = private unnamed_addr constant [8 x ptr] [ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_readl(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_readl, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9
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
define dso_local i32 @__traceiter_dwc3_writel(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_writel, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_event(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_event, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, ptr noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_ctrl_req(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_ctrl_req, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_alloc_request(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_alloc_request, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_free_request(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_free_request, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_ep_queue(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_ep_queue, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_ep_dequeue(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_ep_dequeue, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_gadget_giveback(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_giveback, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_gadget_generic_cmd(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_generic_cmd, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #9
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_gadget_ep_cmd(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_ep_cmd, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) #9
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_prepare_trb(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_prepare_trb, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_complete_trb(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_complete_trb, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #9
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_gadget_ep_enable(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_ep_enable, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_dwc3_gadget_ep_disable(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dwc3_gadget_ep_disable, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #9
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dwc3_log_io(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %16, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #9
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dwc3_log_io(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #9
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
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #9
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #9
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %22, i32 0, i32 1
  store ptr %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #9
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dwc3_log_event(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %13, label %23, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 520) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %15, i32 0, i32 3
  store i32 32768020, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %15, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dwc3, ptr %2, i32 0, i32 58
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %15, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #9
  br label %23

23:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dwc3_log_event(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #7, !srcloc !12
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
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 524, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %41, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #9
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #9
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %21, i32 0, i32 3
  store i32 32768020, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %21, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dwc3, ptr %2, i32 0, i32 58
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %21, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %5, align 4
  %40 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 524, i32 noundef %39, ptr noundef %0, i64 noundef 1, ptr noundef %40, ptr noundef %13, ptr noundef null) #9
  br label %41

41:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dwc3_log_ctrl(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %12, label %32, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 520) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %14, i32 0, i32 6
  store i32 32768020, ptr %17, align 4
  %18 = load i8, ptr %1, align 1
  %19 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %14, i32 0, i32 1
  store i8 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %14, i32 0, i32 2
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %24 = load i16, ptr %23, align 1
  %25 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %14, i32 0, i32 3
  store i16 %24, ptr %25, align 2
  %26 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %27 = load i16, ptr %26, align 1
  %28 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %14, i32 0, i32 4
  store i16 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %30 = load i16, ptr %29, align 1
  %31 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %14, i32 0, i32 5
  store i16 %30, ptr %31, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #9
  br label %32

32:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dwc3_log_ctrl(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #7, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 524, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #9
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #9
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %20, i32 0, i32 6
  store i32 32768020, ptr %33, align 4
  %34 = load i8, ptr %1, align 1
  %35 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %20, i32 0, i32 1
  store i8 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %20, i32 0, i32 2
  store i8 %37, ptr %38, align 1
  %39 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 2
  %40 = load i16, ptr %39, align 1
  %41 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %20, i32 0, i32 3
  store i16 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 3
  %43 = load i16, ptr %42, align 1
  %44 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %20, i32 0, i32 4
  store i16 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.usb_ctrlrequest, ptr %1, i32 0, i32 4
  %46 = load i16, ptr %45, align 1
  %47 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %20, i32 0, i32 5
  store i16 %46, ptr %47, align 2
  %48 = load i32, ptr %4, align 4
  %49 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 524, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %12, ptr noundef null) #9
  br label %50

50:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dwc3_log_request(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %12, label %54, label %13

13:                                               ; preds = %11, %8, %2
  %14 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dwc3_ep, ptr %15, i32 0, i32 17
  %17 = tail call i32 @strlen(ptr noundef nonnull %16) #9
  %18 = add i32 %17, 41
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %18) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %54, label %21

21:                                               ; preds = %13
  %22 = shl i32 %17, 16
  %23 = add i32 %22, 65576
  %24 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %19, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr i8, ptr %19, i32 40
  %26 = load ptr, ptr %14, align 4
  %27 = getelementptr inbounds %struct.dwc3_ep, ptr %26, i32 0, i32 17
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr @.str.64, ptr %27
  %30 = call ptr @strcpy(ptr noundef %25, ptr noundef nonnull %29)
  %31 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %19, i32 0, i32 2
  store ptr %1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %19, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %19, i32 0, i32 4
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %19, i32 0, i32 5
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = lshr i32 %42, 18
  %44 = and i32 %43, 1
  %45 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %19, i32 0, i32 6
  store i32 %44, ptr %45, align 4
  %46 = load i32, ptr %41, align 4
  %47 = lshr i32 %46, 19
  %48 = and i32 %47, 1
  %49 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %19, i32 0, i32 7
  store i32 %48, ptr %49, align 4
  %50 = load i32, ptr %41, align 4
  %51 = lshr i32 %50, 17
  %52 = and i32 %51, 1
  %53 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %19, i32 0, i32 8
  store i32 %52, ptr %53, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #9
  br label %54

54:                                               ; preds = %21, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dwc3_log_request(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.dwc3_request, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dwc3_ep, ptr %6, i32 0, i32 17
  %8 = tail call i32 @strlen(ptr noundef nonnull %7) #9
  %9 = shl i32 %8, 16
  %10 = add i32 %9, 65576
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #7, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %74, label %25

25:                                               ; preds = %22, %2
  %26 = add i32 %8, 52
  %27 = and i32 %26, -8
  %28 = add i32 %27, -4
  %29 = call ptr @perf_trace_buf_alloc(i32 noundef %28, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %74, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %3, align 4
  %33 = call ptr @llvm.returnaddress(i32 0) #9
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %32, i32 0, i32 15
  store i32 %34, ptr %35, align 4
  %36 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %37 = ptrtoint ptr %36 to i32
  %38 = getelementptr [18 x i32], ptr %32, i32 0, i32 11
  store i32 %37, ptr %38, align 4
  %39 = call i32 @llvm.read_register.i32(metadata !0) #9
  %40 = getelementptr [18 x i32], ptr %32, i32 0, i32 13
  store i32 %39, ptr %40, align 4
  %41 = getelementptr [18 x i32], ptr %32, i32 0, i32 16
  store i32 19, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %29, i32 0, i32 1
  store i32 %10, ptr %42, align 4
  %43 = getelementptr i8, ptr %29, i32 40
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr inbounds %struct.dwc3_ep, ptr %44, i32 0, i32 17
  %46 = icmp eq ptr %45, null
  %47 = select i1 %46, ptr @.str.64, ptr %45
  %48 = call ptr @strcpy(ptr noundef %43, ptr noundef nonnull %47)
  %49 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %29, i32 0, i32 2
  store ptr %1, ptr %49, align 4
  %50 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %29, i32 0, i32 3
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %29, i32 0, i32 4
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %29, i32 0, i32 5
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = lshr i32 %60, 18
  %62 = and i32 %61, 1
  %63 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %29, i32 0, i32 6
  store i32 %62, ptr %63, align 4
  %64 = load i32, ptr %59, align 4
  %65 = lshr i32 %64, 19
  %66 = and i32 %65, 1
  %67 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %29, i32 0, i32 7
  store i32 %66, ptr %67, align 4
  %68 = load i32, ptr %59, align 4
  %69 = lshr i32 %68, 17
  %70 = and i32 %69, 1
  %71 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %29, i32 0, i32 8
  store i32 %70, ptr %71, align 4
  %72 = load i32, ptr %4, align 4
  %73 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %29, i32 noundef %28, i32 noundef %72, ptr noundef %0, i64 noundef 1, ptr noundef %73, ptr noundef %18, ptr noundef null) #9
  br label %74

74:                                               ; preds = %31, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dwc3_log_generic_cmd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #9
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dwc3_log_generic_cmd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #9
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
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #9
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #9
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #9
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dwc3_log_gadget_ep_cmd(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
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
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %15, label %40, label %16

16:                                               ; preds = %14, %11, %5
  %17 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 17
  %18 = tail call i32 @strlen(ptr noundef %17) #9
  %19 = add i32 %18, 33
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %19) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %16
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65568
  %25 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %20, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %20, i32 32
  %27 = icmp eq ptr %17, null
  %28 = select i1 %27, ptr @.str.64, ptr %17
  %29 = call ptr @strcpy(ptr noundef %26, ptr noundef %28)
  %30 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %20, i32 0, i32 2
  store i32 %2, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %3, i32 0, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %20, i32 0, i32 3
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %3, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %20, i32 0, i32 4
  store i32 %35, ptr %36, align 4
  %37 = load i32, ptr %3, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %20, i32 0, i32 5
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %20, i32 0, i32 6
  store i32 %4, ptr %39, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #9
  br label %40

40:                                               ; preds = %22, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dwc3_log_gadget_ep_cmd(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 17
  %9 = tail call i32 @strlen(ptr noundef %8) #9
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65568
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #7, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %60, label %26

26:                                               ; preds = %23, %5
  %27 = add i32 %9, 44
  %28 = and i32 %27, -8
  %29 = add i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %60, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #9
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #9
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %30, i32 0, i32 1
  store i32 %11, ptr %43, align 4
  %44 = getelementptr i8, ptr %30, i32 32
  %45 = icmp eq ptr %8, null
  %46 = select i1 %45, ptr @.str.64, ptr %8
  %47 = call ptr @strcpy(ptr noundef %44, ptr noundef %46)
  %48 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %30, i32 0, i32 2
  store i32 %2, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %3, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %30, i32 0, i32 3
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, ptr %3, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %30, i32 0, i32 4
  store i32 %53, ptr %54, align 4
  %55 = load i32, ptr %3, align 4
  %56 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %30, i32 0, i32 5
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %30, i32 0, i32 6
  store i32 %4, ptr %57, align 4
  %58 = load i32, ptr %7, align 4
  %59 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %58, ptr noundef %0, i64 noundef 1, ptr noundef %59, ptr noundef %19, ptr noundef null) #9
  br label %60

60:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dwc3_log_trb(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %13, label %55, label %14

14:                                               ; preds = %12, %9, %3
  %15 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 17
  %16 = tail call i32 @strlen(ptr noundef %15) #9
  %17 = add i32 %16, 45
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %17) #9
  %19 = icmp eq ptr %18, null
  br i1 %19, label %55, label %20

20:                                               ; preds = %14
  %21 = shl i32 %16, 16
  %22 = add i32 %21, 65580
  %23 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %18, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %18, i32 44
  %25 = icmp eq ptr %15, null
  %26 = select i1 %25, ptr @.str.64, ptr %15
  %27 = call ptr @strcpy(ptr noundef %24, ptr noundef %26)
  %28 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %18, i32 0, i32 2
  store ptr %2, ptr %28, align 4
  %29 = load i32, ptr %2, align 1
  %30 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %18, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.dwc3_trb, ptr %2, i32 0, i32 1
  %32 = load i32, ptr %31, align 1
  %33 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %18, i32 0, i32 4
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.dwc3_trb, ptr %2, i32 0, i32 2
  %35 = load i32, ptr %34, align 1
  %36 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %18, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.dwc3_trb, ptr %2, i32 0, i32 3
  %38 = load i32, ptr %37, align 1
  %39 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %18, i32 0, i32 6
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 9
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %41, i32 0, i32 3
  %43 = load i8, ptr %42, align 1
  %44 = and i8 %43, 3
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %18, i32 0, i32 7
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 10
  %48 = load i8, ptr %47, align 4
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %18, i32 0, i32 8
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 11
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %18, i32 0, i32 9
  store i32 %53, ptr %54, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #9
  br label %55

55:                                               ; preds = %20, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dwc3_log_trb(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 17
  %7 = tail call i32 @strlen(ptr noundef %6) #9
  %8 = shl i32 %7, 16
  %9 = add i32 %8, 65580
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #7, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %75, label %24

24:                                               ; preds = %21, %3
  %25 = add i32 %7, 56
  %26 = and i32 %25, -8
  %27 = add i32 %26, -4
  %28 = call ptr @perf_trace_buf_alloc(i32 noundef %27, ptr noundef nonnull %4, ptr noundef nonnull %5) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %75, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %4, align 4
  %32 = call ptr @llvm.returnaddress(i32 0) #9
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %31, i32 0, i32 15
  store i32 %33, ptr %34, align 4
  %35 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %31, i32 0, i32 11
  store i32 %36, ptr %37, align 4
  %38 = call i32 @llvm.read_register.i32(metadata !0) #9
  %39 = getelementptr [18 x i32], ptr %31, i32 0, i32 13
  store i32 %38, ptr %39, align 4
  %40 = getelementptr [18 x i32], ptr %31, i32 0, i32 16
  store i32 19, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %28, i32 0, i32 1
  store i32 %9, ptr %41, align 4
  %42 = getelementptr i8, ptr %28, i32 44
  %43 = icmp eq ptr %6, null
  %44 = select i1 %43, ptr @.str.64, ptr %6
  %45 = call ptr @strcpy(ptr noundef %42, ptr noundef %44)
  %46 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %28, i32 0, i32 2
  store ptr %2, ptr %46, align 4
  %47 = load i32, ptr %2, align 1
  %48 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %28, i32 0, i32 3
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dwc3_trb, ptr %2, i32 0, i32 1
  %50 = load i32, ptr %49, align 1
  %51 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %28, i32 0, i32 4
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dwc3_trb, ptr %2, i32 0, i32 2
  %53 = load i32, ptr %52, align 1
  %54 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %28, i32 0, i32 5
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.dwc3_trb, ptr %2, i32 0, i32 3
  %56 = load i32, ptr %55, align 1
  %57 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %28, i32 0, i32 6
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 9
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %59, i32 0, i32 3
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, 3
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %28, i32 0, i32 7
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 10
  %66 = load i8, ptr %65, align 4
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %28, i32 0, i32 8
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 11
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %28, i32 0, i32 9
  store i32 %71, ptr %72, align 4
  %73 = load i32, ptr %5, align 4
  %74 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %28, i32 noundef %27, i32 noundef %73, ptr noundef %0, i64 noundef 1, ptr noundef %74, ptr noundef %17, ptr noundef null) #9
  br label %75

75:                                               ; preds = %30, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_dwc3_log_ep(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #9
  br i1 %12, label %60, label %13

13:                                               ; preds = %11, %8, %2
  %14 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 17
  %15 = tail call i32 @strlen(ptr noundef %14) #9
  %16 = add i32 %15, 41
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %16) #9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %60, label %19

19:                                               ; preds = %13
  %20 = shl i32 %15, 16
  %21 = add i32 %20, 65574
  %22 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %17, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %17, i32 38
  %24 = icmp eq ptr %14, null
  %25 = select i1 %24, ptr @.str.64, ptr %14
  %26 = call ptr @strcpy(ptr noundef %23, ptr noundef %25)
  %27 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 7
  %28 = load i56, ptr %27, align 2
  %29 = trunc i56 %28 to i32
  %30 = and i32 %29, 65535
  %31 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %17, i32 0, i32 2
  store i32 %30, ptr %31, align 4
  %32 = load i56, ptr %27, align 2
  %33 = trunc i56 %32 to i32
  %34 = lshr i32 %33, 16
  %35 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %17, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  %36 = load i56, ptr %27, align 2
  %37 = lshr i56 %36, 32
  %38 = trunc i56 %37 to i32
  %39 = and i32 %38, 65535
  %40 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %17, i32 0, i32 4
  store i32 %39, ptr %40, align 4
  %41 = load i56, ptr %27, align 2
  %42 = lshr i56 %41, 50
  %43 = trunc i56 %42 to i32
  %44 = and i32 %43, 31
  %45 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %17, i32 0, i32 5
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 9
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %17, i32 0, i32 6
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 18
  %50 = load i8, ptr %49, align 4
  %51 = and i8 %50, 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %17, i32 0, i32 7
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 10
  %55 = load i8, ptr %54, align 4
  %56 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %17, i32 0, i32 8
  store i8 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 11
  %58 = load i8, ptr %57, align 1
  %59 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %17, i32 0, i32 9
  store i8 %58, ptr %59, align 1
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #9
  br label %60

60:                                               ; preds = %19, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_dwc3_log_ep(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 17
  %6 = tail call i32 @strlen(ptr noundef %5) #9
  %7 = shl i32 %6, 16
  %8 = add i32 %7, 65574
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #7, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %80, label %23

23:                                               ; preds = %20, %2
  %24 = add i32 %6, 52
  %25 = and i32 %24, -8
  %26 = add i32 %25, -4
  %27 = call ptr @perf_trace_buf_alloc(i32 noundef %26, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %28 = icmp eq ptr %27, null
  br i1 %28, label %80, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr %3, align 4
  %31 = call ptr @llvm.returnaddress(i32 0) #9
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %30, i32 0, i32 15
  store i32 %32, ptr %33, align 4
  %34 = call ptr @llvm.frameaddress.p0(i32 0) #9
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %30, i32 0, i32 11
  store i32 %35, ptr %36, align 4
  %37 = call i32 @llvm.read_register.i32(metadata !0) #9
  %38 = getelementptr [18 x i32], ptr %30, i32 0, i32 13
  store i32 %37, ptr %38, align 4
  %39 = getelementptr [18 x i32], ptr %30, i32 0, i32 16
  store i32 19, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %27, i32 0, i32 1
  store i32 %8, ptr %40, align 4
  %41 = getelementptr i8, ptr %27, i32 38
  %42 = icmp eq ptr %5, null
  %43 = select i1 %42, ptr @.str.64, ptr %5
  %44 = call ptr @strcpy(ptr noundef %41, ptr noundef %43)
  %45 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 7
  %46 = load i56, ptr %45, align 2
  %47 = trunc i56 %46 to i32
  %48 = and i32 %47, 65535
  %49 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %27, i32 0, i32 2
  store i32 %48, ptr %49, align 4
  %50 = load i56, ptr %45, align 2
  %51 = trunc i56 %50 to i32
  %52 = lshr i32 %51, 16
  %53 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %27, i32 0, i32 3
  store i32 %52, ptr %53, align 4
  %54 = load i56, ptr %45, align 2
  %55 = lshr i56 %54, 32
  %56 = trunc i56 %55 to i32
  %57 = and i32 %56, 65535
  %58 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %27, i32 0, i32 4
  store i32 %57, ptr %58, align 4
  %59 = load i56, ptr %45, align 2
  %60 = lshr i56 %59, 50
  %61 = trunc i56 %60 to i32
  %62 = and i32 %61, 31
  %63 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %27, i32 0, i32 5
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 9
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %27, i32 0, i32 6
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 18
  %68 = load i8, ptr %67, align 4
  %69 = and i8 %68, 1
  %70 = zext i8 %69 to i32
  %71 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %27, i32 0, i32 7
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 10
  %73 = load i8, ptr %72, align 4
  %74 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %27, i32 0, i32 8
  store i8 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.dwc3_ep, ptr %1, i32 0, i32 11
  %76 = load i8, ptr %75, align 1
  %77 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %27, i32 0, i32 9
  store i8 %76, ptr %77, align 1
  %78 = load i32, ptr %4, align 4
  %79 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %27, i32 noundef %26, i32 noundef %78, ptr noundef %0, i64 noundef 1, ptr noundef %79, ptr noundef %16, ptr noundef null) #9
  br label %80

80:                                               ; preds = %29, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dwc3_log_io(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_io, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %14, i32 noundef %13, i32 noundef %16) #9
  %17 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %18

18:                                               ; preds = %8, %3
  %19 = phi i32 [ %17, %8 ], [ %6, %3 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dwc3_log_event(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %160

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %5, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 65535
  %15 = getelementptr i8, ptr %5, i32 %14
  %16 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_event, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %11, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %66, label %20

20:                                               ; preds = %8
  %21 = lshr i32 %11, 16
  %22 = and i32 %21, 15
  %23 = lshr i32 %11, 8
  %24 = and i32 %23, 15
  switch i32 %24, label %65 [
    i32 0, label %25
    i32 1, label %29
    i32 2, label %33
    i32 3, label %37
    i32 4, label %41
    i32 6, label %45
    i32 7, label %49
    i32 9, label %53
    i32 10, label %57
    i32 11, label %61
  ]

25:                                               ; preds = %20
  %26 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.156, i32 0, i32 %22
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef 500, ptr noundef nonnull @.str.11, ptr noundef nonnull %27) #9
  br label %158

29:                                               ; preds = %20
  %30 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.156, i32 0, i32 %22
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef 500, ptr noundef nonnull @.str.12, ptr noundef nonnull %31) #9
  br label %158

33:                                               ; preds = %20
  %34 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.156, i32 0, i32 %22
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef 500, ptr noundef nonnull @.str.13, ptr noundef nonnull %35) #9
  br label %158

37:                                               ; preds = %20
  %38 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.156, i32 0, i32 %22
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef 500, ptr noundef nonnull @.str.14, ptr noundef nonnull %39) #9
  br label %158

41:                                               ; preds = %20
  %42 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.156, i32 0, i32 %22
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef 500, ptr noundef nonnull @.str.15, ptr noundef nonnull %43) #9
  br label %158

45:                                               ; preds = %20
  %46 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.156, i32 0, i32 %22
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef 500, ptr noundef nonnull @.str.16, ptr noundef nonnull %47) #9
  br label %158

49:                                               ; preds = %20
  %50 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.156, i32 0, i32 %22
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef 500, ptr noundef nonnull @.str.17, ptr noundef nonnull %51) #9
  br label %158

53:                                               ; preds = %20
  %54 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.156, i32 0, i32 %22
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef 500, ptr noundef nonnull @.str.18, ptr noundef nonnull %55) #9
  br label %158

57:                                               ; preds = %20
  %58 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.156, i32 0, i32 %22
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef 500, ptr noundef nonnull @.str.19, ptr noundef nonnull %59) #9
  br label %158

61:                                               ; preds = %20
  %62 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.156, i32 0, i32 %22
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %15, i32 noundef 500, ptr noundef nonnull @.str.20, ptr noundef nonnull %63) #9
  br label %158

65:                                               ; preds = %20
  store i64 22051046311022165, ptr %15, align 1
  br label %158

66:                                               ; preds = %8
  %67 = lshr i32 %11, 1
  %68 = and i32 %67, 31
  %69 = lshr i32 %68, 1
  %70 = and i32 %11, 2
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, ptr @.str.39, ptr @.str.38
  %73 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %15, i32 noundef 500, ptr noundef nonnull @.str.37, i32 noundef %69, ptr noundef nonnull %72) #9
  %74 = lshr i32 %11, 6
  %75 = and i32 %74, 15
  switch i32 %75, label %154 [
    i32 1, label %76
    i32 2, label %101
    i32 3, label %115
    i32 4, label %136
    i32 6, label %140
    i32 7, label %150
  ]

76:                                               ; preds = %66
  %77 = getelementptr i8, ptr %15, i32 %73
  %78 = sub i32 500, %73
  %79 = and i32 %11, 8192
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 115, i32 83
  %82 = and i32 %11, 16384
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 105, i32 73
  %85 = and i32 %11, 32768
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 108, i32 76
  %88 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %77, i32 noundef %78, ptr noundef nonnull @.str.40, i32 noundef %81, i32 noundef %84, i32 noundef %87) #9
  %89 = icmp ult i32 %68, 2
  br i1 %89, label %90, label %158

90:                                               ; preds = %76
  %91 = add i32 %88, %73
  %92 = getelementptr i8, ptr %15, i32 %91
  %93 = sub i32 500, %91
  %94 = icmp ult i32 %17, 4
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = getelementptr inbounds [4 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_event.157, i32 0, i32 %17
  %97 = load ptr, ptr %96, align 4
  br label %98

98:                                               ; preds = %95, %90
  %99 = phi ptr [ %97, %95 ], [ @.str.21, %90 ]
  %100 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %92, i32 noundef %93, ptr noundef nonnull @.str.41, ptr noundef nonnull %99) #9
  br label %158

101:                                              ; preds = %66
  %102 = getelementptr i8, ptr %15, i32 %73
  %103 = sub i32 500, %73
  %104 = lshr i32 %11, 16
  %105 = and i32 %11, 8192
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 115, i32 83
  %108 = and i32 %11, 16384
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, i32 105, i32 73
  %111 = and i32 %11, 32768
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, i32 109, i32 77
  %114 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %102, i32 noundef %103, ptr noundef nonnull @.str.42, i32 noundef %104, i32 noundef %107, i32 noundef %110, i32 noundef %113) #9
  br label %158

115:                                              ; preds = %66
  %116 = getelementptr i8, ptr %15, i32 %73
  %117 = sub i32 500, %73
  %118 = lshr i32 %11, 16
  %119 = and i32 %11, 32768
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, ptr @.str.45, ptr @.str.44
  %122 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %116, i32 noundef %117, ptr noundef nonnull @.str.43, i32 noundef %118, ptr noundef nonnull %121) #9
  %123 = add i32 %122, %73
  %124 = icmp ult i32 %68, 2
  br i1 %124, label %125, label %158

125:                                              ; preds = %115
  %126 = lshr i32 %11, 12
  %127 = and i32 %126, 3
  switch i32 %127, label %158 [
    i32 1, label %128
    i32 2, label %132
  ]

128:                                              ; preds = %125
  %129 = getelementptr i8, ptr %15, i32 %123
  %130 = sub i32 500, %123
  %131 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %129, i32 noundef %130, ptr noundef nonnull @.str.46) #9
  br label %158

132:                                              ; preds = %125
  %133 = getelementptr i8, ptr %15, i32 %123
  %134 = sub i32 500, %123
  %135 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %133, i32 noundef %134, ptr noundef nonnull @.str.47) #9
  br label %158

136:                                              ; preds = %66
  %137 = getelementptr i8, ptr %15, i32 %73
  %138 = sub i32 500, %73
  %139 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %137, i32 noundef %138, ptr noundef nonnull @.str.48) #9
  br label %158

140:                                              ; preds = %66
  %141 = and i32 %11, 61440
  %142 = icmp eq i32 %141, 4096
  %143 = getelementptr i8, ptr %15, i32 %73
  %144 = sub i32 500, %73
  br i1 %142, label %145, label %148

145:                                              ; preds = %140
  %146 = lshr i32 %11, 16
  %147 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %143, i32 noundef %144, ptr noundef nonnull @.str.49, i32 noundef %146) #9
  br label %158

148:                                              ; preds = %140
  %149 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %143, i32 noundef %144, ptr noundef nonnull @.str.50) #9
  br label %158

150:                                              ; preds = %66
  %151 = getelementptr i8, ptr %15, i32 %73
  %152 = sub i32 500, %73
  %153 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %151, i32 noundef %152, ptr noundef nonnull @.str.51) #9
  br label %158

154:                                              ; preds = %66
  %155 = getelementptr i8, ptr %15, i32 %73
  %156 = sub i32 500, %73
  %157 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %155, i32 noundef %156, ptr noundef nonnull @.str.21) #9
  br label %158

158:                                              ; preds = %154, %150, %148, %145, %136, %132, %128, %125, %115, %101, %98, %76, %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %11, ptr noundef %15) #9
  %159 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %160

160:                                              ; preds = %158, %3
  %161 = phi i32 [ %159, %158 ], [ %6, %3 ]
  ret i32 %161
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dwc3_log_ctrl(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %5, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %5, i32 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %5, i32 0, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %5, i32 0, i32 3
  %19 = load i16, ptr %18, align 2
  %20 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %5, i32 0, i32 4
  %21 = load i16, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ctrl, ptr %5, i32 0, i32 5
  %23 = load i16, ptr %22, align 2
  %24 = tail call ptr @usb_decode_ctrl(ptr noundef %13, i32 noundef 500, i8 noundef zeroext %15, i8 noundef zeroext %17, i16 noundef zeroext %19, i16 noundef zeroext %21, i16 noundef zeroext %23) #9
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.63, ptr noundef %24) #9
  %25 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %26

26:                                               ; preds = %8, %3
  %27 = phi i32 [ %25, %8 ], [ %6, %3 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_decode_ctrl(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dwc3_log_request(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %35

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr @.str.78, ptr @.str.77
  %24 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %5, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr @.str.80, ptr @.str.79
  %28 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %5, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr @.str.82, ptr @.str.81
  %32 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_request, ptr %5, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.76, ptr noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef nonnull %23, ptr noundef nonnull %27, ptr noundef nonnull %31, i32 noundef %33) #9
  %34 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %35

35:                                               ; preds = %8, %3
  %36 = phi i32 [ %34, %8 ], [ %6, %3 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dwc3_log_generic_cmd(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = trunc i32 %11 to i8
  %13 = add i8 %12, -1
  %14 = icmp ult i8 %13, 16
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = sext i8 %13 to i32
  %17 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_generic_cmd, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %15, %8
  %20 = phi ptr [ %18, %15 ], [ @.str.21, %8 ]
  %21 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %5, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_generic_cmd, ptr %5, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  switch i32 %24, label %27 [
    i32 -110, label %28
    i32 0, label %25
    i32 1, label %26
  ]

25:                                               ; preds = %19
  br label %28

26:                                               ; preds = %19
  br label %28

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %26, %25, %19
  %29 = phi ptr [ @.str.21, %27 ], [ @.str.98, %26 ], [ @.str.97, %25 ], [ @.str.96, %19 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.85, ptr noundef nonnull %20, i32 noundef %11, i32 noundef %22, ptr noundef nonnull %29) #9
  %30 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %31

31:                                               ; preds = %28, %3
  %32 = phi i32 [ %30, %28 ], [ %6, %3 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dwc3_log_gadget_ep_cmd(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %40

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = trunc i32 %15 to i8
  %17 = add i8 %16, -1
  %18 = icmp ult i8 %17, 9
  br i1 %18, label %19, label %23

19:                                               ; preds = %8
  %20 = sext i8 %17 to i32
  %21 = getelementptr inbounds [9 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_gadget_ep_cmd, i32 0, i32 %20
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %19, %8
  %24 = phi ptr [ %22, %19 ], [ @.str.113, %8 ]
  %25 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %5, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %5, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %5, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_gadget_ep_cmd, ptr %5, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  switch i32 %32, label %36 [
    i32 -110, label %37
    i32 0, label %33
    i32 1, label %34
    i32 2, label %35
  ]

33:                                               ; preds = %23
  br label %37

34:                                               ; preds = %23
  br label %37

35:                                               ; preds = %23
  br label %37

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %35, %34, %33, %23
  %38 = phi ptr [ @.str.21, %36 ], [ @.str.115, %35 ], [ @.str.114, %34 ], [ @.str.97, %33 ], [ @.str.96, %23 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.103, ptr noundef %13, ptr noundef nonnull %24, i32 noundef %15, i32 noundef %26, i32 noundef %28, i32 noundef %30, ptr noundef nonnull %38) #9
  %39 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %40

40:                                               ; preds = %37, %3
  %41 = phi i32 [ %39, %37 ], [ %6, %3 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dwc3_log_trb(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %71

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %6, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %6, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %6, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %6, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %6, i32 0, i32 9
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %6, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %6, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %6, i32 0, i32 5
  %25 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %6, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  switch i32 %26, label %27 [
    i32 3, label %29
    i32 1, label %29
  ]

27:                                               ; preds = %9
  %28 = load i32, ptr %24, align 4
  br label %37

29:                                               ; preds = %9, %9
  %30 = load i32, ptr %24, align 4
  %31 = lshr i32 %30, 24
  %32 = and i32 %31, 3
  %33 = icmp eq i32 %32, 1
  %34 = select i1 %33, ptr @.str.127, ptr @.str.128
  %35 = icmp eq i32 %32, 0
  %36 = select i1 %35, ptr @.str.126, ptr %34
  br label %37

37:                                               ; preds = %29, %27
  %38 = phi i32 [ %30, %29 ], [ %28, %27 ]
  %39 = phi ptr [ %36, %29 ], [ @.str.129, %27 ]
  %40 = and i32 %38, 16777215
  %41 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_trb, ptr %6, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 104, i32 72
  %46 = and i32 %42, 2
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 108, i32 76
  %49 = and i32 %42, 4
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 99, i32 67
  %52 = and i32 %42, 8
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 115, i32 83
  %55 = and i32 %42, 1024
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 115, i32 83
  %58 = and i32 %42, 2048
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 99, i32 67
  %61 = and i32 %42, 1008
  %62 = add nsw i32 %61, -16
  %63 = icmp ult i32 %62, 128
  br i1 %63, label %64, label %68

64:                                               ; preds = %37
  %65 = lshr exact i32 %62, 4
  %66 = getelementptr inbounds [8 x ptr], ptr @switch.table.trace_raw_output_dwc3_log_trb, i32 0, i32 %65
  %67 = load ptr, ptr %66, align 4
  br label %68

68:                                               ; preds = %64, %37
  %69 = phi ptr [ %67, %64 ], [ @.str.21, %37 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.125, ptr noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, ptr noundef nonnull %39, i32 noundef %40, i32 noundef %42, i32 noundef %45, i32 noundef %48, i32 noundef %51, i32 noundef %54, i32 noundef %57, i32 noundef %60, ptr noundef nonnull %69) #9
  %70 = tail call i32 @trace_handle_return(ptr noundef %4) #9
  br label %71

71:                                               ; preds = %68, %3
  %72 = phi i32 [ %70, %68 ], [ %7, %3 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_dwc3_log_ep(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #9
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %49

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %5, i32 0, i32 8
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %5, i32 0, i32 9
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %5, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 101, i32 69
  %33 = and i32 %29, 2
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 115, i32 83
  %36 = and i32 %29, 4
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 119, i32 87
  %39 = and i32 %29, 8
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 98, i32 66
  %42 = and i32 %29, 32
  %43 = xor i32 %42, 112
  %44 = getelementptr inbounds %struct.trace_event_raw_dwc3_log_ep, ptr %5, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 62, i32 60
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.147, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %32, i32 noundef %35, i32 noundef %38, i32 noundef %41, i32 noundef %43, i32 noundef %47) #9
  %48 = tail call i32 @trace_handle_return(ptr noundef %9) #9
  br label %49

49:                                               ; preds = %8, %3
  %50 = phi i32 [ %48, %8 ], [ %6, %3 ]
  ret i32 %50
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

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!12 = !{i64 494241}
