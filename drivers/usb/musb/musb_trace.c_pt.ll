; ModuleID = '/llk/IR/drivers/usb/musb/musb_trace.c_pt.bc'
source_filename = "../drivers/usb/musb/musb_trace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.95 }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.97, %struct.trace_event, ptr, ptr, %union.anon.98, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.97 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.98 = type { ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.musb = type { %struct.spinlock, %struct.spinlock, %struct.musb_io, ptr, %struct.musb_context_registers, ptr, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i16, i16, i16, i32, i32, i8, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.timer_list, %struct.notifier_block, ptr, ptr, ptr, ptr, i8, i16, i16, ptr, ptr, i32, i8, [16 x %struct.musb_hw_ep], i16, i16, i8, ptr, i8, i32, i8, i32, i8, i32, i32, [3 x i8], i8, i8, i16, i8, %struct.usb_gadget, ptr, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.musb_io = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.musb_context_registers = type { i8, i8, i16, i8, i8, i8, i8, i8, i32, [16 x %struct.musb_csr_regs] }
%struct.musb_csr_regs = type { i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.musb_hw_ep = type { ptr, ptr, ptr, i8, i8, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i8, i8, %struct.musb_ep, %struct.musb_ep }
%struct.musb_ep = type { %struct.usb_ep, [12 x i8], ptr, ptr, i8, i8, i8, i16, ptr, ptr, %struct.list_head, i8, i8, i8 }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.trace_event_raw_musb_log = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.va_format = type { ptr, ptr }
%struct.trace_event_raw_musb_state = type { %struct.trace_entry, i32, i8, i32, [0 x i8] }
%struct.trace_event_raw_musb_regb = type { %struct.trace_entry, ptr, ptr, i32, i8, [0 x i8] }
%struct.trace_event_raw_musb_regw = type { %struct.trace_entry, ptr, ptr, i32, i16, [0 x i8] }
%struct.trace_event_raw_musb_regl = type { %struct.trace_entry, ptr, ptr, i32, i32, [0 x i8] }
%struct.trace_event_raw_musb_isr = type { %struct.trace_entry, i32, i8, i16, i16, [0 x i8] }
%struct.trace_event_raw_musb_urb = type { %struct.trace_entry, i32, ptr, i32, i32, i32, i32, i32, [0 x i8] }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.trace_event_raw_musb_req = type { %struct.trace_entry, ptr, i8, i8, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.musb_request = type { %struct.usb_request, %struct.list_head, ptr, ptr, i8, i8, i32 }
%struct.usb_request = type { ptr, i32, i32, ptr, i32, i32, i24, ptr, ptr, %struct.list_head, i32, i32, i32 }
%struct.cppi41_dma_channel = type { %struct.dma_channel, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.list_head, i32 }
%struct.dma_channel = type { ptr, i32, i32, i32, i8, i8 }
%struct.trace_event_raw_musb_cppi41 = type { %struct.trace_entry, ptr, i32, i8, i8, i8, i32, i32, i32, [0 x i8] }
%struct.__va_list = type { ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_musb_log = internal constant [9 x i8] c"musb_log\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_log = dso_local global %struct.static_call_key { ptr @__traceiter_musb_log }, align 4
@__tracepoint_musb_log = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_log, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_log, ptr null, ptr @__traceiter_musb_log, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_log = internal constant ptr @__tracepoint_musb_log, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_state = internal constant [11 x i8] c"musb_state\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_state = dso_local global %struct.static_call_key { ptr @__traceiter_musb_state }, align 4
@__tracepoint_musb_state = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_state, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_state, ptr null, ptr @__traceiter_musb_state, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_state = internal constant ptr @__tracepoint_musb_state, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_readb = internal constant [11 x i8] c"musb_readb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_readb = dso_local global %struct.static_call_key { ptr @__traceiter_musb_readb }, align 4
@__tracepoint_musb_readb = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_readb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_readb, ptr null, ptr @__traceiter_musb_readb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_readb = internal constant ptr @__tracepoint_musb_readb, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_writeb = internal constant [12 x i8] c"musb_writeb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_writeb = dso_local global %struct.static_call_key { ptr @__traceiter_musb_writeb }, align 4
@__tracepoint_musb_writeb = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_writeb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_writeb, ptr null, ptr @__traceiter_musb_writeb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_writeb = internal constant ptr @__tracepoint_musb_writeb, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_readw = internal constant [11 x i8] c"musb_readw\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_readw = dso_local global %struct.static_call_key { ptr @__traceiter_musb_readw }, align 4
@__tracepoint_musb_readw = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_readw, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_readw, ptr null, ptr @__traceiter_musb_readw, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_readw = internal constant ptr @__tracepoint_musb_readw, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_writew = internal constant [12 x i8] c"musb_writew\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_writew = dso_local global %struct.static_call_key { ptr @__traceiter_musb_writew }, align 4
@__tracepoint_musb_writew = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_writew, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_writew, ptr null, ptr @__traceiter_musb_writew, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_writew = internal constant ptr @__tracepoint_musb_writew, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_readl = internal constant [11 x i8] c"musb_readl\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_readl = dso_local global %struct.static_call_key { ptr @__traceiter_musb_readl }, align 4
@__tracepoint_musb_readl = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_readl, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_readl, ptr null, ptr @__traceiter_musb_readl, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_readl = internal constant ptr @__tracepoint_musb_readl, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_writel = internal constant [12 x i8] c"musb_writel\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_writel = dso_local global %struct.static_call_key { ptr @__traceiter_musb_writel }, align 4
@__tracepoint_musb_writel = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_writel, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_writel, ptr null, ptr @__traceiter_musb_writel, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_writel = internal constant ptr @__tracepoint_musb_writel, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_isr = internal constant [9 x i8] c"musb_isr\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_isr = dso_local global %struct.static_call_key { ptr @__traceiter_musb_isr }, align 4
@__tracepoint_musb_isr = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_isr, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_isr, ptr null, ptr @__traceiter_musb_isr, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_isr = internal constant ptr @__tracepoint_musb_isr, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_urb_start = internal constant [15 x i8] c"musb_urb_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_urb_start = dso_local global %struct.static_call_key { ptr @__traceiter_musb_urb_start }, align 4
@__tracepoint_musb_urb_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_urb_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_urb_start, ptr null, ptr @__traceiter_musb_urb_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_urb_start = internal constant ptr @__tracepoint_musb_urb_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_urb_gb = internal constant [12 x i8] c"musb_urb_gb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_urb_gb = dso_local global %struct.static_call_key { ptr @__traceiter_musb_urb_gb }, align 4
@__tracepoint_musb_urb_gb = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_urb_gb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_urb_gb, ptr null, ptr @__traceiter_musb_urb_gb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_urb_gb = internal constant ptr @__tracepoint_musb_urb_gb, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_urb_rx = internal constant [12 x i8] c"musb_urb_rx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_urb_rx = dso_local global %struct.static_call_key { ptr @__traceiter_musb_urb_rx }, align 4
@__tracepoint_musb_urb_rx = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_urb_rx, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_urb_rx, ptr null, ptr @__traceiter_musb_urb_rx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_urb_rx = internal constant ptr @__tracepoint_musb_urb_rx, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_urb_tx = internal constant [12 x i8] c"musb_urb_tx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_urb_tx = dso_local global %struct.static_call_key { ptr @__traceiter_musb_urb_tx }, align 4
@__tracepoint_musb_urb_tx = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_urb_tx, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_urb_tx, ptr null, ptr @__traceiter_musb_urb_tx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_urb_tx = internal constant ptr @__tracepoint_musb_urb_tx, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_urb_enq = internal constant [13 x i8] c"musb_urb_enq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_urb_enq = dso_local global %struct.static_call_key { ptr @__traceiter_musb_urb_enq }, align 4
@__tracepoint_musb_urb_enq = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_urb_enq, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_urb_enq, ptr null, ptr @__traceiter_musb_urb_enq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_urb_enq = internal constant ptr @__tracepoint_musb_urb_enq, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_urb_deq = internal constant [13 x i8] c"musb_urb_deq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_urb_deq = dso_local global %struct.static_call_key { ptr @__traceiter_musb_urb_deq }, align 4
@__tracepoint_musb_urb_deq = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_urb_deq, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_urb_deq, ptr null, ptr @__traceiter_musb_urb_deq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_urb_deq = internal constant ptr @__tracepoint_musb_urb_deq, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_req_gb = internal constant [12 x i8] c"musb_req_gb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_req_gb = dso_local global %struct.static_call_key { ptr @__traceiter_musb_req_gb }, align 4
@__tracepoint_musb_req_gb = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_req_gb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_req_gb, ptr null, ptr @__traceiter_musb_req_gb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_req_gb = internal constant ptr @__tracepoint_musb_req_gb, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_req_tx = internal constant [12 x i8] c"musb_req_tx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_req_tx = dso_local global %struct.static_call_key { ptr @__traceiter_musb_req_tx }, align 4
@__tracepoint_musb_req_tx = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_req_tx, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_req_tx, ptr null, ptr @__traceiter_musb_req_tx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_req_tx = internal constant ptr @__tracepoint_musb_req_tx, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_req_rx = internal constant [12 x i8] c"musb_req_rx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_req_rx = dso_local global %struct.static_call_key { ptr @__traceiter_musb_req_rx }, align 4
@__tracepoint_musb_req_rx = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_req_rx, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_req_rx, ptr null, ptr @__traceiter_musb_req_rx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_req_rx = internal constant ptr @__tracepoint_musb_req_rx, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_req_alloc = internal constant [15 x i8] c"musb_req_alloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_req_alloc = dso_local global %struct.static_call_key { ptr @__traceiter_musb_req_alloc }, align 4
@__tracepoint_musb_req_alloc = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_req_alloc, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_req_alloc, ptr null, ptr @__traceiter_musb_req_alloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_req_alloc = internal constant ptr @__tracepoint_musb_req_alloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_req_free = internal constant [14 x i8] c"musb_req_free\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_req_free = dso_local global %struct.static_call_key { ptr @__traceiter_musb_req_free }, align 4
@__tracepoint_musb_req_free = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_req_free, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_req_free, ptr null, ptr @__traceiter_musb_req_free, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_req_free = internal constant ptr @__tracepoint_musb_req_free, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_req_start = internal constant [15 x i8] c"musb_req_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_req_start = dso_local global %struct.static_call_key { ptr @__traceiter_musb_req_start }, align 4
@__tracepoint_musb_req_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_req_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_req_start, ptr null, ptr @__traceiter_musb_req_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_req_start = internal constant ptr @__tracepoint_musb_req_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_req_enq = internal constant [13 x i8] c"musb_req_enq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_req_enq = dso_local global %struct.static_call_key { ptr @__traceiter_musb_req_enq }, align 4
@__tracepoint_musb_req_enq = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_req_enq, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_req_enq, ptr null, ptr @__traceiter_musb_req_enq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_req_enq = internal constant ptr @__tracepoint_musb_req_enq, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_req_deq = internal constant [13 x i8] c"musb_req_deq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_req_deq = dso_local global %struct.static_call_key { ptr @__traceiter_musb_req_deq }, align 4
@__tracepoint_musb_req_deq = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_req_deq, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_req_deq, ptr null, ptr @__traceiter_musb_req_deq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_req_deq = internal constant ptr @__tracepoint_musb_req_deq, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_cppi41_done = internal constant [17 x i8] c"musb_cppi41_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_cppi41_done = dso_local global %struct.static_call_key { ptr @__traceiter_musb_cppi41_done }, align 4
@__tracepoint_musb_cppi41_done = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_cppi41_done, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_cppi41_done, ptr null, ptr @__traceiter_musb_cppi41_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_cppi41_done = internal constant ptr @__tracepoint_musb_cppi41_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_cppi41_gb = internal constant [15 x i8] c"musb_cppi41_gb\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_cppi41_gb = dso_local global %struct.static_call_key { ptr @__traceiter_musb_cppi41_gb }, align 4
@__tracepoint_musb_cppi41_gb = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_cppi41_gb, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_cppi41_gb, ptr null, ptr @__traceiter_musb_cppi41_gb, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_cppi41_gb = internal constant ptr @__tracepoint_musb_cppi41_gb, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_cppi41_config = internal constant [19 x i8] c"musb_cppi41_config\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_cppi41_config = dso_local global %struct.static_call_key { ptr @__traceiter_musb_cppi41_config }, align 4
@__tracepoint_musb_cppi41_config = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_cppi41_config, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_cppi41_config, ptr null, ptr @__traceiter_musb_cppi41_config, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_cppi41_config = internal constant ptr @__tracepoint_musb_cppi41_config, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_cppi41_cont = internal constant [17 x i8] c"musb_cppi41_cont\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_cppi41_cont = dso_local global %struct.static_call_key { ptr @__traceiter_musb_cppi41_cont }, align 4
@__tracepoint_musb_cppi41_cont = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_cppi41_cont, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_cppi41_cont, ptr null, ptr @__traceiter_musb_cppi41_cont, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_cppi41_cont = internal constant ptr @__tracepoint_musb_cppi41_cont, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_cppi41_alloc = internal constant [18 x i8] c"musb_cppi41_alloc\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_cppi41_alloc = dso_local global %struct.static_call_key { ptr @__traceiter_musb_cppi41_alloc }, align 4
@__tracepoint_musb_cppi41_alloc = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_cppi41_alloc, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_cppi41_alloc, ptr null, ptr @__traceiter_musb_cppi41_alloc, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_cppi41_alloc = internal constant ptr @__tracepoint_musb_cppi41_alloc, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_cppi41_abort = internal constant [18 x i8] c"musb_cppi41_abort\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_cppi41_abort = dso_local global %struct.static_call_key { ptr @__traceiter_musb_cppi41_abort }, align 4
@__tracepoint_musb_cppi41_abort = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_cppi41_abort, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_cppi41_abort, ptr null, ptr @__traceiter_musb_cppi41_abort, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_cppi41_abort = internal constant ptr @__tracepoint_musb_cppi41_abort, section "__tracepoints_ptrs", align 4
@__tpstrtab_musb_cppi41_free = internal constant [17 x i8] c"musb_cppi41_free\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_musb_cppi41_free = dso_local global %struct.static_call_key { ptr @__traceiter_musb_cppi41_free }, align 4
@__tracepoint_musb_cppi41_free = dso_local global %struct.tracepoint { ptr @__tpstrtab_musb_cppi41_free, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_musb_cppi41_free, ptr null, ptr @__traceiter_musb_cppi41_free, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_musb_cppi41_free = internal constant ptr @__tracepoint_musb_cppi41_free, section "__tracepoints_ptrs", align 4
@str__musb__trace_system_name = internal constant [5 x i8] c"musb\00", align 1
@trace_event_fields_musb_log = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.95 { %struct.anon.96 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.95 { %struct.anon.96 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_musb_log = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_log, ptr @perf_trace_musb_log, ptr @trace_event_reg, ptr @trace_event_fields_musb_log, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_log, i64 24), ptr getelementptr (i8, ptr @event_class_musb_log, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_log = internal global %struct.trace_event_functions { ptr @trace_raw_output_musb_log, ptr null, ptr null, ptr null }, align 4
@print_fmt_musb_log = internal global [42 x i8] c"\22%s: %s\22, __get_str(name), __get_str(msg)\00", align 1
@event_musb_log = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_log, %union.anon.97 { ptr @__tracepoint_musb_log }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_log }, ptr @print_fmt_musb_log, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_log = internal global ptr @event_musb_log, section "_ftrace_events", align 4
@trace_event_fields_musb_state = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.95 { %struct.anon.96 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.6, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.95 { %struct.anon.96 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_musb_state = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_state, ptr @perf_trace_musb_state, ptr @trace_event_reg, ptr @trace_event_fields_musb_state, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_state, i64 24), ptr getelementptr (i8, ptr @event_class_musb_state, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_state = internal global %struct.trace_event_functions { ptr @trace_raw_output_musb_state, ptr null, ptr null, ptr null }, align 4
@print_fmt_musb_state = internal global [69 x i8] c"\22%s: devctl: %02x %s\22, __get_str(name), REC->devctl, __get_str(desc)\00", align 1
@event_musb_state = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_state, %union.anon.97 { ptr @__tracepoint_musb_state }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_state }, ptr @print_fmt_musb_state, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_state = internal global ptr @event_musb_state, section "_ftrace_events", align 4
@trace_event_fields_musb_regb = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.95 { %struct.anon.96 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.95 { %struct.anon.96 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.15, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_musb_regb = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_regb, ptr @perf_trace_musb_regb, ptr @trace_event_reg, ptr @trace_event_fields_musb_regb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_regb, i64 24), ptr getelementptr (i8, ptr @event_class_musb_regb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_regb = internal global %struct.trace_event_functions { ptr @trace_raw_output_musb_regb, ptr null, ptr null, ptr null }, align 4
@print_fmt_musb_regb = internal global [71 x i8] c"\22%pS: %p + %04x: %02x\22, REC->caller, REC->addr, REC->offset, REC->data\00", align 1
@event_musb_readb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_regb, %union.anon.97 { ptr @__tracepoint_musb_readb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_regb }, ptr @print_fmt_musb_regb, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_readb = internal global ptr @event_musb_readb, section "_ftrace_events", align 4
@event_musb_writeb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_regb, %union.anon.97 { ptr @__tracepoint_musb_writeb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_regb }, ptr @print_fmt_musb_regb, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_writeb = internal global ptr @event_musb_writeb, section "_ftrace_events", align 4
@trace_event_fields_musb_regw = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.95 { %struct.anon.96 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.95 { %struct.anon.96 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.95 { %struct.anon.96 { ptr @.str.15, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_musb_regw = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_regw, ptr @perf_trace_musb_regw, ptr @trace_event_reg, ptr @trace_event_fields_musb_regw, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_regw, i64 24), ptr getelementptr (i8, ptr @event_class_musb_regw, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_regw = internal global %struct.trace_event_functions { ptr @trace_raw_output_musb_regw, ptr null, ptr null, ptr null }, align 4
@print_fmt_musb_regw = internal global [71 x i8] c"\22%pS: %p + %04x: %04x\22, REC->caller, REC->addr, REC->offset, REC->data\00", align 1
@event_musb_readw = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_regw, %union.anon.97 { ptr @__tracepoint_musb_readw }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_regw }, ptr @print_fmt_musb_regw, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_readw = internal global ptr @event_musb_readw, section "_ftrace_events", align 4
@event_musb_writew = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_regw, %union.anon.97 { ptr @__tracepoint_musb_writew }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_regw }, ptr @print_fmt_musb_regw, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_writew = internal global ptr @event_musb_writew, section "_ftrace_events", align 4
@trace_event_fields_musb_regl = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.9, %union.anon.95 { %struct.anon.96 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.95 { %struct.anon.96 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.95 { %struct.anon.96 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_musb_regl = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_regl, ptr @perf_trace_musb_regl, ptr @trace_event_reg, ptr @trace_event_fields_musb_regl, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_regl, i64 24), ptr getelementptr (i8, ptr @event_class_musb_regl, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_regl = internal global %struct.trace_event_functions { ptr @trace_raw_output_musb_regl, ptr null, ptr null, ptr null }, align 4
@print_fmt_musb_regl = internal global [71 x i8] c"\22%pS: %p + %04x: %08x\22, REC->caller, REC->addr, REC->offset, REC->data\00", align 1
@event_musb_readl = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_regl, %union.anon.97 { ptr @__tracepoint_musb_readl }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_regl }, ptr @print_fmt_musb_regl, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_readl = internal global ptr @event_musb_readl, section "_ftrace_events", align 4
@event_musb_writel = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_regl, %union.anon.97 { ptr @__tracepoint_musb_writel }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_regl }, ptr @print_fmt_musb_regl, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_writel = internal global ptr @event_musb_writel, section "_ftrace_events", align 4
@trace_event_fields_musb_isr = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.95 { %struct.anon.96 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.21, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.95 { %struct.anon.96 { ptr @.str.22, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.95 { %struct.anon.96 { ptr @.str.23, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_musb_isr = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_isr, ptr @perf_trace_musb_isr, ptr @trace_event_reg, ptr @trace_event_fields_musb_isr, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_isr, i64 24), ptr getelementptr (i8, ptr @event_class_musb_isr, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_isr = internal global %struct.trace_event_functions { ptr @trace_raw_output_musb_isr, ptr null, ptr null, ptr null }, align 4
@print_fmt_musb_isr = internal global [90 x i8] c"\22%s: usb %02x, tx %04x, rx %04x\22, __get_str(name), REC->int_usb, REC->int_tx, REC->int_rx\00", align 1
@event_musb_isr = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_isr, %union.anon.97 { ptr @__tracepoint_musb_isr }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_isr }, ptr @print_fmt_musb_isr, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_isr = internal global ptr @event_musb_isr, section "_ftrace_events", align 4
@trace_event_fields_musb_urb = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon.95 { %struct.anon.96 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.25, %union.anon.95 { %struct.anon.96 { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.27, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.95 { %struct.anon.96 { ptr @.str.29, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.30, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.95 { %struct.anon.96 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.95 { %struct.anon.96 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_musb_urb = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_urb, ptr @perf_trace_musb_urb, ptr @trace_event_reg, ptr @trace_event_fields_musb_urb, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_urb, i64 24), ptr getelementptr (i8, ptr @event_class_musb_urb, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_urb = internal global %struct.trace_event_functions { ptr @trace_raw_output_musb_urb, ptr null, ptr null, ptr null }, align 4
@print_fmt_musb_urb = internal global [233 x i8] c"\22%s: %p, dev%d ep%d%s, flag 0x%x, len %d/%d, status %d\22, __get_str(name), REC->urb, (((REC->pipe) >> 8) & 0x7f), (((REC->pipe) >> 15) & 0xf), ((REC->pipe) & 0x80) ? \22in\22 : \22out\22, REC->flag, REC->actual_len, REC->buf_len, REC->status\00", align 1
@event_musb_urb_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_urb, %union.anon.97 { ptr @__tracepoint_musb_urb_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_urb }, ptr @print_fmt_musb_urb, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_urb_start = internal global ptr @event_musb_urb_start, section "_ftrace_events", align 4
@event_musb_urb_gb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_urb, %union.anon.97 { ptr @__tracepoint_musb_urb_gb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_urb }, ptr @print_fmt_musb_urb, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_urb_gb = internal global ptr @event_musb_urb_gb, section "_ftrace_events", align 4
@event_musb_urb_rx = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_urb, %union.anon.97 { ptr @__tracepoint_musb_urb_rx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_urb }, ptr @print_fmt_musb_urb, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_urb_rx = internal global ptr @event_musb_urb_rx, section "_ftrace_events", align 4
@event_musb_urb_tx = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_urb, %union.anon.97 { ptr @__tracepoint_musb_urb_tx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_urb }, ptr @print_fmt_musb_urb, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_urb_tx = internal global ptr @event_musb_urb_tx, section "_ftrace_events", align 4
@event_musb_urb_enq = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_urb, %union.anon.97 { ptr @__tracepoint_musb_urb_enq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_urb }, ptr @print_fmt_musb_urb, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_urb_enq = internal global ptr @event_musb_urb_enq, section "_ftrace_events", align 4
@event_musb_urb_deq = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_urb, %union.anon.97 { ptr @__tracepoint_musb_urb_deq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_urb }, ptr @print_fmt_musb_urb, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_urb_deq = internal global ptr @event_musb_urb_deq, section "_ftrace_events", align 4
@trace_event_fields_musb_req = internal global [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon.95 { %struct.anon.96 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.38, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.39, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon.95 { %struct.anon.96 { ptr @.str.29, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.31, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.41, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.95 { %struct.anon.96 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_musb_req = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_req, ptr @perf_trace_musb_req, ptr @trace_event_reg, ptr @trace_event_fields_musb_req, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_req, i64 24), ptr getelementptr (i8, ptr @event_class_musb_req, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_req = internal global %struct.trace_event_functions { ptr @trace_raw_output_musb_req, ptr null, ptr null, ptr null }, align 4
@print_fmt_musb_req = internal global [228 x i8] c"\22%p, ep%d %s, %s%s%s, len %d/%d, status %d\22, REC->req, REC->epnum, REC->is_tx ? \22tx/IN\22 : \22rx/OUT\22, REC->zero ? \22Z\22 : \22z\22, REC->short_not_ok ? \22S\22 : \22s\22, REC->no_interrupt ? \22I\22 : \22i\22, REC->actual_len, REC->buf_len, REC->status\00", align 1
@event_musb_req_gb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_req, %union.anon.97 { ptr @__tracepoint_musb_req_gb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_req }, ptr @print_fmt_musb_req, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_req_gb = internal global ptr @event_musb_req_gb, section "_ftrace_events", align 4
@event_musb_req_tx = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_req, %union.anon.97 { ptr @__tracepoint_musb_req_tx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_req }, ptr @print_fmt_musb_req, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_req_tx = internal global ptr @event_musb_req_tx, section "_ftrace_events", align 4
@event_musb_req_rx = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_req, %union.anon.97 { ptr @__tracepoint_musb_req_rx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_req }, ptr @print_fmt_musb_req, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_req_rx = internal global ptr @event_musb_req_rx, section "_ftrace_events", align 4
@event_musb_req_alloc = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_req, %union.anon.97 { ptr @__tracepoint_musb_req_alloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_req }, ptr @print_fmt_musb_req, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_req_alloc = internal global ptr @event_musb_req_alloc, section "_ftrace_events", align 4
@event_musb_req_free = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_req, %union.anon.97 { ptr @__tracepoint_musb_req_free }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_req }, ptr @print_fmt_musb_req, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_req_free = internal global ptr @event_musb_req_free, section "_ftrace_events", align 4
@event_musb_req_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_req, %union.anon.97 { ptr @__tracepoint_musb_req_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_req }, ptr @print_fmt_musb_req, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_req_start = internal global ptr @event_musb_req_start, section "_ftrace_events", align 4
@event_musb_req_enq = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_req, %union.anon.97 { ptr @__tracepoint_musb_req_enq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_req }, ptr @print_fmt_musb_req, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_req_enq = internal global ptr @event_musb_req_enq, section "_ftrace_events", align 4
@event_musb_req_deq = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_req, %union.anon.97 { ptr @__tracepoint_musb_req_deq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_req }, ptr @print_fmt_musb_req, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_req_deq = internal global ptr @event_musb_req_deq, section "_ftrace_events", align 4
@trace_event_fields_musb_cppi41 = internal global [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.52, %union.anon.95 { %struct.anon.96 { ptr @.str.53, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.1, %union.anon.95 { %struct.anon.96 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.54, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.55, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.95 { %struct.anon.96 { ptr @.str.38, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.95 { %struct.anon.96 { ptr @.str.56, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.95 { %struct.anon.96 { ptr @.str.57, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.95 { %struct.anon.96 { ptr @.str.58, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_musb_cppi41 = internal global %struct.trace_event_class { ptr @str__musb__trace_system_name, ptr @trace_event_raw_event_musb_cppi41, ptr @perf_trace_musb_cppi41, ptr @trace_event_reg, ptr @trace_event_fields_musb_cppi41, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_musb_cppi41, i64 24), ptr getelementptr (i8, ptr @event_class_musb_cppi41, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_musb_cppi41 = internal global %struct.trace_event_functions { ptr @trace_raw_output_musb_cppi41, ptr null, ptr null, ptr null }, align 4
@print_fmt_musb_cppi41 = internal global [161 x i8] c"\22%s: %p, hwep%d ch%d%s, prog_len %d, len %d/%d\22, __get_str(name), REC->ch, REC->hwep, REC->port, REC->is_tx ? \22tx\22 : \22rx\22, REC->prog_len, REC->xferred, REC->len\00", align 1
@event_musb_cppi41_done = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_cppi41, %union.anon.97 { ptr @__tracepoint_musb_cppi41_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_cppi41 }, ptr @print_fmt_musb_cppi41, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_cppi41_done = internal global ptr @event_musb_cppi41_done, section "_ftrace_events", align 4
@event_musb_cppi41_gb = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_cppi41, %union.anon.97 { ptr @__tracepoint_musb_cppi41_gb }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_cppi41 }, ptr @print_fmt_musb_cppi41, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_cppi41_gb = internal global ptr @event_musb_cppi41_gb, section "_ftrace_events", align 4
@event_musb_cppi41_config = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_cppi41, %union.anon.97 { ptr @__tracepoint_musb_cppi41_config }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_cppi41 }, ptr @print_fmt_musb_cppi41, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_cppi41_config = internal global ptr @event_musb_cppi41_config, section "_ftrace_events", align 4
@event_musb_cppi41_cont = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_cppi41, %union.anon.97 { ptr @__tracepoint_musb_cppi41_cont }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_cppi41 }, ptr @print_fmt_musb_cppi41, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_cppi41_cont = internal global ptr @event_musb_cppi41_cont, section "_ftrace_events", align 4
@event_musb_cppi41_alloc = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_cppi41, %union.anon.97 { ptr @__tracepoint_musb_cppi41_alloc }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_cppi41 }, ptr @print_fmt_musb_cppi41, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_cppi41_alloc = internal global ptr @event_musb_cppi41_alloc, section "_ftrace_events", align 4
@event_musb_cppi41_abort = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_cppi41, %union.anon.97 { ptr @__tracepoint_musb_cppi41_abort }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_cppi41 }, ptr @print_fmt_musb_cppi41, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_cppi41_abort = internal global ptr @event_musb_cppi41_abort, section "_ftrace_events", align 4
@event_musb_cppi41_free = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_musb_cppi41, %union.anon.97 { ptr @__tracepoint_musb_cppi41_free }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_musb_cppi41 }, ptr @print_fmt_musb_cppi41, ptr null, %union.anon.98 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_musb_cppi41_free = internal global ptr @event_musb_cppi41_free, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"devctl\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"%s: devctl: %02x %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"void *\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"caller\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"const void *\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"%pS: %p + %04x: %02x\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"u16\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"%pS: %p + %04x: %04x\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"%pS: %p + %04x: %08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"int_usb\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"int_tx\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"int_rx\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"%s: usb %02x, tx %04x, rx %04x\0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"struct urb *\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"urb\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"flag\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"buf_len\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"actual_len\00", align 1
@.str.33 = private unnamed_addr constant [55 x i8] c"%s: %p, dev%d ep%d%s, flag 0x%x, len %d/%d, status %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"struct usb_request *\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"is_tx\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"epnum\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"short_not_ok\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"no_interrupt\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"%p, ep%d %s, %s%s%s, len %d/%d, status %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"tx/IN\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"rx/OUT\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"struct cppi41_dma_channel *\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"hwep\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"prog_len\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"xferred\00", align 1
@.str.59 = private unnamed_addr constant [47 x i8] c"%s: %p, hwep%d ch%d%s, prog_len %d, len %d/%d\0A\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [129 x ptr] [ptr @__event_musb_cppi41_abort, ptr @__event_musb_cppi41_alloc, ptr @__event_musb_cppi41_config, ptr @__event_musb_cppi41_cont, ptr @__event_musb_cppi41_done, ptr @__event_musb_cppi41_free, ptr @__event_musb_cppi41_gb, ptr @__event_musb_isr, ptr @__event_musb_log, ptr @__event_musb_readb, ptr @__event_musb_readl, ptr @__event_musb_readw, ptr @__event_musb_req_alloc, ptr @__event_musb_req_deq, ptr @__event_musb_req_enq, ptr @__event_musb_req_free, ptr @__event_musb_req_gb, ptr @__event_musb_req_rx, ptr @__event_musb_req_start, ptr @__event_musb_req_tx, ptr @__event_musb_state, ptr @__event_musb_urb_deq, ptr @__event_musb_urb_enq, ptr @__event_musb_urb_gb, ptr @__event_musb_urb_rx, ptr @__event_musb_urb_start, ptr @__event_musb_urb_tx, ptr @__event_musb_writeb, ptr @__event_musb_writel, ptr @__event_musb_writew, ptr @__tracepoint_musb_cppi41_abort, ptr @__tracepoint_musb_cppi41_alloc, ptr @__tracepoint_musb_cppi41_config, ptr @__tracepoint_musb_cppi41_cont, ptr @__tracepoint_musb_cppi41_done, ptr @__tracepoint_musb_cppi41_free, ptr @__tracepoint_musb_cppi41_gb, ptr @__tracepoint_musb_isr, ptr @__tracepoint_musb_log, ptr @__tracepoint_musb_readb, ptr @__tracepoint_musb_readl, ptr @__tracepoint_musb_readw, ptr @__tracepoint_musb_req_alloc, ptr @__tracepoint_musb_req_deq, ptr @__tracepoint_musb_req_enq, ptr @__tracepoint_musb_req_free, ptr @__tracepoint_musb_req_gb, ptr @__tracepoint_musb_req_rx, ptr @__tracepoint_musb_req_start, ptr @__tracepoint_musb_req_tx, ptr @__tracepoint_musb_state, ptr @__tracepoint_musb_urb_deq, ptr @__tracepoint_musb_urb_enq, ptr @__tracepoint_musb_urb_gb, ptr @__tracepoint_musb_urb_rx, ptr @__tracepoint_musb_urb_start, ptr @__tracepoint_musb_urb_tx, ptr @__tracepoint_musb_writeb, ptr @__tracepoint_musb_writel, ptr @__tracepoint_musb_writew, ptr @__tracepoint_ptr_musb_cppi41_abort, ptr @__tracepoint_ptr_musb_cppi41_alloc, ptr @__tracepoint_ptr_musb_cppi41_config, ptr @__tracepoint_ptr_musb_cppi41_cont, ptr @__tracepoint_ptr_musb_cppi41_done, ptr @__tracepoint_ptr_musb_cppi41_free, ptr @__tracepoint_ptr_musb_cppi41_gb, ptr @__tracepoint_ptr_musb_isr, ptr @__tracepoint_ptr_musb_log, ptr @__tracepoint_ptr_musb_readb, ptr @__tracepoint_ptr_musb_readl, ptr @__tracepoint_ptr_musb_readw, ptr @__tracepoint_ptr_musb_req_alloc, ptr @__tracepoint_ptr_musb_req_deq, ptr @__tracepoint_ptr_musb_req_enq, ptr @__tracepoint_ptr_musb_req_free, ptr @__tracepoint_ptr_musb_req_gb, ptr @__tracepoint_ptr_musb_req_rx, ptr @__tracepoint_ptr_musb_req_start, ptr @__tracepoint_ptr_musb_req_tx, ptr @__tracepoint_ptr_musb_state, ptr @__tracepoint_ptr_musb_urb_deq, ptr @__tracepoint_ptr_musb_urb_enq, ptr @__tracepoint_ptr_musb_urb_gb, ptr @__tracepoint_ptr_musb_urb_rx, ptr @__tracepoint_ptr_musb_urb_start, ptr @__tracepoint_ptr_musb_urb_tx, ptr @__tracepoint_ptr_musb_writeb, ptr @__tracepoint_ptr_musb_writel, ptr @__tracepoint_ptr_musb_writew, ptr @event_class_musb_cppi41, ptr @event_class_musb_isr, ptr @event_class_musb_log, ptr @event_class_musb_regb, ptr @event_class_musb_regl, ptr @event_class_musb_regw, ptr @event_class_musb_req, ptr @event_class_musb_state, ptr @event_class_musb_urb, ptr @event_musb_cppi41_abort, ptr @event_musb_cppi41_alloc, ptr @event_musb_cppi41_config, ptr @event_musb_cppi41_cont, ptr @event_musb_cppi41_done, ptr @event_musb_cppi41_free, ptr @event_musb_cppi41_gb, ptr @event_musb_isr, ptr @event_musb_log, ptr @event_musb_readb, ptr @event_musb_readl, ptr @event_musb_readw, ptr @event_musb_req_alloc, ptr @event_musb_req_deq, ptr @event_musb_req_enq, ptr @event_musb_req_free, ptr @event_musb_req_gb, ptr @event_musb_req_rx, ptr @event_musb_req_start, ptr @event_musb_req_tx, ptr @event_musb_state, ptr @event_musb_urb_deq, ptr @event_musb_urb_enq, ptr @event_musb_urb_gb, ptr @event_musb_urb_rx, ptr @event_musb_urb_start, ptr @event_musb_urb_tx, ptr @event_musb_writeb, ptr @event_musb_writel, ptr @event_musb_writew], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_log(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_log, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
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
define dso_local i32 @__traceiter_musb_state(ptr nocapture readnone %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_state, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #10
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_readb(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_readb, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) #10
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_writeb(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_writeb, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) #10
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_readw(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_readw, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4) #10
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_writew(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_writew, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4) #10
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_readl(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_readl, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #10
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_writel(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_writel, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #10
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_isr(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_isr, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_urb_start(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_start, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_urb_gb(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_gb, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_urb_rx(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_rx, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_urb_tx(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_tx, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_urb_enq(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_enq, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_urb_deq(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_urb_deq, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_req_gb(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_gb, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_req_tx(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_tx, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_req_rx(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_rx, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_req_alloc(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_alloc, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_req_free(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_free, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_req_start(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_start, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_req_enq(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_enq, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_req_deq(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_req_deq, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_cppi41_done(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_cppi41_done, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_cppi41_gb(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_cppi41_gb, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_cppi41_config(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_cppi41_config, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_cppi41_cont(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_cppi41_cont, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_cppi41_alloc(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_cppi41_alloc, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_cppi41_abort(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_cppi41_abort, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_musb_cppi41_free(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_cppi41_free, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #10
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_musb_log(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %13, label %57, label %14

14:                                               ; preds = %12, %9, %3
  %15 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr @.str, ptr %21
  br label %24

24:                                               ; preds = %20, %14
  %25 = phi ptr [ %18, %14 ], [ %23, %20 ]
  %26 = tail call i32 @strlen(ptr noundef nonnull %25) #10
  %27 = add i32 %26, 517
  %28 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %27) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %57, label %30

30:                                               ; preds = %24
  %31 = add i32 %26, 17
  %32 = or i32 %31, 32768000
  %33 = shl i32 %26, 16
  %34 = add i32 %33, 65552
  %35 = getelementptr inbounds %struct.trace_event_raw_musb_log, ptr %28, i32 0, i32 1
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_musb_log, ptr %28, i32 0, i32 2
  store i32 %32, ptr %36, align 4
  %37 = getelementptr i8, ptr %28, i32 16
  %38 = load ptr, ptr %15, align 8
  %39 = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load ptr, ptr %38, align 4
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, ptr @.str, ptr %43
  br label %46

46:                                               ; preds = %42, %30
  %47 = phi ptr [ %40, %30 ], [ %45, %42 ]
  %48 = call ptr @strcpy(ptr noundef %37, ptr noundef nonnull %47)
  %49 = and i32 %31, 65535
  %50 = getelementptr i8, ptr %28, i32 %49
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr inbounds %struct.va_format, ptr %2, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load i32, ptr %53, align 4
  %55 = insertvalue [1 x i32] undef, i32 %54, 0
  %56 = call i32 @vsnprintf(ptr noundef %50, i32 noundef 500, ptr noundef %51, [1 x i32] %55)
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %57

57:                                               ; preds = %46, %24, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_musb_log(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load ptr, ptr %7, align 4
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @.str, ptr %12
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi ptr [ %9, %3 ], [ %14, %11 ]
  %17 = tail call i32 @strlen(ptr noundef nonnull %16) #10
  %18 = shl i32 %17, 16
  %19 = add i32 %18, 65552
  %20 = add i32 %17, 17
  %21 = or i32 %20, 32768000
  %22 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #8, !srcloc !12
  %28 = add i32 %27, %24
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %15
  %34 = load volatile ptr, ptr %29, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %77, label %36

36:                                               ; preds = %33, %15
  %37 = add i32 %17, 528
  %38 = and i32 %37, -8
  %39 = add i32 %38, -4
  %40 = call ptr @perf_trace_buf_alloc(i32 noundef %39, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %77, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %4, align 4
  %44 = call ptr @llvm.returnaddress(i32 0) #10
  %45 = ptrtoint ptr %44 to i32
  %46 = getelementptr [18 x i32], ptr %43, i32 0, i32 15
  store i32 %45, ptr %46, align 4
  %47 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %48 = ptrtoint ptr %47 to i32
  %49 = getelementptr [18 x i32], ptr %43, i32 0, i32 11
  store i32 %48, ptr %49, align 4
  %50 = call i32 @llvm.read_register.i32(metadata !0) #10
  %51 = getelementptr [18 x i32], ptr %43, i32 0, i32 13
  store i32 %50, ptr %51, align 4
  %52 = getelementptr [18 x i32], ptr %43, i32 0, i32 16
  store i32 19, ptr %52, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_musb_log, ptr %40, i32 0, i32 1
  store i32 %19, ptr %53, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_musb_log, ptr %40, i32 0, i32 2
  store i32 %21, ptr %54, align 4
  %55 = getelementptr i8, ptr %40, i32 16
  %56 = load ptr, ptr %6, align 8
  %57 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %42
  %61 = load ptr, ptr %56, align 4
  %62 = icmp eq ptr %61, null
  %63 = select i1 %62, ptr @.str, ptr %61
  br label %64

64:                                               ; preds = %60, %42
  %65 = phi ptr [ %58, %42 ], [ %63, %60 ]
  %66 = call ptr @strcpy(ptr noundef %55, ptr noundef nonnull %65)
  %67 = and i32 %20, 65535
  %68 = getelementptr i8, ptr %40, i32 %67
  %69 = load ptr, ptr %2, align 4
  %70 = getelementptr inbounds %struct.va_format, ptr %2, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = load i32, ptr %71, align 4
  %73 = insertvalue [1 x i32] undef, i32 %72, 0
  %74 = call i32 @vsnprintf(ptr noundef %68, i32 noundef 500, ptr noundef %69, [1 x i32] %73)
  %75 = load i32, ptr %5, align 4
  %76 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %40, i32 noundef %39, i32 noundef %75, ptr noundef %0, i64 noundef 1, ptr noundef %76, ptr noundef %29, ptr noundef null) #10
  br label %77

77:                                               ; preds = %64, %36, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_musb_state(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef readonly %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %14, label %59, label %15

15:                                               ; preds = %13, %10, %4
  %16 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr @.str, ptr %22
  br label %25

25:                                               ; preds = %21, %15
  %26 = phi ptr [ %19, %15 ], [ %24, %21 ]
  %27 = tail call i32 @strlen(ptr noundef nonnull %26) #10
  %28 = icmp eq ptr %3, null
  %29 = select i1 %28, ptr @.str, ptr %3
  %30 = tail call i32 @strlen(ptr noundef %29) #10
  %31 = add i32 %30, 1
  %32 = add i32 %27, 21
  %33 = add i32 %32, %31
  %34 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %33) #10
  %35 = icmp eq ptr %34, null
  br i1 %35, label %59, label %36

36:                                               ; preds = %25
  %37 = shl i32 %31, 16
  %38 = or i32 %37, %32
  %39 = shl i32 %27, 16
  %40 = add i32 %39, 65556
  %41 = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %34, i32 0, i32 1
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %34, i32 0, i32 3
  store i32 %38, ptr %42, align 4
  %43 = getelementptr i8, ptr %34, i32 20
  %44 = load ptr, ptr %16, align 8
  %45 = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load ptr, ptr %44, align 4
  %50 = icmp eq ptr %49, null
  %51 = select i1 %50, ptr @.str, ptr %49
  br label %52

52:                                               ; preds = %48, %36
  %53 = phi ptr [ %46, %36 ], [ %51, %48 ]
  %54 = call ptr @strcpy(ptr noundef %43, ptr noundef nonnull %53)
  %55 = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %34, i32 0, i32 2
  store i8 %2, ptr %55, align 4
  %56 = and i32 %32, 65535
  %57 = getelementptr i8, ptr %34, i32 %56
  %58 = call ptr @strcpy(ptr noundef %57, ptr noundef %29)
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #10
  br label %59

59:                                               ; preds = %52, %25, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_musb_state(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef readonly %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load ptr, ptr %8, align 4
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @.str, ptr %13
  br label %16

16:                                               ; preds = %12, %4
  %17 = phi ptr [ %10, %4 ], [ %15, %12 ]
  %18 = tail call i32 @strlen(ptr noundef nonnull %17) #10
  %19 = shl i32 %18, 16
  %20 = add i32 %19, 65536
  %21 = or i32 %20, 20
  %22 = icmp eq ptr %3, null
  %23 = select i1 %22, ptr @.str, ptr %3
  %24 = tail call i32 @strlen(ptr noundef %23) #10
  %25 = add i32 %24, 1
  %26 = add i32 %18, 21
  %27 = shl i32 %25, 16
  %28 = or i32 %27, %26
  %29 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %30 = load ptr, ptr %29, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %33) #8, !srcloc !12
  %35 = add i32 %34, %31
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %16
  %41 = load volatile ptr, ptr %36, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %81, label %43

43:                                               ; preds = %40, %16
  %44 = add i32 %18, 32
  %45 = add i32 %44, %25
  %46 = and i32 %45, -8
  %47 = add i32 %46, -4
  %48 = call ptr @perf_trace_buf_alloc(i32 noundef %47, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %81, label %50

50:                                               ; preds = %43
  %51 = load ptr, ptr %5, align 4
  %52 = call ptr @llvm.returnaddress(i32 0) #10
  %53 = ptrtoint ptr %52 to i32
  %54 = getelementptr [18 x i32], ptr %51, i32 0, i32 15
  store i32 %53, ptr %54, align 4
  %55 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %56 = ptrtoint ptr %55 to i32
  %57 = getelementptr [18 x i32], ptr %51, i32 0, i32 11
  store i32 %56, ptr %57, align 4
  %58 = call i32 @llvm.read_register.i32(metadata !0) #10
  %59 = getelementptr [18 x i32], ptr %51, i32 0, i32 13
  store i32 %58, ptr %59, align 4
  %60 = getelementptr [18 x i32], ptr %51, i32 0, i32 16
  store i32 19, ptr %60, align 4
  %61 = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %48, i32 0, i32 1
  store i32 %21, ptr %61, align 4
  %62 = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %48, i32 0, i32 3
  store i32 %28, ptr %62, align 4
  %63 = getelementptr i8, ptr %48, i32 20
  %64 = load ptr, ptr %7, align 8
  %65 = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %50
  %69 = load ptr, ptr %64, align 4
  %70 = icmp eq ptr %69, null
  %71 = select i1 %70, ptr @.str, ptr %69
  br label %72

72:                                               ; preds = %68, %50
  %73 = phi ptr [ %66, %50 ], [ %71, %68 ]
  %74 = call ptr @strcpy(ptr noundef %63, ptr noundef nonnull %73)
  %75 = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %48, i32 0, i32 2
  store i8 %2, ptr %75, align 4
  %76 = and i32 %26, 65535
  %77 = getelementptr i8, ptr %48, i32 %76
  %78 = call ptr @strcpy(ptr noundef %77, ptr noundef %23)
  %79 = load i32, ptr %6, align 4
  %80 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %48, i32 noundef %47, i32 noundef %79, ptr noundef %0, i64 noundef 1, ptr noundef %80, ptr noundef %36, ptr noundef null) #10
  br label %81

81:                                               ; preds = %72, %43, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_musb_regb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
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
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %15, label %24, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %17, i32 0, i32 1
  store ptr %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %17, i32 0, i32 2
  store ptr %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %17, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %17, i32 0, i32 4
  store i8 %4, ptr %23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #10
  br label %24

24:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_musb_regb(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #8, !srcloc !12
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
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #10
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %23, i32 0, i32 1
  store ptr %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %23, i32 0, i32 2
  store ptr %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %23, i32 0, i32 3
  store i32 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %23, i32 0, i32 4
  store i8 %4, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %15, ptr noundef null) #10
  br label %42

42:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_musb_regw(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
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
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %15, label %24, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %17, i32 0, i32 1
  store ptr %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %17, i32 0, i32 2
  store ptr %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %17, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %17, i32 0, i32 4
  store i16 %4, ptr %23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #10
  br label %24

24:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_musb_regw(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef zeroext %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #8, !srcloc !12
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
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #10
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %23, i32 0, i32 1
  store ptr %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %23, i32 0, i32 2
  store ptr %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %23, i32 0, i32 3
  store i32 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %23, i32 0, i32 4
  store i16 %4, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %15, ptr noundef null) #10
  br label %42

42:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_musb_regl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
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
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %15, label %24, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 24) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %17, i32 0, i32 1
  store ptr %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %17, i32 0, i32 2
  store ptr %2, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %17, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %17, i32 0, i32 4
  store i32 %4, ptr %23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #10
  br label %24

24:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_musb_regl(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store ptr null, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 0, ptr %7, align 4, !annotation !9
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #8, !srcloc !12
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
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #10
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %23, i32 0, i32 1
  store ptr %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %23, i32 0, i32 2
  store ptr %2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %23, i32 0, i32 3
  store i32 %3, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %23, i32 0, i32 4
  store i32 %4, ptr %39, align 4
  %40 = load i32, ptr %7, align 4
  %41 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %15, ptr noundef null) #10
  br label %42

42:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_musb_isr(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %12, label %54, label %13

13:                                               ; preds = %11, %8, %2
  %14 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @.str, ptr %20
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi ptr [ %17, %13 ], [ %22, %19 ]
  %25 = tail call i32 @strlen(ptr noundef nonnull %24) #10
  %26 = add i32 %25, 21
  %27 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %26) #10
  %28 = icmp eq ptr %27, null
  br i1 %28, label %54, label %29

29:                                               ; preds = %23
  %30 = shl i32 %25, 16
  %31 = add i32 %30, 65554
  %32 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %27, i32 0, i32 1
  store i32 %31, ptr %32, align 4
  %33 = getelementptr i8, ptr %27, i32 18
  %34 = load ptr, ptr %14, align 8
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load ptr, ptr %34, align 4
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, ptr @.str, ptr %39
  br label %42

42:                                               ; preds = %38, %29
  %43 = phi ptr [ %36, %29 ], [ %41, %38 ]
  %44 = call ptr @strcpy(ptr noundef %33, ptr noundef nonnull %43)
  %45 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 28
  %46 = load i8, ptr %45, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %27, i32 0, i32 2
  store i8 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 30
  %49 = load i16, ptr %48, align 8
  %50 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %27, i32 0, i32 3
  store i16 %49, ptr %50, align 2
  %51 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 29
  %52 = load i16, ptr %51, align 2
  %53 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %27, i32 0, i32 4
  store i16 %52, ptr %53, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #10
  br label %54

54:                                               ; preds = %42, %23, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_musb_isr(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 4
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr @.str, ptr %11
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi ptr [ %8, %2 ], [ %13, %10 ]
  %16 = tail call i32 @strlen(ptr noundef nonnull %15) #10
  %17 = shl i32 %16, 16
  %18 = add i32 %17, 65554
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #8, !srcloc !12
  %25 = add i32 %24, %21
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %14
  %31 = load volatile ptr, ptr %26, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %74, label %33

33:                                               ; preds = %30, %14
  %34 = add i32 %16, 32
  %35 = and i32 %34, -8
  %36 = add i32 %35, -4
  %37 = call ptr @perf_trace_buf_alloc(i32 noundef %36, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %38 = icmp eq ptr %37, null
  br i1 %38, label %74, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %3, align 4
  %41 = call ptr @llvm.returnaddress(i32 0) #10
  %42 = ptrtoint ptr %41 to i32
  %43 = getelementptr [18 x i32], ptr %40, i32 0, i32 15
  store i32 %42, ptr %43, align 4
  %44 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %45 = ptrtoint ptr %44 to i32
  %46 = getelementptr [18 x i32], ptr %40, i32 0, i32 11
  store i32 %45, ptr %46, align 4
  %47 = call i32 @llvm.read_register.i32(metadata !0) #10
  %48 = getelementptr [18 x i32], ptr %40, i32 0, i32 13
  store i32 %47, ptr %48, align 4
  %49 = getelementptr [18 x i32], ptr %40, i32 0, i32 16
  store i32 19, ptr %49, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %37, i32 0, i32 1
  store i32 %18, ptr %50, align 4
  %51 = getelementptr i8, ptr %37, i32 18
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %39
  %57 = load ptr, ptr %52, align 4
  %58 = icmp eq ptr %57, null
  %59 = select i1 %58, ptr @.str, ptr %57
  br label %60

60:                                               ; preds = %56, %39
  %61 = phi ptr [ %54, %39 ], [ %59, %56 ]
  %62 = call ptr @strcpy(ptr noundef %51, ptr noundef nonnull %61)
  %63 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 28
  %64 = load i8, ptr %63, align 4
  %65 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %37, i32 0, i32 2
  store i8 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 30
  %67 = load i16, ptr %66, align 8
  %68 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %37, i32 0, i32 3
  store i16 %67, ptr %68, align 2
  %69 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 29
  %70 = load i16, ptr %69, align 2
  %71 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %37, i32 0, i32 4
  store i16 %70, ptr %71, align 4
  %72 = load i32, ptr %4, align 4
  %73 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %37, i32 noundef %36, i32 noundef %72, ptr noundef %0, i64 noundef 1, ptr noundef %73, ptr noundef %26, ptr noundef null) #10
  br label %74

74:                                               ; preds = %60, %33, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_musb_urb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %13, label %62, label %14

14:                                               ; preds = %12, %9, %3
  %15 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr @.str, ptr %21
  br label %24

24:                                               ; preds = %20, %14
  %25 = phi ptr [ %18, %14 ], [ %23, %20 ]
  %26 = tail call i32 @strlen(ptr noundef nonnull %25) #10
  %27 = add i32 %26, 37
  %28 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %27) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %62, label %30

30:                                               ; preds = %24
  %31 = shl i32 %26, 16
  %32 = add i32 %31, 65572
  %33 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %28, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  %34 = getelementptr i8, ptr %28, i32 36
  %35 = load ptr, ptr %15, align 8
  %36 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load ptr, ptr %35, align 4
  %41 = icmp eq ptr %40, null
  %42 = select i1 %41, ptr @.str, ptr %40
  br label %43

43:                                               ; preds = %39, %30
  %44 = phi ptr [ %37, %30 ], [ %42, %39 ]
  %45 = call ptr @strcpy(ptr noundef %34, ptr noundef nonnull %44)
  %46 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %28, i32 0, i32 2
  store ptr %2, ptr %46, align 4
  %47 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 10
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %28, i32 0, i32 3
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 12
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %28, i32 0, i32 4
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 13
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %28, i32 0, i32 5
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 19
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %28, i32 0, i32 6
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 20
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %28, i32 0, i32 7
  store i32 %60, ptr %61, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %62

62:                                               ; preds = %43, %24, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_musb_urb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.musb, ptr %1, i32 0, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load ptr, ptr %7, align 4
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @.str, ptr %12
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi ptr [ %9, %3 ], [ %14, %11 ]
  %17 = tail call i32 @strlen(ptr noundef nonnull %16) #10
  %18 = shl i32 %17, 16
  %19 = add i32 %18, 65572
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %24 = inttoptr i32 %23 to ptr
  %25 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #8, !srcloc !12
  %26 = add i32 %25, %22
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load volatile ptr, ptr %27, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %82, label %34

34:                                               ; preds = %31, %15
  %35 = add i32 %17, 48
  %36 = and i32 %35, -8
  %37 = add i32 %36, -4
  %38 = call ptr @perf_trace_buf_alloc(i32 noundef %37, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %39 = icmp eq ptr %38, null
  br i1 %39, label %82, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %4, align 4
  %42 = call ptr @llvm.returnaddress(i32 0) #10
  %43 = ptrtoint ptr %42 to i32
  %44 = getelementptr [18 x i32], ptr %41, i32 0, i32 15
  store i32 %43, ptr %44, align 4
  %45 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %46 = ptrtoint ptr %45 to i32
  %47 = getelementptr [18 x i32], ptr %41, i32 0, i32 11
  store i32 %46, ptr %47, align 4
  %48 = call i32 @llvm.read_register.i32(metadata !0) #10
  %49 = getelementptr [18 x i32], ptr %41, i32 0, i32 13
  store i32 %48, ptr %49, align 4
  %50 = getelementptr [18 x i32], ptr %41, i32 0, i32 16
  store i32 19, ptr %50, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %38, i32 0, i32 1
  store i32 %19, ptr %51, align 4
  %52 = getelementptr i8, ptr %38, i32 36
  %53 = load ptr, ptr %6, align 8
  %54 = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %40
  %58 = load ptr, ptr %53, align 4
  %59 = icmp eq ptr %58, null
  %60 = select i1 %59, ptr @.str, ptr %58
  br label %61

61:                                               ; preds = %57, %40
  %62 = phi ptr [ %55, %40 ], [ %60, %57 ]
  %63 = call ptr @strcpy(ptr noundef %52, ptr noundef nonnull %62)
  %64 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %38, i32 0, i32 2
  store ptr %2, ptr %64, align 4
  %65 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 10
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %38, i32 0, i32 3
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 12
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %38, i32 0, i32 4
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 13
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %38, i32 0, i32 5
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 19
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %38, i32 0, i32 6
  store i32 %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.urb, ptr %2, i32 0, i32 20
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %38, i32 0, i32 7
  store i32 %78, ptr %79, align 4
  %80 = load i32, ptr %5, align 4
  %81 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %38, i32 noundef %37, i32 noundef %80, ptr noundef %0, i64 noundef 1, ptr noundef %81, ptr noundef %27, ptr noundef null) #10
  br label %82

82:                                               ; preds = %61, %34, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_musb_req(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %12, label %46, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 40) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %46, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 4
  %19 = load i8, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %14, i32 0, i32 2
  store i8 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 5
  %22 = load i8, ptr %21, align 1
  %23 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %14, i32 0, i32 3
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %14, i32 0, i32 4
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %14, i32 0, i32 5
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %14, i32 0, i32 6
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %34, 18
  %36 = and i32 %35, 1
  %37 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %14, i32 0, i32 7
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr %33, align 4
  %39 = lshr i32 %38, 19
  %40 = and i32 %39, 1
  %41 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %14, i32 0, i32 8
  store i32 %40, ptr %41, align 4
  %42 = load i32, ptr %33, align 4
  %43 = lshr i32 %42, 17
  %44 = and i32 %43, 1
  %45 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %14, i32 0, i32 9
  store i32 %44, ptr %45, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #10
  br label %46

46:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_musb_req(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #8, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %64, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %64, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #10
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #10
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 4
  %35 = load i8, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %20, i32 0, i32 2
  store i8 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.musb_request, ptr %1, i32 0, i32 5
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %20, i32 0, i32 3
  store i8 %38, ptr %39, align 1
  %40 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %20, i32 0, i32 4
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %20, i32 0, i32 5
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 12
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %20, i32 0, i32 6
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.usb_request, ptr %1, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %50, 18
  %52 = and i32 %51, 1
  %53 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %20, i32 0, i32 7
  store i32 %52, ptr %53, align 4
  %54 = load i32, ptr %49, align 4
  %55 = lshr i32 %54, 19
  %56 = and i32 %55, 1
  %57 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %20, i32 0, i32 8
  store i32 %56, ptr %57, align 4
  %58 = load i32, ptr %49, align 4
  %59 = lshr i32 %58, 17
  %60 = and i32 %59, 1
  %61 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %20, i32 0, i32 9
  store i32 %60, ptr %61, align 4
  %62 = load i32, ptr %4, align 4
  %63 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 44, i32 noundef %62, ptr noundef %0, i64 noundef 1, ptr noundef %63, ptr noundef %12, ptr noundef null) #10
  br label %64

64:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_musb_cppi41(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %12, label %71, label %13

13:                                               ; preds = %11, %8, %2
  %14 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.musb, ptr %16, i32 0, i32 25
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr @.str, ptr %23
  br label %26

26:                                               ; preds = %22, %13
  %27 = phi ptr [ %20, %13 ], [ %25, %22 ]
  %28 = tail call i32 @strlen(ptr noundef nonnull %27) #10
  %29 = add i32 %28, 33
  %30 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %29) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %71, label %32

32:                                               ; preds = %26
  %33 = shl i32 %28, 16
  %34 = add i32 %33, 65568
  %35 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %30, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %30, i32 0, i32 1
  store ptr %1, ptr %36, align 4
  %37 = getelementptr i8, ptr %30, i32 32
  %38 = load ptr, ptr %14, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.musb, ptr %39, i32 0, i32 25
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load ptr, ptr %41, align 4
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, ptr @.str, ptr %46
  br label %49

49:                                               ; preds = %45, %32
  %50 = phi ptr [ %43, %32 ], [ %48, %45 ]
  %51 = call ptr @strcpy(ptr noundef %37, ptr noundef nonnull %50)
  %52 = load ptr, ptr %14, align 4
  %53 = getelementptr inbounds %struct.musb_hw_ep, ptr %52, i32 0, i32 3
  %54 = load i8, ptr %53, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %30, i32 0, i32 3
  store i8 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %1, i32 0, i32 5
  %57 = load i8, ptr %56, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %30, i32 0, i32 4
  store i8 %57, ptr %58, align 1
  %59 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %1, i32 0, i32 6
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %30, i32 0, i32 5
  store i8 %60, ptr %61, align 2
  %62 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %1, i32 0, i32 10
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %30, i32 0, i32 6
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %1, i32 0, i32 11
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %30, i32 0, i32 7
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %1, i32 0, i32 12
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %30, i32 0, i32 8
  store i32 %69, ptr %70, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #10
  br label %71

71:                                               ; preds = %49, %26, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_musb_cppi41(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.musb, ptr %7, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load ptr, ptr %9, align 4
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @.str, ptr %14
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi ptr [ %11, %2 ], [ %16, %13 ]
  %19 = tail call i32 @strlen(ptr noundef nonnull %18) #10
  %20 = shl i32 %19, 16
  %21 = add i32 %20, 65568
  %22 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %23 = load ptr, ptr %22, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %26 = inttoptr i32 %25 to ptr
  %27 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %26) #8, !srcloc !12
  %28 = add i32 %27, %24
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load volatile ptr, ptr %29, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %91, label %36

36:                                               ; preds = %33, %17
  %37 = add i32 %19, 44
  %38 = and i32 %37, -8
  %39 = add i32 %38, -4
  %40 = call ptr @perf_trace_buf_alloc(i32 noundef %39, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %91, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %3, align 4
  %44 = call ptr @llvm.returnaddress(i32 0) #10
  %45 = ptrtoint ptr %44 to i32
  %46 = getelementptr [18 x i32], ptr %43, i32 0, i32 15
  store i32 %45, ptr %46, align 4
  %47 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %48 = ptrtoint ptr %47 to i32
  %49 = getelementptr [18 x i32], ptr %43, i32 0, i32 11
  store i32 %48, ptr %49, align 4
  %50 = call i32 @llvm.read_register.i32(metadata !0) #10
  %51 = getelementptr [18 x i32], ptr %43, i32 0, i32 13
  store i32 %50, ptr %51, align 4
  %52 = getelementptr [18 x i32], ptr %43, i32 0, i32 16
  store i32 19, ptr %52, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %40, i32 0, i32 2
  store i32 %21, ptr %53, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %40, i32 0, i32 1
  store ptr %1, ptr %54, align 4
  %55 = getelementptr i8, ptr %40, i32 32
  %56 = load ptr, ptr %5, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.musb, ptr %57, i32 0, i32 25
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %42
  %64 = load ptr, ptr %59, align 4
  %65 = icmp eq ptr %64, null
  %66 = select i1 %65, ptr @.str, ptr %64
  br label %67

67:                                               ; preds = %63, %42
  %68 = phi ptr [ %61, %42 ], [ %66, %63 ]
  %69 = call ptr @strcpy(ptr noundef %55, ptr noundef nonnull %68)
  %70 = load ptr, ptr %5, align 4
  %71 = getelementptr inbounds %struct.musb_hw_ep, ptr %70, i32 0, i32 3
  %72 = load i8, ptr %71, align 4
  %73 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %40, i32 0, i32 3
  store i8 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %1, i32 0, i32 5
  %75 = load i8, ptr %74, align 4
  %76 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %40, i32 0, i32 4
  store i8 %75, ptr %76, align 1
  %77 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %1, i32 0, i32 6
  %78 = load i8, ptr %77, align 1
  %79 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %40, i32 0, i32 5
  store i8 %78, ptr %79, align 2
  %80 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %1, i32 0, i32 10
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %40, i32 0, i32 6
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %1, i32 0, i32 11
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %40, i32 0, i32 7
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.cppi41_dma_channel, ptr %1, i32 0, i32 12
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %40, i32 0, i32 8
  store i32 %87, ptr %88, align 4
  %89 = load i32, ptr %4, align 4
  %90 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %40, i32 noundef %39, i32 noundef %89, ptr noundef %0, i64 noundef 1, ptr noundef %90, ptr noundef %29, ptr noundef null) #10
  br label %91

91:                                               ; preds = %67, %36, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @musb_dbg(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca %struct.va_format, align 8
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %4)
  store ptr %1, ptr %3, align 8
  %5 = getelementptr inbounds %struct.va_format, ptr %3, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_log, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 5
  %13 = getelementptr i32, ptr @__cpu_online_mask, i32 %12
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %11, 31
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %14
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %8
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %20 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_musb_log, i32 0, i32 7), align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %22, %19
  %23 = phi ptr [ %27, %22 ], [ %20, %19 ]
  %24 = load volatile ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.tracepoint_func, ptr %23, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  call void %24(ptr noundef %26, ptr noundef %0, ptr noundef nonnull %3) #10
  %27 = getelementptr %struct.tracepoint_func, ptr %23, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %22

30:                                               ; preds = %22, %19
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br label %31

31:                                               ; preds = %30, %8, %2
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_musb_log(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_musb_log, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_musb_log, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65535
  %17 = getelementptr i8, ptr %5, i32 %16
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %13, ptr noundef %17) #10
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #10
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
define internal i32 @trace_raw_output_musb_state(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %5, i32 0, i32 2
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.trace_event_raw_musb_state, ptr %5, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 65535
  %20 = getelementptr i8, ptr %5, i32 %19
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %13, i32 noundef %16, ptr noundef %20) #10
  %21 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %22

22:                                               ; preds = %8, %3
  %23 = phi i32 [ %21, %8 ], [ %6, %3 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_musb_regb(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_musb_regb, ptr %5, i32 0, i32 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %18) #10
  %19 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %20

20:                                               ; preds = %8, %3
  %21 = phi i32 [ %19, %8 ], [ %6, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_musb_regw(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_musb_regw, ptr %5, i32 0, i32 4
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %18) #10
  %19 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %20

20:                                               ; preds = %8, %3
  %21 = phi i32 [ %19, %8 ], [ %6, %3 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_musb_regl(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_musb_regl, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %17) #10
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_musb_isr(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %5, i32 0, i32 2
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %5, i32 0, i32 3
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = getelementptr inbounds %struct.trace_event_raw_musb_isr, ptr %5, i32 0, i32 4
  %21 = load i16, ptr %20, align 4
  %22 = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %13, i32 noundef %16, i32 noundef %19, i32 noundef %22) #10
  %23 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %24

24:                                               ; preds = %8, %3
  %25 = phi i32 [ %23, %8 ], [ %6, %3 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_musb_urb(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %34

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %5, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 8
  %19 = and i32 %18, 127
  %20 = lshr i32 %17, 15
  %21 = and i32 %20, 15
  %22 = and i32 %17, 128
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, ptr @.str.35, ptr @.str.34
  %25 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %5, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %5, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %5, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_musb_urb, ptr %5, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef %13, ptr noundef %15, i32 noundef %19, i32 noundef %21, ptr noundef nonnull %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32) #10
  %33 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %34

34:                                               ; preds = %8, %3
  %35 = phi i32 [ %33, %8 ], [ %6, %3 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_musb_req(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %38

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %5, i32 0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %5, i32 0, i32 2
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, ptr @.str.45, ptr @.str.44
  %19 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %5, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr @.str.47, ptr @.str.46
  %23 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %5, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr @.str.49, ptr @.str.48
  %27 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %5, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr @.str.51, ptr @.str.50
  %31 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %5, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %5, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_musb_req, ptr %5, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef %11, i32 noundef %14, ptr noundef nonnull %18, ptr noundef nonnull %22, ptr noundef nonnull %26, ptr noundef nonnull %30, i32 noundef %32, i32 noundef %34, i32 noundef %36) #10
  %37 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %38

38:                                               ; preds = %8, %3
  %39 = phi i32 [ %37, %8 ], [ %6, %3 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_musb_cppi41(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %33

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %5, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %5, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %5, i32 0, i32 3
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %5, i32 0, i32 4
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %5, i32 0, i32 5
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, ptr @.str.61, ptr @.str.60
  %26 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %5, i32 0, i32 7
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %5, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_musb_cppi41, ptr %5, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.59, ptr noundef %13, ptr noundef %15, i32 noundef %18, i32 noundef %21, ptr noundef nonnull %25, i32 noundef %27, i32 noundef %29, i32 noundef %31) #10
  %32 = tail call i32 @trace_handle_return(ptr noundef %9) #10
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
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nounwind }

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
!12 = !{i64 494783}
!13 = !{i64 2154045453}
!14 = !{i64 2154045599}
