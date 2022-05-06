; ModuleID = '/llk/IR/drivers/usb/gadget/udc/trace.c_pt.bc'
source_filename = "../drivers/usb/gadget/udc/trace.c"
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
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.trace_event_raw_udc_log_gadget = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_udc_log_ep = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, [0 x i8] }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.trace_event_raw_udc_log_req = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [0 x i8] }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_usb_gadget_frame_number = internal constant [24 x i8] c"usb_gadget_frame_number\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_frame_number = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_frame_number }, align 4
@__tracepoint_usb_gadget_frame_number = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_gadget_frame_number, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_gadget_frame_number, ptr null, ptr @__traceiter_usb_gadget_frame_number, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_frame_number = internal constant ptr @__tracepoint_usb_gadget_frame_number, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_wakeup = internal constant [18 x i8] c"usb_gadget_wakeup\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_wakeup = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_wakeup }, align 4
@__tracepoint_usb_gadget_wakeup = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_gadget_wakeup, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_gadget_wakeup, ptr null, ptr @__traceiter_usb_gadget_wakeup, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_wakeup = internal constant ptr @__tracepoint_usb_gadget_wakeup, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_set_selfpowered = internal constant [27 x i8] c"usb_gadget_set_selfpowered\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_set_selfpowered = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_set_selfpowered }, align 4
@__tracepoint_usb_gadget_set_selfpowered = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_gadget_set_selfpowered, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_gadget_set_selfpowered, ptr null, ptr @__traceiter_usb_gadget_set_selfpowered, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_set_selfpowered = internal constant ptr @__tracepoint_usb_gadget_set_selfpowered, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_clear_selfpowered = internal constant [29 x i8] c"usb_gadget_clear_selfpowered\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_clear_selfpowered = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_clear_selfpowered }, align 4
@__tracepoint_usb_gadget_clear_selfpowered = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_gadget_clear_selfpowered, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_gadget_clear_selfpowered, ptr null, ptr @__traceiter_usb_gadget_clear_selfpowered, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_clear_selfpowered = internal constant ptr @__tracepoint_usb_gadget_clear_selfpowered, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_vbus_connect = internal constant [24 x i8] c"usb_gadget_vbus_connect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_vbus_connect = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_vbus_connect }, align 4
@__tracepoint_usb_gadget_vbus_connect = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_gadget_vbus_connect, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_gadget_vbus_connect, ptr null, ptr @__traceiter_usb_gadget_vbus_connect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_vbus_connect = internal constant ptr @__tracepoint_usb_gadget_vbus_connect, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_vbus_draw = internal constant [21 x i8] c"usb_gadget_vbus_draw\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_vbus_draw = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_vbus_draw }, align 4
@__tracepoint_usb_gadget_vbus_draw = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_gadget_vbus_draw, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_gadget_vbus_draw, ptr null, ptr @__traceiter_usb_gadget_vbus_draw, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_vbus_draw = internal constant ptr @__tracepoint_usb_gadget_vbus_draw, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_vbus_disconnect = internal constant [27 x i8] c"usb_gadget_vbus_disconnect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_vbus_disconnect = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_vbus_disconnect }, align 4
@__tracepoint_usb_gadget_vbus_disconnect = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_gadget_vbus_disconnect, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_gadget_vbus_disconnect, ptr null, ptr @__traceiter_usb_gadget_vbus_disconnect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_vbus_disconnect = internal constant ptr @__tracepoint_usb_gadget_vbus_disconnect, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_connect = internal constant [19 x i8] c"usb_gadget_connect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_connect = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_connect }, align 4
@__tracepoint_usb_gadget_connect = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_gadget_connect, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_gadget_connect, ptr null, ptr @__traceiter_usb_gadget_connect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_connect = internal constant ptr @__tracepoint_usb_gadget_connect, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_disconnect = internal constant [22 x i8] c"usb_gadget_disconnect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_disconnect = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_disconnect }, align 4
@__tracepoint_usb_gadget_disconnect = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_gadget_disconnect, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_gadget_disconnect, ptr null, ptr @__traceiter_usb_gadget_disconnect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_disconnect = internal constant ptr @__tracepoint_usb_gadget_disconnect, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_deactivate = internal constant [22 x i8] c"usb_gadget_deactivate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_deactivate = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_deactivate }, align 4
@__tracepoint_usb_gadget_deactivate = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_gadget_deactivate, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_gadget_deactivate, ptr null, ptr @__traceiter_usb_gadget_deactivate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_deactivate = internal constant ptr @__tracepoint_usb_gadget_deactivate, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_activate = internal constant [20 x i8] c"usb_gadget_activate\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_activate = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_activate }, align 4
@__tracepoint_usb_gadget_activate = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_gadget_activate, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_gadget_activate, ptr null, ptr @__traceiter_usb_gadget_activate, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_activate = internal constant ptr @__tracepoint_usb_gadget_activate, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_set_maxpacket_limit = internal constant [27 x i8] c"usb_ep_set_maxpacket_limit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_set_maxpacket_limit = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_set_maxpacket_limit }, align 4
@__tracepoint_usb_ep_set_maxpacket_limit = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_ep_set_maxpacket_limit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_ep_set_maxpacket_limit, ptr null, ptr @__traceiter_usb_ep_set_maxpacket_limit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_set_maxpacket_limit = internal constant ptr @__tracepoint_usb_ep_set_maxpacket_limit, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_enable = internal constant [14 x i8] c"usb_ep_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_enable = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_enable }, align 4
@__tracepoint_usb_ep_enable = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_ep_enable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_ep_enable, ptr null, ptr @__traceiter_usb_ep_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_enable = internal constant ptr @__tracepoint_usb_ep_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_disable = internal constant [15 x i8] c"usb_ep_disable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_disable = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_disable }, align 4
@__tracepoint_usb_ep_disable = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_ep_disable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_ep_disable, ptr null, ptr @__traceiter_usb_ep_disable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_disable = internal constant ptr @__tracepoint_usb_ep_disable, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_set_halt = internal constant [16 x i8] c"usb_ep_set_halt\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_set_halt = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_set_halt }, align 4
@__tracepoint_usb_ep_set_halt = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_ep_set_halt, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_ep_set_halt, ptr null, ptr @__traceiter_usb_ep_set_halt, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_set_halt = internal constant ptr @__tracepoint_usb_ep_set_halt, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_clear_halt = internal constant [18 x i8] c"usb_ep_clear_halt\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_clear_halt = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_clear_halt }, align 4
@__tracepoint_usb_ep_clear_halt = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_ep_clear_halt, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_ep_clear_halt, ptr null, ptr @__traceiter_usb_ep_clear_halt, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_clear_halt = internal constant ptr @__tracepoint_usb_ep_clear_halt, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_set_wedge = internal constant [17 x i8] c"usb_ep_set_wedge\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_set_wedge = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_set_wedge }, align 4
@__tracepoint_usb_ep_set_wedge = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_ep_set_wedge, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_ep_set_wedge, ptr null, ptr @__traceiter_usb_ep_set_wedge, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_set_wedge = internal constant ptr @__tracepoint_usb_ep_set_wedge, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_fifo_status = internal constant [19 x i8] c"usb_ep_fifo_status\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_fifo_status = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_fifo_status }, align 4
@__tracepoint_usb_ep_fifo_status = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_ep_fifo_status, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_ep_fifo_status, ptr null, ptr @__traceiter_usb_ep_fifo_status, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_fifo_status = internal constant ptr @__tracepoint_usb_ep_fifo_status, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_fifo_flush = internal constant [18 x i8] c"usb_ep_fifo_flush\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_fifo_flush = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_fifo_flush }, align 4
@__tracepoint_usb_ep_fifo_flush = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_ep_fifo_flush, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_ep_fifo_flush, ptr null, ptr @__traceiter_usb_ep_fifo_flush, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_fifo_flush = internal constant ptr @__tracepoint_usb_ep_fifo_flush, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_alloc_request = internal constant [21 x i8] c"usb_ep_alloc_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_alloc_request = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_alloc_request }, align 4
@__tracepoint_usb_ep_alloc_request = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_ep_alloc_request, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_ep_alloc_request, ptr null, ptr @__traceiter_usb_ep_alloc_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_alloc_request = internal constant ptr @__tracepoint_usb_ep_alloc_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_free_request = internal constant [20 x i8] c"usb_ep_free_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_free_request = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_free_request }, align 4
@__tracepoint_usb_ep_free_request = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_ep_free_request, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_ep_free_request, ptr null, ptr @__traceiter_usb_ep_free_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_free_request = internal constant ptr @__tracepoint_usb_ep_free_request, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_queue = internal constant [13 x i8] c"usb_ep_queue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_queue = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_queue }, align 4
@__tracepoint_usb_ep_queue = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_ep_queue, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_ep_queue, ptr null, ptr @__traceiter_usb_ep_queue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_queue = internal constant ptr @__tracepoint_usb_ep_queue, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_ep_dequeue = internal constant [15 x i8] c"usb_ep_dequeue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_ep_dequeue = dso_local global %struct.static_call_key { ptr @__traceiter_usb_ep_dequeue }, align 4
@__tracepoint_usb_ep_dequeue = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_ep_dequeue, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_ep_dequeue, ptr null, ptr @__traceiter_usb_ep_dequeue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_ep_dequeue = internal constant ptr @__tracepoint_usb_ep_dequeue, section "__tracepoints_ptrs", align 4
@__tpstrtab_usb_gadget_giveback_request = internal constant [28 x i8] c"usb_gadget_giveback_request\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_usb_gadget_giveback_request = dso_local global %struct.static_call_key { ptr @__traceiter_usb_gadget_giveback_request }, align 4
@__tracepoint_usb_gadget_giveback_request = dso_local global %struct.tracepoint { ptr @__tpstrtab_usb_gadget_giveback_request, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_usb_gadget_giveback_request, ptr null, ptr @__traceiter_usb_gadget_giveback_request, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_usb_gadget_giveback_request = internal constant ptr @__tracepoint_usb_gadget_giveback_request, section "__tracepoints_ptrs", align 4
@str__gadget__trace_system_name = internal constant [7 x i8] c"gadget\00", align 1
@trace_event_fields_udc_log_gadget = internal global [20 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.89 { %struct.anon.90 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon.89 { %struct.anon.90 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.22, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_udc_log_gadget = internal global %struct.trace_event_class { ptr @str__gadget__trace_system_name, ptr @trace_event_raw_event_udc_log_gadget, ptr @perf_trace_udc_log_gadget, ptr @trace_event_reg, ptr @trace_event_fields_udc_log_gadget, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_udc_log_gadget, i64 24), ptr getelementptr (i8, ptr @event_class_udc_log_gadget, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_udc_log_gadget = internal global %struct.trace_event_functions { ptr @trace_raw_output_udc_log_gadget, ptr null, ptr null, ptr null }, align 4
@print_fmt_udc_log_gadget = internal global [729 x i8] c"\22speed %d/%d state %d %dmA [%s%s%s%s%s%s%s%s%s%s%s%s%s%s] --> %d\22, REC->speed, REC->max_speed, REC->state, REC->mA, REC->sg_supported ? \22sg:\22 : \22\22, REC->is_otg ? \22OTG:\22 : \22\22, REC->is_a_peripheral ? \22a_peripheral:\22 : \22\22, REC->b_hnp_enable ? \22b_hnp:\22 : \22\22, REC->a_hnp_support ? \22a_hnp:\22 : \22\22, REC->hnp_polling_support ? \22hnp_poll:\22 : \22\22, REC->host_request_flag ? \22hostreq:\22 : \22\22, REC->quirk_ep_out_aligned_size ? \22out_aligned:\22 : \22\22, REC->quirk_altset_not_supp ? \22no_altset:\22 : \22\22, REC->quirk_stall_not_supp ? \22no_stall:\22 : \22\22, REC->quirk_zlp_not_supp ? \22no_zlp\22 : \22\22, REC->is_selfpowered ? \22self-powered:\22 : \22bus-powered:\22, REC->deactivated ? \22deactivated:\22 : \22activated:\22, REC->connected ? \22connected\22 : \22disconnected\22, REC->ret\00", align 1
@event_usb_gadget_frame_number = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.91 { ptr @__tracepoint_usb_gadget_frame_number }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_gadget_frame_number = internal global ptr @event_usb_gadget_frame_number, section "_ftrace_events", align 4
@event_usb_gadget_wakeup = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.91 { ptr @__tracepoint_usb_gadget_wakeup }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_gadget_wakeup = internal global ptr @event_usb_gadget_wakeup, section "_ftrace_events", align 4
@event_usb_gadget_set_selfpowered = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.91 { ptr @__tracepoint_usb_gadget_set_selfpowered }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_gadget_set_selfpowered = internal global ptr @event_usb_gadget_set_selfpowered, section "_ftrace_events", align 4
@event_usb_gadget_clear_selfpowered = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.91 { ptr @__tracepoint_usb_gadget_clear_selfpowered }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_gadget_clear_selfpowered = internal global ptr @event_usb_gadget_clear_selfpowered, section "_ftrace_events", align 4
@event_usb_gadget_vbus_connect = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.91 { ptr @__tracepoint_usb_gadget_vbus_connect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_gadget_vbus_connect = internal global ptr @event_usb_gadget_vbus_connect, section "_ftrace_events", align 4
@event_usb_gadget_vbus_draw = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.91 { ptr @__tracepoint_usb_gadget_vbus_draw }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_gadget_vbus_draw = internal global ptr @event_usb_gadget_vbus_draw, section "_ftrace_events", align 4
@event_usb_gadget_vbus_disconnect = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.91 { ptr @__tracepoint_usb_gadget_vbus_disconnect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_gadget_vbus_disconnect = internal global ptr @event_usb_gadget_vbus_disconnect, section "_ftrace_events", align 4
@event_usb_gadget_connect = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.91 { ptr @__tracepoint_usb_gadget_connect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_gadget_connect = internal global ptr @event_usb_gadget_connect, section "_ftrace_events", align 4
@event_usb_gadget_disconnect = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.91 { ptr @__tracepoint_usb_gadget_disconnect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_gadget_disconnect = internal global ptr @event_usb_gadget_disconnect, section "_ftrace_events", align 4
@event_usb_gadget_deactivate = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.91 { ptr @__tracepoint_usb_gadget_deactivate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_gadget_deactivate = internal global ptr @event_usb_gadget_deactivate, section "_ftrace_events", align 4
@event_usb_gadget_activate = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_gadget, %union.anon.91 { ptr @__tracepoint_usb_gadget_activate }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_gadget }, ptr @print_fmt_udc_log_gadget, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_gadget_activate = internal global ptr @event_usb_gadget_activate, section "_ftrace_events", align 4
@trace_event_fields_udc_log_ep = internal global [11 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.89 { %struct.anon.90 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.44, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.45, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.46, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.47, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.48, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.89 { %struct.anon.90 { ptr @.str.50, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.51, %union.anon.89 { %struct.anon.90 { ptr @.str.52, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.51, %union.anon.89 { %struct.anon.90 { ptr @.str.53, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.22, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_udc_log_ep = internal global %struct.trace_event_class { ptr @str__gadget__trace_system_name, ptr @trace_event_raw_event_udc_log_ep, ptr @perf_trace_udc_log_ep, ptr @trace_event_reg, ptr @trace_event_fields_udc_log_ep, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_udc_log_ep, i64 24), ptr getelementptr (i8, ptr @event_class_udc_log_ep, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_udc_log_ep = internal global %struct.trace_event_functions { ptr @trace_raw_output_udc_log_ep, ptr null, ptr null, ptr null }, align 4
@print_fmt_udc_log_ep = internal global [264 x i8] c"\22%s: mps %d/%d streams %d mult %d burst %d addr %02x %s%s --> %d\22, __get_str(name), REC->maxpacket, REC->maxpacket_limit, REC->max_streams, REC->mult, REC->maxburst, REC->address, REC->claimed ? \22claimed:\22 : \22released:\22, REC->enabled ? \22enabled\22 : \22disabled\22, ret\00", align 1
@event_usb_ep_set_maxpacket_limit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_ep, %union.anon.91 { ptr @__tracepoint_usb_ep_set_maxpacket_limit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_ep }, ptr @print_fmt_udc_log_ep, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_ep_set_maxpacket_limit = internal global ptr @event_usb_ep_set_maxpacket_limit, section "_ftrace_events", align 4
@event_usb_ep_enable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_ep, %union.anon.91 { ptr @__tracepoint_usb_ep_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_ep }, ptr @print_fmt_udc_log_ep, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_ep_enable = internal global ptr @event_usb_ep_enable, section "_ftrace_events", align 4
@event_usb_ep_disable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_ep, %union.anon.91 { ptr @__tracepoint_usb_ep_disable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_ep }, ptr @print_fmt_udc_log_ep, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_ep_disable = internal global ptr @event_usb_ep_disable, section "_ftrace_events", align 4
@event_usb_ep_set_halt = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_ep, %union.anon.91 { ptr @__tracepoint_usb_ep_set_halt }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_ep }, ptr @print_fmt_udc_log_ep, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_ep_set_halt = internal global ptr @event_usb_ep_set_halt, section "_ftrace_events", align 4
@event_usb_ep_clear_halt = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_ep, %union.anon.91 { ptr @__tracepoint_usb_ep_clear_halt }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_ep }, ptr @print_fmt_udc_log_ep, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_ep_clear_halt = internal global ptr @event_usb_ep_clear_halt, section "_ftrace_events", align 4
@event_usb_ep_set_wedge = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_ep, %union.anon.91 { ptr @__tracepoint_usb_ep_set_wedge }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_ep }, ptr @print_fmt_udc_log_ep, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_ep_set_wedge = internal global ptr @event_usb_ep_set_wedge, section "_ftrace_events", align 4
@event_usb_ep_fifo_status = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_ep, %union.anon.91 { ptr @__tracepoint_usb_ep_fifo_status }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_ep }, ptr @print_fmt_udc_log_ep, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_ep_fifo_status = internal global ptr @event_usb_ep_fifo_status, section "_ftrace_events", align 4
@event_usb_ep_fifo_flush = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_ep, %union.anon.91 { ptr @__tracepoint_usb_ep_fifo_flush }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_ep }, ptr @print_fmt_udc_log_ep, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_ep_fifo_flush = internal global ptr @event_usb_ep_fifo_flush, section "_ftrace_events", align 4
@trace_event_fields_udc_log_req = internal global [13 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.42, %union.anon.89 { %struct.anon.90 { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.59, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.60, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.61, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.62, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.63, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.64, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.89 { %struct.anon.90 { ptr @.str.65, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.66, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.89 { %struct.anon.90 { ptr @.str.22, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.67, %union.anon.89 { %struct.anon.90 { ptr @.str.68, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_udc_log_req = internal global %struct.trace_event_class { ptr @str__gadget__trace_system_name, ptr @trace_event_raw_event_udc_log_req, ptr @perf_trace_udc_log_req, ptr @trace_event_reg, ptr @trace_event_fields_udc_log_req, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_udc_log_req, i64 24), ptr getelementptr (i8, ptr @event_class_udc_log_req, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_udc_log_req = internal global %struct.trace_event_functions { ptr @trace_raw_output_udc_log_req, ptr null, ptr null, ptr null }, align 4
@print_fmt_udc_log_req = internal global [281 x i8] c"\22%s: req %p length %d/%d sgs %d/%d stream %d %s%s%s status %d --> %d\22, __get_str(name),REC->req, REC->actual, REC->length, REC->num_mapped_sgs, REC->num_sgs, REC->stream_id, REC->zero ? \22Z\22 : \22z\22, REC->short_not_ok ? \22S\22 : \22s\22, REC->no_interrupt ? \22i\22 : \22I\22, REC->status, REC->ret\00", align 1
@event_usb_ep_alloc_request = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_req, %union.anon.91 { ptr @__tracepoint_usb_ep_alloc_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_req }, ptr @print_fmt_udc_log_req, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_ep_alloc_request = internal global ptr @event_usb_ep_alloc_request, section "_ftrace_events", align 4
@event_usb_ep_free_request = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_req, %union.anon.91 { ptr @__tracepoint_usb_ep_free_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_req }, ptr @print_fmt_udc_log_req, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_ep_free_request = internal global ptr @event_usb_ep_free_request, section "_ftrace_events", align 4
@event_usb_ep_queue = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_req, %union.anon.91 { ptr @__tracepoint_usb_ep_queue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_req }, ptr @print_fmt_udc_log_req, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_ep_queue = internal global ptr @event_usb_ep_queue, section "_ftrace_events", align 4
@event_usb_ep_dequeue = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_req, %union.anon.91 { ptr @__tracepoint_usb_ep_dequeue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_req }, ptr @print_fmt_udc_log_req, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_ep_dequeue = internal global ptr @event_usb_ep_dequeue, section "_ftrace_events", align 4
@event_usb_gadget_giveback_request = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_udc_log_req, %union.anon.91 { ptr @__tracepoint_usb_gadget_giveback_request }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_udc_log_req }, ptr @print_fmt_udc_log_req, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_usb_gadget_giveback_request = internal global ptr @event_usb_gadget_giveback_request, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [22 x i8] c"enum usb_device_speed\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"max_speed\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"enum usb_device_state\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"mA\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"sg_supported\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"is_otg\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"is_a_peripheral\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"b_hnp_enable\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"a_hnp_support\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"hnp_polling_support\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"host_request_flag\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"quirk_ep_out_aligned_size\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"quirk_altset_not_supp\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"quirk_stall_not_supp\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"quirk_zlp_not_supp\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"is_selfpowered\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"deactivated\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"connected\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"speed %d/%d state %d %dmA [%s%s%s%s%s%s%s%s%s%s%s%s%s%s] --> %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"sg:\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"OTG:\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"a_peripheral:\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"b_hnp:\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"a_hnp:\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"hnp_poll:\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"hostreq:\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"out_aligned:\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"no_altset:\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"no_stall:\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"no_zlp\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"self-powered:\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"bus-powered:\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"deactivated:\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"activated:\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"disconnected\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"maxpacket\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"maxpacket_limit\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"max_streams\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"mult\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"maxburst\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"claimed\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.54 = private unnamed_addr constant [65 x i8] c"%s: mps %d/%d streams %d mult %d burst %d addr %02x %s%s --> %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"claimed:\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"released:\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"actual\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"num_sgs\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"num_mapped_sgs\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"stream_id\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"no_interrupt\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"short_not_ok\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.67 = private unnamed_addr constant [21 x i8] c"struct usb_request *\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@.str.69 = private unnamed_addr constant [69 x i8] c"%s: req %p length %d/%d sgs %d/%d stream %d %s%s%s status %d --> %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@llvm.compiler.used = appending global [99 x ptr] [ptr @__event_usb_ep_alloc_request, ptr @__event_usb_ep_clear_halt, ptr @__event_usb_ep_dequeue, ptr @__event_usb_ep_disable, ptr @__event_usb_ep_enable, ptr @__event_usb_ep_fifo_flush, ptr @__event_usb_ep_fifo_status, ptr @__event_usb_ep_free_request, ptr @__event_usb_ep_queue, ptr @__event_usb_ep_set_halt, ptr @__event_usb_ep_set_maxpacket_limit, ptr @__event_usb_ep_set_wedge, ptr @__event_usb_gadget_activate, ptr @__event_usb_gadget_clear_selfpowered, ptr @__event_usb_gadget_connect, ptr @__event_usb_gadget_deactivate, ptr @__event_usb_gadget_disconnect, ptr @__event_usb_gadget_frame_number, ptr @__event_usb_gadget_giveback_request, ptr @__event_usb_gadget_set_selfpowered, ptr @__event_usb_gadget_vbus_connect, ptr @__event_usb_gadget_vbus_disconnect, ptr @__event_usb_gadget_vbus_draw, ptr @__event_usb_gadget_wakeup, ptr @__tracepoint_ptr_usb_ep_alloc_request, ptr @__tracepoint_ptr_usb_ep_clear_halt, ptr @__tracepoint_ptr_usb_ep_dequeue, ptr @__tracepoint_ptr_usb_ep_disable, ptr @__tracepoint_ptr_usb_ep_enable, ptr @__tracepoint_ptr_usb_ep_fifo_flush, ptr @__tracepoint_ptr_usb_ep_fifo_status, ptr @__tracepoint_ptr_usb_ep_free_request, ptr @__tracepoint_ptr_usb_ep_queue, ptr @__tracepoint_ptr_usb_ep_set_halt, ptr @__tracepoint_ptr_usb_ep_set_maxpacket_limit, ptr @__tracepoint_ptr_usb_ep_set_wedge, ptr @__tracepoint_ptr_usb_gadget_activate, ptr @__tracepoint_ptr_usb_gadget_clear_selfpowered, ptr @__tracepoint_ptr_usb_gadget_connect, ptr @__tracepoint_ptr_usb_gadget_deactivate, ptr @__tracepoint_ptr_usb_gadget_disconnect, ptr @__tracepoint_ptr_usb_gadget_frame_number, ptr @__tracepoint_ptr_usb_gadget_giveback_request, ptr @__tracepoint_ptr_usb_gadget_set_selfpowered, ptr @__tracepoint_ptr_usb_gadget_vbus_connect, ptr @__tracepoint_ptr_usb_gadget_vbus_disconnect, ptr @__tracepoint_ptr_usb_gadget_vbus_draw, ptr @__tracepoint_ptr_usb_gadget_wakeup, ptr @__tracepoint_usb_ep_alloc_request, ptr @__tracepoint_usb_ep_clear_halt, ptr @__tracepoint_usb_ep_dequeue, ptr @__tracepoint_usb_ep_disable, ptr @__tracepoint_usb_ep_enable, ptr @__tracepoint_usb_ep_fifo_flush, ptr @__tracepoint_usb_ep_fifo_status, ptr @__tracepoint_usb_ep_free_request, ptr @__tracepoint_usb_ep_queue, ptr @__tracepoint_usb_ep_set_halt, ptr @__tracepoint_usb_ep_set_maxpacket_limit, ptr @__tracepoint_usb_ep_set_wedge, ptr @__tracepoint_usb_gadget_activate, ptr @__tracepoint_usb_gadget_clear_selfpowered, ptr @__tracepoint_usb_gadget_connect, ptr @__tracepoint_usb_gadget_deactivate, ptr @__tracepoint_usb_gadget_disconnect, ptr @__tracepoint_usb_gadget_frame_number, ptr @__tracepoint_usb_gadget_giveback_request, ptr @__tracepoint_usb_gadget_set_selfpowered, ptr @__tracepoint_usb_gadget_vbus_connect, ptr @__tracepoint_usb_gadget_vbus_disconnect, ptr @__tracepoint_usb_gadget_vbus_draw, ptr @__tracepoint_usb_gadget_wakeup, ptr @event_class_udc_log_ep, ptr @event_class_udc_log_gadget, ptr @event_class_udc_log_req, ptr @event_usb_ep_alloc_request, ptr @event_usb_ep_clear_halt, ptr @event_usb_ep_dequeue, ptr @event_usb_ep_disable, ptr @event_usb_ep_enable, ptr @event_usb_ep_fifo_flush, ptr @event_usb_ep_fifo_status, ptr @event_usb_ep_free_request, ptr @event_usb_ep_queue, ptr @event_usb_ep_set_halt, ptr @event_usb_ep_set_maxpacket_limit, ptr @event_usb_ep_set_wedge, ptr @event_usb_gadget_activate, ptr @event_usb_gadget_clear_selfpowered, ptr @event_usb_gadget_connect, ptr @event_usb_gadget_deactivate, ptr @event_usb_gadget_disconnect, ptr @event_usb_gadget_frame_number, ptr @event_usb_gadget_giveback_request, ptr @event_usb_gadget_set_selfpowered, ptr @event_usb_gadget_vbus_connect, ptr @event_usb_gadget_vbus_disconnect, ptr @event_usb_gadget_vbus_draw, ptr @event_usb_gadget_wakeup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_frame_number(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_frame_number, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_wakeup(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_wakeup, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_set_selfpowered(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_set_selfpowered, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_clear_selfpowered(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_clear_selfpowered, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_vbus_connect(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_vbus_connect, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_vbus_draw(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_vbus_draw, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_vbus_disconnect(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_vbus_disconnect, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_connect(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_connect, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_disconnect(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_disconnect, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_deactivate(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_deactivate, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_activate(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_activate, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_set_maxpacket_limit(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_set_maxpacket_limit, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_enable(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_enable, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_disable(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_disable, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_set_halt(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_set_halt, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_clear_halt(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_clear_halt, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_set_wedge(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_set_wedge, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_fifo_status(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_fifo_status, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_fifo_flush(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_fifo_flush, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_alloc_request(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_alloc_request, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #7
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_free_request(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_free_request, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #7
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_queue(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_queue, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #7
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_ep_dequeue(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_ep_dequeue, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #7
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_usb_gadget_giveback_request(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_usb_gadget_giveback_request, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #7
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_udc_log_gadget(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #7
  br i1 %13, label %87, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 84) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %87, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 6
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 2
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 15
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 4
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 17
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 5
  store i32 %32, ptr %33, align 4
  %34 = load i32, ptr %30, align 4
  %35 = lshr i32 %34, 1
  %36 = and i32 %35, 1
  %37 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 6
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr %30, align 4
  %39 = lshr i32 %38, 2
  %40 = and i32 %39, 1
  %41 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 7
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %30, align 4
  %43 = lshr i32 %42, 3
  %44 = and i32 %43, 1
  %45 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 8
  store i32 %44, ptr %45, align 4
  %46 = load i32, ptr %30, align 4
  %47 = lshr i32 %46, 4
  %48 = and i32 %47, 1
  %49 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 9
  store i32 %48, ptr %49, align 4
  %50 = load i32, ptr %30, align 4
  %51 = lshr i32 %50, 6
  %52 = and i32 %51, 1
  %53 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 10
  store i32 %52, ptr %53, align 4
  %54 = load i32, ptr %30, align 4
  %55 = lshr i32 %54, 7
  %56 = and i32 %55, 1
  %57 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 11
  store i32 %56, ptr %57, align 4
  %58 = load i32, ptr %30, align 4
  %59 = lshr i32 %58, 8
  %60 = and i32 %59, 1
  %61 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 12
  store i32 %60, ptr %61, align 4
  %62 = load i32, ptr %30, align 4
  %63 = lshr i32 %62, 9
  %64 = and i32 %63, 1
  %65 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 13
  store i32 %64, ptr %65, align 4
  %66 = load i32, ptr %30, align 4
  %67 = lshr i32 %66, 10
  %68 = and i32 %67, 1
  %69 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 14
  store i32 %68, ptr %69, align 4
  %70 = load i32, ptr %30, align 4
  %71 = lshr i32 %70, 11
  %72 = and i32 %71, 1
  %73 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 15
  store i32 %72, ptr %73, align 4
  %74 = load i32, ptr %30, align 4
  %75 = lshr i32 %74, 13
  %76 = and i32 %75, 1
  %77 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 16
  store i32 %76, ptr %77, align 4
  %78 = load i32, ptr %30, align 4
  %79 = lshr i32 %78, 14
  %80 = and i32 %79, 1
  %81 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 17
  store i32 %80, ptr %81, align 4
  %82 = load i32, ptr %30, align 4
  %83 = lshr i32 %82, 15
  %84 = and i32 %83, 1
  %85 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 18
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %15, i32 0, i32 19
  store i32 %2, ptr %86, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #7
  br label %87

87:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_udc_log_gadget(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #7
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
  br i1 %19, label %105, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 84, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %105, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #7
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #7
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 6
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 9
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 15
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 4
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.usb_gadget, ptr %1, i32 0, i32 17
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 1
  %49 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 5
  store i32 %48, ptr %49, align 4
  %50 = load i32, ptr %46, align 4
  %51 = lshr i32 %50, 1
  %52 = and i32 %51, 1
  %53 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 6
  store i32 %52, ptr %53, align 4
  %54 = load i32, ptr %46, align 4
  %55 = lshr i32 %54, 2
  %56 = and i32 %55, 1
  %57 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 7
  store i32 %56, ptr %57, align 4
  %58 = load i32, ptr %46, align 4
  %59 = lshr i32 %58, 3
  %60 = and i32 %59, 1
  %61 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 8
  store i32 %60, ptr %61, align 4
  %62 = load i32, ptr %46, align 4
  %63 = lshr i32 %62, 4
  %64 = and i32 %63, 1
  %65 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 9
  store i32 %64, ptr %65, align 4
  %66 = load i32, ptr %46, align 4
  %67 = lshr i32 %66, 6
  %68 = and i32 %67, 1
  %69 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 10
  store i32 %68, ptr %69, align 4
  %70 = load i32, ptr %46, align 4
  %71 = lshr i32 %70, 7
  %72 = and i32 %71, 1
  %73 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 11
  store i32 %72, ptr %73, align 4
  %74 = load i32, ptr %46, align 4
  %75 = lshr i32 %74, 8
  %76 = and i32 %75, 1
  %77 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 12
  store i32 %76, ptr %77, align 4
  %78 = load i32, ptr %46, align 4
  %79 = lshr i32 %78, 9
  %80 = and i32 %79, 1
  %81 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 13
  store i32 %80, ptr %81, align 4
  %82 = load i32, ptr %46, align 4
  %83 = lshr i32 %82, 10
  %84 = and i32 %83, 1
  %85 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 14
  store i32 %84, ptr %85, align 4
  %86 = load i32, ptr %46, align 4
  %87 = lshr i32 %86, 11
  %88 = and i32 %87, 1
  %89 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 15
  store i32 %88, ptr %89, align 4
  %90 = load i32, ptr %46, align 4
  %91 = lshr i32 %90, 13
  %92 = and i32 %91, 1
  %93 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 16
  store i32 %92, ptr %93, align 4
  %94 = load i32, ptr %46, align 4
  %95 = lshr i32 %94, 14
  %96 = and i32 %95, 1
  %97 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 17
  store i32 %96, ptr %97, align 4
  %98 = load i32, ptr %46, align 4
  %99 = lshr i32 %98, 15
  %100 = and i32 %99, 1
  %101 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 18
  store i32 %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %21, i32 0, i32 19
  store i32 %2, ptr %102, align 4
  %103 = load i32, ptr %5, align 4
  %104 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 84, i32 noundef %103, ptr noundef %0, i64 noundef 1, ptr noundef %104, ptr noundef %13, ptr noundef null) #7
  br label %105

105:                                              ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_udc_log_ep(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #7
  br i1 %13, label %57, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 552) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %57, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %15, i32 0, i32 1
  store i32 33554472, ptr %18, align 4
  %19 = getelementptr i8, ptr %15, i32 40
  %20 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %19, i32 noundef 512, ptr noundef nonnull @.str.41, ptr noundef %21)
  %23 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 7
  %24 = load i56, ptr %23, align 2
  %25 = trunc i56 %24 to i32
  %26 = and i32 %25, 65535
  %27 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %15, i32 0, i32 2
  store i32 %26, ptr %27, align 4
  %28 = load i56, ptr %23, align 2
  %29 = trunc i56 %28 to i32
  %30 = lshr i32 %29, 16
  %31 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %15, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  %32 = load i56, ptr %23, align 2
  %33 = lshr i56 %32, 32
  %34 = trunc i56 %33 to i32
  %35 = and i32 %34, 65535
  %36 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %15, i32 0, i32 4
  store i32 %35, ptr %36, align 4
  %37 = load i56, ptr %23, align 2
  %38 = lshr i56 %37, 48
  %39 = trunc i56 %38 to i32
  %40 = and i32 %39, 3
  %41 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %15, i32 0, i32 5
  store i32 %40, ptr %41, align 4
  %42 = load i56, ptr %23, align 2
  %43 = lshr i56 %42, 50
  %44 = trunc i56 %43 to i32
  %45 = and i32 %44, 31
  %46 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %15, i32 0, i32 6
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 8
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %15, i32 0, i32 7
  store i8 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 5
  %51 = load i8, ptr %50, align 4, !range !13
  %52 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %15, i32 0, i32 8
  store i8 %51, ptr %52, align 1
  %53 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 6
  %54 = load i8, ptr %53, align 1, !range !13
  %55 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %15, i32 0, i32 9
  store i8 %54, ptr %55, align 2
  %56 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %15, i32 0, i32 10
  store i32 %2, ptr %56, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #7
  br label %57

57:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_udc_log_ep(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #7
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
  br i1 %19, label %75, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 556, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %75, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #7
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #7
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %21, i32 0, i32 1
  store i32 33554472, ptr %34, align 4
  %35 = getelementptr i8, ptr %21, i32 40
  %36 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %35, i32 noundef 512, ptr noundef nonnull @.str.41, ptr noundef %37)
  %39 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 7
  %40 = load i56, ptr %39, align 2
  %41 = trunc i56 %40 to i32
  %42 = and i32 %41, 65535
  %43 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %21, i32 0, i32 2
  store i32 %42, ptr %43, align 4
  %44 = load i56, ptr %39, align 2
  %45 = trunc i56 %44 to i32
  %46 = lshr i32 %45, 16
  %47 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %21, i32 0, i32 3
  store i32 %46, ptr %47, align 4
  %48 = load i56, ptr %39, align 2
  %49 = lshr i56 %48, 32
  %50 = trunc i56 %49 to i32
  %51 = and i32 %50, 65535
  %52 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %21, i32 0, i32 4
  store i32 %51, ptr %52, align 4
  %53 = load i56, ptr %39, align 2
  %54 = lshr i56 %53, 48
  %55 = trunc i56 %54 to i32
  %56 = and i32 %55, 3
  %57 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %21, i32 0, i32 5
  store i32 %56, ptr %57, align 4
  %58 = load i56, ptr %39, align 2
  %59 = lshr i56 %58, 50
  %60 = trunc i56 %59 to i32
  %61 = and i32 %60, 31
  %62 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %21, i32 0, i32 6
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 8
  %64 = load i8, ptr %63, align 1
  %65 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %21, i32 0, i32 7
  store i8 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 5
  %67 = load i8, ptr %66, align 4, !range !13
  %68 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %21, i32 0, i32 8
  store i8 %67, ptr %68, align 1
  %69 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 6
  %70 = load i8, ptr %69, align 1, !range !13
  %71 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %21, i32 0, i32 9
  store i8 %70, ptr %71, align 2
  %72 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %21, i32 0, i32 10
  store i32 %2, ptr %72, align 4
  %73 = load i32, ptr %5, align 4
  %74 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 556, i32 noundef %73, ptr noundef %0, i64 noundef 1, ptr noundef %74, ptr noundef %13, ptr noundef null) #7
  br label %75

75:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_udc_log_req(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #7
  br i1 %14, label %57, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 568) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %57, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %16, i32 0, i32 1
  store i32 33554488, ptr %19, align 4
  %20 = getelementptr i8, ptr %16, i32 56
  %21 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %20, i32 noundef 512, ptr noundef nonnull @.str.41, ptr noundef %22)
  %24 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %16, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 12
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %16, i32 0, i32 3
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %16, i32 0, i32 4
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %16, i32 0, i32 5
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 65535
  %39 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %16, i32 0, i32 6
  store i32 %38, ptr %39, align 4
  %40 = load i32, ptr %36, align 4
  %41 = lshr i32 %40, 17
  %42 = and i32 %41, 1
  %43 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %16, i32 0, i32 7
  store i32 %42, ptr %43, align 4
  %44 = load i32, ptr %36, align 4
  %45 = lshr i32 %44, 18
  %46 = and i32 %45, 1
  %47 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %16, i32 0, i32 8
  store i32 %46, ptr %47, align 4
  %48 = load i32, ptr %36, align 4
  %49 = lshr i32 %48, 19
  %50 = and i32 %49, 1
  %51 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %16, i32 0, i32 9
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 11
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %16, i32 0, i32 10
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %16, i32 0, i32 11
  store i32 %3, ptr %55, align 4
  %56 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %16, i32 0, i32 12
  store ptr %2, ptr %56, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #7
  br label %57

57:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_udc_log_req(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #7
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
  br i1 %20, label %75, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 572, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %75, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #7
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #7
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #7
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %22, i32 0, i32 1
  store i32 33554488, ptr %35, align 4
  %36 = getelementptr i8, ptr %22, i32 56
  %37 = getelementptr inbounds %struct.usb_ep, ptr %1, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %36, i32 noundef 512, ptr noundef nonnull @.str.41, ptr noundef %38)
  %40 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %22, i32 0, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 12
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %22, i32 0, i32 3
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %22, i32 0, i32 4
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %22, i32 0, i32 5
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 65535
  %55 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %22, i32 0, i32 6
  store i32 %54, ptr %55, align 4
  %56 = load i32, ptr %52, align 4
  %57 = lshr i32 %56, 17
  %58 = and i32 %57, 1
  %59 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %22, i32 0, i32 7
  store i32 %58, ptr %59, align 4
  %60 = load i32, ptr %52, align 4
  %61 = lshr i32 %60, 18
  %62 = and i32 %61, 1
  %63 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %22, i32 0, i32 8
  store i32 %62, ptr %63, align 4
  %64 = load i32, ptr %52, align 4
  %65 = lshr i32 %64, 19
  %66 = and i32 %65, 1
  %67 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %22, i32 0, i32 9
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.usb_request, ptr %2, i32 0, i32 11
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %22, i32 0, i32 10
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %22, i32 0, i32 11
  store i32 %3, ptr %71, align 4
  %72 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %22, i32 0, i32 12
  store ptr %2, ptr %72, align 4
  %73 = load i32, ptr %6, align 4
  %74 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 572, i32 noundef %73, ptr noundef %0, i64 noundef 1, ptr noundef %74, ptr noundef %14, ptr noundef null) #7
  br label %75

75:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
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
define internal i32 @trace_raw_output_udc_log_gadget(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #7
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %77

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @.str.25, ptr @.str.24
  %22 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, ptr @.str.25, ptr @.str.26
  %26 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, ptr @.str.25, ptr @.str.27
  %30 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 8
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr @.str.25, ptr @.str.28
  %34 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr @.str.25, ptr @.str.29
  %38 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, ptr @.str.25, ptr @.str.30
  %42 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 11
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, ptr @.str.25, ptr @.str.31
  %46 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 12
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, ptr @.str.25, ptr @.str.32
  %50 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 13
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, ptr @.str.25, ptr @.str.33
  %54 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 14
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, ptr @.str.25, ptr @.str.34
  %58 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 15
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, ptr @.str.25, ptr @.str.35
  %62 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 16
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, ptr @.str.37, ptr @.str.36
  %66 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 17
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, ptr @.str.39, ptr @.str.38
  %70 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 18
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, ptr @.str.40, ptr @.str.20
  %74 = getelementptr inbounds %struct.trace_event_raw_udc_log_gadget, ptr %5, i32 0, i32 19
  %75 = load i32, ptr %74, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, ptr noundef nonnull %21, ptr noundef nonnull %25, ptr noundef nonnull %29, ptr noundef nonnull %33, ptr noundef nonnull %37, ptr noundef nonnull %41, ptr noundef nonnull %45, ptr noundef nonnull %49, ptr noundef nonnull %53, ptr noundef nonnull %57, ptr noundef nonnull %61, ptr noundef nonnull %65, ptr noundef nonnull %69, ptr noundef nonnull %73, i32 noundef %75) #7
  %76 = tail call i32 @trace_handle_return(ptr noundef %9) #7
  br label %77

77:                                               ; preds = %8, %3
  %78 = phi i32 [ %76, %8 ], [ %6, %3 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_udc_log_ep(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #7
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %36

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %5, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %5, i32 0, i32 7
  %25 = load i8, ptr %24, align 4
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %5, i32 0, i32 8
  %28 = load i8, ptr %27, align 1, !range !13
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, ptr @.str.56, ptr @.str.55
  %31 = getelementptr inbounds %struct.trace_event_raw_udc_log_ep, ptr %5, i32 0, i32 9
  %32 = load i8, ptr %31, align 2, !range !13
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, ptr @.str.57, ptr @.str.53
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.54, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %26, ptr noundef nonnull %30, ptr noundef nonnull %34, i32 noundef 1) #7
  %35 = tail call i32 @trace_handle_return(ptr noundef %9) #7
  br label %36

36:                                               ; preds = %8, %3
  %37 = phi i32 [ %35, %8 ], [ %6, %3 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_udc_log_req(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #7
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %43

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %5, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %5, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %5, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %5, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %5, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, ptr @.str.71, ptr @.str.70
  %30 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %5, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, ptr @.str.73, ptr @.str.72
  %34 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %5, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr @.str.75, ptr @.str.74
  %38 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %5, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_udc_log_req, ptr %5, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.69, ptr noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, ptr noundef nonnull %29, ptr noundef nonnull %33, ptr noundef nonnull %37, i32 noundef %39, i32 noundef %41) #7
  %42 = tail call i32 @trace_handle_return(ptr noundef %9) #7
  br label %43

43:                                               ; preds = %8, %3
  %44 = phi i32 [ %42, %8 ], [ %6, %3 ]
  ret i32 %44
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

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind }

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
!12 = !{i64 493348}
!13 = !{i8 0, i8 2}
