; ModuleID = '/llk/IR/drivers/usb/host/xhci-trace.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-trace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_xhci_dbg_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_xhci_dbg_quirks\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_xhci_dbg_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_xhci_dbg_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_xhci_dbg_quirks\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_xhci_dbg_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_xhci_dbg_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_xhci_dbg_quirks\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_xhci_dbg_quirks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.93 }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.95, %struct.trace_event, ptr, ptr, %union.anon.96, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.95 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.96 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_xhci_log_msg = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.va_format = type { ptr, ptr }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.trace_event_raw_xhci_log_ctx = type { %struct.trace_entry, i32, i32, i32, ptr, i32, i32, i32, [0 x i8] }
%struct.xhci_container_ctx = type { i32, i32, ptr, i32 }
%struct.trace_event_raw_xhci_log_trb = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.xhci_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.trace_event_raw_xhci_log_free_virt_dev = type { %struct.trace_entry, ptr, i64, i64, i8, i8, i16, [0 x i8] }
%struct.xhci_virt_device = type { i32, ptr, ptr, ptr, [31 x %struct.xhci_virt_ep], i8, i8, ptr, ptr, i32, i16, ptr }
%struct.xhci_virt_ep = type { ptr, i32, ptr, ptr, ptr, i32, %struct.list_head, %struct.timer_list, ptr, ptr, ptr, i8, %struct.xhci_bw_info, %struct.list_head, i32, i8 }
%struct.xhci_bw_info = type { i32, i32, i32, i32, i32, i32 }
%struct.trace_event_raw_xhci_log_virt_dev = type { %struct.trace_entry, ptr, i64, i64, i32, i32, i32, i8, i8, i32, [0 x i8] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.trace_event_raw_xhci_log_urb = type { %struct.trace_entry, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.trace_event_raw_xhci_log_ep_ctx = type { %struct.trace_entry, i32, i32, i64, i32, i32, [0 x i8] }
%struct.xhci_ep_ctx = type { i32, i32, i64, i32, [3 x i32] }
%struct.trace_event_raw_xhci_log_slot_ctx = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.xhci_slot_ctx = type { i32, i32, i32, i32, [4 x i32] }
%struct.trace_event_raw_xhci_log_ctrl_ctx = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.xhci_input_control_ctx = type { i32, i32, [6 x i32] }
%struct.trace_event_raw_xhci_log_ring = type { %struct.trace_entry, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.xhci_segment = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.trace_event_raw_xhci_log_portsc = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_xhci_log_doorbell = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_xhci_dbc_log_request = type { %struct.trace_entry, ptr, i8, i32, i32, i32, [0 x i8] }
%struct.dbc_request = type { ptr, i32, i32, ptr, %struct.list_head, i32, i32, ptr, %struct.list_head, i32, ptr, i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_xhci_dbg_address = internal constant [17 x i8] c"xhci_dbg_address\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbg_address = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbg_address }, align 4
@__tracepoint_xhci_dbg_address = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_dbg_address, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_dbg_address, ptr null, ptr @__traceiter_xhci_dbg_address, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbg_address = internal constant ptr @__tracepoint_xhci_dbg_address, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbg_context_change = internal constant [24 x i8] c"xhci_dbg_context_change\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbg_context_change = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbg_context_change }, align 4
@__tracepoint_xhci_dbg_context_change = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_dbg_context_change, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_dbg_context_change, ptr null, ptr @__traceiter_xhci_dbg_context_change, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbg_context_change = internal constant ptr @__tracepoint_xhci_dbg_context_change, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbg_quirks = internal constant [16 x i8] c"xhci_dbg_quirks\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbg_quirks = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbg_quirks }, align 4
@__tracepoint_xhci_dbg_quirks = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_dbg_quirks, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_dbg_quirks, ptr null, ptr @__traceiter_xhci_dbg_quirks, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbg_quirks = internal constant ptr @__tracepoint_xhci_dbg_quirks, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbg_reset_ep = internal constant [18 x i8] c"xhci_dbg_reset_ep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbg_reset_ep = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbg_reset_ep }, align 4
@__tracepoint_xhci_dbg_reset_ep = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_dbg_reset_ep, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_dbg_reset_ep, ptr null, ptr @__traceiter_xhci_dbg_reset_ep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbg_reset_ep = internal constant ptr @__tracepoint_xhci_dbg_reset_ep, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbg_cancel_urb = internal constant [20 x i8] c"xhci_dbg_cancel_urb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbg_cancel_urb = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbg_cancel_urb }, align 4
@__tracepoint_xhci_dbg_cancel_urb = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_dbg_cancel_urb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_dbg_cancel_urb, ptr null, ptr @__traceiter_xhci_dbg_cancel_urb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbg_cancel_urb = internal constant ptr @__tracepoint_xhci_dbg_cancel_urb, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbg_init = internal constant [14 x i8] c"xhci_dbg_init\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbg_init = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbg_init }, align 4
@__tracepoint_xhci_dbg_init = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_dbg_init, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_dbg_init, ptr null, ptr @__traceiter_xhci_dbg_init, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbg_init = internal constant ptr @__tracepoint_xhci_dbg_init, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbg_ring_expansion = internal constant [24 x i8] c"xhci_dbg_ring_expansion\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbg_ring_expansion = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbg_ring_expansion }, align 4
@__tracepoint_xhci_dbg_ring_expansion = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_dbg_ring_expansion, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_dbg_ring_expansion, ptr null, ptr @__traceiter_xhci_dbg_ring_expansion, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbg_ring_expansion = internal constant ptr @__tracepoint_xhci_dbg_ring_expansion, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_address_ctx = internal constant [17 x i8] c"xhci_address_ctx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_address_ctx = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_address_ctx }, align 4
@__tracepoint_xhci_address_ctx = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_address_ctx, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_address_ctx, ptr null, ptr @__traceiter_xhci_address_ctx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_address_ctx = internal constant ptr @__tracepoint_xhci_address_ctx, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_event = internal constant [18 x i8] c"xhci_handle_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_event = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_event }, align 4
@__tracepoint_xhci_handle_event = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_handle_event, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_handle_event, ptr null, ptr @__traceiter_xhci_handle_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_event = internal constant ptr @__tracepoint_xhci_handle_event, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_command = internal constant [20 x i8] c"xhci_handle_command\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_command = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_command }, align 4
@__tracepoint_xhci_handle_command = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_handle_command, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_handle_command, ptr null, ptr @__traceiter_xhci_handle_command, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_command = internal constant ptr @__tracepoint_xhci_handle_command, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_transfer = internal constant [21 x i8] c"xhci_handle_transfer\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_transfer = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_transfer }, align 4
@__tracepoint_xhci_handle_transfer = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_handle_transfer, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_handle_transfer, ptr null, ptr @__traceiter_xhci_handle_transfer, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_transfer = internal constant ptr @__tracepoint_xhci_handle_transfer, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_queue_trb = internal constant [15 x i8] c"xhci_queue_trb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_queue_trb = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_queue_trb }, align 4
@__tracepoint_xhci_queue_trb = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_queue_trb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_queue_trb, ptr null, ptr @__traceiter_xhci_queue_trb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_queue_trb = internal constant ptr @__tracepoint_xhci_queue_trb, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbc_handle_event = internal constant [22 x i8] c"xhci_dbc_handle_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbc_handle_event = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbc_handle_event }, align 4
@__tracepoint_xhci_dbc_handle_event = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_dbc_handle_event, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_dbc_handle_event, ptr null, ptr @__traceiter_xhci_dbc_handle_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbc_handle_event = internal constant ptr @__tracepoint_xhci_dbc_handle_event, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbc_handle_transfer = internal constant [25 x i8] c"xhci_dbc_handle_transfer\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbc_handle_transfer = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbc_handle_transfer }, align 4
@__tracepoint_xhci_dbc_handle_transfer = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_dbc_handle_transfer, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_dbc_handle_transfer, ptr null, ptr @__traceiter_xhci_dbc_handle_transfer, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbc_handle_transfer = internal constant ptr @__tracepoint_xhci_dbc_handle_transfer, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbc_gadget_ep_queue = internal constant [25 x i8] c"xhci_dbc_gadget_ep_queue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbc_gadget_ep_queue = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbc_gadget_ep_queue }, align 4
@__tracepoint_xhci_dbc_gadget_ep_queue = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_dbc_gadget_ep_queue, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_dbc_gadget_ep_queue, ptr null, ptr @__traceiter_xhci_dbc_gadget_ep_queue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbc_gadget_ep_queue = internal constant ptr @__tracepoint_xhci_dbc_gadget_ep_queue, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_free_virt_device = internal constant [22 x i8] c"xhci_free_virt_device\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_free_virt_device = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_free_virt_device }, align 4
@__tracepoint_xhci_free_virt_device = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_free_virt_device, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_free_virt_device, ptr null, ptr @__traceiter_xhci_free_virt_device, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_free_virt_device = internal constant ptr @__tracepoint_xhci_free_virt_device, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_alloc_virt_device = internal constant [23 x i8] c"xhci_alloc_virt_device\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_alloc_virt_device = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_alloc_virt_device }, align 4
@__tracepoint_xhci_alloc_virt_device = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_alloc_virt_device, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_alloc_virt_device, ptr null, ptr @__traceiter_xhci_alloc_virt_device, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_alloc_virt_device = internal constant ptr @__tracepoint_xhci_alloc_virt_device, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_setup_device = internal constant [18 x i8] c"xhci_setup_device\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_setup_device = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_setup_device }, align 4
@__tracepoint_xhci_setup_device = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_setup_device, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_setup_device, ptr null, ptr @__traceiter_xhci_setup_device, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_setup_device = internal constant ptr @__tracepoint_xhci_setup_device, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_setup_addressable_virt_device = internal constant [35 x i8] c"xhci_setup_addressable_virt_device\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_setup_addressable_virt_device = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_setup_addressable_virt_device }, align 4
@__tracepoint_xhci_setup_addressable_virt_device = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_setup_addressable_virt_device, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_setup_addressable_virt_device, ptr null, ptr @__traceiter_xhci_setup_addressable_virt_device, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_setup_addressable_virt_device = internal constant ptr @__tracepoint_xhci_setup_addressable_virt_device, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_stop_device = internal constant [17 x i8] c"xhci_stop_device\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_stop_device = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_stop_device }, align 4
@__tracepoint_xhci_stop_device = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_stop_device, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_stop_device, ptr null, ptr @__traceiter_xhci_stop_device, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_stop_device = internal constant ptr @__tracepoint_xhci_stop_device, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_urb_enqueue = internal constant [17 x i8] c"xhci_urb_enqueue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_urb_enqueue = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_urb_enqueue }, align 4
@__tracepoint_xhci_urb_enqueue = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_urb_enqueue, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_urb_enqueue, ptr null, ptr @__traceiter_xhci_urb_enqueue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_urb_enqueue = internal constant ptr @__tracepoint_xhci_urb_enqueue, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_urb_giveback = internal constant [18 x i8] c"xhci_urb_giveback\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_urb_giveback = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_urb_giveback }, align 4
@__tracepoint_xhci_urb_giveback = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_urb_giveback, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_urb_giveback, ptr null, ptr @__traceiter_xhci_urb_giveback, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_urb_giveback = internal constant ptr @__tracepoint_xhci_urb_giveback, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_urb_dequeue = internal constant [17 x i8] c"xhci_urb_dequeue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_urb_dequeue = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_urb_dequeue }, align 4
@__tracepoint_xhci_urb_dequeue = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_urb_dequeue, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_urb_dequeue, ptr null, ptr @__traceiter_xhci_urb_dequeue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_urb_dequeue = internal constant ptr @__tracepoint_xhci_urb_dequeue, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_cmd_stop_ep = internal constant [24 x i8] c"xhci_handle_cmd_stop_ep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_cmd_stop_ep = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_cmd_stop_ep }, align 4
@__tracepoint_xhci_handle_cmd_stop_ep = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_handle_cmd_stop_ep, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_handle_cmd_stop_ep, ptr null, ptr @__traceiter_xhci_handle_cmd_stop_ep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_cmd_stop_ep = internal constant ptr @__tracepoint_xhci_handle_cmd_stop_ep, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_cmd_set_deq_ep = internal constant [27 x i8] c"xhci_handle_cmd_set_deq_ep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_cmd_set_deq_ep = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_cmd_set_deq_ep }, align 4
@__tracepoint_xhci_handle_cmd_set_deq_ep = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_handle_cmd_set_deq_ep, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_handle_cmd_set_deq_ep, ptr null, ptr @__traceiter_xhci_handle_cmd_set_deq_ep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_cmd_set_deq_ep = internal constant ptr @__tracepoint_xhci_handle_cmd_set_deq_ep, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_cmd_reset_ep = internal constant [25 x i8] c"xhci_handle_cmd_reset_ep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_cmd_reset_ep = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_cmd_reset_ep }, align 4
@__tracepoint_xhci_handle_cmd_reset_ep = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_handle_cmd_reset_ep, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_handle_cmd_reset_ep, ptr null, ptr @__traceiter_xhci_handle_cmd_reset_ep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_cmd_reset_ep = internal constant ptr @__tracepoint_xhci_handle_cmd_reset_ep, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_cmd_config_ep = internal constant [26 x i8] c"xhci_handle_cmd_config_ep\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_cmd_config_ep = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_cmd_config_ep }, align 4
@__tracepoint_xhci_handle_cmd_config_ep = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_handle_cmd_config_ep, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_handle_cmd_config_ep, ptr null, ptr @__traceiter_xhci_handle_cmd_config_ep, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_cmd_config_ep = internal constant ptr @__tracepoint_xhci_handle_cmd_config_ep, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_add_endpoint = internal constant [18 x i8] c"xhci_add_endpoint\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_add_endpoint = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_add_endpoint }, align 4
@__tracepoint_xhci_add_endpoint = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_add_endpoint, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_add_endpoint, ptr null, ptr @__traceiter_xhci_add_endpoint, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_add_endpoint = internal constant ptr @__tracepoint_xhci_add_endpoint, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_alloc_dev = internal constant [15 x i8] c"xhci_alloc_dev\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_alloc_dev = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_alloc_dev }, align 4
@__tracepoint_xhci_alloc_dev = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_alloc_dev, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_alloc_dev, ptr null, ptr @__traceiter_xhci_alloc_dev, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_alloc_dev = internal constant ptr @__tracepoint_xhci_alloc_dev, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_free_dev = internal constant [14 x i8] c"xhci_free_dev\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_free_dev = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_free_dev }, align 4
@__tracepoint_xhci_free_dev = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_free_dev, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_free_dev, ptr null, ptr @__traceiter_xhci_free_dev, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_free_dev = internal constant ptr @__tracepoint_xhci_free_dev, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_cmd_disable_slot = internal constant [29 x i8] c"xhci_handle_cmd_disable_slot\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_cmd_disable_slot = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_cmd_disable_slot }, align 4
@__tracepoint_xhci_handle_cmd_disable_slot = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_handle_cmd_disable_slot, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_handle_cmd_disable_slot, ptr null, ptr @__traceiter_xhci_handle_cmd_disable_slot, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_cmd_disable_slot = internal constant ptr @__tracepoint_xhci_handle_cmd_disable_slot, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_discover_or_reset_device = internal constant [30 x i8] c"xhci_discover_or_reset_device\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_discover_or_reset_device = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_discover_or_reset_device }, align 4
@__tracepoint_xhci_discover_or_reset_device = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_discover_or_reset_device, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_discover_or_reset_device, ptr null, ptr @__traceiter_xhci_discover_or_reset_device, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_discover_or_reset_device = internal constant ptr @__tracepoint_xhci_discover_or_reset_device, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_setup_device_slot = internal constant [23 x i8] c"xhci_setup_device_slot\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_setup_device_slot = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_setup_device_slot }, align 4
@__tracepoint_xhci_setup_device_slot = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_setup_device_slot, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_setup_device_slot, ptr null, ptr @__traceiter_xhci_setup_device_slot, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_setup_device_slot = internal constant ptr @__tracepoint_xhci_setup_device_slot, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_cmd_addr_dev = internal constant [25 x i8] c"xhci_handle_cmd_addr_dev\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_cmd_addr_dev = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_cmd_addr_dev }, align 4
@__tracepoint_xhci_handle_cmd_addr_dev = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_handle_cmd_addr_dev, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_handle_cmd_addr_dev, ptr null, ptr @__traceiter_xhci_handle_cmd_addr_dev, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_cmd_addr_dev = internal constant ptr @__tracepoint_xhci_handle_cmd_addr_dev, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_cmd_reset_dev = internal constant [26 x i8] c"xhci_handle_cmd_reset_dev\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_cmd_reset_dev = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_cmd_reset_dev }, align 4
@__tracepoint_xhci_handle_cmd_reset_dev = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_handle_cmd_reset_dev, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_handle_cmd_reset_dev, ptr null, ptr @__traceiter_xhci_handle_cmd_reset_dev, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_cmd_reset_dev = internal constant ptr @__tracepoint_xhci_handle_cmd_reset_dev, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_cmd_set_deq = internal constant [24 x i8] c"xhci_handle_cmd_set_deq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_cmd_set_deq = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_cmd_set_deq }, align 4
@__tracepoint_xhci_handle_cmd_set_deq = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_handle_cmd_set_deq, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_handle_cmd_set_deq, ptr null, ptr @__traceiter_xhci_handle_cmd_set_deq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_cmd_set_deq = internal constant ptr @__tracepoint_xhci_handle_cmd_set_deq, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_configure_endpoint = internal constant [24 x i8] c"xhci_configure_endpoint\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_configure_endpoint = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_configure_endpoint }, align 4
@__tracepoint_xhci_configure_endpoint = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_configure_endpoint, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_configure_endpoint, ptr null, ptr @__traceiter_xhci_configure_endpoint, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_configure_endpoint = internal constant ptr @__tracepoint_xhci_configure_endpoint, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_address_ctrl_ctx = internal constant [22 x i8] c"xhci_address_ctrl_ctx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_address_ctrl_ctx = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_address_ctrl_ctx }, align 4
@__tracepoint_xhci_address_ctrl_ctx = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_address_ctrl_ctx, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_address_ctrl_ctx, ptr null, ptr @__traceiter_xhci_address_ctrl_ctx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_address_ctrl_ctx = internal constant ptr @__tracepoint_xhci_address_ctrl_ctx, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_configure_endpoint_ctrl_ctx = internal constant [33 x i8] c"xhci_configure_endpoint_ctrl_ctx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_configure_endpoint_ctrl_ctx = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_configure_endpoint_ctrl_ctx }, align 4
@__tracepoint_xhci_configure_endpoint_ctrl_ctx = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_configure_endpoint_ctrl_ctx, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_configure_endpoint_ctrl_ctx, ptr null, ptr @__traceiter_xhci_configure_endpoint_ctrl_ctx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_configure_endpoint_ctrl_ctx = internal constant ptr @__tracepoint_xhci_configure_endpoint_ctrl_ctx, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_ring_alloc = internal constant [16 x i8] c"xhci_ring_alloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_ring_alloc = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_ring_alloc }, align 4
@__tracepoint_xhci_ring_alloc = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_ring_alloc, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_ring_alloc, ptr null, ptr @__traceiter_xhci_ring_alloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_ring_alloc = internal constant ptr @__tracepoint_xhci_ring_alloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_ring_free = internal constant [15 x i8] c"xhci_ring_free\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_ring_free = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_ring_free }, align 4
@__tracepoint_xhci_ring_free = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_ring_free, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_ring_free, ptr null, ptr @__traceiter_xhci_ring_free, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_ring_free = internal constant ptr @__tracepoint_xhci_ring_free, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_ring_expansion = internal constant [20 x i8] c"xhci_ring_expansion\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_ring_expansion = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_ring_expansion }, align 4
@__tracepoint_xhci_ring_expansion = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_ring_expansion, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_ring_expansion, ptr null, ptr @__traceiter_xhci_ring_expansion, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_ring_expansion = internal constant ptr @__tracepoint_xhci_ring_expansion, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_inc_enq = internal constant [13 x i8] c"xhci_inc_enq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_inc_enq = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_inc_enq }, align 4
@__tracepoint_xhci_inc_enq = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_inc_enq, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_inc_enq, ptr null, ptr @__traceiter_xhci_inc_enq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_inc_enq = internal constant ptr @__tracepoint_xhci_inc_enq, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_inc_deq = internal constant [13 x i8] c"xhci_inc_deq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_inc_deq = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_inc_deq }, align 4
@__tracepoint_xhci_inc_deq = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_inc_deq, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_inc_deq, ptr null, ptr @__traceiter_xhci_inc_deq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_inc_deq = internal constant ptr @__tracepoint_xhci_inc_deq, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_handle_port_status = internal constant [24 x i8] c"xhci_handle_port_status\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_handle_port_status = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_handle_port_status }, align 4
@__tracepoint_xhci_handle_port_status = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_handle_port_status, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_handle_port_status, ptr null, ptr @__traceiter_xhci_handle_port_status, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_handle_port_status = internal constant ptr @__tracepoint_xhci_handle_port_status, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_get_port_status = internal constant [21 x i8] c"xhci_get_port_status\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_get_port_status = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_get_port_status }, align 4
@__tracepoint_xhci_get_port_status = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_get_port_status, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_get_port_status, ptr null, ptr @__traceiter_xhci_get_port_status, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_get_port_status = internal constant ptr @__tracepoint_xhci_get_port_status, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_hub_status_data = internal constant [21 x i8] c"xhci_hub_status_data\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_hub_status_data = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_hub_status_data }, align 4
@__tracepoint_xhci_hub_status_data = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_hub_status_data, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_hub_status_data, ptr null, ptr @__traceiter_xhci_hub_status_data, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_hub_status_data = internal constant ptr @__tracepoint_xhci_hub_status_data, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_ring_ep_doorbell = internal constant [22 x i8] c"xhci_ring_ep_doorbell\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_ring_ep_doorbell = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_ring_ep_doorbell }, align 4
@__tracepoint_xhci_ring_ep_doorbell = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_ring_ep_doorbell, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_ring_ep_doorbell, ptr null, ptr @__traceiter_xhci_ring_ep_doorbell, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_ring_ep_doorbell = internal constant ptr @__tracepoint_xhci_ring_ep_doorbell, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_ring_host_doorbell = internal constant [24 x i8] c"xhci_ring_host_doorbell\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_ring_host_doorbell = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_ring_host_doorbell }, align 4
@__tracepoint_xhci_ring_host_doorbell = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_ring_host_doorbell, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_ring_host_doorbell, ptr null, ptr @__traceiter_xhci_ring_host_doorbell, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_ring_host_doorbell = internal constant ptr @__tracepoint_xhci_ring_host_doorbell, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbc_alloc_request = internal constant [23 x i8] c"xhci_dbc_alloc_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbc_alloc_request = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbc_alloc_request }, align 4
@__tracepoint_xhci_dbc_alloc_request = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_dbc_alloc_request, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_dbc_alloc_request, ptr null, ptr @__traceiter_xhci_dbc_alloc_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbc_alloc_request = internal constant ptr @__tracepoint_xhci_dbc_alloc_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbc_free_request = internal constant [22 x i8] c"xhci_dbc_free_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbc_free_request = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbc_free_request }, align 4
@__tracepoint_xhci_dbc_free_request = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_dbc_free_request, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_dbc_free_request, ptr null, ptr @__traceiter_xhci_dbc_free_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbc_free_request = internal constant ptr @__tracepoint_xhci_dbc_free_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbc_queue_request = internal constant [23 x i8] c"xhci_dbc_queue_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbc_queue_request = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbc_queue_request }, align 4
@__tracepoint_xhci_dbc_queue_request = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_dbc_queue_request, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_dbc_queue_request, ptr null, ptr @__traceiter_xhci_dbc_queue_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbc_queue_request = internal constant ptr @__tracepoint_xhci_dbc_queue_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_xhci_dbc_giveback_request = internal constant [26 x i8] c"xhci_dbc_giveback_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xhci_dbc_giveback_request = dso_local global %struct.static_call_key { ptr @__traceiter_xhci_dbc_giveback_request }, align 4
@__tracepoint_xhci_dbc_giveback_request = dso_local global %struct.tracepoint { ptr @__tpstrtab_xhci_dbc_giveback_request, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xhci_dbc_giveback_request, ptr null, ptr @__traceiter_xhci_dbc_giveback_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xhci_dbc_giveback_request = internal constant ptr @__tracepoint_xhci_dbc_giveback_request, section "__tracepoints_ptrs", align 4
@str__xhci_hcd__trace_system_name = internal constant [9 x i8] c"xhci-hcd\00", align 1
@trace_event_fields_xhci_log_msg = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.93 { %struct.anon.94 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xhci_log_msg = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_msg, ptr @perf_trace_xhci_log_msg, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_msg, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_msg, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_msg, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_msg = internal global %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_msg, ptr null, ptr null, ptr null }, align 4
@print_fmt_xhci_log_msg = internal global [21 x i8] c"\22%s\22, __get_str(msg)\00", align 1
@event_xhci_dbg_address = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_msg, %union.anon.95 { ptr @__tracepoint_xhci_dbg_address }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_msg }, ptr @print_fmt_xhci_log_msg, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_dbg_address = internal global ptr @event_xhci_dbg_address, section "_ftrace_events", align 4
@event_xhci_dbg_context_change = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_msg, %union.anon.95 { ptr @__tracepoint_xhci_dbg_context_change }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_msg }, ptr @print_fmt_xhci_log_msg, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_dbg_context_change = internal global ptr @event_xhci_dbg_context_change, section "_ftrace_events", align 4
@event_xhci_dbg_quirks = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_msg, %union.anon.95 { ptr @__tracepoint_xhci_dbg_quirks }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_msg }, ptr @print_fmt_xhci_log_msg, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_dbg_quirks = internal global ptr @event_xhci_dbg_quirks, section "_ftrace_events", align 4
@event_xhci_dbg_reset_ep = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_msg, %union.anon.95 { ptr @__tracepoint_xhci_dbg_reset_ep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_msg }, ptr @print_fmt_xhci_log_msg, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_dbg_reset_ep = internal global ptr @event_xhci_dbg_reset_ep, section "_ftrace_events", align 4
@event_xhci_dbg_cancel_urb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_msg, %union.anon.95 { ptr @__tracepoint_xhci_dbg_cancel_urb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_msg }, ptr @print_fmt_xhci_log_msg, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_dbg_cancel_urb = internal global ptr @event_xhci_dbg_cancel_urb, section "_ftrace_events", align 4
@event_xhci_dbg_init = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_msg, %union.anon.95 { ptr @__tracepoint_xhci_dbg_init }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_msg }, ptr @print_fmt_xhci_log_msg, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_dbg_init = internal global ptr @event_xhci_dbg_init, section "_ftrace_events", align 4
@event_xhci_dbg_ring_expansion = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_msg, %union.anon.95 { ptr @__tracepoint_xhci_dbg_ring_expansion }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_msg }, ptr @print_fmt_xhci_log_msg, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_dbg_ring_expansion = internal global ptr @event_xhci_dbg_ring_expansion, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_ctx = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.93 { %struct.anon.94 { ptr @.str.4, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.93 { %struct.anon.94 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.93 { %struct.anon.94 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.93 { %struct.anon.94 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.93 { %struct.anon.94 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.93 { %struct.anon.94 { ptr @.str.12, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.93 { %struct.anon.94 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xhci_log_ctx = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_ctx, ptr @perf_trace_xhci_log_ctx, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_ctx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_ctx, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_ctx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_ctx = internal global %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_ctx, ptr null, ptr null, ptr null }, align 4
@print_fmt_xhci_log_ctx = internal global [128 x i8] c"\22ctx_64=%d, ctx_type=%u, ctx_dma=@%llx, ctx_va=@%p\22, REC->ctx_64, REC->ctx_type, (unsigned long long) REC->ctx_dma, REC->ctx_va\00", align 1
@event_xhci_address_ctx = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ctx, %union.anon.95 { ptr @__tracepoint_xhci_address_ctx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ctx }, ptr @print_fmt_xhci_log_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_address_ctx = internal global ptr @event_xhci_address_ctx, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_trb = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.93 { %struct.anon.94 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xhci_log_trb = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_trb, ptr @perf_trace_xhci_log_trb, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_trb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_trb, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_trb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_trb = internal global %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_trb, ptr null, ptr null, ptr null }, align 4
@print_fmt_xhci_log_trb = internal global [133 x i8] c"\22%s: %s\22, xhci_ring_type_string(REC->type), xhci_decode_trb(__get_str(str), 500, REC->field0, REC->field1, REC->field2, REC->field3)\00", align 1
@event_xhci_handle_event = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_trb, %union.anon.95 { ptr @__tracepoint_xhci_handle_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_trb }, ptr @print_fmt_xhci_log_trb, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_handle_event = internal global ptr @event_xhci_handle_event, section "_ftrace_events", align 4
@event_xhci_handle_command = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_trb, %union.anon.95 { ptr @__tracepoint_xhci_handle_command }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_trb }, ptr @print_fmt_xhci_log_trb, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_handle_command = internal global ptr @event_xhci_handle_command, section "_ftrace_events", align 4
@event_xhci_handle_transfer = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_trb, %union.anon.95 { ptr @__tracepoint_xhci_handle_transfer }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_trb }, ptr @print_fmt_xhci_log_trb, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_handle_transfer = internal global ptr @event_xhci_handle_transfer, section "_ftrace_events", align 4
@event_xhci_queue_trb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_trb, %union.anon.95 { ptr @__tracepoint_xhci_queue_trb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_trb }, ptr @print_fmt_xhci_log_trb, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_queue_trb = internal global ptr @event_xhci_queue_trb, section "_ftrace_events", align 4
@event_xhci_dbc_handle_event = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_trb, %union.anon.95 { ptr @__tracepoint_xhci_dbc_handle_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_trb }, ptr @print_fmt_xhci_log_trb, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_dbc_handle_event = internal global ptr @event_xhci_dbc_handle_event, section "_ftrace_events", align 4
@event_xhci_dbc_handle_transfer = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_trb, %union.anon.95 { ptr @__tracepoint_xhci_dbc_handle_transfer }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_trb }, ptr @print_fmt_xhci_log_trb, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_dbc_handle_transfer = internal global ptr @event_xhci_dbc_handle_transfer, section "_ftrace_events", align 4
@event_xhci_dbc_gadget_ep_queue = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_trb, %union.anon.95 { ptr @__tracepoint_xhci_dbc_gadget_ep_queue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_trb }, ptr @print_fmt_xhci_log_trb, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_dbc_gadget_ep_queue = internal global ptr @event_xhci_dbc_gadget_ep_queue, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_free_virt_dev = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.120, %union.anon.93 { %struct.anon.94 { ptr @.str.121, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.122, %union.anon.93 { %struct.anon.94 { ptr @.str.123, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.122, %union.anon.93 { %struct.anon.94 { ptr @.str.124, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.125, %union.anon.93 { %struct.anon.94 { ptr @.str.126, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.125, %union.anon.93 { %struct.anon.94 { ptr @.str.127, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.128, %union.anon.93 { %struct.anon.94 { ptr @.str.129, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xhci_log_free_virt_dev = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_free_virt_dev, ptr @perf_trace_xhci_log_free_virt_dev, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_free_virt_dev, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_free_virt_dev, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_free_virt_dev, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_free_virt_dev = internal global %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_free_virt_dev, ptr null, ptr null, ptr null }, align 4
@print_fmt_xhci_log_free_virt_dev = internal global [155 x i8] c"\22vdev %p ctx %llx | %llx fake_port %d real_port %d current_mel %d\22, REC->vdev, REC->in_ctx, REC->out_ctx, REC->fake_port, REC->real_port, REC->current_mel\00", align 1
@event_xhci_free_virt_device = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_free_virt_dev, %union.anon.95 { ptr @__tracepoint_xhci_free_virt_device }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_free_virt_dev }, ptr @print_fmt_xhci_log_free_virt_dev, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_free_virt_device = internal global ptr @event_xhci_free_virt_device, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_virt_dev = internal global [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.120, %union.anon.93 { %struct.anon.94 { ptr @.str.121, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.122, %union.anon.93 { %struct.anon.94 { ptr @.str.123, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.122, %union.anon.93 { %struct.anon.94 { ptr @.str.124, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.93 { %struct.anon.94 { ptr @.str.131, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.93 { %struct.anon.94 { ptr @.str.132, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.93 { %struct.anon.94 { ptr @.str.133, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.125, %union.anon.93 { %struct.anon.94 { ptr @.str.134, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.125, %union.anon.93 { %struct.anon.94 { ptr @.str.135, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.93 { %struct.anon.94 { ptr @.str.12, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xhci_log_virt_dev = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_virt_dev, ptr @perf_trace_xhci_log_virt_dev, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_virt_dev, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_virt_dev, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_virt_dev, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_virt_dev = internal global %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_virt_dev, ptr null, ptr null, ptr null }, align 4
@print_fmt_xhci_log_virt_dev = internal global [191 x i8] c"\22vdev %p ctx %llx | %llx num %d state %d speed %d port %d level %d slot %d\22, REC->vdev, REC->in_ctx, REC->out_ctx, REC->devnum, REC->state, REC->speed, REC->portnum, REC->level, REC->slot_id\00", align 1
@event_xhci_alloc_virt_device = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_virt_dev, %union.anon.95 { ptr @__tracepoint_xhci_alloc_virt_device }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_virt_dev }, ptr @print_fmt_xhci_log_virt_dev, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_alloc_virt_device = internal global ptr @event_xhci_alloc_virt_device, section "_ftrace_events", align 4
@event_xhci_setup_device = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_virt_dev, %union.anon.95 { ptr @__tracepoint_xhci_setup_device }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_virt_dev }, ptr @print_fmt_xhci_log_virt_dev, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_setup_device = internal global ptr @event_xhci_setup_device, section "_ftrace_events", align 4
@event_xhci_setup_addressable_virt_device = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_virt_dev, %union.anon.95 { ptr @__tracepoint_xhci_setup_addressable_virt_device }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_virt_dev }, ptr @print_fmt_xhci_log_virt_dev, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_setup_addressable_virt_device = internal global ptr @event_xhci_setup_addressable_virt_device, section "_ftrace_events", align 4
@event_xhci_stop_device = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_virt_dev, %union.anon.95 { ptr @__tracepoint_xhci_stop_device }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_virt_dev }, ptr @print_fmt_xhci_log_virt_dev, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_stop_device = internal global ptr @event_xhci_stop_device, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_urb = internal global [14 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.120, %union.anon.93 { %struct.anon.94 { ptr @.str.137, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.93 { %struct.anon.94 { ptr @.str.139, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.93 { %struct.anon.94 { ptr @.str.140, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.93 { %struct.anon.94 { ptr @.str.141, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.93 { %struct.anon.94 { ptr @.str.142, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.93 { %struct.anon.94 { ptr @.str.143, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.93 { %struct.anon.94 { ptr @.str.144, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.93 { %struct.anon.94 { ptr @.str.145, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.93 { %struct.anon.94 { ptr @.str.146, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.93 { %struct.anon.94 { ptr @.str.147, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.93 { %struct.anon.94 { ptr @.str.148, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.93 { %struct.anon.94 { ptr @.str.17, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.93 { %struct.anon.94 { ptr @.str.12, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xhci_log_urb = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_urb, ptr @perf_trace_xhci_log_urb, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_urb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_urb, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_urb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_urb = internal global %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_urb, ptr null, ptr null, ptr null }, align 4
@print_fmt_xhci_log_urb = internal global [333 x i8] c"\22ep%d%s-%s: urb %p pipe %u slot %d length %d/%d sgs %d/%d stream %d flags %08x\22, REC->epnum, REC->dir_in ? \22in\22 : \22out\22, __print_symbolic(REC->type, { 3, \22intr\22 }, { 0, \22control\22 }, { 2, \22bulk\22 }, { 1, \22isoc\22 }), REC->urb, REC->pipe, REC->slot_id, REC->actual, REC->length, REC->num_mapped_sgs, REC->num_sgs, REC->stream, REC->flags\00", align 1
@event_xhci_urb_enqueue = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_urb, %union.anon.95 { ptr @__tracepoint_xhci_urb_enqueue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_urb }, ptr @print_fmt_xhci_log_urb, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_urb_enqueue = internal global ptr @event_xhci_urb_enqueue, section "_ftrace_events", align 4
@event_xhci_urb_giveback = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_urb, %union.anon.95 { ptr @__tracepoint_xhci_urb_giveback }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_urb }, ptr @print_fmt_xhci_log_urb, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_urb_giveback = internal global ptr @event_xhci_urb_giveback, section "_ftrace_events", align 4
@event_xhci_urb_dequeue = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_urb, %union.anon.95 { ptr @__tracepoint_xhci_urb_dequeue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_urb }, ptr @print_fmt_xhci_log_urb, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_urb_dequeue = internal global ptr @event_xhci_urb_dequeue, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_ep_ctx = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.156, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.157, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.158, %union.anon.93 { %struct.anon.94 { ptr @.str.159, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.160, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.93 { %struct.anon.94 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xhci_log_ep_ctx = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_ep_ctx, ptr @perf_trace_xhci_log_ep_ctx, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_ep_ctx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_ep_ctx, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_ep_ctx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_ep_ctx = internal global %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_ep_ctx, ptr null, ptr null, ptr null }, align 4
@print_fmt_xhci_log_ep_ctx = internal global [92 x i8] c"\22%s\22, xhci_decode_ep_context(__get_str(str), REC->info, REC->info2, REC->deq, REC->tx_info)\00", align 1
@event_xhci_handle_cmd_stop_ep = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ep_ctx, %union.anon.95 { ptr @__tracepoint_xhci_handle_cmd_stop_ep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ep_ctx }, ptr @print_fmt_xhci_log_ep_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_handle_cmd_stop_ep = internal global ptr @event_xhci_handle_cmd_stop_ep, section "_ftrace_events", align 4
@event_xhci_handle_cmd_set_deq_ep = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ep_ctx, %union.anon.95 { ptr @__tracepoint_xhci_handle_cmd_set_deq_ep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ep_ctx }, ptr @print_fmt_xhci_log_ep_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_handle_cmd_set_deq_ep = internal global ptr @event_xhci_handle_cmd_set_deq_ep, section "_ftrace_events", align 4
@event_xhci_handle_cmd_reset_ep = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ep_ctx, %union.anon.95 { ptr @__tracepoint_xhci_handle_cmd_reset_ep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ep_ctx }, ptr @print_fmt_xhci_log_ep_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_handle_cmd_reset_ep = internal global ptr @event_xhci_handle_cmd_reset_ep, section "_ftrace_events", align 4
@event_xhci_handle_cmd_config_ep = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ep_ctx, %union.anon.95 { ptr @__tracepoint_xhci_handle_cmd_config_ep }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ep_ctx }, ptr @print_fmt_xhci_log_ep_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_handle_cmd_config_ep = internal global ptr @event_xhci_handle_cmd_config_ep, section "_ftrace_events", align 4
@event_xhci_add_endpoint = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ep_ctx, %union.anon.95 { ptr @__tracepoint_xhci_add_endpoint }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ep_ctx }, ptr @print_fmt_xhci_log_ep_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_add_endpoint = internal global ptr @event_xhci_add_endpoint, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_slot_ctx = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.156, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.157, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.181, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.132, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.93 { %struct.anon.94 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xhci_log_slot_ctx = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_slot_ctx, ptr @perf_trace_xhci_log_slot_ctx, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_slot_ctx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_slot_ctx, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_slot_ctx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_slot_ctx = internal global %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_slot_ctx, ptr null, ptr null, ptr null }, align 4
@print_fmt_xhci_log_slot_ctx = internal global [96 x i8] c"\22%s\22, xhci_decode_slot_context(__get_str(str), REC->info, REC->info2, REC->tt_info, REC->state)\00", align 1
@event_xhci_alloc_dev = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.95 { ptr @__tracepoint_xhci_alloc_dev }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_alloc_dev = internal global ptr @event_xhci_alloc_dev, section "_ftrace_events", align 4
@event_xhci_free_dev = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.95 { ptr @__tracepoint_xhci_free_dev }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_free_dev = internal global ptr @event_xhci_free_dev, section "_ftrace_events", align 4
@event_xhci_handle_cmd_disable_slot = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.95 { ptr @__tracepoint_xhci_handle_cmd_disable_slot }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_handle_cmd_disable_slot = internal global ptr @event_xhci_handle_cmd_disable_slot, section "_ftrace_events", align 4
@event_xhci_discover_or_reset_device = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.95 { ptr @__tracepoint_xhci_discover_or_reset_device }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_discover_or_reset_device = internal global ptr @event_xhci_discover_or_reset_device, section "_ftrace_events", align 4
@event_xhci_setup_device_slot = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.95 { ptr @__tracepoint_xhci_setup_device_slot }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_setup_device_slot = internal global ptr @event_xhci_setup_device_slot, section "_ftrace_events", align 4
@event_xhci_handle_cmd_addr_dev = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.95 { ptr @__tracepoint_xhci_handle_cmd_addr_dev }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_handle_cmd_addr_dev = internal global ptr @event_xhci_handle_cmd_addr_dev, section "_ftrace_events", align 4
@event_xhci_handle_cmd_reset_dev = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.95 { ptr @__tracepoint_xhci_handle_cmd_reset_dev }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_handle_cmd_reset_dev = internal global ptr @event_xhci_handle_cmd_reset_dev, section "_ftrace_events", align 4
@event_xhci_handle_cmd_set_deq = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.95 { ptr @__tracepoint_xhci_handle_cmd_set_deq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_handle_cmd_set_deq = internal global ptr @event_xhci_handle_cmd_set_deq, section "_ftrace_events", align 4
@event_xhci_configure_endpoint = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_slot_ctx, %union.anon.95 { ptr @__tracepoint_xhci_configure_endpoint }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_slot_ctx }, ptr @print_fmt_xhci_log_slot_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_configure_endpoint = internal global ptr @event_xhci_configure_endpoint, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_ctrl_ctx = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.197, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.198, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.93 { %struct.anon.94 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xhci_log_ctrl_ctx = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_ctrl_ctx, ptr @perf_trace_xhci_log_ctrl_ctx, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_ctrl_ctx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_ctrl_ctx, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_ctrl_ctx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_ctrl_ctx = internal global %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_ctrl_ctx, ptr null, ptr null, ptr null }, align 4
@print_fmt_xhci_log_ctrl_ctx = internal global [64 x i8] c"\22%s\22, xhci_decode_ctrl_ctx(__get_str(str), REC->drop, REC->add)\00", align 1
@event_xhci_address_ctrl_ctx = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ctrl_ctx, %union.anon.95 { ptr @__tracepoint_xhci_address_ctrl_ctx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ctrl_ctx }, ptr @print_fmt_xhci_log_ctrl_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_address_ctrl_ctx = internal global ptr @event_xhci_address_ctrl_ctx, section "_ftrace_events", align 4
@event_xhci_configure_endpoint_ctrl_ctx = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ctrl_ctx, %union.anon.95 { ptr @__tracepoint_xhci_configure_endpoint_ctrl_ctx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ctrl_ctx }, ptr @print_fmt_xhci_log_ctrl_ctx, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_configure_endpoint_ctrl_ctx = internal global ptr @event_xhci_configure_endpoint_ctrl_ctx, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_ring = internal global [12 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.120, %union.anon.93 { %struct.anon.94 { ptr @.str.205, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.93 { %struct.anon.94 { ptr @.str.206, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.93 { %struct.anon.94 { ptr @.str.159, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.93 { %struct.anon.94 { ptr @.str.207, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.93 { %struct.anon.94 { ptr @.str.208, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.93 { %struct.anon.94 { ptr @.str.209, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.93 { %struct.anon.94 { ptr @.str.210, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.93 { %struct.anon.94 { ptr @.str.211, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.93 { %struct.anon.94 { ptr @.str.212, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.93 { %struct.anon.94 { ptr @.str.213, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xhci_log_ring = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_ring, ptr @perf_trace_xhci_log_ring, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_ring, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_ring, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_ring, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_ring = internal global %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_ring, ptr null, ptr null, ptr null }, align 4
@print_fmt_xhci_log_ring = internal global [276 x i8] c"\22%s %p: enq %pad(%pad) deq %pad(%pad) segs %d stream %d free_trbs %d bounce %d cycle %d\22, xhci_ring_type_string(REC->type), REC->ring, &REC->enq, &REC->enq_seg, &REC->deq, &REC->deq_seg, REC->num_segs, REC->stream_id, REC->num_trbs_free, REC->bounce_buf_len, REC->cycle_state\00", align 1
@event_xhci_ring_alloc = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ring, %union.anon.95 { ptr @__tracepoint_xhci_ring_alloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ring }, ptr @print_fmt_xhci_log_ring, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_ring_alloc = internal global ptr @event_xhci_ring_alloc, section "_ftrace_events", align 4
@event_xhci_ring_free = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ring, %union.anon.95 { ptr @__tracepoint_xhci_ring_free }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ring }, ptr @print_fmt_xhci_log_ring, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_ring_free = internal global ptr @event_xhci_ring_free, section "_ftrace_events", align 4
@event_xhci_ring_expansion = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ring, %union.anon.95 { ptr @__tracepoint_xhci_ring_expansion }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ring }, ptr @print_fmt_xhci_log_ring, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_ring_expansion = internal global ptr @event_xhci_ring_expansion, section "_ftrace_events", align 4
@event_xhci_inc_enq = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ring, %union.anon.95 { ptr @__tracepoint_xhci_inc_enq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ring }, ptr @print_fmt_xhci_log_ring, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_inc_enq = internal global ptr @event_xhci_inc_enq, section "_ftrace_events", align 4
@event_xhci_inc_deq = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_ring, %union.anon.95 { ptr @__tracepoint_xhci_inc_deq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_ring }, ptr @print_fmt_xhci_log_ring, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_inc_deq = internal global ptr @event_xhci_inc_deq, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_portsc = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.134, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.215, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.93 { %struct.anon.94 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xhci_log_portsc = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_portsc, ptr @perf_trace_xhci_log_portsc, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_portsc, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_portsc, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_portsc, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_portsc = internal global %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_portsc, ptr null, ptr null, ptr null }, align 4
@print_fmt_xhci_log_portsc = internal global [77 x i8] c"\22port-%d: %s\22, REC->portnum, xhci_decode_portsc(__get_str(str), REC->portsc)\00", align 1
@event_xhci_handle_port_status = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_portsc, %union.anon.95 { ptr @__tracepoint_xhci_handle_port_status }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_portsc }, ptr @print_fmt_xhci_log_portsc, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_handle_port_status = internal global ptr @event_xhci_handle_port_status, section "_ftrace_events", align 4
@event_xhci_get_port_status = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_portsc, %union.anon.95 { ptr @__tracepoint_xhci_get_port_status }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_portsc }, ptr @print_fmt_xhci_log_portsc, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_get_port_status = internal global ptr @event_xhci_get_port_status, section "_ftrace_events", align 4
@event_xhci_hub_status_data = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_portsc, %union.anon.95 { ptr @__tracepoint_xhci_hub_status_data }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_portsc }, ptr @print_fmt_xhci_log_portsc, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_hub_status_data = internal global ptr @event_xhci_hub_status_data, section "_ftrace_events", align 4
@trace_event_fields_xhci_log_doorbell = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.252, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.16, %union.anon.93 { %struct.anon.94 { ptr @.str.253, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.93 { %struct.anon.94 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xhci_log_doorbell = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_log_doorbell, ptr @perf_trace_xhci_log_doorbell, ptr @trace_event_reg, ptr @trace_event_fields_xhci_log_doorbell, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_log_doorbell, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_log_doorbell, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_log_doorbell = internal global %struct.trace_event_functions { ptr @trace_raw_output_xhci_log_doorbell, ptr null, ptr null, ptr null }, align 4
@print_fmt_xhci_log_doorbell = internal global [87 x i8] c"\22Ring doorbell for %s\22, xhci_decode_doorbell(__get_str(str), REC->slot, REC->doorbell)\00", align 1
@event_xhci_ring_ep_doorbell = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_doorbell, %union.anon.95 { ptr @__tracepoint_xhci_ring_ep_doorbell }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_doorbell }, ptr @print_fmt_xhci_log_doorbell, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_ring_ep_doorbell = internal global ptr @event_xhci_ring_ep_doorbell, section "_ftrace_events", align 4
@event_xhci_ring_host_doorbell = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_log_doorbell, %union.anon.95 { ptr @__tracepoint_xhci_ring_host_doorbell }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_log_doorbell }, ptr @print_fmt_xhci_log_doorbell, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_ring_host_doorbell = internal global ptr @event_xhci_ring_host_doorbell, section "_ftrace_events", align 4
@trace_event_fields_xhci_dbc_log_request = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.261, %union.anon.93 { %struct.anon.94 { ptr @.str.262, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.263, %union.anon.93 { %struct.anon.94 { ptr @.str.264, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.93 { %struct.anon.94 { ptr @.str.146, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.138, %union.anon.93 { %struct.anon.94 { ptr @.str.145, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.93 { %struct.anon.94 { ptr @.str.141, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xhci_dbc_log_request = internal global %struct.trace_event_class { ptr @str__xhci_hcd__trace_system_name, ptr @trace_event_raw_event_xhci_dbc_log_request, ptr @perf_trace_xhci_dbc_log_request, ptr @trace_event_reg, ptr @trace_event_fields_xhci_dbc_log_request, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xhci_dbc_log_request, i64 24), ptr getelementptr (i8, ptr @event_class_xhci_dbc_log_request, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xhci_dbc_log_request = internal global %struct.trace_event_functions { ptr @trace_raw_output_xhci_dbc_log_request, ptr null, ptr null, ptr null }, align 4
@print_fmt_xhci_dbc_log_request = internal global [117 x i8] c"\22%s: req %p length %u/%u ==> %d\22, REC->dir ? \22bulk-in\22 : \22bulk-out\22, REC->req, REC->actual, REC->length, REC->status\00", align 1
@event_xhci_dbc_alloc_request = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_dbc_log_request, %union.anon.95 { ptr @__tracepoint_xhci_dbc_alloc_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_dbc_log_request }, ptr @print_fmt_xhci_dbc_log_request, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_dbc_alloc_request = internal global ptr @event_xhci_dbc_alloc_request, section "_ftrace_events", align 4
@event_xhci_dbc_free_request = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_dbc_log_request, %union.anon.95 { ptr @__tracepoint_xhci_dbc_free_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_dbc_log_request }, ptr @print_fmt_xhci_dbc_log_request, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_dbc_free_request = internal global ptr @event_xhci_dbc_free_request, section "_ftrace_events", align 4
@event_xhci_dbc_queue_request = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_dbc_log_request, %union.anon.95 { ptr @__tracepoint_xhci_dbc_queue_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_dbc_log_request }, ptr @print_fmt_xhci_dbc_log_request, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_dbc_queue_request = internal global ptr @event_xhci_dbc_queue_request, section "_ftrace_events", align 4
@event_xhci_dbc_giveback_request = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xhci_dbc_log_request, %union.anon.95 { ptr @__tracepoint_xhci_dbc_giveback_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xhci_dbc_log_request }, ptr @print_fmt_xhci_dbc_log_request, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xhci_dbc_giveback_request = internal global ptr @event_xhci_dbc_giveback_request, section "_ftrace_events", align 4
@__kstrtab___tracepoint_xhci_dbg_quirks = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_xhci_dbg_quirks = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_xhci_dbg_quirks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_xhci_dbg_quirks to i32), ptr @__kstrtab___tracepoint_xhci_dbg_quirks, ptr @__kstrtabns___tracepoint_xhci_dbg_quirks }, section "___ksymtab_gpl+__tracepoint_xhci_dbg_quirks", align 4
@__kstrtab___traceiter_xhci_dbg_quirks = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_xhci_dbg_quirks = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_xhci_dbg_quirks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_xhci_dbg_quirks to i32), ptr @__kstrtab___traceiter_xhci_dbg_quirks, ptr @__kstrtabns___traceiter_xhci_dbg_quirks }, section "___ksymtab_gpl+__traceiter_xhci_dbg_quirks", align 4
@__kstrtab___SCK__tp_func_xhci_dbg_quirks = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_xhci_dbg_quirks = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_xhci_dbg_quirks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_xhci_dbg_quirks to i32), ptr @__kstrtab___SCK__tp_func_xhci_dbg_quirks, ptr @__kstrtabns___SCK__tp_func_xhci_dbg_quirks }, section "___ksymtab_gpl+__SCK__tp_func_xhci_dbg_quirks", align 4
@.str = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ctx_64\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"ctx_type\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"dma_addr_t\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ctx_dma\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"u8 *\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"ctx_va\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"ctx_ep_num\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"slot_id\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"__data_loc u32[]\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"ctx_data\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"ctx_64=%d, ctx_type=%u, ctx_dma=@%llx, ctx_va=@%p\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"field0\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"field1\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"field2\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"field3\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"CTRL\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"ISOC\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"BULK\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"INTR\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"STREAM\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"CMD\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"EVENT\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"LINK %08x%08x intr %d type '%s' flags %c:%c:%c:%c\00", align 1
@.str.33 = private unnamed_addr constant [68 x i8] c"TRB %08x%08x status '%s' len %d slot %d ep %d type '%s' flags %c:%c\00", align 1
@.str.34 = private unnamed_addr constant [129 x i8] c"bRequestType %02x bRequest %02x wValue %02x%02x wIndex %02x%02x wLength %d length %d TD size %d intr %d type '%s' flags %c:%c:%c\00", align 1
@.str.35 = private unnamed_addr constant [82 x i8] c"Buffer %08x%08x length %d TD size %d intr %d type '%s' flags %c:%c:%c:%c:%c:%c:%c\00", align 1
@.str.36 = private unnamed_addr constant [73 x i8] c"Buffer %08x%08x length %d TD size %d intr %d type '%s' flags %c:%c:%c:%c\00", align 1
@.str.37 = private unnamed_addr constant [85 x i8] c"Buffer %08x%08x length %d TD size %d intr %d type '%s' flags %c:%c:%c:%c:%c:%c:%c:%c\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"%s: flags %c\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"%s: slot %d flags %c\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"%s: ctx %08x%08x slot %d flags %c:%c\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"%s: ctx %08x%08x slot %d flags %c\00", align 1
@.str.42 = private unnamed_addr constant [43 x i8] c"%s: ctx %08x%08x slot %d ep %d flags %c:%c\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"%s: slot %d sp %d ep %d flags %c\00", align 1
@.str.44 = private unnamed_addr constant [50 x i8] c"%s: deq %08x%08x stream %d slot %d ep %d flags %c\00", align 1
@.str.45 = private unnamed_addr constant [48 x i8] c"%s: event %08x%08x vf intr %d vf id %d flags %c\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"%s: belt %d flags %c\00", align 1
@.str.47 = private unnamed_addr constant [43 x i8] c"%s: ctx %08x%08x slot %d speed %d flags %c\00", align 1
@.str.48 = private unnamed_addr constant [59 x i8] c"%s: info %08x%08x%08x pkt type %d roothub port %d flags %c\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"type '%s' -> raw %08x %08x %08x %08x\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"Setup Stage\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"Data Stage\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"Status Stage\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"Isoch\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"Link\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"Event Data\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"No-Op\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"Enable Slot Command\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"Disable Slot Command\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"Address Device Command\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"Configure Endpoint Command\00", align 1
@.str.62 = private unnamed_addr constant [25 x i8] c"Evaluate Context Command\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"Reset Endpoint Command\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"Stop Ring Command\00", align 1
@.str.65 = private unnamed_addr constant [31 x i8] c"Set TR Dequeue Pointer Command\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"Reset Device Command\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"Force Event Command\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"Negotiate Bandwidth Command\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"Set Latency Tolerance Value Command\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"Get Port Bandwidth Command\00", align 1
@.str.71 = private unnamed_addr constant [21 x i8] c"Force Header Command\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"No-Op Command\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"Transfer Event\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"Command Completion Event\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"Port Status Change Event\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"Bandwidth Request Event\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"Doorbell Event\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"Host Controller Event\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"Device Notification Event\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"MFINDEX Wrap Event\00", align 1
@.str.81 = private unnamed_addr constant [29 x i8] c"NEC Command Completion Event\00", align 1
@.str.82 = private unnamed_addr constant [34 x i8] c"NET Get Firmware Revision Command\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"Data Buffer Error\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"Babble Detected\00", align 1
@.str.87 = private unnamed_addr constant [22 x i8] c"USB Transaction Error\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"TRB Error\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"Stall Error\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"Resource Error\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"Bandwidth Error\00", align 1
@.str.92 = private unnamed_addr constant [25 x i8] c"No Slots Available Error\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"Invalid Stream Type Error\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"Slot Not Enabled Error\00", align 1
@.str.95 = private unnamed_addr constant [27 x i8] c"Endpoint Not Enabled Error\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"Short Packet\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"Ring Underrun\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"Ring Overrun\00", align 1
@.str.99 = private unnamed_addr constant [25 x i8] c"VF Event Ring Full Error\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"Parameter Error\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"Bandwidth Overrun Error\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"Context State Error\00", align 1
@.str.103 = private unnamed_addr constant [23 x i8] c"No Ping Response Error\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"Event Ring Full Error\00", align 1
@.str.105 = private unnamed_addr constant [26 x i8] c"Incompatible Device Error\00", align 1
@.str.106 = private unnamed_addr constant [21 x i8] c"Missed Service Error\00", align 1
@.str.107 = private unnamed_addr constant [21 x i8] c"Command Ring Stopped\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"Command Aborted\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"Stopped\00", align 1
@.str.110 = private unnamed_addr constant [25 x i8] c"Stopped - Length Invalid\00", align 1
@.str.111 = private unnamed_addr constant [23 x i8] c"Stopped - Short Packet\00", align 1
@.str.112 = private unnamed_addr constant [33 x i8] c"Max Exit Latency Too Large Error\00", align 1
@.str.113 = private unnamed_addr constant [21 x i8] c"Isoch Buffer Overrun\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"Event Lost Error\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"Undefined Error\00", align 1
@.str.116 = private unnamed_addr constant [24 x i8] c"Invalid Stream ID Error\00", align 1
@.str.117 = private unnamed_addr constant [26 x i8] c"Secondary Bandwidth Error\00", align 1
@.str.118 = private unnamed_addr constant [24 x i8] c"Split Transaction Error\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"Unknown!!\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"vdev\00", align 1
@.str.122 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"out_ctx\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"in_ctx\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"fake_port\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"real_port\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"u16\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"current_mel\00", align 1
@.str.130 = private unnamed_addr constant [66 x i8] c"vdev %p ctx %llx | %llx fake_port %d real_port %d current_mel %d\0A\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"devnum\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"portnum\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.136 = private unnamed_addr constant [75 x i8] c"vdev %p ctx %llx | %llx num %d state %d speed %d port %d level %d slot %d\0A\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"urb\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.141 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.142 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"num_mapped_sgs\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"num_sgs\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"actual\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"epnum\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"dir_in\00", align 1
@.str.149 = private unnamed_addr constant [79 x i8] c"ep%d%s-%s: urb %p pipe %u slot %d length %d/%d sgs %d/%d stream %d flags %08x\0A\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@trace_raw_output_xhci_log_urb.symbols = internal constant [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 3, ptr @.str.152 }, %struct.trace_print_flags { i32 0, ptr @.str.153 }, %struct.trace_print_flags { i32 2, ptr @.str.154 }, %struct.trace_print_flags { i32 1, ptr @.str.155 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.152 = private unnamed_addr constant [5 x i8] c"intr\00", align 1
@.str.153 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"bulk\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"isoc\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"info2\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"deq\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"tx_info\00", align 1
@.str.161 = private unnamed_addr constant [38 x i8] c"State %s mult %d max P. Streams %d %s\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"LSA \00", align 1
@.str.163 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.164 = private unnamed_addr constant [44 x i8] c"interval %d us max ESIT payload %d CErr %d \00", align 1
@.str.165 = private unnamed_addr constant [40 x i8] c"Type %s %sburst %d maxp %d deq %016llx \00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"HID\00", align 1
@.str.167 = private unnamed_addr constant [15 x i8] c"avg trb len %d\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.169 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"halted\00", align 1
@.str.171 = private unnamed_addr constant [8 x i8] c"stopped\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.173 = private unnamed_addr constant [8 x i8] c"INVALID\00", align 1
@.str.174 = private unnamed_addr constant [9 x i8] c"Isoc OUT\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"Bulk OUT\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"Int OUT\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"Ctrl\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"Isoc IN\00", align 1
@.str.179 = private unnamed_addr constant [8 x i8] c"Bulk IN\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"Int IN\00", align 1
@.str.181 = private unnamed_addr constant [8 x i8] c"tt_info\00", align 1
@.str.182 = private unnamed_addr constant [52 x i8] c"RS %05x %s%s%s Ctx Entries %d MEL %d us Port# %d/%d\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"full-speed\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c"low-speed\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"high-speed\00", align 1
@.str.186 = private unnamed_addr constant [12 x i8] c"super-speed\00", align 1
@.str.187 = private unnamed_addr constant [17 x i8] c"super-speed plus\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"UNKNOWN speed\00", align 1
@.str.189 = private unnamed_addr constant [10 x i8] c" multi-TT\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c" Hub\00", align 1
@.str.191 = private unnamed_addr constant [55 x i8] c" [TT Slot %d Port# %d TTT %d Intr %d] Addr %d State %s\00", align 1
@.str.192 = private unnamed_addr constant [17 x i8] c"enabled/disabled\00", align 1
@.str.193 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c"addressed\00", align 1
@.str.195 = private unnamed_addr constant [11 x i8] c"configured\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"reserved\00", align 1
@.str.197 = private unnamed_addr constant [5 x i8] c"drop\00", align 1
@.str.198 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c"Drop:\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c" %d%s\00", align 1
@.str.201 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.202 = private unnamed_addr constant [9 x i8] c"Add:%s%s\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c" slot\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c" ep0\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"ring\00", align 1
@.str.206 = private unnamed_addr constant [4 x i8] c"enq\00", align 1
@.str.207 = private unnamed_addr constant [8 x i8] c"enq_seg\00", align 1
@.str.208 = private unnamed_addr constant [8 x i8] c"deq_seg\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"num_segs\00", align 1
@.str.210 = private unnamed_addr constant [10 x i8] c"stream_id\00", align 1
@.str.211 = private unnamed_addr constant [12 x i8] c"cycle_state\00", align 1
@.str.212 = private unnamed_addr constant [14 x i8] c"num_trbs_free\00", align 1
@.str.213 = private unnamed_addr constant [15 x i8] c"bounce_buf_len\00", align 1
@.str.214 = private unnamed_addr constant [88 x i8] c"%s %p: enq %pad(%pad) deq %pad(%pad) segs %d stream %d free_trbs %d bounce %d cycle %d\0A\00", align 1
@.str.215 = private unnamed_addr constant [7 x i8] c"portsc\00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"port-%d: %s\0A\00", align 1
@.str.217 = private unnamed_addr constant [31 x i8] c"%s %s %s Link:%s PortSpeed:%d \00", align 1
@.str.218 = private unnamed_addr constant [8 x i8] c"Powered\00", align 1
@.str.219 = private unnamed_addr constant [12 x i8] c"Powered-off\00", align 1
@.str.220 = private unnamed_addr constant [10 x i8] c"Connected\00", align 1
@.str.221 = private unnamed_addr constant [14 x i8] c"Not-connected\00", align 1
@.str.222 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1
@.str.223 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"OverCurrent \00", align 1
@.str.225 = private unnamed_addr constant [10 x i8] c"In-Reset \00", align 1
@.str.226 = private unnamed_addr constant [9 x i8] c"Change: \00", align 1
@.str.227 = private unnamed_addr constant [5 x i8] c"CSC \00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"PEC \00", align 1
@.str.229 = private unnamed_addr constant [5 x i8] c"WRC \00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"OCC \00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"PRC \00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"PLC \00", align 1
@.str.233 = private unnamed_addr constant [5 x i8] c"CEC \00", align 1
@.str.234 = private unnamed_addr constant [5 x i8] c"CAS \00", align 1
@.str.235 = private unnamed_addr constant [7 x i8] c"Wake: \00", align 1
@.str.236 = private unnamed_addr constant [5 x i8] c"WCE \00", align 1
@.str.237 = private unnamed_addr constant [5 x i8] c"WDE \00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"WOE \00", align 1
@.str.239 = private unnamed_addr constant [3 x i8] c"U0\00", align 1
@.str.240 = private unnamed_addr constant [3 x i8] c"U1\00", align 1
@.str.241 = private unnamed_addr constant [3 x i8] c"U2\00", align 1
@.str.242 = private unnamed_addr constant [3 x i8] c"U3\00", align 1
@.str.243 = private unnamed_addr constant [9 x i8] c"RxDetect\00", align 1
@.str.244 = private unnamed_addr constant [9 x i8] c"Inactive\00", align 1
@.str.245 = private unnamed_addr constant [8 x i8] c"Polling\00", align 1
@.str.246 = private unnamed_addr constant [9 x i8] c"Recovery\00", align 1
@.str.247 = private unnamed_addr constant [10 x i8] c"Hot Reset\00", align 1
@.str.248 = private unnamed_addr constant [16 x i8] c"Compliance mode\00", align 1
@.str.249 = private unnamed_addr constant [10 x i8] c"Test mode\00", align 1
@.str.250 = private unnamed_addr constant [7 x i8] c"Resume\00", align 1
@.str.251 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.252 = private unnamed_addr constant [5 x i8] c"slot\00", align 1
@.str.253 = private unnamed_addr constant [9 x i8] c"doorbell\00", align 1
@.str.254 = private unnamed_addr constant [22 x i8] c"Ring doorbell for %s\0A\00", align 1
@.str.255 = private unnamed_addr constant [16 x i8] c"Command Ring %d\00", align 1
@.str.256 = private unnamed_addr constant [9 x i8] c"Slot %d \00", align 1
@.str.257 = private unnamed_addr constant [7 x i8] c"ep%d%s\00", align 1
@.str.258 = private unnamed_addr constant [12 x i8] c"Reserved %d\00", align 1
@.str.259 = private unnamed_addr constant [18 x i8] c"Vendor Defined %d\00", align 1
@.str.260 = private unnamed_addr constant [11 x i8] c" Stream %d\00", align 1
@.str.261 = private unnamed_addr constant [21 x i8] c"struct dbc_request *\00", align 1
@.str.262 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@.str.263 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.264 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@.str.265 = private unnamed_addr constant [32 x i8] c"%s: req %p length %u/%u ==> %d\0A\00", align 1
@.str.266 = private unnamed_addr constant [8 x i8] c"bulk-in\00", align 1
@.str.267 = private unnamed_addr constant [9 x i8] c"bulk-out\00", align 1
@llvm.compiler.used = appending global [228 x ptr] [ptr @__event_xhci_add_endpoint, ptr @__event_xhci_address_ctrl_ctx, ptr @__event_xhci_address_ctx, ptr @__event_xhci_alloc_dev, ptr @__event_xhci_alloc_virt_device, ptr @__event_xhci_configure_endpoint, ptr @__event_xhci_configure_endpoint_ctrl_ctx, ptr @__event_xhci_dbc_alloc_request, ptr @__event_xhci_dbc_free_request, ptr @__event_xhci_dbc_gadget_ep_queue, ptr @__event_xhci_dbc_giveback_request, ptr @__event_xhci_dbc_handle_event, ptr @__event_xhci_dbc_handle_transfer, ptr @__event_xhci_dbc_queue_request, ptr @__event_xhci_dbg_address, ptr @__event_xhci_dbg_cancel_urb, ptr @__event_xhci_dbg_context_change, ptr @__event_xhci_dbg_init, ptr @__event_xhci_dbg_quirks, ptr @__event_xhci_dbg_reset_ep, ptr @__event_xhci_dbg_ring_expansion, ptr @__event_xhci_discover_or_reset_device, ptr @__event_xhci_free_dev, ptr @__event_xhci_free_virt_device, ptr @__event_xhci_get_port_status, ptr @__event_xhci_handle_cmd_addr_dev, ptr @__event_xhci_handle_cmd_config_ep, ptr @__event_xhci_handle_cmd_disable_slot, ptr @__event_xhci_handle_cmd_reset_dev, ptr @__event_xhci_handle_cmd_reset_ep, ptr @__event_xhci_handle_cmd_set_deq, ptr @__event_xhci_handle_cmd_set_deq_ep, ptr @__event_xhci_handle_cmd_stop_ep, ptr @__event_xhci_handle_command, ptr @__event_xhci_handle_event, ptr @__event_xhci_handle_port_status, ptr @__event_xhci_handle_transfer, ptr @__event_xhci_hub_status_data, ptr @__event_xhci_inc_deq, ptr @__event_xhci_inc_enq, ptr @__event_xhci_queue_trb, ptr @__event_xhci_ring_alloc, ptr @__event_xhci_ring_ep_doorbell, ptr @__event_xhci_ring_expansion, ptr @__event_xhci_ring_free, ptr @__event_xhci_ring_host_doorbell, ptr @__event_xhci_setup_addressable_virt_device, ptr @__event_xhci_setup_device, ptr @__event_xhci_setup_device_slot, ptr @__event_xhci_stop_device, ptr @__event_xhci_urb_dequeue, ptr @__event_xhci_urb_enqueue, ptr @__event_xhci_urb_giveback, ptr @__ksymtab___SCK__tp_func_xhci_dbg_quirks, ptr @__ksymtab___traceiter_xhci_dbg_quirks, ptr @__ksymtab___tracepoint_xhci_dbg_quirks, ptr @__tracepoint_ptr_xhci_add_endpoint, ptr @__tracepoint_ptr_xhci_address_ctrl_ctx, ptr @__tracepoint_ptr_xhci_address_ctx, ptr @__tracepoint_ptr_xhci_alloc_dev, ptr @__tracepoint_ptr_xhci_alloc_virt_device, ptr @__tracepoint_ptr_xhci_configure_endpoint, ptr @__tracepoint_ptr_xhci_configure_endpoint_ctrl_ctx, ptr @__tracepoint_ptr_xhci_dbc_alloc_request, ptr @__tracepoint_ptr_xhci_dbc_free_request, ptr @__tracepoint_ptr_xhci_dbc_gadget_ep_queue, ptr @__tracepoint_ptr_xhci_dbc_giveback_request, ptr @__tracepoint_ptr_xhci_dbc_handle_event, ptr @__tracepoint_ptr_xhci_dbc_handle_transfer, ptr @__tracepoint_ptr_xhci_dbc_queue_request, ptr @__tracepoint_ptr_xhci_dbg_address, ptr @__tracepoint_ptr_xhci_dbg_cancel_urb, ptr @__tracepoint_ptr_xhci_dbg_context_change, ptr @__tracepoint_ptr_xhci_dbg_init, ptr @__tracepoint_ptr_xhci_dbg_quirks, ptr @__tracepoint_ptr_xhci_dbg_reset_ep, ptr @__tracepoint_ptr_xhci_dbg_ring_expansion, ptr @__tracepoint_ptr_xhci_discover_or_reset_device, ptr @__tracepoint_ptr_xhci_free_dev, ptr @__tracepoint_ptr_xhci_free_virt_device, ptr @__tracepoint_ptr_xhci_get_port_status, ptr @__tracepoint_ptr_xhci_handle_cmd_addr_dev, ptr @__tracepoint_ptr_xhci_handle_cmd_config_ep, ptr @__tracepoint_ptr_xhci_handle_cmd_disable_slot, ptr @__tracepoint_ptr_xhci_handle_cmd_reset_dev, ptr @__tracepoint_ptr_xhci_handle_cmd_reset_ep, ptr @__tracepoint_ptr_xhci_handle_cmd_set_deq, ptr @__tracepoint_ptr_xhci_handle_cmd_set_deq_ep, ptr @__tracepoint_ptr_xhci_handle_cmd_stop_ep, ptr @__tracepoint_ptr_xhci_handle_command, ptr @__tracepoint_ptr_xhci_handle_event, ptr @__tracepoint_ptr_xhci_handle_port_status, ptr @__tracepoint_ptr_xhci_handle_transfer, ptr @__tracepoint_ptr_xhci_hub_status_data, ptr @__tracepoint_ptr_xhci_inc_deq, ptr @__tracepoint_ptr_xhci_inc_enq, ptr @__tracepoint_ptr_xhci_queue_trb, ptr @__tracepoint_ptr_xhci_ring_alloc, ptr @__tracepoint_ptr_xhci_ring_ep_doorbell, ptr @__tracepoint_ptr_xhci_ring_expansion, ptr @__tracepoint_ptr_xhci_ring_free, ptr @__tracepoint_ptr_xhci_ring_host_doorbell, ptr @__tracepoint_ptr_xhci_setup_addressable_virt_device, ptr @__tracepoint_ptr_xhci_setup_device, ptr @__tracepoint_ptr_xhci_setup_device_slot, ptr @__tracepoint_ptr_xhci_stop_device, ptr @__tracepoint_ptr_xhci_urb_dequeue, ptr @__tracepoint_ptr_xhci_urb_enqueue, ptr @__tracepoint_ptr_xhci_urb_giveback, ptr @__tracepoint_xhci_add_endpoint, ptr @__tracepoint_xhci_address_ctrl_ctx, ptr @__tracepoint_xhci_address_ctx, ptr @__tracepoint_xhci_alloc_dev, ptr @__tracepoint_xhci_alloc_virt_device, ptr @__tracepoint_xhci_configure_endpoint, ptr @__tracepoint_xhci_configure_endpoint_ctrl_ctx, ptr @__tracepoint_xhci_dbc_alloc_request, ptr @__tracepoint_xhci_dbc_free_request, ptr @__tracepoint_xhci_dbc_gadget_ep_queue, ptr @__tracepoint_xhci_dbc_giveback_request, ptr @__tracepoint_xhci_dbc_handle_event, ptr @__tracepoint_xhci_dbc_handle_transfer, ptr @__tracepoint_xhci_dbc_queue_request, ptr @__tracepoint_xhci_dbg_address, ptr @__tracepoint_xhci_dbg_cancel_urb, ptr @__tracepoint_xhci_dbg_context_change, ptr @__tracepoint_xhci_dbg_init, ptr @__tracepoint_xhci_dbg_quirks, ptr @__tracepoint_xhci_dbg_reset_ep, ptr @__tracepoint_xhci_dbg_ring_expansion, ptr @__tracepoint_xhci_discover_or_reset_device, ptr @__tracepoint_xhci_free_dev, ptr @__tracepoint_xhci_free_virt_device, ptr @__tracepoint_xhci_get_port_status, ptr @__tracepoint_xhci_handle_cmd_addr_dev, ptr @__tracepoint_xhci_handle_cmd_config_ep, ptr @__tracepoint_xhci_handle_cmd_disable_slot, ptr @__tracepoint_xhci_handle_cmd_reset_dev, ptr @__tracepoint_xhci_handle_cmd_reset_ep, ptr @__tracepoint_xhci_handle_cmd_set_deq, ptr @__tracepoint_xhci_handle_cmd_set_deq_ep, ptr @__tracepoint_xhci_handle_cmd_stop_ep, ptr @__tracepoint_xhci_handle_command, ptr @__tracepoint_xhci_handle_event, ptr @__tracepoint_xhci_handle_port_status, ptr @__tracepoint_xhci_handle_transfer, ptr @__tracepoint_xhci_hub_status_data, ptr @__tracepoint_xhci_inc_deq, ptr @__tracepoint_xhci_inc_enq, ptr @__tracepoint_xhci_queue_trb, ptr @__tracepoint_xhci_ring_alloc, ptr @__tracepoint_xhci_ring_ep_doorbell, ptr @__tracepoint_xhci_ring_expansion, ptr @__tracepoint_xhci_ring_free, ptr @__tracepoint_xhci_ring_host_doorbell, ptr @__tracepoint_xhci_setup_addressable_virt_device, ptr @__tracepoint_xhci_setup_device, ptr @__tracepoint_xhci_setup_device_slot, ptr @__tracepoint_xhci_stop_device, ptr @__tracepoint_xhci_urb_dequeue, ptr @__tracepoint_xhci_urb_enqueue, ptr @__tracepoint_xhci_urb_giveback, ptr @event_class_xhci_dbc_log_request, ptr @event_class_xhci_log_ctrl_ctx, ptr @event_class_xhci_log_ctx, ptr @event_class_xhci_log_doorbell, ptr @event_class_xhci_log_ep_ctx, ptr @event_class_xhci_log_free_virt_dev, ptr @event_class_xhci_log_msg, ptr @event_class_xhci_log_portsc, ptr @event_class_xhci_log_ring, ptr @event_class_xhci_log_slot_ctx, ptr @event_class_xhci_log_trb, ptr @event_class_xhci_log_urb, ptr @event_class_xhci_log_virt_dev, ptr @event_xhci_add_endpoint, ptr @event_xhci_address_ctrl_ctx, ptr @event_xhci_address_ctx, ptr @event_xhci_alloc_dev, ptr @event_xhci_alloc_virt_device, ptr @event_xhci_configure_endpoint, ptr @event_xhci_configure_endpoint_ctrl_ctx, ptr @event_xhci_dbc_alloc_request, ptr @event_xhci_dbc_free_request, ptr @event_xhci_dbc_gadget_ep_queue, ptr @event_xhci_dbc_giveback_request, ptr @event_xhci_dbc_handle_event, ptr @event_xhci_dbc_handle_transfer, ptr @event_xhci_dbc_queue_request, ptr @event_xhci_dbg_address, ptr @event_xhci_dbg_cancel_urb, ptr @event_xhci_dbg_context_change, ptr @event_xhci_dbg_init, ptr @event_xhci_dbg_quirks, ptr @event_xhci_dbg_reset_ep, ptr @event_xhci_dbg_ring_expansion, ptr @event_xhci_discover_or_reset_device, ptr @event_xhci_free_dev, ptr @event_xhci_free_virt_device, ptr @event_xhci_get_port_status, ptr @event_xhci_handle_cmd_addr_dev, ptr @event_xhci_handle_cmd_config_ep, ptr @event_xhci_handle_cmd_disable_slot, ptr @event_xhci_handle_cmd_reset_dev, ptr @event_xhci_handle_cmd_reset_ep, ptr @event_xhci_handle_cmd_set_deq, ptr @event_xhci_handle_cmd_set_deq_ep, ptr @event_xhci_handle_cmd_stop_ep, ptr @event_xhci_handle_command, ptr @event_xhci_handle_event, ptr @event_xhci_handle_port_status, ptr @event_xhci_handle_transfer, ptr @event_xhci_hub_status_data, ptr @event_xhci_inc_deq, ptr @event_xhci_inc_enq, ptr @event_xhci_queue_trb, ptr @event_xhci_ring_alloc, ptr @event_xhci_ring_ep_doorbell, ptr @event_xhci_ring_expansion, ptr @event_xhci_ring_free, ptr @event_xhci_ring_host_doorbell, ptr @event_xhci_setup_addressable_virt_device, ptr @event_xhci_setup_device, ptr @event_xhci_setup_device_slot, ptr @event_xhci_stop_device, ptr @event_xhci_urb_dequeue, ptr @event_xhci_urb_enqueue, ptr @event_xhci_urb_giveback], section "llvm.metadata"
@switch.table.trace_raw_output_xhci_log_trb.268 = private unnamed_addr constant [37 x ptr] [ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.119, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], align 4
@switch.table.trace_raw_output_xhci_log_trb.269 = private unnamed_addr constant [8 x ptr] [ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80], align 4
@switch.table.trace_raw_output_xhci_log_trb.270 = private unnamed_addr constant [8 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], align 4
@switch.table.trace_raw_output_xhci_log_trb.271 = private unnamed_addr constant [15 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], align 4
@switch.table.trace_raw_output_xhci_log_trb.272 = private unnamed_addr constant [10 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], align 4
@switch.table.trace_raw_output_xhci_log_trb.273 = private unnamed_addr constant [56 x ptr] [ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.81, ptr @.str.82, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], align 4
@switch.table.trace_raw_output_xhci_log_ep_ctx = private unnamed_addr constant [8 x ptr] [ptr @.str.172, ptr @.str.173, ptr @.str.173, ptr @.str.173, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171], align 4
@switch.table.trace_raw_output_xhci_log_ep_ctx.274 = private unnamed_addr constant [8 x ptr] [ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176], align 4
@switch.table.trace_raw_output_xhci_log_slot_ctx = private unnamed_addr constant [5 x ptr] [ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187], align 4
@switch.table.trace_raw_output_xhci_log_slot_ctx.275 = private unnamed_addr constant [4 x ptr] [ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195], align 4
@switch.table.trace_raw_output_xhci_log_ring = private unnamed_addr constant [7 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], align 4
@switch.table.trace_raw_output_xhci_log_portsc = private unnamed_addr constant [16 x ptr] [ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.223, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.251, ptr @.str.251, ptr @.str.251, ptr @.str.250], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbg_address(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_address, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
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
define dso_local i32 @__traceiter_xhci_dbg_context_change(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_context_change, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbg_quirks(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_quirks, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbg_reset_ep(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_reset_ep, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbg_cancel_urb(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_cancel_urb, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbg_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_init, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbg_ring_expansion(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_ring_expansion, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_address_ctx(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_address_ctx, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #8
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_event(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_event, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #8
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_command(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_command, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #8
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_transfer(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_transfer, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #8
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_queue_trb(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_queue_trb, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #8
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbc_handle_event(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_handle_event, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #8
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbc_handle_transfer(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_handle_transfer, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #8
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbc_gadget_ep_queue(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_gadget_ep_queue, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #8
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_free_virt_device(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_free_virt_device, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_alloc_virt_device(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_alloc_virt_device, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_setup_device(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_setup_device, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_setup_addressable_virt_device(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_setup_addressable_virt_device, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_stop_device(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_stop_device, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_urb_enqueue(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_urb_enqueue, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_urb_giveback(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_urb_giveback, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_urb_dequeue(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_urb_dequeue, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_cmd_stop_ep(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_cmd_stop_ep, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_cmd_set_deq_ep(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_cmd_set_deq_ep, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_cmd_reset_ep(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_cmd_reset_ep, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_cmd_config_ep(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_cmd_config_ep, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_add_endpoint(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_add_endpoint, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_alloc_dev(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_alloc_dev, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_free_dev(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_free_dev, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_cmd_disable_slot(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_cmd_disable_slot, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_discover_or_reset_device(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_discover_or_reset_device, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_setup_device_slot(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_setup_device_slot, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_cmd_addr_dev(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_cmd_addr_dev, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_cmd_reset_dev(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_cmd_reset_dev, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_cmd_set_deq(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_cmd_set_deq, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_configure_endpoint(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_configure_endpoint, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_address_ctrl_ctx(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_address_ctrl_ctx, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_configure_endpoint_ctrl_ctx(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_configure_endpoint_ctrl_ctx, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_ring_alloc(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_alloc, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_ring_free(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_free, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_ring_expansion(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_expansion, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_inc_enq(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_inc_enq, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_inc_deq(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_inc_deq, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_handle_port_status(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_handle_port_status, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #8
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_get_port_status(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_get_port_status, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #8
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_hub_status_data(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_hub_status_data, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #8
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_ring_ep_doorbell(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_ep_doorbell, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #8
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_ring_host_doorbell(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_ring_host_doorbell, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #8
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbc_alloc_request(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_alloc_request, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbc_free_request(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_free_request, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbc_queue_request(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_queue_request, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xhci_dbc_giveback_request(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbc_giveback_request, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #8
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_msg(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %12, label %25, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 512) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_msg, ptr %14, i32 0, i32 1
  store i32 32768012, ptr %17, align 4
  %18 = getelementptr i8, ptr %14, i32 12
  %19 = load ptr, ptr %1, align 4
  %20 = getelementptr inbounds %struct.va_format, ptr %1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 4
  %23 = insertvalue [1 x i32] undef, i32 %22, 0
  %24 = call i32 @vsnprintf(ptr noundef %18, i32 noundef 500, ptr noundef %19, [1 x i32] %23)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #8
  br label %25

25:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_msg(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #6, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 516, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #8
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #8
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_xhci_log_msg, ptr %20, i32 0, i32 1
  store i32 32768012, ptr %33, align 4
  %34 = getelementptr i8, ptr %20, i32 12
  %35 = load ptr, ptr %1, align 4
  %36 = getelementptr inbounds %struct.va_format, ptr %1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %37, align 4
  %39 = insertvalue [1 x i32] undef, i32 %38, 0
  %40 = call i32 @vsnprintf(ptr noundef %34, i32 noundef 500, ptr noundef %35, [1 x i32] %39)
  %41 = load i32, ptr %4, align 4
  %42 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 516, i32 noundef %41, ptr noundef %0, i64 noundef 1, ptr noundef %42, ptr noundef %12, ptr noundef null) #8
  br label %43

43:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_ctx(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %14, label %63, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 10
  %17 = load i32, ptr %16, align 8
  %18 = shl i32 %17, 3
  %19 = and i32 %18, 32
  %20 = or i32 %19, 8
  %21 = load i32, ptr %2, align 4
  %22 = icmp eq i32 %21, 2
  %23 = zext i1 %22 to i32
  %24 = add i32 %3, 1
  %25 = add i32 %24, %23
  %26 = mul i32 %25, %20
  %27 = shl i32 %26, 2
  %28 = add i32 %27, 36
  %29 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %28) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %63, label %31

31:                                               ; preds = %15
  %32 = shl i32 %26, 18
  %33 = or i32 %32, 36
  %34 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %29, i32 0, i32 7
  store i32 %33, ptr %34, align 4
  %35 = load ptr, ptr %1, align 8
  %36 = load ptr, ptr %35, align 8
  %37 = load i32, ptr %16, align 8
  %38 = and i32 %37, 4
  %39 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %29, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = load i32, ptr %2, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %29, i32 0, i32 2
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.xhci_container_ctx, ptr %2, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %29, i32 0, i32 3
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.xhci_container_ctx, ptr %2, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %29, i32 0, i32 4
  store ptr %46, ptr %47, align 4
  %48 = getelementptr i8, ptr %36, i32 696
  %49 = load i32, ptr %48, align 8
  %50 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %29, i32 0, i32 6
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %29, i32 0, i32 5
  store i32 %3, ptr %51, align 4
  %52 = getelementptr i8, ptr %29, i32 36
  %53 = load ptr, ptr %45, align 4
  %54 = load i32, ptr %16, align 8
  %55 = shl i32 %54, 5
  %56 = and i32 %55, 128
  %57 = or i32 %56, 32
  %58 = load i32, ptr %2, align 4
  %59 = icmp eq i32 %58, 2
  %60 = zext i1 %59 to i32
  %61 = add i32 %24, %60
  %62 = mul i32 %61, %57
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %52, ptr align 1 %53, i32 %62, i1 false)
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #8
  br label %63

63:                                               ; preds = %31, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_ctx(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.xhci_hcd, ptr %1, i32 0, i32 10
  %8 = load i32, ptr %7, align 8
  %9 = shl i32 %8, 3
  %10 = and i32 %9, 32
  %11 = or i32 %10, 8
  %12 = load i32, ptr %2, align 4
  %13 = icmp eq i32 %12, 2
  %14 = zext i1 %13 to i32
  %15 = add i32 %3, 1
  %16 = add i32 %15, %14
  %17 = mul i32 %16, %11
  %18 = shl i32 %17, 2
  %19 = shl i32 %17, 18
  %20 = or i32 %19, 36
  %21 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %22 = load ptr, ptr %21, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #6, !srcloc !12
  %27 = add i32 %26, %23
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load volatile ptr, ptr %28, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %83, label %35

35:                                               ; preds = %32, %4
  %36 = add i32 %18, 47
  %37 = and i32 %36, -24
  %38 = add nsw i32 %37, -4
  %39 = call ptr @perf_trace_buf_alloc(i32 noundef %38, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %83, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %5, align 4
  %43 = call ptr @llvm.returnaddress(i32 0) #8
  %44 = ptrtoint ptr %43 to i32
  %45 = getelementptr [18 x i32], ptr %42, i32 0, i32 15
  store i32 %44, ptr %45, align 4
  %46 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %47 = ptrtoint ptr %46 to i32
  %48 = getelementptr [18 x i32], ptr %42, i32 0, i32 11
  store i32 %47, ptr %48, align 4
  %49 = call i32 @llvm.read_register.i32(metadata !0) #8
  %50 = getelementptr [18 x i32], ptr %42, i32 0, i32 13
  store i32 %49, ptr %50, align 4
  %51 = getelementptr [18 x i32], ptr %42, i32 0, i32 16
  store i32 19, ptr %51, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %39, i32 0, i32 7
  store i32 %20, ptr %52, align 4
  %53 = load ptr, ptr %1, align 8
  %54 = load ptr, ptr %53, align 8
  %55 = load i32, ptr %7, align 8
  %56 = and i32 %55, 4
  %57 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %39, i32 0, i32 1
  store i32 %56, ptr %57, align 4
  %58 = load i32, ptr %2, align 4
  %59 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %39, i32 0, i32 2
  store i32 %58, ptr %59, align 4
  %60 = getelementptr inbounds %struct.xhci_container_ctx, ptr %2, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %39, i32 0, i32 3
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.xhci_container_ctx, ptr %2, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %39, i32 0, i32 4
  store ptr %64, ptr %65, align 4
  %66 = getelementptr i8, ptr %54, i32 696
  %67 = load i32, ptr %66, align 8
  %68 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %39, i32 0, i32 6
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %39, i32 0, i32 5
  store i32 %3, ptr %69, align 4
  %70 = getelementptr i8, ptr %39, i32 36
  %71 = load ptr, ptr %63, align 4
  %72 = load i32, ptr %7, align 8
  %73 = shl i32 %72, 5
  %74 = and i32 %73, 128
  %75 = or i32 %74, 32
  %76 = load i32, ptr %2, align 4
  %77 = icmp eq i32 %76, 2
  %78 = zext i1 %77 to i32
  %79 = add i32 %15, %78
  %80 = mul i32 %79, %75
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %70, ptr align 1 %71, i32 %80, i1 false)
  %81 = load i32, ptr %6, align 4
  %82 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %39, i32 noundef %38, i32 noundef %81, ptr noundef %0, i64 noundef 1, ptr noundef %82, ptr noundef %28, ptr noundef null) #8
  br label %83

83:                                               ; preds = %41, %35, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_trb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %13, label %33, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 532) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %15, i32 0, i32 6
  store i32 32768032, ptr %18, align 4
  %19 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 14
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %15, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %2, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %15, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %15, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %15, i32 0, i32 4
  store i32 %28, ptr %29, align 4
  %30 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %15, i32 0, i32 5
  store i32 %31, ptr %32, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #8
  br label %33

33:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_trb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %51, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 532, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %51, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #8
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #8
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %21, i32 0, i32 6
  store i32 32768032, ptr %34, align 4
  %35 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 14
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %21, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr %2, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %21, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %21, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %21, i32 0, i32 4
  store i32 %44, ptr %45, align 4
  %46 = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %21, i32 0, i32 5
  store i32 %47, ptr %48, align 4
  %49 = load i32, ptr %5, align 4
  %50 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 532, i32 noundef %49, ptr noundef %0, i64 noundef 1, ptr noundef %50, ptr noundef %13, ptr noundef null) #8
  br label %51

51:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_free_virt_dev(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %12, label %39, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 40) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.xhci_container_ctx, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %14, i32 0, i32 3
  store i64 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.xhci_container_ctx, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %14, i32 0, i32 2
  store i64 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 5
  %31 = load i8, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %14, i32 0, i32 4
  store i8 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 6
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %14, i32 0, i32 5
  store i8 %34, ptr %35, align 1
  %36 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 10
  %37 = load i16, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %14, i32 0, i32 6
  store i16 %37, ptr %38, align 2
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #8
  br label %39

39:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_free_virt_dev(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #6, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %57, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %57, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #8
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #8
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 8
  %34 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.xhci_container_ctx, ptr %35, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %20, i32 0, i32 3
  store i64 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.xhci_container_ctx, ptr %41, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %20, i32 0, i32 2
  store i64 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 5
  %47 = load i8, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %20, i32 0, i32 4
  store i8 %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 6
  %50 = load i8, ptr %49, align 1
  %51 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %20, i32 0, i32 5
  store i8 %50, ptr %51, align 1
  %52 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 10
  %53 = load i16, ptr %52, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %20, i32 0, i32 6
  store i16 %53, ptr %54, align 2
  %55 = load i32, ptr %4, align 4
  %56 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 44, i32 noundef %55, ptr noundef %0, i64 noundef 1, ptr noundef %56, ptr noundef %12, ptr noundef null) #8
  br label %57

57:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_virt_dev(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %12, label %54, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 56) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %54, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.xhci_container_ctx, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %14, i32 0, i32 3
  store i64 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.xhci_container_ctx, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %14, i32 0, i32 2
  store i64 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %14, i32 0, i32 4
  store i32 %32, ptr %33, align 8
  %34 = load ptr, ptr %30, align 4
  %35 = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 3
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %14, i32 0, i32 5
  store i32 %36, ptr %37, align 4
  %38 = load ptr, ptr %30, align 4
  %39 = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %14, i32 0, i32 6
  store i32 %40, ptr %41, align 8
  %42 = load ptr, ptr %30, align 4
  %43 = getelementptr inbounds %struct.usb_device, ptr %42, i32 0, i32 25
  %44 = load i8, ptr %43, align 2
  %45 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %14, i32 0, i32 7
  store i8 %44, ptr %45, align 4
  %46 = load ptr, ptr %30, align 4
  %47 = getelementptr inbounds %struct.usb_device, ptr %46, i32 0, i32 26
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %14, i32 0, i32 8
  store i8 %48, ptr %49, align 1
  %50 = load ptr, ptr %30, align 4
  %51 = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 43
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %14, i32 0, i32 9
  store i32 %52, ptr %53, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #8
  br label %54

54:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_virt_dev(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #6, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %72, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %72, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #8
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #8
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 8
  %34 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.xhci_container_ctx, ptr %35, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %20, i32 0, i32 3
  store i64 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.xhci_container_ctx, ptr %41, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %20, i32 0, i32 2
  store i64 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load i32, ptr %47, align 8
  %49 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %20, i32 0, i32 4
  store i32 %48, ptr %49, align 8
  %50 = load ptr, ptr %46, align 4
  %51 = getelementptr inbounds %struct.usb_device, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %20, i32 0, i32 5
  store i32 %52, ptr %53, align 4
  %54 = load ptr, ptr %46, align 4
  %55 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %20, i32 0, i32 6
  store i32 %56, ptr %57, align 8
  %58 = load ptr, ptr %46, align 4
  %59 = getelementptr inbounds %struct.usb_device, ptr %58, i32 0, i32 25
  %60 = load i8, ptr %59, align 2
  %61 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %20, i32 0, i32 7
  store i8 %60, ptr %61, align 4
  %62 = load ptr, ptr %46, align 4
  %63 = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 26
  %64 = load i8, ptr %63, align 1
  %65 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %20, i32 0, i32 8
  store i8 %64, ptr %65, align 1
  %66 = load ptr, ptr %46, align 4
  %67 = getelementptr inbounds %struct.usb_device, ptr %66, i32 0, i32 43
  %68 = load i32, ptr %67, align 8
  %69 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %20, i32 0, i32 9
  store i32 %68, ptr %69, align 8
  %70 = load i32, ptr %4, align 4
  %71 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 60, i32 noundef %70, ptr noundef %0, i64 noundef 1, ptr noundef %71, ptr noundef %12, ptr noundef null) #8
  br label %72

72:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_urb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %12, label %66, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 60) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %66, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %14, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %14, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 12
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %14, i32 0, i32 4
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %14, i32 0, i32 5
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 17
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %14, i32 0, i32 6
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 18
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %14, i32 0, i32 7
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %14, i32 0, i32 8
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %14, i32 0, i32 9
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %43, i32 0, i32 2
  %45 = load i8, ptr %44, align 1
  %46 = and i8 %45, 15
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %14, i32 0, i32 10
  store i32 %47, ptr %48, align 4
  %49 = load ptr, ptr %42, align 4
  %50 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %49, i32 0, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = lshr i8 %51, 7
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %14, i32 0, i32 11
  store i32 %53, ptr %54, align 4
  %55 = load ptr, ptr %42, align 4
  %56 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %55, i32 0, i32 3
  %57 = load i8, ptr %56, align 1
  %58 = and i8 %57, 3
  %59 = zext i8 %58 to i32
  %60 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %14, i32 0, i32 12
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 43
  %64 = load i32, ptr %63, align 8
  %65 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %14, i32 0, i32 13
  store i32 %64, ptr %65, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #8
  br label %66

66:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_urb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #6, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %84, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %84, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #8
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #8
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 10
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %20, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %20, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 12
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %20, i32 0, i32 4
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 13
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %20, i32 0, i32 5
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 17
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %20, i32 0, i32 6
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 18
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %20, i32 0, i32 7
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 19
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %20, i32 0, i32 8
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 20
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %20, i32 0, i32 9
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 9
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %59, i32 0, i32 2
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, 15
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %20, i32 0, i32 10
  store i32 %63, ptr %64, align 4
  %65 = load ptr, ptr %58, align 4
  %66 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %65, i32 0, i32 2
  %67 = load i8, ptr %66, align 1
  %68 = lshr i8 %67, 7
  %69 = zext i8 %68 to i32
  %70 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %20, i32 0, i32 11
  store i32 %69, ptr %70, align 4
  %71 = load ptr, ptr %58, align 4
  %72 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %71, i32 0, i32 3
  %73 = load i8, ptr %72, align 1
  %74 = and i8 %73, 3
  %75 = zext i8 %74 to i32
  %76 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %20, i32 0, i32 12
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.urb, ptr %1, i32 0, i32 8
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.usb_device, ptr %78, i32 0, i32 43
  %80 = load i32, ptr %79, align 8
  %81 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %20, i32 0, i32 13
  store i32 %80, ptr %81, align 4
  %82 = load i32, ptr %4, align 4
  %83 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 60, i32 noundef %82, ptr noundef %0, i64 noundef 1, ptr noundef %83, ptr noundef %12, ptr noundef null) #8
  br label %84

84:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_ep_ctx(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %12, label %29, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 532) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %14, i32 0, i32 5
  store i32 32768032, ptr %17, align 4
  %18 = load i32, ptr %1, align 8
  %19 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %14, i32 0, i32 1
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %14, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %1, i32 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %14, i32 0, i32 3
  store i64 %24, ptr %25, align 8
  %26 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %14, i32 0, i32 4
  store i32 %27, ptr %28, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #8
  br label %29

29:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_ep_ctx(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #6, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 532, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #8
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #8
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %20, i32 0, i32 5
  store i32 32768032, ptr %33, align 4
  %34 = load i32, ptr %1, align 8
  %35 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %20, i32 0, i32 1
  store i32 %34, ptr %35, align 8
  %36 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %1, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %20, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %1, i32 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %20, i32 0, i32 3
  store i64 %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %1, i32 0, i32 3
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %20, i32 0, i32 4
  store i32 %43, ptr %44, align 8
  %45 = load i32, ptr %4, align 4
  %46 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 532, i32 noundef %45, ptr noundef %0, i64 noundef 1, ptr noundef %46, ptr noundef %12, ptr noundef null) #8
  br label %47

47:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_slot_ctx(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %12, label %29, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 528) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %14, i32 0, i32 5
  store i32 32768028, ptr %17, align 4
  %18 = load i32, ptr %1, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %14, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %14, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %1, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %14, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %14, i32 0, i32 4
  store i32 %27, ptr %28, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #8
  br label %29

29:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_slot_ctx(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #6, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 532, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #8
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #8
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %20, i32 0, i32 5
  store i32 32768028, ptr %33, align 4
  %34 = load i32, ptr %1, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %20, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %1, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %20, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %1, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %20, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %1, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %20, i32 0, i32 4
  store i32 %43, ptr %44, align 4
  %45 = load i32, ptr %4, align 4
  %46 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 532, i32 noundef %45, ptr noundef %0, i64 noundef 1, ptr noundef %46, ptr noundef %12, ptr noundef null) #8
  br label %47

47:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_ctrl_ctx(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %12, label %23, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 520) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %14, i32 0, i32 3
  store i32 32768020, ptr %17, align 4
  %18 = load i32, ptr %1, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %14, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %14, i32 0, i32 2
  store i32 %21, ptr %22, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #8
  br label %23

23:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_ctrl_ctx(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #6, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 524, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #8
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #8
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %20, i32 0, i32 3
  store i32 32768020, ptr %33, align 4
  %34 = load i32, ptr %1, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %20, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.xhci_input_control_ctx, ptr %1, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %20, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  %39 = load i32, ptr %4, align 4
  %40 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 524, i32 noundef %39, ptr noundef %0, i64 noundef 1, ptr noundef %40, ptr noundef %12, ptr noundef null) #8
  br label %41

41:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_ring(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %12, label %56, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 52) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %56, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %14, i32 0, i32 2
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 14
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %14, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %14, i32 0, i32 7
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %14, i32 0, i32 8
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.xhci_segment, ptr %28, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %14, i32 0, i32 5
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.xhci_segment, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %14, i32 0, i32 6
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %14, i32 0, i32 9
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %14, i32 0, i32 10
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 13
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %14, i32 0, i32 11
  store i32 %44, ptr %45, align 4
  %46 = load ptr, ptr %27, align 4
  %47 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = call i32 @xhci_trb_virt_to_dma(ptr noundef %46, ptr noundef %48) #8
  %50 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %14, i32 0, i32 3
  store i32 %49, ptr %50, align 4
  %51 = load ptr, ptr %32, align 4
  %52 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 @xhci_trb_virt_to_dma(ptr noundef %51, ptr noundef %53) #8
  %55 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %14, i32 0, i32 4
  store i32 %54, ptr %55, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #8
  br label %56

56:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_ring(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #6, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %74, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %74, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #8
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #8
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %20, i32 0, i32 2
  store ptr %1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 14
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %20, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 10
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %20, i32 0, i32 7
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 9
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %20, i32 0, i32 8
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.xhci_segment, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %20, i32 0, i32 5
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.xhci_segment, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %20, i32 0, i32 6
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 7
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %20, i32 0, i32 9
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 11
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %20, i32 0, i32 10
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 13
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %20, i32 0, i32 11
  store i32 %60, ptr %61, align 4
  %62 = load ptr, ptr %43, align 4
  %63 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = call i32 @xhci_trb_virt_to_dma(ptr noundef %62, ptr noundef %64) #8
  %66 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %20, i32 0, i32 3
  store i32 %65, ptr %66, align 4
  %67 = load ptr, ptr %48, align 4
  %68 = getelementptr inbounds %struct.xhci_ring, ptr %1, i32 0, i32 4
  %69 = load ptr, ptr %68, align 4
  %70 = call i32 @xhci_trb_virt_to_dma(ptr noundef %67, ptr noundef %69) #8
  %71 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %20, i32 0, i32 4
  store i32 %70, ptr %71, align 4
  %72 = load i32, ptr %4, align 4
  %73 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 52, i32 noundef %72, ptr noundef %0, i64 noundef 1, ptr noundef %73, ptr noundef %12, ptr noundef null) #8
  br label %74

74:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_portsc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %13, label %21, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 520) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %15, i32 0, i32 3
  store i32 32768020, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %15, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %15, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #8
  br label %21

21:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_portsc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 524, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #8
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #8
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %21, i32 0, i32 3
  store i32 32768020, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %21, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %21, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = load i32, ptr %5, align 4
  %38 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 524, i32 noundef %37, ptr noundef %0, i64 noundef 1, ptr noundef %38, ptr noundef %13, ptr noundef null) #8
  br label %39

39:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_log_doorbell(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %13, label %21, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 520) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %15, i32 0, i32 3
  store i32 32768020, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %15, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %15, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #8
  br label %21

21:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xhci_log_doorbell(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 524, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #8
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #8
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %21, i32 0, i32 3
  store i32 32768020, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %21, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %21, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = load i32, ptr %5, align 4
  %38 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 524, i32 noundef %37, ptr noundef %0, i64 noundef 1, ptr noundef %38, ptr noundef %13, ptr noundef null) #8
  br label %39

39:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xhci_dbc_log_request(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #8
  br i1 %12, label %31, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 28) #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.dbc_request, ptr %1, i32 0, i32 11
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %14, i32 0, i32 2
  store i8 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.dbc_request, ptr %1, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %14, i32 0, i32 3
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.dbc_request, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %14, i32 0, i32 4
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.dbc_request, ptr %1, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %14, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #8
  br label %31

31:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xhci_dbc_log_request(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #8
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #6, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %49, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %49, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #8
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #8
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.dbc_request, ptr %1, i32 0, i32 11
  %35 = load i8, ptr %34, align 4
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %20, i32 0, i32 2
  store i8 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dbc_request, ptr %1, i32 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %20, i32 0, i32 3
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dbc_request, ptr %1, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %20, i32 0, i32 4
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dbc_request, ptr %1, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %20, i32 0, i32 5
  store i32 %45, ptr %46, align 4
  %47 = load i32, ptr %4, align 4
  %48 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 28, i32 noundef %47, ptr noundef %0, i64 noundef 1, ptr noundef %48, ptr noundef %12, ptr noundef null) #8
  br label %49

49:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_msg(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_xhci_log_msg, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %13) #8
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #8
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_ctx(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctx, ptr %5, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %11, i32 noundef %13, i64 noundef %16, ptr noundef %18) #8
  %19 = tail call i32 @trace_handle_return(ptr noundef %9) #8
  br label %20

20:                                               ; preds = %8, %3
  %21 = phi i32 [ %19, %8 ], [ %6, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_trb(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %314

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds [7 x ptr], ptr @switch.table.trace_raw_output_xhci_log_ring, i32 0, i32 %11
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi ptr [ %15, %13 ], [ @.str.31, %8 ]
  %18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %5, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 65535
  %21 = getelementptr i8, ptr %5, i32 %20
  %22 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %5, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %5, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %5, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_xhci_log_trb, ptr %5, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 10
  %31 = and i32 %30, 63
  switch i32 %31, label %301 [
    i32 6, label %32
    i32 32, label %46
    i32 33, label %46
    i32 34, label %46
    i32 35, label %46
    i32 36, label %46
    i32 37, label %46
    i32 38, label %46
    i32 39, label %46
    i32 2, label %76
    i32 3, label %100
    i32 4, label %126
    i32 1, label %143
    i32 5, label %143
    i32 7, label %143
    i32 8, label %143
    i32 23, label %181
    i32 9, label %181
    i32 10, label %195
    i32 19, label %195
    i32 11, label %210
    i32 12, label %219
    i32 13, label %228
    i32 14, label %234
    i32 15, label %245
    i32 16, label %255
    i32 17, label %264
    i32 18, label %270
    i32 20, label %278
    i32 21, label %285
    i32 22, label %293
  ]

32:                                               ; preds = %16
  %33 = lshr i32 %27, 22
  %34 = and i32 %29, 32
  %35 = xor i32 %34, 105
  %36 = and i32 %29, 16
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 99, i32 67
  %39 = and i32 %29, 2
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 116, i32 84
  %42 = and i32 %29, 1
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 99, i32 67
  %45 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.32, i32 noundef %25, i32 noundef %23, i32 noundef %33, ptr noundef nonnull @.str.55, i32 noundef %35, i32 noundef %38, i32 noundef %41, i32 noundef %44) #8
  br label %312

46:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16
  %47 = lshr i32 %27, 24
  %48 = trunc i32 %47 to i8
  %49 = icmp ult i8 %48, 37
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = ashr i32 %27, 24
  %52 = getelementptr inbounds [37 x ptr], ptr @switch.table.trace_raw_output_xhci_log_trb.268, i32 0, i32 %51
  %53 = load ptr, ptr %52, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi ptr [ %53, %50 ], [ @.str.119, %46 ]
  %56 = and i32 %27, 16777215
  %57 = lshr i32 %29, 24
  %58 = lshr i32 %29, 16
  %59 = and i32 %58, 31
  %60 = trunc i32 %30 to i6
  %61 = xor i6 %60, -32
  %62 = icmp ult i6 %61, 8
  br i1 %62, label %63, label %67

63:                                               ; preds = %54
  %64 = sext i6 %61 to i32
  %65 = getelementptr inbounds [8 x ptr], ptr @switch.table.trace_raw_output_xhci_log_trb.269, i32 0, i32 %64
  %66 = load ptr, ptr %65, align 4
  br label %67

67:                                               ; preds = %63, %54
  %68 = phi ptr [ %66, %63 ], [ @.str.31, %54 ]
  %69 = and i32 %29, 4
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 101, i32 69
  %72 = and i32 %29, 1
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 99, i32 67
  %75 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.33, i32 noundef %25, i32 noundef %23, ptr noundef nonnull %55, i32 noundef %56, i32 noundef %57, i32 noundef %59, ptr noundef nonnull %68, i32 noundef %71, i32 noundef %74) #8
  br label %312

76:                                               ; preds = %16
  %77 = and i32 %23, 255
  %78 = lshr i32 %23, 8
  %79 = and i32 %78, 255
  %80 = lshr i32 %23, 24
  %81 = lshr i32 %23, 16
  %82 = and i32 %81, 255
  %83 = lshr i32 %25, 8
  %84 = and i32 %83, 255
  %85 = and i32 %25, 255
  %86 = lshr i32 %25, 16
  %87 = and i32 %27, 131071
  %88 = lshr i32 %27, 17
  %89 = and i32 %88, 31
  %90 = lshr i32 %27, 22
  %91 = and i32 %29, 64
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 105, i32 73
  %94 = and i32 %29, 32
  %95 = xor i32 %94, 105
  %96 = and i32 %29, 1
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i32 99, i32 67
  %99 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.34, i32 noundef %77, i32 noundef %79, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %85, i32 noundef %86, i32 noundef %87, i32 noundef %89, i32 noundef %90, ptr noundef nonnull @.str.51, i32 noundef %93, i32 noundef %95, i32 noundef %98) #8
  br label %312

100:                                              ; preds = %16
  %101 = and i32 %27, 131071
  %102 = lshr i32 %27, 17
  %103 = and i32 %102, 31
  %104 = lshr i32 %27, 22
  %105 = and i32 %29, 64
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 105, i32 73
  %108 = and i32 %29, 32
  %109 = xor i32 %108, 105
  %110 = and i32 %29, 16
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %111, i32 99, i32 67
  %113 = and i32 %29, 8
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %114, i32 115, i32 83
  %116 = and i32 %29, 4
  %117 = icmp eq i32 %116, 0
  %118 = select i1 %117, i32 105, i32 73
  %119 = and i32 %29, 2
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %120, i32 101, i32 69
  %122 = and i32 %29, 1
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, i32 99, i32 67
  %125 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.35, i32 noundef %25, i32 noundef %23, i32 noundef %101, i32 noundef %103, i32 noundef %104, ptr noundef nonnull @.str.52, i32 noundef %107, i32 noundef %109, i32 noundef %112, i32 noundef %115, i32 noundef %118, i32 noundef %121, i32 noundef %124) #8
  br label %312

126:                                              ; preds = %16
  %127 = and i32 %27, 131071
  %128 = lshr i32 %27, 17
  %129 = and i32 %128, 31
  %130 = lshr i32 %27, 22
  %131 = and i32 %29, 32
  %132 = xor i32 %131, 105
  %133 = and i32 %29, 16
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %134, i32 99, i32 67
  %136 = and i32 %29, 2
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %137, i32 101, i32 69
  %139 = and i32 %29, 1
  %140 = icmp eq i32 %139, 0
  %141 = select i1 %140, i32 99, i32 67
  %142 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.36, i32 noundef %25, i32 noundef %23, i32 noundef %127, i32 noundef %129, i32 noundef %130, ptr noundef nonnull @.str.53, i32 noundef %132, i32 noundef %135, i32 noundef %138, i32 noundef %141) #8
  br label %312

143:                                              ; preds = %16, %16, %16, %16
  %144 = and i32 %27, 131071
  %145 = lshr i32 %27, 17
  %146 = and i32 %145, 31
  %147 = lshr i32 %27, 22
  %148 = trunc i32 %30 to i6
  %149 = add i6 %148, -1
  %150 = icmp ult i6 %149, 8
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = sext i6 %149 to i32
  %153 = getelementptr inbounds [8 x ptr], ptr @switch.table.trace_raw_output_xhci_log_trb.270, i32 0, i32 %152
  %154 = load ptr, ptr %153, align 4
  br label %155

155:                                              ; preds = %151, %143
  %156 = phi ptr [ %154, %151 ], [ @.str.31, %143 ]
  %157 = and i32 %29, 512
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %158, i32 98, i32 66
  %160 = and i32 %29, 64
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %161, i32 105, i32 73
  %163 = and i32 %29, 32
  %164 = xor i32 %163, 105
  %165 = and i32 %29, 16
  %166 = icmp eq i32 %165, 0
  %167 = select i1 %166, i32 99, i32 67
  %168 = and i32 %29, 8
  %169 = icmp eq i32 %168, 0
  %170 = select i1 %169, i32 115, i32 83
  %171 = and i32 %29, 4
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %172, i32 105, i32 73
  %174 = and i32 %29, 2
  %175 = icmp eq i32 %174, 0
  %176 = select i1 %175, i32 101, i32 69
  %177 = and i32 %29, 1
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %178, i32 99, i32 67
  %180 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.37, i32 noundef %25, i32 noundef %23, i32 noundef %144, i32 noundef %146, i32 noundef %147, ptr noundef nonnull %156, i32 noundef %159, i32 noundef %162, i32 noundef %164, i32 noundef %167, i32 noundef %170, i32 noundef %173, i32 noundef %176, i32 noundef %179) #8
  br label %312

181:                                              ; preds = %16, %16
  %182 = trunc i32 %30 to i6
  %183 = add i6 %182, -9
  %184 = icmp ult i6 %183, 15
  br i1 %184, label %185, label %189

185:                                              ; preds = %181
  %186 = sext i6 %183 to i32
  %187 = getelementptr inbounds [15 x ptr], ptr @switch.table.trace_raw_output_xhci_log_trb.271, i32 0, i32 %186
  %188 = load ptr, ptr %187, align 4
  br label %189

189:                                              ; preds = %185, %181
  %190 = phi ptr [ %188, %185 ], [ @.str.31, %181 ]
  %191 = and i32 %29, 1
  %192 = icmp eq i32 %191, 0
  %193 = select i1 %192, i32 99, i32 67
  %194 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.38, ptr noundef nonnull %190, i32 noundef %193) #8
  br label %312

195:                                              ; preds = %16, %16
  %196 = trunc i32 %30 to i6
  %197 = add i6 %196, -10
  %198 = icmp ult i6 %197, 10
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = sext i6 %197 to i32
  %201 = getelementptr inbounds [10 x ptr], ptr @switch.table.trace_raw_output_xhci_log_trb.272, i32 0, i32 %200
  %202 = load ptr, ptr %201, align 4
  br label %203

203:                                              ; preds = %199, %195
  %204 = phi ptr [ %202, %199 ], [ @.str.31, %195 ]
  %205 = lshr i32 %29, 24
  %206 = and i32 %29, 1
  %207 = icmp eq i32 %206, 0
  %208 = select i1 %207, i32 99, i32 67
  %209 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.39, ptr noundef nonnull %204, i32 noundef %205, i32 noundef %208) #8
  br label %312

210:                                              ; preds = %16
  %211 = lshr i32 %29, 24
  %212 = and i32 %29, 512
  %213 = icmp eq i32 %212, 0
  %214 = select i1 %213, i32 98, i32 66
  %215 = and i32 %29, 1
  %216 = icmp eq i32 %215, 0
  %217 = select i1 %216, i32 99, i32 67
  %218 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.60, i32 noundef %25, i32 noundef %23, i32 noundef %211, i32 noundef %214, i32 noundef %217) #8
  br label %312

219:                                              ; preds = %16
  %220 = lshr i32 %29, 24
  %221 = and i32 %29, 512
  %222 = icmp eq i32 %221, 0
  %223 = select i1 %222, i32 100, i32 68
  %224 = and i32 %29, 1
  %225 = icmp eq i32 %224, 0
  %226 = select i1 %225, i32 99, i32 67
  %227 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.61, i32 noundef %25, i32 noundef %23, i32 noundef %220, i32 noundef %223, i32 noundef %226) #8
  br label %312

228:                                              ; preds = %16
  %229 = lshr i32 %29, 24
  %230 = and i32 %29, 1
  %231 = icmp eq i32 %230, 0
  %232 = select i1 %231, i32 99, i32 67
  %233 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.62, i32 noundef %25, i32 noundef %23, i32 noundef %229, i32 noundef %232) #8
  br label %312

234:                                              ; preds = %16
  %235 = lshr i32 %29, 24
  %236 = lshr i32 %29, 16
  %237 = and i32 %236, 31
  %238 = and i32 %29, 512
  %239 = icmp eq i32 %238, 0
  %240 = select i1 %239, i32 116, i32 84
  %241 = and i32 %29, 1
  %242 = icmp eq i32 %241, 0
  %243 = select i1 %242, i32 99, i32 67
  %244 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.63, i32 noundef %25, i32 noundef %23, i32 noundef %235, i32 noundef %237, i32 noundef %240, i32 noundef %243) #8
  br label %312

245:                                              ; preds = %16
  %246 = lshr i32 %29, 24
  %247 = lshr i32 %29, 23
  %248 = and i32 %247, 1
  %249 = lshr i32 %29, 16
  %250 = and i32 %249, 31
  %251 = and i32 %29, 1
  %252 = icmp eq i32 %251, 0
  %253 = select i1 %252, i32 99, i32 67
  %254 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %21, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.64, i32 noundef %246, i32 noundef %248, i32 noundef %250, i32 noundef %253) #8
  br label %312

255:                                              ; preds = %16
  %256 = lshr i32 %27, 16
  %257 = lshr i32 %29, 24
  %258 = lshr i32 %29, 16
  %259 = and i32 %258, 31
  %260 = and i32 %29, 1
  %261 = icmp eq i32 %260, 0
  %262 = select i1 %261, i32 99, i32 67
  %263 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.65, i32 noundef %25, i32 noundef %23, i32 noundef %256, i32 noundef %257, i32 noundef %259, i32 noundef %262) #8
  br label %312

264:                                              ; preds = %16
  %265 = lshr i32 %29, 24
  %266 = and i32 %29, 1
  %267 = icmp eq i32 %266, 0
  %268 = select i1 %267, i32 99, i32 67
  %269 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.66, i32 noundef %265, i32 noundef %268) #8
  br label %312

270:                                              ; preds = %16
  %271 = lshr i32 %27, 22
  %272 = lshr i32 %29, 16
  %273 = and i32 %272, 255
  %274 = and i32 %29, 1
  %275 = icmp eq i32 %274, 0
  %276 = select i1 %275, i32 99, i32 67
  %277 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.67, i32 noundef %25, i32 noundef %23, i32 noundef %271, i32 noundef %273, i32 noundef %276) #8
  br label %312

278:                                              ; preds = %16
  %279 = lshr i32 %29, 16
  %280 = and i32 %279, 4095
  %281 = and i32 %29, 1
  %282 = icmp eq i32 %281, 0
  %283 = select i1 %282, i32 99, i32 67
  %284 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.69, i32 noundef %280, i32 noundef %283) #8
  br label %312

285:                                              ; preds = %16
  %286 = lshr i32 %29, 24
  %287 = lshr i32 %29, 16
  %288 = and i32 %287, 15
  %289 = and i32 %29, 1
  %290 = icmp eq i32 %289, 0
  %291 = select i1 %290, i32 99, i32 67
  %292 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.70, i32 noundef %25, i32 noundef %23, i32 noundef %286, i32 noundef %288, i32 noundef %291) #8
  br label %312

293:                                              ; preds = %16
  %294 = and i32 %23, -32
  %295 = and i32 %23, 31
  %296 = lshr i32 %29, 24
  %297 = and i32 %29, 1
  %298 = icmp eq i32 %297, 0
  %299 = select i1 %298, i32 99, i32 67
  %300 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.71, i32 noundef %27, i32 noundef %25, i32 noundef %294, i32 noundef %295, i32 noundef %296, i32 noundef %299) #8
  br label %312

301:                                              ; preds = %16
  %302 = trunc i32 %30 to i6
  %303 = xor i6 %302, -32
  %304 = icmp ult i6 %303, -8
  br i1 %304, label %305, label %309

305:                                              ; preds = %301
  %306 = zext i6 %303 to i32
  %307 = getelementptr inbounds [56 x ptr], ptr @switch.table.trace_raw_output_xhci_log_trb.273, i32 0, i32 %306
  %308 = load ptr, ptr %307, align 4
  br label %309

309:                                              ; preds = %305, %301
  %310 = phi ptr [ %308, %305 ], [ @.str.31, %301 ]
  %311 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %21, i32 noundef 500, ptr noundef nonnull @.str.49, ptr noundef nonnull %310, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #8
  br label %312

312:                                              ; preds = %309, %293, %285, %278, %270, %264, %255, %245, %234, %228, %219, %210, %203, %189, %155, %126, %100, %76, %67, %32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull %17, ptr noundef %21) #8
  %313 = tail call i32 @trace_handle_return(ptr noundef %9) #8
  br label %314

314:                                              ; preds = %312, %3
  %315 = phi i32 [ %313, %312 ], [ %6, %3 ]
  ret i32 %315
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_free_virt_dev(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %5, i32 0, i32 3
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %5, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %5, i32 0, i32 4
  %17 = load i8, ptr %16, align 8
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %5, i32 0, i32 5
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.trace_event_raw_xhci_log_free_virt_dev, ptr %5, i32 0, i32 6
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.130, ptr noundef %11, i64 noundef %13, i64 noundef %15, i32 noundef %18, i32 noundef %21, i32 noundef %24) #8
  %25 = tail call i32 @trace_handle_return(ptr noundef %9) #8
  br label %26

26:                                               ; preds = %8, %3
  %27 = phi i32 [ %25, %8 ], [ %6, %3 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_virt_dev(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %5, i32 0, i32 3
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %5, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %5, i32 0, i32 6
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %5, i32 0, i32 7
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %5, i32 0, i32 8
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.trace_event_raw_xhci_log_virt_dev, ptr %5, i32 0, i32 9
  %29 = load i32, ptr %28, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.136, ptr noundef %11, i64 noundef %13, i64 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %29) #8
  %30 = tail call i32 @trace_handle_return(ptr noundef %9) #8
  br label %31

31:                                               ; preds = %8, %3
  %32 = phi i32 [ %30, %8 ], [ %6, %3 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_urb(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %39

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %5, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %5, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, ptr @.str.151, ptr @.str.150
  %17 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %5, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %18, ptr noundef nonnull @trace_raw_output_xhci_log_urb.symbols) #8
  %20 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %5, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %5, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %5, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %5, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %5, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %5, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %5, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %5, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_xhci_log_urb, ptr %5, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.149, i32 noundef %12, ptr noundef nonnull %16, ptr noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37) #8
  %38 = tail call i32 @trace_handle_return(ptr noundef %10) #8
  br label %39

39:                                               ; preds = %8, %3
  %40 = phi i32 [ %38, %8 ], [ %6, %3 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_ep_ctx(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %64

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %5, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %5, i32 0, i32 3
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ep_ctx, ptr %5, i32 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %15, 8
  %23 = and i32 %22, 16711680
  %24 = lshr i32 %21, 16
  %25 = or i32 %24, %23
  %26 = lshr i32 %15, 10
  %27 = and i32 %26, 31
  %28 = lshr i32 %15, 16
  %29 = and i32 %22, 3
  %30 = add nuw nsw i32 %29, 1
  %31 = and i32 %15, 32768
  %32 = icmp eq i32 %31, 0
  %33 = lshr i32 %17, 1
  %34 = and i32 %33, 3
  %35 = and i32 %15, 7
  %36 = xor i32 %35, 4
  %37 = getelementptr inbounds [8 x ptr], ptr @switch.table.trace_raw_output_xhci_log_ep_ctx, i32 0, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = select i1 %32, ptr @.str.163, ptr @.str.162
  %40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %13, ptr noundef nonnull @.str.161, ptr noundef nonnull %38, i32 noundef %30, i32 noundef %27, ptr noundef nonnull %39) #8
  %41 = getelementptr i8, ptr %13, i32 %40
  %42 = and i32 %28, 255
  %43 = shl i32 125, %42
  %44 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %41, ptr noundef nonnull @.str.164, i32 noundef %43, i32 noundef %25, i32 noundef %34) #8
  %45 = lshr i32 %17, 3
  %46 = and i32 %45, 7
  %47 = xor i32 %46, 4
  %48 = getelementptr inbounds [8 x ptr], ptr @switch.table.trace_raw_output_xhci_log_ep_ctx.274, i32 0, i32 %47
  %49 = load ptr, ptr %48, align 4
  %50 = add i32 %44, %40
  %51 = getelementptr i8, ptr %13, i32 %50
  %52 = lshr i32 %17, 16
  %53 = lshr i32 %17, 8
  %54 = and i32 %17, 128
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, ptr @.str.163, ptr @.str.166
  %57 = and i32 %53, 255
  %58 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %51, ptr noundef nonnull @.str.165, ptr noundef nonnull %49, ptr noundef nonnull %56, i32 noundef %57, i32 noundef %52, i64 noundef %19) #8
  %59 = add i32 %58, %50
  %60 = getelementptr i8, ptr %13, i32 %59
  %61 = and i32 %21, 65535
  %62 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %60, ptr noundef nonnull @.str.167, i32 noundef %61) #8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %13) #8
  %63 = tail call i32 @trace_handle_return(ptr noundef %9) #8
  br label %64

64:                                               ; preds = %8, %3
  %65 = phi i32 [ %63, %8 ], [ %6, %3 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_slot_ctx(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %61

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %5, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_xhci_log_slot_ctx, ptr %5, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %15, 15728640
  %23 = add nsw i32 %22, -1048576
  %24 = icmp ult i32 %23, 5242880
  br i1 %24, label %25, label %29

25:                                               ; preds = %8
  %26 = lshr exact i32 %23, 20
  %27 = getelementptr inbounds [5 x ptr], ptr @switch.table.trace_raw_output_xhci_log_slot_ctx, i32 0, i32 %26
  %28 = load ptr, ptr %27, align 4
  br label %29

29:                                               ; preds = %25, %8
  %30 = phi ptr [ %28, %25 ], [ @.str.188, %8 ]
  %31 = and i32 %15, 1048575
  %32 = and i32 %15, 33554432
  %33 = and i32 %15, 67108864
  %34 = icmp eq i32 %32, 0
  %35 = select i1 %34, ptr @.str.163, ptr @.str.189
  %36 = icmp eq i32 %33, 0
  %37 = select i1 %36, ptr @.str.163, ptr @.str.190
  %38 = lshr i32 %15, 27
  %39 = and i32 %17, 65535
  %40 = lshr i32 %17, 16
  %41 = and i32 %40, 255
  %42 = lshr i32 %17, 24
  %43 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %13, ptr noundef nonnull @.str.182, i32 noundef %31, ptr noundef nonnull %30, ptr noundef nonnull %35, ptr noundef nonnull %37, i32 noundef %38, i32 noundef %39, i32 noundef %41, i32 noundef %42) #8
  %44 = icmp ult i32 %21, 536870912
  br i1 %44, label %45, label %49

45:                                               ; preds = %29
  %46 = lshr i32 %21, 27
  %47 = getelementptr inbounds [4 x ptr], ptr @switch.table.trace_raw_output_xhci_log_slot_ctx.275, i32 0, i32 %46
  %48 = load ptr, ptr %47, align 4
  br label %49

49:                                               ; preds = %45, %29
  %50 = phi ptr [ %48, %45 ], [ @.str.196, %29 ]
  %51 = and i32 %21, 255
  %52 = lshr i32 %19, 22
  %53 = lshr i32 %19, 16
  %54 = and i32 %53, 3
  %55 = lshr i32 %19, 8
  %56 = and i32 %55, 255
  %57 = and i32 %19, 255
  %58 = getelementptr i8, ptr %13, i32 %43
  %59 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %58, ptr noundef nonnull @.str.191, i32 noundef %57, i32 noundef %56, i32 noundef %54, i32 noundef %52, i32 noundef %51, ptr noundef nonnull %50) #8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %13) #8
  %60 = tail call i32 @trace_handle_return(ptr noundef %9) #8
  br label %61

61:                                               ; preds = %49, %3
  %62 = phi i32 [ %60, %49 ], [ %6, %3 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_ctrl_ctx(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %73

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %12 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %7, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 65535
  %15 = getelementptr i8, ptr %7, i32 %14
  %16 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %7, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ctrl_ctx, ptr %7, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 %17, ptr %4, align 4
  %20 = icmp eq i32 %17, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(6) %15, ptr noundef nonnull align 1 dereferenceable(6) @.str.199, i32 6, i1 false) #8
  %22 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 32, i32 noundef 0) #8
  %23 = icmp ult i32 %22, 32
  br i1 %23, label %24, label %37

24:                                               ; preds = %24, %21
  %25 = phi i32 [ %33, %24 ], [ 5, %21 ]
  %26 = phi i32 [ %35, %24 ], [ %22, %21 ]
  %27 = getelementptr i8, ptr %15, i32 %25
  %28 = lshr i32 %26, 1
  %29 = and i32 %26, 1
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr @.str.151, ptr @.str.150
  %32 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %27, ptr noundef nonnull @.str.200, i32 noundef %28, ptr noundef nonnull %31) #8
  %33 = add i32 %32, %25
  %34 = add nuw nsw i32 %26, 1
  %35 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 32, i32 noundef %34) #8
  %36 = icmp ult i32 %35, 32
  br i1 %36, label %24, label %37

37:                                               ; preds = %24, %21
  %38 = phi i32 [ 5, %21 ], [ %33, %24 ]
  %39 = getelementptr i8, ptr %15, i32 %38
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(3) %39, ptr noundef nonnull align 1 dereferenceable(3) @.str.201, i32 3, i1 false) #8
  %40 = add i32 %38, 2
  br label %41

41:                                               ; preds = %37, %10
  %42 = phi i32 [ %40, %37 ], [ 0, %10 ]
  %43 = icmp eq i32 %19, 0
  br i1 %43, label %71, label %44

44:                                               ; preds = %41
  %45 = getelementptr i8, ptr %15, i32 %42
  %46 = and i32 %19, 1
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, ptr @.str.163, ptr @.str.203
  %49 = and i32 %19, 2
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, ptr @.str.163, ptr @.str.204
  %52 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %45, ptr noundef nonnull @.str.202, ptr noundef nonnull %48, ptr noundef nonnull %51) #8
  %53 = and i32 %19, -4
  store i32 %53, ptr %5, align 4
  %54 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef 32, i32 noundef 0) #8
  %55 = icmp ult i32 %54, 32
  br i1 %55, label %56, label %71

56:                                               ; preds = %44
  %57 = add i32 %52, %42
  br label %58

58:                                               ; preds = %58, %56
  %59 = phi i32 [ %67, %58 ], [ %57, %56 ]
  %60 = phi i32 [ %69, %58 ], [ %54, %56 ]
  %61 = getelementptr i8, ptr %15, i32 %59
  %62 = lshr i32 %60, 1
  %63 = and i32 %60, 1
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, ptr @.str.151, ptr @.str.150
  %66 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %61, ptr noundef nonnull @.str.200, i32 noundef %62, ptr noundef nonnull %65) #8
  %67 = add i32 %66, %59
  %68 = add nuw nsw i32 %60, 1
  %69 = call i32 @_find_next_bit_le(ptr noundef nonnull %5, i32 noundef 32, i32 noundef %68) #8
  %70 = icmp ult i32 %69, 32
  br i1 %70, label %58, label %71

71:                                               ; preds = %58, %44, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %15) #8
  %72 = call i32 @trace_handle_return(ptr noundef %11) #8
  br label %73

73:                                               ; preds = %71, %3
  %74 = phi i32 [ %72, %71 ], [ %8, %3 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_trb_virt_to_dma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_ring(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %35

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds [7 x ptr], ptr @switch.table.trace_raw_output_xhci_log_ring, i32 0, i32 %11
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi ptr [ %15, %13 ], [ @.str.31, %8 ]
  %18 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %5, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %5, i32 0, i32 3
  %21 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %5, i32 0, i32 5
  %22 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %5, i32 0, i32 4
  %23 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %5, i32 0, i32 6
  %24 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %5, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %5, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %5, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %5, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_xhci_log_ring, ptr %5, i32 0, i32 9
  %33 = load i32, ptr %32, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.214, ptr noundef nonnull %17, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22, ptr noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33) #8
  %34 = tail call i32 @trace_handle_return(ptr noundef %9) #8
  br label %35

35:                                               ; preds = %16, %3
  %36 = phi i32 [ %34, %16 ], [ %6, %3 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_portsc(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %128

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %5, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 65535
  %15 = getelementptr i8, ptr %5, i32 %14
  %16 = getelementptr inbounds %struct.trace_event_raw_xhci_log_portsc, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 512
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr @.str.219, ptr @.str.218
  %21 = and i32 %17, 1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr @.str.221, ptr @.str.220
  %24 = and i32 %17, 2
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr @.str.223, ptr @.str.222
  %27 = lshr i32 %17, 5
  %28 = and i32 %27, 15
  %29 = getelementptr inbounds [16 x ptr], ptr @switch.table.trace_raw_output_xhci_log_portsc, i32 0, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = lshr i32 %17, 10
  %32 = and i32 %31, 15
  %33 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %15, ptr noundef nonnull @.str.217, ptr noundef nonnull %20, ptr noundef nonnull %23, ptr noundef nonnull %26, ptr noundef nonnull %30, i32 noundef %32) #8
  %34 = and i32 %17, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %8
  %37 = getelementptr i8, ptr %15, i32 %33
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(13) %37, ptr noundef nonnull align 1 dereferenceable(13) @.str.224, i32 13, i1 false) #8
  %38 = add i32 %33, 12
  br label %39

39:                                               ; preds = %36, %8
  %40 = phi i32 [ %38, %36 ], [ %33, %8 ]
  %41 = and i32 %17, 16
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %15, i32 %40
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %44, ptr noundef nonnull align 1 dereferenceable(10) @.str.225, i32 10, i1 false) #8
  %45 = add i32 %40, 9
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ %45, %43 ], [ %40, %39 ]
  %48 = getelementptr i8, ptr %15, i32 %47
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %48, ptr noundef nonnull align 1 dereferenceable(9) @.str.226, i32 9, i1 false) #8
  %49 = add i32 %47, 8
  %50 = and i32 %17, 131072
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = getelementptr i8, ptr %15, i32 %49
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %53, ptr noundef nonnull align 1 dereferenceable(5) @.str.227, i32 5, i1 false) #8
  %54 = add i32 %47, 12
  br label %55

55:                                               ; preds = %52, %46
  %56 = phi i32 [ %54, %52 ], [ %49, %46 ]
  %57 = and i32 %17, 262144
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = getelementptr i8, ptr %15, i32 %56
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %60, ptr noundef nonnull align 1 dereferenceable(5) @.str.228, i32 5, i1 false) #8
  %61 = add i32 %56, 4
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi i32 [ %61, %59 ], [ %56, %55 ]
  %64 = and i32 %17, 524288
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr i8, ptr %15, i32 %63
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %67, ptr noundef nonnull align 1 dereferenceable(5) @.str.229, i32 5, i1 false) #8
  %68 = add i32 %63, 4
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi i32 [ %68, %66 ], [ %63, %62 ]
  %71 = and i32 %17, 1048576
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = getelementptr i8, ptr %15, i32 %70
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %74, ptr noundef nonnull align 1 dereferenceable(5) @.str.230, i32 5, i1 false) #8
  %75 = add i32 %70, 4
  br label %76

76:                                               ; preds = %73, %69
  %77 = phi i32 [ %75, %73 ], [ %70, %69 ]
  %78 = and i32 %17, 2097152
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = getelementptr i8, ptr %15, i32 %77
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %81, ptr noundef nonnull align 1 dereferenceable(5) @.str.231, i32 5, i1 false) #8
  %82 = add i32 %77, 4
  br label %83

83:                                               ; preds = %80, %76
  %84 = phi i32 [ %82, %80 ], [ %77, %76 ]
  %85 = and i32 %17, 4194304
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = getelementptr i8, ptr %15, i32 %84
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %88, ptr noundef nonnull align 1 dereferenceable(5) @.str.232, i32 5, i1 false) #8
  %89 = add i32 %84, 4
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi i32 [ %89, %87 ], [ %84, %83 ]
  %92 = and i32 %17, 8388608
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = getelementptr i8, ptr %15, i32 %91
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %95, ptr noundef nonnull align 1 dereferenceable(5) @.str.233, i32 5, i1 false) #8
  %96 = add i32 %91, 4
  br label %97

97:                                               ; preds = %94, %90
  %98 = phi i32 [ %96, %94 ], [ %91, %90 ]
  %99 = and i32 %17, 16777216
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = getelementptr i8, ptr %15, i32 %98
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %102, ptr noundef nonnull align 1 dereferenceable(5) @.str.234, i32 5, i1 false) #8
  %103 = add i32 %98, 4
  br label %104

104:                                              ; preds = %101, %97
  %105 = phi i32 [ %103, %101 ], [ %98, %97 ]
  %106 = getelementptr i8, ptr %15, i32 %105
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(7) %106, ptr noundef nonnull align 1 dereferenceable(7) @.str.235, i32 7, i1 false) #8
  %107 = add i32 %105, 6
  %108 = and i32 %17, 33554432
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %104
  %111 = getelementptr i8, ptr %15, i32 %107
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %111, ptr noundef nonnull align 1 dereferenceable(5) @.str.236, i32 5, i1 false) #8
  %112 = add i32 %105, 10
  br label %113

113:                                              ; preds = %110, %104
  %114 = phi i32 [ %112, %110 ], [ %107, %104 ]
  %115 = and i32 %17, 67108864
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = getelementptr i8, ptr %15, i32 %114
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %118, ptr noundef nonnull align 1 dereferenceable(5) @.str.237, i32 5, i1 false) #8
  %119 = add i32 %114, 4
  br label %120

120:                                              ; preds = %117, %113
  %121 = phi i32 [ %119, %117 ], [ %114, %113 ]
  %122 = and i32 %17, 134217728
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = getelementptr i8, ptr %15, i32 %121
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(5) %125, ptr noundef nonnull align 1 dereferenceable(5) @.str.238, i32 5, i1 false) #8
  br label %126

126:                                              ; preds = %124, %120
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.216, i32 noundef %11, ptr noundef %15) #8
  %127 = tail call i32 @trace_handle_return(ptr noundef %9) #8
  br label %128

128:                                              ; preds = %126, %3
  %129 = phi i32 [ %127, %126 ], [ %6, %3 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_log_doorbell(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %49

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %5, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_xhci_log_doorbell, ptr %5, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 16
  %19 = icmp eq i32 %15, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %8
  %21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %13, ptr noundef nonnull @.str.255, i32 noundef %17) #8
  br label %47

22:                                               ; preds = %8
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %13, ptr noundef nonnull @.str.256, i32 noundef %15) #8
  %24 = and i32 %17, 255
  %25 = add nsw i32 %24, -1
  %26 = icmp ult i32 %25, 31
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %13, i32 %23
  %29 = lshr i32 %24, 1
  %30 = and i32 %17, 1
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, ptr @.str.151, ptr @.str.150
  %33 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %28, ptr noundef nonnull @.str.257, i32 noundef %29, ptr noundef nonnull %32) #8
  br label %41

34:                                               ; preds = %22
  %35 = icmp ult i32 %24, 248
  %36 = getelementptr i8, ptr %13, i32 %23
  br i1 %35, label %37, label %39

37:                                               ; preds = %34
  %38 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %36, ptr noundef nonnull @.str.258, i32 noundef %24) #8
  br label %41

39:                                               ; preds = %34
  %40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %36, ptr noundef nonnull @.str.259, i32 noundef %24) #8
  br label %41

41:                                               ; preds = %39, %37, %27
  %42 = phi i32 [ %33, %27 ], [ %38, %37 ], [ %40, %39 ]
  %43 = icmp ult i32 %17, 65536
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = getelementptr i8, ptr %13, i32 %42
  %46 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %45, ptr noundef nonnull @.str.260, i32 noundef %18) #8
  br label %47

47:                                               ; preds = %44, %41, %20
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.254, ptr noundef %13) #8
  %48 = tail call i32 @trace_handle_return(ptr noundef %9) #8
  br label %49

49:                                               ; preds = %47, %3
  %50 = phi i32 [ %48, %47 ], [ %6, %3 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xhci_dbc_log_request(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %5, i32 0, i32 2
  %11 = load i8, ptr %10, align 4, !range !13
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, ptr @.str.267, ptr @.str.266
  %14 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %5, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_xhci_dbc_log_request, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.265, ptr noundef nonnull %13, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #8
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #8
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
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

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }

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
!12 = !{i64 501796}
!13 = !{i8 0, i8 2}
