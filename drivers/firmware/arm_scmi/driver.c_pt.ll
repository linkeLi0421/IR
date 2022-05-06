; ModuleID = '/llk/IR/drivers/firmware/arm_scmi/driver.c_pt.bc'
source_filename = "../drivers/firmware/arm_scmi/driver.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.scmi_xfer_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.scmi_desc = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_scmi_xfer_begin = type { %struct.trace_entry, i32, i8, i8, i16, i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_scmi_xfer_end = type { %struct.trace_entry, i32, i8, i8, i16, i32, [0 x i8] }
%struct.trace_event_raw_scmi_rx_done = type { %struct.trace_entry, i32, i8, i8, i16, i8, [0 x i8] }
%struct.scmi_chan_info = type { ptr, ptr, ptr }
%struct.scmi_transport_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scmi_xfers_info = type { ptr, %struct.spinlock, i32, %struct.hlist_head, [512 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.scmi_xfer = type { i32, %struct.scmi_msg_hdr, %struct.scmi_msg, %struct.scmi_msg, %struct.completion, ptr, i8, %struct.hlist_node, %struct.refcount_struct, %struct.atomic_t, i32, %struct.spinlock, ptr }
%struct.scmi_msg_hdr = type { i8, i8, i8, i16, i32, i8 }
%struct.scmi_msg = type { ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.scmi_handle = type { ptr, ptr, ptr, ptr, ptr }
%struct.scmi_protocol_instance = type { ptr, ptr, ptr, %struct.refcount_struct, ptr, %struct.scmi_protocol_handle }
%struct.scmi_protocol_handle = type { ptr, ptr, ptr, ptr }
%struct.scmi_protocol = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.scmi_device_id = type { i8, ptr }
%struct.scmi_requested_dev = type { ptr, %struct.list_head }
%struct.scmi_device = type { i32, i8, ptr, %struct.device, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.scmi_info = type { ptr, ptr, %struct.scmi_revision_info, %struct.scmi_handle, %struct.scmi_xfers_info, %struct.scmi_xfers_info, %struct.idr, %struct.idr, %struct.idr, %struct.mutex, ptr, %struct.idr, ptr, %struct.list_head, i32 }
%struct.scmi_revision_info = type { i16, i16, i8, i8, i32, [16 x i8], [16 x i8] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.scmi_protocol_devres = type { ptr, i8 }

@__tpstrtab_scmi_xfer_begin = internal constant [16 x i8] c"scmi_xfer_begin\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_scmi_xfer_begin = dso_local global %struct.static_call_key { ptr @__traceiter_scmi_xfer_begin }, align 4
@__tracepoint_scmi_xfer_begin = dso_local global %struct.tracepoint { ptr @__tpstrtab_scmi_xfer_begin, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_scmi_xfer_begin, ptr null, ptr @__traceiter_scmi_xfer_begin, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_scmi_xfer_begin = internal constant ptr @__tracepoint_scmi_xfer_begin, section "__tracepoints_ptrs", align 4
@__tpstrtab_scmi_xfer_end = internal constant [14 x i8] c"scmi_xfer_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_scmi_xfer_end = dso_local global %struct.static_call_key { ptr @__traceiter_scmi_xfer_end }, align 4
@__tracepoint_scmi_xfer_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_scmi_xfer_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_scmi_xfer_end, ptr null, ptr @__traceiter_scmi_xfer_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_scmi_xfer_end = internal constant ptr @__tracepoint_scmi_xfer_end, section "__tracepoints_ptrs", align 4
@__tpstrtab_scmi_rx_done = internal constant [13 x i8] c"scmi_rx_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_scmi_rx_done = dso_local global %struct.static_call_key { ptr @__traceiter_scmi_rx_done }, align 4
@__tracepoint_scmi_rx_done = dso_local global %struct.tracepoint { ptr @__tpstrtab_scmi_rx_done, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_scmi_rx_done, ptr null, ptr @__traceiter_scmi_rx_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_scmi_rx_done = internal constant ptr @__tracepoint_scmi_rx_done, section "__tracepoints_ptrs", align 4
@str__scmi__trace_system_name = internal constant [5 x i8] c"scmi\00", align 1
@trace_event_fields_scmi_xfer_begin = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon { %struct.anon { ptr @.str.8, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon { %struct.anon { ptr @.str.9, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon { %struct.anon { ptr @.str.11, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.12, %union.anon { %struct.anon { ptr @.str.13, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_scmi_xfer_begin = internal global %struct.trace_event_class { ptr @str__scmi__trace_system_name, ptr @trace_event_raw_event_scmi_xfer_begin, ptr @perf_trace_scmi_xfer_begin, ptr @trace_event_reg, ptr @trace_event_fields_scmi_xfer_begin, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_scmi_xfer_begin, i64 24), ptr getelementptr (i8, ptr @event_class_scmi_xfer_begin, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_scmi_xfer_begin = internal global %struct.trace_event_functions { ptr @trace_raw_output_scmi_xfer_begin, ptr null, ptr null, ptr null }, align 4
@print_fmt_scmi_xfer_begin = internal global [127 x i8] c"\22transfer_id=%d msg_id=%u protocol_id=%u seq=%u poll=%u\22, REC->transfer_id, REC->msg_id, REC->protocol_id, REC->seq, REC->poll\00", align 1
@event_scmi_xfer_begin = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_scmi_xfer_begin, %union.anon.0 { ptr @__tracepoint_scmi_xfer_begin }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_scmi_xfer_begin }, ptr @print_fmt_scmi_xfer_begin, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_scmi_xfer_begin = internal global ptr @event_scmi_xfer_begin, section "_ftrace_events", align 4
@trace_event_fields_scmi_xfer_end = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon { %struct.anon { ptr @.str.8, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon { %struct.anon { ptr @.str.9, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon { %struct.anon { ptr @.str.11, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.15, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_scmi_xfer_end = internal global %struct.trace_event_class { ptr @str__scmi__trace_system_name, ptr @trace_event_raw_event_scmi_xfer_end, ptr @perf_trace_scmi_xfer_end, ptr @trace_event_reg, ptr @trace_event_fields_scmi_xfer_end, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_scmi_xfer_end, i64 24), ptr getelementptr (i8, ptr @event_class_scmi_xfer_end, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_scmi_xfer_end = internal global %struct.trace_event_functions { ptr @trace_raw_output_scmi_xfer_end, ptr null, ptr null, ptr null }, align 4
@print_fmt_scmi_xfer_end = internal global [131 x i8] c"\22transfer_id=%d msg_id=%u protocol_id=%u seq=%u status=%d\22, REC->transfer_id, REC->msg_id, REC->protocol_id, REC->seq, REC->status\00", align 1
@event_scmi_xfer_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_scmi_xfer_end, %union.anon.0 { ptr @__tracepoint_scmi_xfer_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_scmi_xfer_end }, ptr @print_fmt_scmi_xfer_end, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_scmi_xfer_end = internal global ptr @event_scmi_xfer_end, section "_ftrace_events", align 4
@trace_event_fields_scmi_rx_done = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon { %struct.anon { ptr @.str.8, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon { %struct.anon { ptr @.str.9, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon { %struct.anon { ptr @.str.11, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon { %struct.anon { ptr @.str.17, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_scmi_rx_done = internal global %struct.trace_event_class { ptr @str__scmi__trace_system_name, ptr @trace_event_raw_event_scmi_rx_done, ptr @perf_trace_scmi_rx_done, ptr @trace_event_reg, ptr @trace_event_fields_scmi_rx_done, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_scmi_rx_done, i64 24), ptr getelementptr (i8, ptr @event_class_scmi_rx_done, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_scmi_rx_done = internal global %struct.trace_event_functions { ptr @trace_raw_output_scmi_rx_done, ptr null, ptr null, ptr null }, align 4
@print_fmt_scmi_rx_done = internal global [135 x i8] c"\22transfer_id=%d msg_id=%u protocol_id=%u seq=%u msg_type=%u\22, REC->transfer_id, REC->msg_id, REC->protocol_id, REC->seq, REC->msg_type\00", align 1
@event_scmi_rx_done = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_scmi_rx_done, %union.anon.0 { ptr @__tracepoint_scmi_rx_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_scmi_rx_done }, ptr @print_fmt_scmi_rx_done, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_scmi_rx_done = internal global ptr @event_scmi_rx_done, section "_ftrace_events", align 4
@scmi_rx_callback.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [35 x i8] c"drivers/firmware/arm_scmi/driver.c\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"received unknown msg_type:%d\0A\00", align 1
@scmi_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @scmi_list_mutex, i64 12), ptr getelementptr (i8, ptr @scmi_list_mutex, i64 12) } }, align 4
@scmi_list = internal global %struct.list_head { ptr @scmi_list, ptr @scmi_list }, align 4
@scmi_requested_devices_mtx = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @scmi_requested_devices_mtx, i64 12), ptr getelementptr (i8, ptr @scmi_requested_devices_mtx, i64 12) } }, align 4
@scmi_requested_devices = internal global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, ptr null }, i32 0, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"\013Ignoring duplicate request [%d] %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"\013Failed to save SCMI device - ret:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed. SCMI protocol %d not active.\0A\00", align 1
@__initcall__kmod_scmi_module__349_2093_scmi_driver_init4 = internal global ptr @scmi_driver_init, section ".initcall4.init", align 4
@scmi_driver = internal global %struct.platform_driver { ptr @scmi_probe, ptr @scmi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.34, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @scmi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @versions_groups, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_scmi_driver_exit = internal global ptr @scmi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias350 = internal constant [36 x i8] c"scmi_module.alias=platform:arm-scmi\00", section ".modinfo", align 1
@__UNIQUE_ID_author351 = internal constant [55 x i8] c"scmi_module.author=Sudeep Holla <sudeep.holla@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description352 = internal constant [49 x i8] c"scmi_module.description=ARM SCMI protocol driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file353 = internal constant [55 x i8] c"scmi_module.file=drivers/firmware/arm_scmi/scmi-module\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [27 x i8] c"scmi_module.license=GPL v2\00", section ".modinfo", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"transfer_id\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"msg_id\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"protocol_id\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"u16\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"transfer_id=%d msg_id=%u protocol_id=%u seq=%u poll=%u\0A\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.16 = private unnamed_addr constant [58 x i8] c"transfer_id=%d msg_id=%u protocol_id=%u seq=%u status=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"msg_type\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"transfer_id=%d msg_id=%u protocol_id=%u seq=%u msg_type=%u\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"failed to get free message slot (%ld)\0A\00", align 1
@transfer_last_id = internal global %struct.atomic_t zeroinitializer, align 4
@.str.20 = private unnamed_addr constant [34 x i8] c"Failed to get monotonic token %d\0A\00", align 1
@scmi_xfer_token_set.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.22 = private unnamed_addr constant [41 x i8] c"Message for %d type %d is not expected!\0A\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"Invalid message type:%d for %d - HDR:0x%X  state:%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [51 x i8] c"Delayed Response for %d not expected! Buggy F/W ?\0A\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"Received valid OoO Delayed Response for %d\0A\00", align 1
@xfer_ops = internal constant %struct.scmi_xfer_ops { ptr @version_get, ptr @xfer_get_init, ptr @reset_rx_to_maxsz, ptr @do_xfer, ptr @do_xfer_with_response, ptr @xfer_put }, align 4
@.str.26 = private unnamed_addr constant [51 x i8] c"Protocol:%X - Events Registration Failed - err:%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"failed to get free message slot(%d)\0A\00", align 1
@do_xfer.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"Polling mode is not supported by transport.\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"timed out in resp(caller: %pS)\0A\00", align 1
@scmi_linux_errmap = internal unnamed_addr constant [11 x i32] [i32 0, i32 -95, i32 -22, i32 -13, i32 -2, i32 -34, i32 -16, i32 -70, i32 -5, i32 -121, i32 -71], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.30 = private unnamed_addr constant [37 x i8] c"failed to create %d protocol device\0A\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"failed to setup transport\0A\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"unable to allocate SCMI idr slot err %d\0A\00", align 1
@scmi_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,scmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scmi_mailbox_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,scmi-smc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @scmi_smc_desc }, %struct.of_device_id zeroinitializer], align 4
@.str.33 = private unnamed_addr constant [44 x i8] c"\013SCMI transport %s FAILED initialization!\0A\00", align 1
@scmi_mailbox_desc = external dso_local constant %struct.scmi_desc, align 4
@scmi_smc_desc = external dso_local constant %struct.scmi_desc, align 4
@.str.34 = private unnamed_addr constant [9 x i8] c"arm-scmi\00", align 1
@versions_groups = internal global [2 x ptr] [ptr @versions_group, ptr null], align 4
@scmi_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"&info->protocols_mtx\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"SCMI Notifications NOT available.\0A\00", align 1
@.str.37 = private unnamed_addr constant [33 x i8] c"unable to communicate with SCMI\0A\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"Out of range protocol %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"SCMI protocol %d not implemented\0A\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"SCMI protocol %d already activated. Skip\0A\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"scmi_devm_release_protocol\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"Invalid maximum messages %d, not in range [1 - %lu]\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@versions_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @versions_attrs, ptr null }, align 4
@versions_attrs = internal global [5 x ptr] [ptr @dev_attr_firmware_version, ptr @dev_attr_protocol_version, ptr @dev_attr_vendor_id, ptr @dev_attr_sub_vendor_id, ptr null], align 4
@dev_attr_firmware_version = internal global %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292 }, ptr @firmware_version_show, ptr null }, align 4
@dev_attr_protocol_version = internal global %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292 }, ptr @protocol_version_show, ptr null }, align 4
@dev_attr_vendor_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292 }, ptr @vendor_id_show, ptr null }, align 4
@dev_attr_sub_vendor_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292 }, ptr @sub_vendor_id_show, ptr null }, align 4
@.str.45 = private unnamed_addr constant [17 x i8] c"firmware_version\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"protocol_version\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"%u.%u\0A\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"vendor_id\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"sub_vendor_id\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_alias350, ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_description352, ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__event_scmi_rx_done, ptr @__event_scmi_xfer_begin, ptr @__event_scmi_xfer_end, ptr @__exitcall_scmi_driver_exit, ptr @__initcall__kmod_scmi_module__349_2093_scmi_driver_init4, ptr @__tracepoint_ptr_scmi_rx_done, ptr @__tracepoint_ptr_scmi_xfer_begin, ptr @__tracepoint_ptr_scmi_xfer_end, ptr @__tracepoint_scmi_rx_done, ptr @__tracepoint_scmi_xfer_begin, ptr @__tracepoint_scmi_xfer_end, ptr @event_class_scmi_rx_done, ptr @event_class_scmi_xfer_begin, ptr @event_class_scmi_xfer_end, ptr @event_scmi_rx_done, ptr @event_scmi_xfer_begin, ptr @event_scmi_xfer_end, ptr @scmi_driver_exit, ptr @scmi_transports_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_scmi_xfer_begin(ptr nocapture readnone %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i1 noundef zeroext %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scmi_xfer_begin, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i1 noundef zeroext %5) #16
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
define dso_local i32 @__traceiter_scmi_xfer_end(ptr nocapture readnone %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scmi_xfer_end, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i32 noundef %5) #16
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_scmi_rx_done(ptr nocapture readnone %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i8 noundef zeroext %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scmi_rx_done, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i8 noundef zeroext %5) #16
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_scmi_xfer_begin(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i1 noundef zeroext %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  %8 = zext i1 %5 to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 704
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !10

13:                                               ; preds = %6
  %14 = and i32 %10, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18, !prof !11

16:                                               ; preds = %13
  %17 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %17, label %27, label %18

18:                                               ; preds = %16, %13, %6
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 20) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %19, i32 0, i32 1
  store i32 %1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %19, i32 0, i32 2
  store i8 %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %19, i32 0, i32 3
  store i8 %3, ptr %24, align 1
  %25 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %19, i32 0, i32 4
  store i16 %4, ptr %25, align 2
  %26 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %19, i32 0, i32 5
  store i8 %8, ptr %26, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #16
  br label %27

27:                                               ; preds = %21, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_scmi_xfer_begin(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i1 noundef zeroext %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = zext i1 %5 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #9, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %21, %6
  %25 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %7, align 4
  %29 = call ptr @llvm.returnaddress(i32 0) #16
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %28, i32 0, i32 15
  store i32 %30, ptr %31, align 4
  %32 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %28, i32 0, i32 11
  store i32 %33, ptr %34, align 4
  %35 = call i32 @llvm.read_register.i32(metadata !0) #16
  %36 = getelementptr [18 x i32], ptr %28, i32 0, i32 13
  store i32 %35, ptr %36, align 4
  %37 = getelementptr [18 x i32], ptr %28, i32 0, i32 16
  store i32 19, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %25, i32 0, i32 1
  store i32 %1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %25, i32 0, i32 2
  store i8 %2, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %25, i32 0, i32 3
  store i8 %3, ptr %40, align 1
  %41 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %25, i32 0, i32 4
  store i16 %4, ptr %41, align 2
  %42 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %25, i32 0, i32 5
  store i8 %9, ptr %42, align 4
  %43 = load i32, ptr %8, align 4
  %44 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %25, i32 noundef 20, i32 noundef %43, ptr noundef %0, i64 noundef 1, ptr noundef %44, ptr noundef %17, ptr noundef null) #16
  br label %45

45:                                               ; preds = %27, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_scmi_xfer_end(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
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
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %16, label %26, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 20) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %18, i32 0, i32 2
  store i8 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %18, i32 0, i32 3
  store i8 %3, ptr %23, align 1
  %24 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %18, i32 0, i32 4
  store i16 %4, ptr %24, align 2
  %25 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %18, i32 0, i32 5
  store i32 %5, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #16
  br label %26

26:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_scmi_xfer_end(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #9, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #16
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %24, i32 0, i32 2
  store i8 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %24, i32 0, i32 3
  store i8 %3, ptr %39, align 1
  %40 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %24, i32 0, i32 4
  store i16 %4, ptr %40, align 2
  %41 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %24, i32 0, i32 5
  store i32 %5, ptr %41, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 20, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %16, ptr noundef null) #16
  br label %44

44:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_scmi_rx_done(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i8 noundef zeroext %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
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
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %16, label %26, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 20) #16
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %18, i32 0, i32 2
  store i8 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %18, i32 0, i32 3
  store i8 %3, ptr %23, align 1
  %24 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %18, i32 0, i32 4
  store i16 %4, ptr %24, align 2
  %25 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %18, i32 0, i32 5
  store i8 %5, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #16
  br label %26

26:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_scmi_rx_done(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i16 noundef zeroext %4, i8 noundef zeroext %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #9, !srcloc !12
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #16
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %24, i32 0, i32 2
  store i8 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %24, i32 0, i32 3
  store i8 %3, ptr %39, align 1
  %40 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %24, i32 0, i32 4
  store i16 %4, ptr %40, align 2
  %41 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %24, i32 0, i32 5
  store i8 %5, ptr %41, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 20, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %16, ptr noundef null) #16
  br label %44

44:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scmi_notification_instance_data_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 4252
  store ptr %1, ptr %3, align 4
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #16, !srcloc !13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scmi_notification_instance_data_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !14
  %2 = getelementptr i8, ptr %0, i32 4252
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scmi_rx_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = lshr i32 %1, 8
  %5 = and i32 %4, 3
  switch i32 %5, label %310 [
    i32 3, label %6
    i32 0, label %112
    i32 2, label %112
  ]

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.scmi_chan_info, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 2084
  %11 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #16
  %12 = getelementptr i8, ptr %9, i32 2088
  %13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #16
  %14 = getelementptr i8, ptr %9, i32 2096
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %6
  %18 = getelementptr i8, ptr %15, i32 -60
  %19 = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %15, align 4
  store volatile ptr %23, ptr %20, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.hlist_node, ptr %23, i32 0, i32 1
  store volatile ptr %20, ptr %26, align 4
  br label %27

27:                                               ; preds = %25, %22
  store ptr null, ptr %15, align 4
  store ptr null, ptr %19, align 4
  br label %28

28:                                               ; preds = %27, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @transfer_last_id) #16, !srcloc !16
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @transfer_last_id, ptr nonnull @transfer_last_id, i32 1, ptr nonnull elementtype(i32) @transfer_last_id) #16, !srcloc !17
  %30 = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !18
  store i32 %30, ptr %18, align 4
  %31 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %42

32:                                               ; preds = %28, %6
  %33 = phi ptr [ inttoptr (i32 -12 to ptr), %6 ], [ %18, %28 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #16
  %34 = ptrtoint ptr %33 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.19, i32 noundef %34) #17
  %35 = getelementptr i8, ptr %9, i32 -48
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.scmi_desc, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.scmi_transport_ops, ptr %38, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %313, label %110

42:                                               ; preds = %28
  %43 = getelementptr i8, ptr %15, i32 8
  store volatile i32 1, ptr %43, align 4
  %44 = getelementptr i8, ptr %15, i32 12
  store volatile i32 0, ptr %44, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #16
  %45 = getelementptr i8, ptr %15, i32 -56
  %46 = trunc i32 %1 to i8
  store i8 %46, ptr %45, align 4
  %47 = lshr i32 %1, 10
  %48 = trunc i32 %47 to i8
  %49 = getelementptr i8, ptr %15, i32 -55
  store i8 %48, ptr %49, align 1
  %50 = trunc i32 %4 to i8
  %51 = and i8 %50, 3
  %52 = getelementptr i8, ptr %15, i32 -54
  store i8 %51, ptr %52, align 2
  %53 = icmp eq ptr %2, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %42
  %55 = getelementptr i8, ptr %15, i32 24
  store ptr %2, ptr %55, align 4
  br label %56

56:                                               ; preds = %54, %42
  %57 = getelementptr i8, ptr %9, i32 -48
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.scmi_desc, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.scmi_transport_ops, ptr %60, i32 0, i32 8
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.scmi_desc, ptr %58, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  tail call void %62(ptr noundef %0, i32 noundef %64, ptr noundef %18) #16
  %65 = load ptr, ptr %8, align 4
  %66 = load i8, ptr %49, align 1
  %67 = load i8, ptr %45, align 4
  %68 = getelementptr i8, ptr %15, i32 -32
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %15, i32 -28
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 @scmi_notify(ptr noundef %65, i8 noundef zeroext %66, i8 noundef zeroext %67, ptr noundef %69, i32 noundef %71, i64 noundef %11) #16
  %73 = load i32, ptr %18, align 4
  %74 = load i8, ptr %45, align 4
  %75 = load i8, ptr %49, align 1
  %76 = getelementptr i8, ptr %15, i32 -52
  %77 = load i16, ptr %76, align 4
  %78 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scmi_rx_done, i32 0, i32 1), align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %56
  %81 = tail call ptr @llvm.thread.pointer() #16
  %82 = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 2
  %83 = load i32, ptr %82, align 8
  %84 = lshr i32 %83, 5
  %85 = getelementptr i32, ptr @__cpu_online_mask, i32 %84
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %83, 31
  %88 = shl nuw i32 1, %87
  %89 = and i32 %88, %86
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %80
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %92 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scmi_rx_done, i32 0, i32 7), align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %102, label %94

94:                                               ; preds = %94, %91
  %95 = phi ptr [ %99, %94 ], [ %92, %91 ]
  %96 = load volatile ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.tracepoint_func, ptr %95, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  tail call void %96(ptr noundef %98, i32 noundef %73, i8 noundef zeroext %74, i8 noundef zeroext %75, i16 noundef zeroext %77, i8 noundef zeroext 3) #16
  %99 = getelementptr %struct.tracepoint_func, ptr %95, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %94

102:                                              ; preds = %94, %91
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  br label %103

103:                                              ; preds = %102, %80, %56
  tail call fastcc void @__scmi_xfer_put(ptr noundef %10, ptr noundef %18) #16
  %104 = load ptr, ptr %57, align 4
  %105 = getelementptr inbounds %struct.scmi_desc, ptr %104, i32 0, i32 2
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.scmi_transport_ops, ptr %106, i32 0, i32 9
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %313, label %110

110:                                              ; preds = %103, %32
  %111 = phi ptr [ %40, %32 ], [ %108, %103 ]
  tail call void %111(ptr noundef %0) #16
  br label %313

112:                                              ; preds = %3, %3
  %113 = getelementptr inbounds %struct.scmi_chan_info, ptr %0, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr i8, ptr %114, i32 20
  %116 = trunc i32 %4 to i8
  %117 = and i8 %116, 3
  %118 = lshr i32 %1, 18
  %119 = trunc i32 %118 to i16
  %120 = and i16 %119, 1023
  %121 = getelementptr i8, ptr %114, i32 24
  %122 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %121) #16
  %123 = zext i16 %120 to i32
  %124 = load ptr, ptr %115, align 4
  %125 = lshr i32 %123, 5
  %126 = getelementptr i32, ptr %124, i32 %125
  %127 = load volatile i32, ptr %126, align 4
  %128 = and i32 %123, 31
  %129 = shl nuw i32 1, %128
  %130 = and i32 %127, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %156, label %132

132:                                              ; preds = %112
  %133 = mul i32 %123, 1640531527
  %134 = lshr i32 %133, 23
  %135 = getelementptr %struct.scmi_xfers_info, ptr %115, i32 0, i32 4, i32 %134
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  %138 = getelementptr i8, ptr %136, i32 -60
  %139 = icmp eq ptr %138, null
  %140 = or i1 %137, %139
  br i1 %140, label %156, label %141

141:                                              ; preds = %146, %132
  %142 = phi ptr [ %150, %146 ], [ %138, %132 ]
  %143 = getelementptr inbounds %struct.scmi_xfer, ptr %142, i32 0, i32 1, i32 3
  %144 = load i16, ptr %143, align 4
  %145 = icmp eq i16 %144, %120
  br i1 %145, label %153, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.scmi_xfer, ptr %142, i32 0, i32 7
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  %150 = getelementptr i8, ptr %148, i32 -60
  %151 = icmp eq ptr %150, null
  %152 = or i1 %149, %151
  br i1 %152, label %156, label %141

153:                                              ; preds = %141
  %154 = getelementptr inbounds %struct.scmi_xfer, ptr %142, i32 0, i32 1, i32 3
  %155 = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  br i1 %155, label %156, label %160

156:                                              ; preds = %153, %146, %132, %112
  %157 = phi ptr [ %142, %153 ], [ inttoptr (i32 -22 to ptr), %112 ], [ inttoptr (i32 -22 to ptr), %132 ], [ inttoptr (i32 -22 to ptr), %146 ]
  %158 = load ptr, ptr %0, align 4
  %159 = zext i8 %117 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.22, i32 noundef %123, i32 noundef %159) #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %121, i32 noundef %122) #16
  br label %224

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.scmi_xfer, ptr %142, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %161) #16, !srcloc !16
  %162 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %161, ptr %161, i32 1, ptr elementtype(i32) %161) #16, !srcloc !21
  %163 = extractvalue { i32, i32, i32 } %162, 0
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %169, label %165, !prof !11

165:                                              ; preds = %160
  %166 = add i32 %163, 1
  %167 = or i32 %166, %163
  %168 = icmp sgt i32 %167, -1
  br i1 %168, label %171, label %169, !prof !10

169:                                              ; preds = %165, %160
  %170 = phi i32 [ 2, %160 ], [ 1, %165 ]
  tail call void @refcount_warn_saturate(ptr noundef %161, i32 noundef %170) #16
  br label %171

171:                                              ; preds = %169, %165
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %121, i32 noundef %122) #16
  %172 = getelementptr inbounds %struct.scmi_xfer, ptr %142, i32 0, i32 11
  %173 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %172) #16
  %174 = icmp eq i8 %117, 2
  br i1 %174, label %175, label %183

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.scmi_xfer, ptr %142, i32 0, i32 5
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load ptr, ptr %0, align 4
  %181 = load i16, ptr %154, align 4
  %182 = zext i16 %181 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %180, ptr noundef nonnull @.str.24, i32 noundef %182) #17
  br label %215

183:                                              ; preds = %175, %171
  %184 = getelementptr inbounds %struct.scmi_xfer, ptr %142, i32 0, i32 10
  %185 = load i32, ptr %184, align 4
  switch i32 %185, label %194 [
    i32 0, label %186
    i32 1, label %193
    i32 2, label %215
  ]

186:                                              ; preds = %183
  br i1 %174, label %187, label %194

187:                                              ; preds = %186
  %188 = getelementptr inbounds %struct.scmi_xfer, ptr %142, i32 0, i32 1, i32 4
  store i32 0, ptr %188, align 4
  store i32 1, ptr %184, align 4
  %189 = getelementptr inbounds %struct.scmi_xfer, ptr %142, i32 0, i32 4
  tail call void @complete(ptr noundef %189) #16
  %190 = load ptr, ptr %0, align 4
  %191 = load i16, ptr %154, align 4
  %192 = zext i16 %191 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %190, ptr noundef nonnull @.str.25, i32 noundef %192) #17
  br label %194

193:                                              ; preds = %183
  br i1 %174, label %194, label %215

194:                                              ; preds = %193, %187, %186, %183
  %195 = getelementptr inbounds %struct.scmi_xfer, ptr %142, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %195) #16, !srcloc !16
  br label %196

196:                                              ; preds = %196, %194
  %197 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %195, ptr %195, i32 0, i32 1, ptr elementtype(i32) %195) #16, !srcloc !23
  %198 = extractvalue { i32, i32 } %197, 0
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %196

200:                                              ; preds = %196
  %201 = extractvalue { i32, i32 } %197, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %220, label %203, !prof !10

203:                                              ; preds = %208, %200
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !25
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !22
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %195) #16, !srcloc !16
  br label %204

204:                                              ; preds = %204, %203
  %205 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %195, ptr %195, i32 0, i32 1, ptr elementtype(i32) %195) #16, !srcloc !23
  %206 = extractvalue { i32, i32 } %205, 0
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %204

208:                                              ; preds = %204
  %209 = extractvalue { i32, i32 } %205, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !24
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %203

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.scmi_xfer, ptr %142, i32 0, i32 1, i32 2
  store i8 %117, ptr %212, align 2
  %213 = icmp eq i8 %117, 0
  %214 = select i1 %213, i32 1, i32 2
  store i32 %214, ptr %184, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %172, i32 noundef %173) #16
  br label %224

215:                                              ; preds = %193, %183, %179
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %172, i32 noundef %173) #16
  %216 = load ptr, ptr %0, align 4
  %217 = zext i8 %117 to i32
  %218 = getelementptr inbounds %struct.scmi_xfer, ptr %142, i32 0, i32 10
  %219 = load i32, ptr %218, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %216, ptr noundef nonnull @.str.23, i32 noundef %217, i32 noundef %123, i32 noundef %1, i32 noundef %219) #17
  tail call fastcc void @__scmi_xfer_put(ptr noundef %115, ptr noundef nonnull %142) #16
  br label %227

220:                                              ; preds = %200
  %221 = getelementptr inbounds %struct.scmi_xfer, ptr %142, i32 0, i32 1, i32 2
  store i8 %117, ptr %221, align 2
  %222 = icmp eq i8 %117, 0
  %223 = select i1 %222, i32 1, i32 2
  store i32 %223, ptr %184, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %172, i32 noundef %173) #16
  br label %224

224:                                              ; preds = %220, %211, %156
  %225 = phi ptr [ %157, %156 ], [ %142, %211 ], [ %142, %220 ]
  %226 = icmp ugt ptr %225, inttoptr (i32 -4096 to ptr)
  br i1 %226, label %227, label %236

227:                                              ; preds = %224, %215
  %228 = getelementptr i8, ptr %114, i32 -48
  %229 = load ptr, ptr %228, align 4
  %230 = getelementptr inbounds %struct.scmi_desc, ptr %229, i32 0, i32 2
  %231 = load ptr, ptr %230, align 4
  %232 = getelementptr inbounds %struct.scmi_transport_ops, ptr %231, i32 0, i32 9
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %313, label %235

235:                                              ; preds = %227
  tail call void %233(ptr noundef %0) #16
  br label %313

236:                                              ; preds = %224
  %237 = getelementptr inbounds %struct.scmi_xfer, ptr %225, i32 0, i32 1
  %238 = getelementptr inbounds %struct.scmi_xfer, ptr %225, i32 0, i32 1, i32 2
  %239 = load i8, ptr %238, align 2
  %240 = icmp eq i8 %239, 2
  br i1 %240, label %241, label %247

241:                                              ; preds = %236
  %242 = getelementptr i8, ptr %114, i32 -48
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.scmi_desc, ptr %243, i32 0, i32 5
  %245 = load i32, ptr %244, align 4
  %246 = getelementptr inbounds %struct.scmi_xfer, ptr %225, i32 0, i32 3, i32 1
  store i32 %245, ptr %246, align 4
  br label %247

247:                                              ; preds = %241, %236
  %248 = icmp eq ptr %2, null
  br i1 %248, label %251, label %249

249:                                              ; preds = %247
  %250 = getelementptr inbounds %struct.scmi_xfer, ptr %225, i32 0, i32 12
  store ptr %2, ptr %250, align 4
  br label %251

251:                                              ; preds = %249, %247
  %252 = getelementptr i8, ptr %114, i32 -48
  %253 = load ptr, ptr %252, align 4
  %254 = getelementptr inbounds %struct.scmi_desc, ptr %253, i32 0, i32 2
  %255 = load ptr, ptr %254, align 4
  %256 = getelementptr inbounds %struct.scmi_transport_ops, ptr %255, i32 0, i32 7
  %257 = load ptr, ptr %256, align 4
  tail call void %257(ptr noundef %0, ptr noundef %225) #16
  %258 = load i32, ptr %225, align 4
  %259 = load i8, ptr %237, align 4
  %260 = getelementptr inbounds %struct.scmi_xfer, ptr %225, i32 0, i32 1, i32 1
  %261 = load i8, ptr %260, align 1
  %262 = getelementptr inbounds %struct.scmi_xfer, ptr %225, i32 0, i32 1, i32 3
  %263 = load i16, ptr %262, align 4
  %264 = load i8, ptr %238, align 2
  %265 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scmi_rx_done, i32 0, i32 1), align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %291

267:                                              ; preds = %251
  %268 = tail call ptr @llvm.thread.pointer() #16
  %269 = getelementptr inbounds %struct.thread_info, ptr %268, i32 0, i32 2
  %270 = load i32, ptr %269, align 8
  %271 = lshr i32 %270, 5
  %272 = getelementptr i32, ptr @__cpu_online_mask, i32 %271
  %273 = load volatile i32, ptr %272, align 4
  %274 = and i32 %270, 31
  %275 = shl nuw i32 1, %274
  %276 = and i32 %275, %273
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %291, label %278

278:                                              ; preds = %267
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !19
  %279 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scmi_rx_done, i32 0, i32 7), align 4
  %280 = icmp eq ptr %279, null
  br i1 %280, label %289, label %281

281:                                              ; preds = %281, %278
  %282 = phi ptr [ %286, %281 ], [ %279, %278 ]
  %283 = load volatile ptr, ptr %282, align 4
  %284 = getelementptr inbounds %struct.tracepoint_func, ptr %282, i32 0, i32 1
  %285 = load ptr, ptr %284, align 4
  tail call void %283(ptr noundef %285, i32 noundef %258, i8 noundef zeroext %259, i8 noundef zeroext %261, i16 noundef zeroext %263, i8 noundef zeroext %264) #16
  %286 = getelementptr %struct.tracepoint_func, ptr %282, i32 1
  %287 = load ptr, ptr %286, align 4
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %281

289:                                              ; preds = %281, %278
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %290 = load i8, ptr %238, align 2
  br label %291

291:                                              ; preds = %289, %267, %251
  %292 = phi i8 [ %264, %251 ], [ %290, %289 ], [ %264, %267 ]
  %293 = icmp eq i8 %292, 2
  br i1 %293, label %294, label %305

294:                                              ; preds = %291
  %295 = load ptr, ptr %252, align 4
  %296 = getelementptr inbounds %struct.scmi_desc, ptr %295, i32 0, i32 2
  %297 = load ptr, ptr %296, align 4
  %298 = getelementptr inbounds %struct.scmi_transport_ops, ptr %297, i32 0, i32 9
  %299 = load ptr, ptr %298, align 4
  %300 = icmp eq ptr %299, null
  br i1 %300, label %302, label %301

301:                                              ; preds = %294
  tail call void %299(ptr noundef %0) #16
  br label %302

302:                                              ; preds = %301, %294
  %303 = getelementptr inbounds %struct.scmi_xfer, ptr %225, i32 0, i32 5
  %304 = load ptr, ptr %303, align 4
  br label %307

305:                                              ; preds = %291
  %306 = getelementptr inbounds %struct.scmi_xfer, ptr %225, i32 0, i32 4
  br label %307

307:                                              ; preds = %305, %302
  %308 = phi ptr [ %306, %305 ], [ %304, %302 ]
  tail call void @complete(ptr noundef %308) #16
  %309 = getelementptr inbounds %struct.scmi_xfer, ptr %225, i32 0, i32 9
  store volatile i32 0, ptr %309, align 4
  tail call fastcc void @__scmi_xfer_put(ptr noundef %115, ptr noundef %225) #16
  br label %313

310:                                              ; preds = %3
  %311 = load i1, ptr @scmi_rx_callback.__already_done, align 1
  br i1 %311, label %313, label %312, !prof !10

312:                                              ; preds = %310
  store i1 true, ptr @scmi_rx_callback.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 707, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %5) #16
  br label %313

313:                                              ; preds = %312, %310, %307, %235, %227, %110, %103, %32
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @scmi_revision_area_get(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr i8, ptr %0, i32 -20
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scmi_handle, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scmi_protocol_acquire(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @scmi_get_protocol_instance(ptr noundef %0, i8 noundef zeroext %1)
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %3 to i32
  %6 = select i1 %4, i32 %5, i32 0
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @scmi_get_protocol_instance(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 4208
  tail call void @mutex_lock(ptr noundef %3) #16
  %4 = getelementptr i8, ptr %0, i32 4188
  %5 = zext i8 %1 to i32
  %6 = tail call ptr @idr_find(ptr noundef %4, i32 noundef %5) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %6, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #16, !srcloc !16
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #16, !srcloc !21
  %11 = extractvalue { i32, i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !11

13:                                               ; preds = %8
  %14 = add i32 %11, 1
  %15 = or i32 %14, %11
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %80, label %17, !prof !10

17:                                               ; preds = %13, %8
  %18 = phi i32 [ 2, %8 ], [ 1, %13 ]
  tail call void @refcount_warn_saturate(ptr noundef %9, i32 noundef %18) #16
  br label %80

19:                                               ; preds = %2
  %20 = tail call ptr @scmi_protocol_get(i32 noundef %5) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %80, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 4
  %24 = tail call ptr @devres_open_group(ptr noundef %23, ptr noundef null, i32 noundef 3264) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i8, ptr %20, align 4
  %28 = zext i8 %27 to i32
  tail call void @scmi_protocol_put(i32 noundef %28) #16
  br label %77

29:                                               ; preds = %22
  %30 = load ptr, ptr %0, align 4
  %31 = tail call noalias ptr @devm_kmalloc(ptr noundef %30, i32 noundef 36, i32 noundef 3520) #16
  %32 = icmp eq ptr %31, null
  br i1 %32, label %71, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %31, i32 0, i32 2
  store ptr %24, ptr %34, align 4
  %35 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %31, i32 0, i32 1
  store ptr %20, ptr %35, align 4
  store ptr %0, ptr %31, align 4
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %31, i32 0, i32 5
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %31, i32 0, i32 5, i32 1
  store ptr @xfer_ops, ptr %38, align 4
  %39 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %31, i32 0, i32 5, i32 2
  store ptr @scmi_set_protocol_priv, ptr %39, align 4
  %40 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %31, i32 0, i32 5, i32 3
  store ptr @scmi_get_protocol_priv, ptr %40, align 4
  %41 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %31, i32 0, i32 3
  store volatile i32 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.scmi_protocol, ptr %20, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %37) #16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %33
  %47 = load i8, ptr %20, align 4
  %48 = zext i8 %47 to i32
  %49 = add nuw nsw i32 %48, 1
  %50 = tail call i32 @idr_alloc(ptr noundef %4, ptr noundef nonnull %31, i32 noundef %48, i32 noundef %49, i32 noundef 3264) #16
  %51 = load i8, ptr %20, align 4
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %46
  %55 = load ptr, ptr %35, align 4
  %56 = getelementptr inbounds %struct.scmi_protocol, ptr %55, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = load i8, ptr %55, align 4
  %61 = tail call i32 @scmi_register_protocol_events(ptr noundef %0, i8 noundef zeroext %60, ptr noundef %37, ptr noundef nonnull %57) #16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %0, align 4
  %65 = load ptr, ptr %35, align 4
  %66 = load i8, ptr %65, align 4
  %67 = zext i8 %66 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.26, i32 noundef %67, i32 noundef %61) #17
  br label %68

68:                                               ; preds = %63, %59, %54
  %69 = load ptr, ptr %0, align 4
  %70 = load ptr, ptr %34, align 4
  tail call void @devres_close_group(ptr noundef %69, ptr noundef %70) #16
  br label %80

71:                                               ; preds = %46, %33, %29
  %72 = phi i32 [ %44, %33 ], [ %50, %46 ], [ -12, %29 ]
  %73 = load i8, ptr %20, align 4
  %74 = zext i8 %73 to i32
  tail call void @scmi_protocol_put(i32 noundef %74) #16
  %75 = load ptr, ptr %0, align 4
  %76 = tail call i32 @devres_release_group(ptr noundef %75, ptr noundef nonnull %24) #16
  br label %77

77:                                               ; preds = %71, %26
  %78 = phi i32 [ %72, %71 ], [ -12, %26 ]
  %79 = inttoptr i32 %78 to ptr
  br label %80

80:                                               ; preds = %77, %68, %19, %17, %13
  %81 = phi ptr [ %6, %13 ], [ %6, %17 ], [ %79, %77 ], [ %31, %68 ], [ inttoptr (i32 -517 to ptr), %19 ]
  tail call void @mutex_unlock(ptr noundef %3) #16
  ret ptr %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scmi_protocol_release(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i32 4208
  tail call void @mutex_lock(ptr noundef %3) #16
  %4 = getelementptr i8, ptr %0, i32 4188
  %5 = zext i8 %1 to i32
  %6 = tail call ptr @idr_find(ptr noundef %4, i32 noundef %5) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1173, i32 noundef 9, ptr noundef null) #16
  br label %39

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %6, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #16, !srcloc !16
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #16, !srcloc !28
  %12 = extractvalue { i32, i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %12, 0
  br i1 %15, label %39, label %16, !prof !10

16:                                               ; preds = %14
  tail call void @refcount_warn_saturate(ptr noundef %10, i32 noundef 3) #16
  br label %39

17:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  %18 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %6, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %6, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.scmi_protocol, ptr %21, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  tail call void @scmi_deregister_protocol_events(ptr noundef %0, i8 noundef zeroext %1) #16
  %26 = load ptr, ptr %20, align 4
  br label %27

27:                                               ; preds = %25, %17
  %28 = phi ptr [ %26, %25 ], [ %21, %17 ]
  %29 = getelementptr inbounds %struct.scmi_protocol, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %6, i32 0, i32 5
  %34 = tail call i32 %30(ptr noundef %33) #16
  br label %35

35:                                               ; preds = %32, %27
  %36 = tail call ptr @idr_remove(ptr noundef %4, i32 noundef %5) #16
  tail call void @scmi_protocol_put(i32 noundef %5) #16
  %37 = load ptr, ptr %0, align 4
  %38 = tail call i32 @devres_release_group(ptr noundef %37, ptr noundef %19) #16
  br label %39

39:                                               ; preds = %35, %16, %14, %8
  tail call void @mutex_unlock(ptr noundef %3) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_deregister_protocol_events(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_protocol_put(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @scmi_setup_protocol_implemented(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 4228
  store ptr %1, ptr %5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scmi_handle_get(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @scmi_list_mutex) #16
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ @scmi_list, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @scmi_list
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -4308
  %9 = load ptr, ptr %2, align 4
  %10 = load ptr, ptr %8, align 4
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %3

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %5, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  %16 = getelementptr i8, ptr %5, i32 -4256
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi ptr [ %16, %12 ], [ null, %3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @scmi_list_mutex) #16
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scmi_handle_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @scmi_list_mutex) #16
  %4 = getelementptr i8, ptr %0, i32 4264
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1369, i32 noundef 9, ptr noundef null) #16
  br label %10

8:                                                ; preds = %3
  %9 = add i32 %5, -1
  store i32 %9, ptr %4, align 4
  br label %10

10:                                               ; preds = %8, %7
  tail call void @mutex_unlock(ptr noundef nonnull @scmi_list_mutex) #16
  br label %11

11:                                               ; preds = %10, %1
  %12 = phi i32 [ 0, %10 ], [ -22, %1 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scmi_protocol_device_request(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  tail call void @mutex_lock(ptr noundef nonnull @scmi_requested_devices_mtx) #16
  store i32 0, ptr %2, align 4
  %3 = call ptr @idr_get_next(ptr noundef nonnull @scmi_requested_devices, ptr noundef nonnull %2) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.scmi_device_id, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %37, %5
  %8 = phi ptr [ %3, %5 ], [ %40, %37 ]
  %9 = phi ptr [ null, %5 ], [ %20, %37 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr i8, ptr %12, i32 -4
  %14 = load ptr, ptr %13, align 4
  %15 = load i8, ptr %14, align 4
  %16 = load i8, ptr %0, align 4
  %17 = icmp eq i8 %15, %16
  %18 = select i1 %17, ptr %8, ptr null
  br label %19

19:                                               ; preds = %11, %7
  %20 = phi ptr [ %9, %7 ], [ %18, %11 ]
  br label %21

21:                                               ; preds = %25, %19
  %22 = phi ptr [ %8, %19 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %8
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %23, i32 -4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.scmi_device_id, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %6, align 4
  %31 = call i32 @strcmp(ptr noundef %29, ptr noundef %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %21

33:                                               ; preds = %25
  %34 = load i8, ptr %27, align 4
  %35 = zext i8 %34 to i32
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %35, ptr noundef %29) #17
  br label %121

37:                                               ; preds = %21
  %38 = load i32, ptr %2, align 4
  %39 = add i32 %38, 1
  store i32 %39, ptr %2, align 4
  %40 = call ptr @idr_get_next(ptr noundef nonnull @scmi_requested_devices, ptr noundef nonnull %2) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %7

42:                                               ; preds = %37, %1
  %43 = phi ptr [ null, %1 ], [ %20, %37 ]
  %44 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %45 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 12) #18
  %46 = icmp eq ptr %45, null
  br i1 %46, label %121, label %47

47:                                               ; preds = %42
  store ptr %0, ptr %45, align 8
  %48 = icmp eq ptr %43, null
  br i1 %48, label %49, label %65

49:                                               ; preds = %47
  %50 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %51 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 8) #18
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  call void @kfree(ptr noundef nonnull %45) #16
  br label %121

54:                                               ; preds = %49
  store volatile ptr %51, ptr %51, align 8
  %55 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %51, ptr %55, align 4
  %56 = load i8, ptr %0, align 4
  %57 = zext i8 %56 to i32
  %58 = add nuw nsw i32 %57, 1
  %59 = call i32 @idr_alloc(ptr noundef nonnull @scmi_requested_devices, ptr noundef nonnull %51, i32 noundef %57, i32 noundef %58, i32 noundef 3264) #16
  %60 = load i8, ptr %0, align 4
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %65, label %63

63:                                               ; preds = %54
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %59) #17
  call void @kfree(ptr noundef nonnull %45) #16
  call void @kfree(ptr noundef nonnull %51) #16
  br label %121

65:                                               ; preds = %54, %47
  %66 = phi ptr [ %43, %47 ], [ %51, %54 ]
  %67 = getelementptr inbounds %struct.scmi_requested_dev, ptr %45, i32 0, i32 1
  %68 = load ptr, ptr %66, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  store ptr %67, ptr %69, align 4
  store ptr %68, ptr %67, align 4
  %70 = getelementptr inbounds %struct.scmi_requested_dev, ptr %45, i32 0, i32 1, i32 1
  store ptr %66, ptr %70, align 8
  store volatile ptr %67, ptr %66, align 4
  call void @mutex_lock(ptr noundef nonnull @scmi_list_mutex) #16
  %71 = load ptr, ptr @scmi_list, align 4
  %72 = icmp eq ptr %71, @scmi_list
  br i1 %72, label %120, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.scmi_device_id, ptr %0, i32 0, i32 1
  br label %75

75:                                               ; preds = %117, %73
  %76 = phi ptr [ %71, %73 ], [ %118, %117 ]
  %77 = getelementptr i8, ptr %76, i32 -4308
  %78 = getelementptr i8, ptr %76, i32 -24
  %79 = load i8, ptr %0, align 4
  %80 = zext i8 %79 to i32
  %81 = call ptr @idr_find(ptr noundef %78, i32 noundef %80) #16
  %82 = icmp eq ptr %81, null
  br i1 %82, label %113, label %83

83:                                               ; preds = %75
  %84 = load i8, ptr %0, align 4
  %85 = zext i8 %84 to i32
  %86 = load ptr, ptr %74, align 4
  %87 = load ptr, ptr %77, align 4
  %88 = call ptr @scmi_child_dev_find(ptr noundef %87, i32 noundef %85, ptr noundef %86) #16
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %103

90:                                               ; preds = %83
  %91 = load ptr, ptr %77, align 4
  %92 = call ptr @scmi_device_create(ptr noundef nonnull %81, ptr noundef %91, i32 noundef %85, ptr noundef %86) #16
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load ptr, ptr %77, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.30, i32 noundef %85) #17
  br label %117

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.scmi_device, ptr %92, i32 0, i32 3
  %98 = call fastcc i32 @scmi_chan_setup(ptr noundef %77, ptr noundef %97, i32 noundef %85, i1 noundef zeroext true) #16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = call fastcc i32 @scmi_chan_setup(ptr noundef %77, ptr noundef %97, i32 noundef %85, i1 noundef zeroext false) #16
  br label %103

102:                                              ; preds = %96
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.31) #17
  call void @scmi_device_destroy(ptr noundef nonnull %92) #16
  br label %117

103:                                              ; preds = %100, %83
  %104 = phi ptr [ %88, %83 ], [ %92, %100 ]
  %105 = getelementptr inbounds %struct.scmi_device, ptr %104, i32 0, i32 4
  %106 = load ptr, ptr %105, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = getelementptr i8, ptr %76, i32 8
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %110, 1
  store i32 %111, ptr %109, align 4
  %112 = getelementptr i8, ptr %76, i32 -4256
  store ptr %112, ptr %105, align 8
  br label %117

113:                                              ; preds = %75
  %114 = load ptr, ptr %77, align 4
  %115 = load i8, ptr %0, align 4
  %116 = zext i8 %115 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.4, i32 noundef %116) #17
  br label %117

117:                                              ; preds = %113, %108, %103, %102, %94
  %118 = load ptr, ptr %76, align 4
  %119 = icmp eq ptr %118, @scmi_list
  br i1 %119, label %120, label %75

120:                                              ; preds = %117, %65
  call void @mutex_unlock(ptr noundef nonnull @scmi_list_mutex) #16
  br label %121

121:                                              ; preds = %120, %63, %53, %42, %33
  %122 = phi i32 [ -22, %33 ], [ 0, %120 ], [ -22, %63 ], [ -12, %53 ], [ -12, %42 ]
  call void @mutex_unlock(ptr noundef nonnull @scmi_requested_devices_mtx) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scmi_protocol_device_unrequest(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @scmi_requested_devices_mtx) #16
  %2 = load i8, ptr %0, align 4
  %3 = zext i8 %2 to i32
  %4 = tail call ptr @idr_find(ptr noundef nonnull @scmi_requested_devices, i32 noundef %3) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.scmi_device_id, ptr %0, i32 0, i32 1
  br label %9

9:                                                ; preds = %12, %6
  %10 = phi ptr [ %7, %6 ], [ %13, %12 ]
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %26, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr i8, ptr %10, i32 -4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.scmi_device_id, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = tail call i32 @strcmp(ptr noundef %17, ptr noundef %18)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %9

21:                                               ; preds = %12
  %22 = getelementptr i8, ptr %10, i32 -4
  %23 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  store volatile ptr %13, ptr %24, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %23, align 4
  tail call void @kfree(ptr noundef %22) #16
  br label %26

26:                                               ; preds = %21, %9
  %27 = load volatile ptr, ptr %4, align 4
  %28 = icmp eq ptr %27, %4
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i8, ptr %0, align 4
  %31 = zext i8 %30 to i32
  %32 = tail call ptr @idr_remove(ptr noundef nonnull @scmi_requested_devices, i32 noundef %31) #16
  tail call void @kfree(ptr noundef nonnull %4) #16
  br label %33

33:                                               ; preds = %29, %26, %1
  tail call void @mutex_unlock(ptr noundef nonnull @scmi_requested_devices_mtx) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scmi_free_channel(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @idr_remove(ptr noundef %1, i32 noundef %2) #16
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @scmi_transports_exit() #7 section ".exit.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.scmi_desc, ptr @scmi_mailbox_desc, i32 0, i32 1), align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #16
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr getelementptr inbounds (%struct.scmi_desc, ptr @scmi_smc_desc, i32 0, i32 1), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void %5() #16
  br label %8

8:                                                ; preds = %7, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @scmi_driver_init() #7 section ".init.text" {
  %1 = tail call i32 @scmi_bus_init() #17
  %2 = tail call fastcc i32 @scmi_transports_init() #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = tail call i32 @scmi_base_register() #17
  %6 = tail call i32 @scmi_clock_register() #17
  %7 = tail call i32 @scmi_perf_register() #17
  %8 = tail call i32 @scmi_power_register() #17
  %9 = tail call i32 @scmi_reset_register() #17
  %10 = tail call i32 @scmi_sensors_register() #17
  %11 = tail call i32 @scmi_voltage_register() #17
  %12 = tail call i32 @scmi_system_register() #17
  %13 = tail call i32 @__platform_driver_register(ptr noundef nonnull @scmi_driver, ptr noundef null) #16
  br label %14

14:                                               ; preds = %4, %0
  %15 = phi i32 [ %13, %4 ], [ %2, %0 ]
  ret i32 %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @scmi_driver_exit() #7 section ".exit.text" {
  tail call void @scmi_base_unregister() #17
  tail call void @scmi_clock_unregister() #17
  tail call void @scmi_perf_unregister() #17
  tail call void @scmi_power_unregister() #17
  tail call void @scmi_reset_unregister() #17
  tail call void @scmi_sensors_unregister() #17
  tail call void @scmi_voltage_unregister() #17
  tail call void @scmi_system_unregister() #17
  tail call void @scmi_bus_exit() #17
  %1 = load ptr, ptr getelementptr inbounds (%struct.scmi_desc, ptr @scmi_mailbox_desc, i32 0, i32 1), align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void %1() #16
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr getelementptr inbounds (%struct.scmi_desc, ptr @scmi_smc_desc, i32 0, i32 1), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void %5() #16
  br label %8

8:                                                ; preds = %7, %4
  tail call void @platform_driver_unregister(ptr noundef nonnull @scmi_driver) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_base_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_clock_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_perf_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_power_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_reset_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_sensors_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_voltage_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_system_unregister() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @scmi_bus_exit() local_unnamed_addr #6 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_scmi_xfer_begin(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %5, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %5, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %5, i32 0, i32 4
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_begin, ptr %5, i32 0, i32 5
  %22 = load i8, ptr %21, align 4, !range !30
  %23 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23) #16
  %24 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_scmi_xfer_end(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %5, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %5, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %5, i32 0, i32 4
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.trace_event_raw_scmi_xfer_end, ptr %5, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %22) #16
  %23 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %24

24:                                               ; preds = %8, %3
  %25 = phi i32 [ %23, %8 ], [ %6, %3 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_scmi_rx_done(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %5, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %5, i32 0, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %5, i32 0, i32 4
  %19 = load i16, ptr %18, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.trace_event_raw_scmi_rx_done, ptr %5, i32 0, i32 5
  %22 = load i8, ptr %21, align 4
  %23 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23) #16
  %24 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_notify(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__scmi_xfer_put(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.scmi_xfers_info, ptr %0, i32 0, i32 1
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #16
  %5 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #16, !srcloc !16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #16, !srcloc !28
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %41, label %11, !prof !10

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 3) #16
  br label %41

12:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !29
  %13 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 6
  %14 = load i8, ptr %13, align 4, !range !30
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 1, i32 3
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = load ptr, ptr %0, align 4
  tail call void @_clear_bit(i32 noundef %19, ptr noundef %20) #16
  %21 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 7
  %22 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 7, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = load ptr, ptr %21, align 4
  store volatile ptr %26, ptr %23, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  store volatile ptr %23, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %25
  store ptr null, ptr %21, align 4
  store ptr null, ptr %22, align 4
  br label %31

31:                                               ; preds = %30, %16
  store i8 0, ptr %13, align 4
  br label %32

32:                                               ; preds = %31, %12
  %33 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 7
  %34 = getelementptr inbounds %struct.scmi_xfers_info, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  store volatile ptr %35, ptr %33, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.hlist_node, ptr %35, i32 0, i32 1
  store volatile ptr %33, ptr %38, align 4
  br label %39

39:                                               ; preds = %37, %32
  store volatile ptr %33, ptr %34, align 4
  %40 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 7, i32 1
  store volatile ptr %34, ptr %40, align 4
  br label %41

41:                                               ; preds = %39, %11, %9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scmi_protocol_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @scmi_set_protocol_priv(ptr nocapture noundef writeonly %0, ptr noundef %1) #11 {
  %3 = getelementptr i8, ptr %0, i32 -4
  store ptr %1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @scmi_get_protocol_priv(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_register_protocol_events(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_close_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @version_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store ptr null, ptr %3, align 4, !annotation !9
  %4 = call i32 @xfer_get_init(ptr noundef %0, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i32 @do_xfer(ptr noundef %0, ptr noundef %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.scmi_xfer, ptr %7, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %1, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr i8, ptr %0, i32 -20
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 20
  tail call fastcc void @__scmi_xfer_put(ptr noundef %17, ptr noundef %7) #16
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i32 [ %8, %14 ], [ %4, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @xfer_get_init(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = getelementptr i8, ptr %0, i32 -20
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -52
  %9 = getelementptr i8, ptr %7, i32 20
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr i8, ptr %7, i32 -48
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.scmi_desc, ptr %12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, %3
  %16 = icmp ult i32 %14, %2
  %17 = or i1 %15, %16
  br i1 %17, label %97, label %18

18:                                               ; preds = %5
  %19 = getelementptr i8, ptr %7, i32 24
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #16
  %21 = getelementptr i8, ptr %7, i32 32
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %79, label %24

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %22, i32 -60
  %26 = getelementptr inbounds %struct.hlist_node, ptr %22, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %22, align 4
  store volatile ptr %30, ptr %27, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.hlist_node, ptr %30, i32 0, i32 1
  store volatile ptr %27, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %29
  store ptr null, ptr %22, align 4
  store ptr null, ptr %26, align 4
  br label %35

35:                                               ; preds = %34, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @transfer_last_id) #16, !srcloc !16
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @transfer_last_id, ptr nonnull @transfer_last_id, i32 1, ptr nonnull elementtype(i32) @transfer_last_id) #16, !srcloc !17
  %37 = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !18
  store i32 %37, ptr %25, align 4
  %38 = and i32 %37, 1023
  %39 = load ptr, ptr %9, align 4
  %40 = tail call i32 @_find_next_zero_bit_le(ptr noundef %39, i32 noundef 1024, i32 noundef %38) #16
  %41 = icmp eq i32 %40, 1024
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load ptr, ptr %9, align 4
  %44 = tail call i32 @_find_next_zero_bit_le(ptr noundef %43, i32 noundef 1024, i32 noundef 0) #16
  %45 = icmp eq i32 %44, 1024
  %46 = load i1, ptr @scmi_xfer_token_set.__already_done, align 1
  %47 = xor i1 %46, true
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %50, !prof !11

49:                                               ; preds = %42
  store i1 true, ptr @scmi_xfer_token_set.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 292, i32 noundef 9, ptr noundef null) #16
  br label %50

50:                                               ; preds = %49, %42
  br i1 %45, label %72, label %51

51:                                               ; preds = %50, %35
  %52 = phi i32 [ %44, %50 ], [ %40, %35 ]
  %53 = icmp eq i32 %52, %38
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = sub i32 %52, %38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @transfer_last_id) #16, !srcloc !16
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @transfer_last_id, ptr nonnull @transfer_last_id, i32 %55, ptr nonnull elementtype(i32) @transfer_last_id) #16, !srcloc !31
  br label %57

57:                                               ; preds = %54, %51
  %58 = load ptr, ptr %9, align 4
  tail call void @_set_bit(i32 noundef %52, ptr noundef %58) #16
  %59 = trunc i32 %52 to i16
  %60 = getelementptr i8, ptr %22, i32 -52
  store i16 %59, ptr %60, align 4
  %61 = and i32 %52, 65535
  %62 = mul i32 %61, 1640531527
  %63 = lshr i32 %62, 23
  %64 = getelementptr %struct.scmi_xfers_info, ptr %9, i32 0, i32 4, i32 %63
  %65 = load ptr, ptr %64, align 4
  store volatile ptr %65, ptr %22, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.hlist_node, ptr %65, i32 0, i32 1
  store volatile ptr %22, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %57
  store volatile ptr %22, ptr %64, align 4
  store volatile ptr %64, ptr %26, align 4
  %70 = getelementptr i8, ptr %22, i32 -4
  store i8 1, ptr %70, align 4
  %71 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %71, label %79, label %82

72:                                               ; preds = %50
  %73 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.20, i32 noundef -12) #17
  %74 = load ptr, ptr %21, align 4
  store volatile ptr %74, ptr %22, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.hlist_node, ptr %74, i32 0, i32 1
  store volatile ptr %22, ptr %77, align 4
  br label %78

78:                                               ; preds = %76, %72
  store volatile ptr %22, ptr %21, align 4
  store volatile ptr %21, ptr %26, align 4
  br label %79

79:                                               ; preds = %78, %69, %18
  %80 = phi ptr [ %25, %69 ], [ inttoptr (i32 -12 to ptr), %18 ], [ inttoptr (i32 -12 to ptr), %78 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #16
  %81 = ptrtoint ptr %80 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.27, i32 noundef %81) #17
  br label %97

82:                                               ; preds = %69
  %83 = getelementptr i8, ptr %22, i32 8
  store volatile i32 1, ptr %83, align 4
  %84 = getelementptr i8, ptr %22, i32 12
  store volatile i32 0, ptr %84, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #16
  %85 = getelementptr i8, ptr %22, i32 -36
  store i32 %2, ptr %85, align 4
  %86 = icmp eq i32 %3, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load ptr, ptr %11, align 4
  %89 = getelementptr inbounds %struct.scmi_desc, ptr %88, i32 0, i32 5
  %90 = load i32, ptr %89, align 4
  br label %91

91:                                               ; preds = %87, %82
  %92 = phi i32 [ %90, %87 ], [ %3, %82 ]
  %93 = getelementptr i8, ptr %22, i32 -28
  store i32 %92, ptr %93, align 4
  %94 = getelementptr i8, ptr %22, i32 -56
  %95 = getelementptr i8, ptr %22, i32 -54
  store i8 0, ptr %95, align 2
  store i8 %1, ptr %94, align 4
  %96 = getelementptr i8, ptr %22, i32 -44
  store i8 0, ptr %96, align 4
  store ptr %25, ptr %4, align 4
  br label %97

97:                                               ; preds = %91, %79, %5
  %98 = phi i32 [ %81, %79 ], [ 0, %91 ], [ -34, %5 ]
  ret i32 %98
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @reset_rx_to_maxsz(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -48
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scmi_desc, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 3, i32 1
  store i32 %8, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_xfer(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 -52
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 1
  %8 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 1, i32 5
  %9 = load i8, ptr %8, align 4, !range !30
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %4, i32 -48
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.scmi_desc, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.scmi_transport_ops, ptr %15, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i1, ptr @do_xfer.__print_once, align 1
  br i1 %20, label %172, label %21

21:                                               ; preds = %19
  store i1 true, ptr @do_xfer.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.28) #17
  br label %172

22:                                               ; preds = %11, %2
  %23 = getelementptr i8, ptr %0, i32 -16
  %24 = load ptr, ptr %23, align 4
  %25 = load i8, ptr %24, align 4
  %26 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 1, i32 1
  store i8 %25, ptr %26, align 1
  %27 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 4
  store i32 0, ptr %27, align 4
  %28 = getelementptr i8, ptr %4, i32 4148
  %29 = zext i8 %25 to i32
  %30 = tail call ptr @idr_find(ptr noundef %28, i32 noundef %29) #16
  %31 = icmp eq ptr %30, null
  br i1 %31, label %172, label %32, !prof !11

32:                                               ; preds = %22
  %33 = load i32, ptr %1, align 4
  %34 = load i8, ptr %7, align 4
  %35 = load i8, ptr %26, align 1
  %36 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 1, i32 3
  %37 = load i16, ptr %36, align 4
  %38 = load i8, ptr %8, align 4, !range !30
  %39 = icmp ne i8 %38, 0
  %40 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scmi_xfer_begin, i32 0, i32 1), align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %32
  %43 = tail call ptr @llvm.thread.pointer() #16
  %44 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 5
  %47 = getelementptr i32, ptr @__cpu_online_mask, i32 %46
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %45, 31
  %50 = shl nuw i32 1, %49
  %51 = and i32 %50, %48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %42
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !32
  %54 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scmi_xfer_begin, i32 0, i32 7), align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %56, %53
  %57 = phi ptr [ %61, %56 ], [ %54, %53 ]
  %58 = load volatile ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.tracepoint_func, ptr %57, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  tail call void %58(ptr noundef %60, i32 noundef %33, i8 noundef zeroext %34, i8 noundef zeroext %35, i16 noundef zeroext %37, i1 noundef zeroext %39) #16
  %61 = getelementptr %struct.tracepoint_func, ptr %57, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %56

64:                                               ; preds = %56, %53
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !33
  br label %65

65:                                               ; preds = %64, %42, %32
  %66 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 10
  store i32 0, ptr %66, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !34
  %67 = getelementptr i8, ptr %4, i32 -48
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.scmi_desc, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.scmi_transport_ops, ptr %70, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i32 %72(ptr noundef nonnull %30, ptr noundef %1) #16
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %172, label %75

75:                                               ; preds = %65
  %76 = load i8, ptr %8, align 4, !range !30
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %112, label %78

78:                                               ; preds = %75
  %79 = tail call i64 @ktime_get() #16
  %80 = add i64 %79, 100000
  %81 = getelementptr inbounds %struct.scmi_chan_info, ptr %30, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr i8, ptr %82, i32 -48
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.scmi_desc, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.scmi_transport_ops, ptr %86, i32 0, i32 10
  %88 = load ptr, ptr %87, align 4
  %89 = tail call zeroext i1 %88(ptr noundef nonnull %30, ptr noundef %1) #16
  br i1 %89, label %97, label %90

90:                                               ; preds = %78
  %91 = tail call zeroext i1 @try_wait_for_completion(ptr noundef %27) #16
  br i1 %91, label %97, label %92

92:                                               ; preds = %90
  %93 = tail call i64 @ktime_get() #16
  %94 = icmp sgt i64 %93, %80
  br i1 %94, label %97, label %95, !prof !10

95:                                               ; preds = %95, %92
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !35
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !36
  %96 = tail call fastcc zeroext i1 @scmi_xfer_done_no_timeout(ptr noundef nonnull %30, ptr noundef %1, i64 noundef %80)
  br i1 %96, label %97, label %95

97:                                               ; preds = %95, %92, %90, %78
  %98 = tail call i64 @ktime_get() #16
  %99 = icmp slt i64 %98, %80
  br i1 %99, label %100, label %133

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 11
  %102 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %101) #16
  %103 = load i32, ptr %66, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load ptr, ptr %67, align 4
  %107 = getelementptr inbounds %struct.scmi_desc, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.scmi_transport_ops, ptr %108, i32 0, i32 7
  %110 = load ptr, ptr %109, align 4
  tail call void %110(ptr noundef nonnull %30, ptr noundef %1) #16
  store i32 1, ptr %66, align 4
  br label %111

111:                                              ; preds = %105, %100
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %101, i32 noundef %102) #16
  br label %121

112:                                              ; preds = %75
  %113 = load ptr, ptr %67, align 4
  %114 = getelementptr inbounds %struct.scmi_desc, ptr %113, i32 0, i32 3
  %115 = load i32, ptr %114, align 4
  %116 = tail call i32 @__msecs_to_jiffies(i32 noundef %115) #16
  %117 = tail call i32 @wait_for_completion_timeout(ptr noundef %27, i32 noundef %116) #16
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.29, ptr noundef %120) #17
  br label %133

121:                                              ; preds = %112, %111
  %122 = icmp eq i32 %73, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %121
  %124 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 1, i32 4
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = sub i32 0, %125
  %129 = icmp ult i32 %128, 11
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = getelementptr [11 x i32], ptr @scmi_linux_errmap, i32 0, i32 %128
  %132 = load i32, ptr %131, align 4
  br label %133

133:                                              ; preds = %130, %127, %123, %121, %119, %97
  %134 = phi i32 [ %73, %121 ], [ 0, %123 ], [ %132, %130 ], [ -5, %127 ], [ -110, %119 ], [ -110, %97 ]
  %135 = load ptr, ptr %67, align 4
  %136 = getelementptr inbounds %struct.scmi_desc, ptr %135, i32 0, i32 2
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.scmi_transport_ops, ptr %137, i32 0, i32 6
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %133
  tail call void %139(ptr noundef nonnull %30, i32 noundef %134) #16
  br label %142

142:                                              ; preds = %141, %133
  %143 = load i32, ptr %1, align 4
  %144 = load i8, ptr %7, align 4
  %145 = load i8, ptr %26, align 1
  %146 = load i16, ptr %36, align 4
  %147 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scmi_xfer_end, i32 0, i32 1), align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %172

149:                                              ; preds = %142
  %150 = tail call ptr @llvm.thread.pointer() #16
  %151 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 2
  %152 = load i32, ptr %151, align 8
  %153 = lshr i32 %152, 5
  %154 = getelementptr i32, ptr @__cpu_online_mask, i32 %153
  %155 = load volatile i32, ptr %154, align 4
  %156 = and i32 %152, 31
  %157 = shl nuw i32 1, %156
  %158 = and i32 %157, %155
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %172, label %160

160:                                              ; preds = %149
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  %161 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scmi_xfer_end, i32 0, i32 7), align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %171, label %163

163:                                              ; preds = %163, %160
  %164 = phi ptr [ %168, %163 ], [ %161, %160 ]
  %165 = load volatile ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.tracepoint_func, ptr %164, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  tail call void %165(ptr noundef %167, i32 noundef %143, i8 noundef zeroext %144, i8 noundef zeroext %145, i16 noundef zeroext %146, i32 noundef %134) #16
  %168 = getelementptr %struct.tracepoint_func, ptr %164, i32 1
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %163

171:                                              ; preds = %163, %160
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !38
  br label %172

172:                                              ; preds = %171, %149, %142, %65, %22, %21, %19
  %173 = phi i32 [ -22, %21 ], [ -22, %19 ], [ -22, %22 ], [ %73, %65 ], [ %134, %142 ], [ %134, %149 ], [ %134, %171 ]
  ret i32 %173
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @do_xfer_with_response(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.completion, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1, i32 1
  store i64 0, ptr %3, align 8
  store ptr %4, ptr %4, align 8
  %5 = getelementptr inbounds %struct.completion, ptr %3, i32 0, i32 1, i32 1, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 5
  store ptr %3, ptr %6, align 4
  %7 = call i32 @do_xfer(ptr noundef %0, ptr noundef %1)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load ptr, ptr %6, align 4
  %11 = call i32 @wait_for_completion_timeout(ptr noundef %10, i32 noundef 200) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 1, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = sub i32 0, %15
  %19 = icmp ult i32 %18, 11
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr [11 x i32], ptr @scmi_linux_errmap, i32 0, i32 %18
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %17, %13, %9, %2
  %24 = phi i32 [ %7, %2 ], [ 0, %13 ], [ -110, %9 ], [ %22, %20 ], [ -5, %17 ]
  store ptr null, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @xfer_put(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -20
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  tail call fastcc void @__scmi_xfer_put(ptr noundef %5, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @scmi_xfer_done_no_timeout(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.scmi_chan_info, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -48
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.scmi_desc, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.scmi_transport_ops, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = tail call zeroext i1 %11(ptr noundef %0, ptr noundef %1) #16
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.scmi_xfer, ptr %1, i32 0, i32 4
  %15 = tail call zeroext i1 @try_wait_for_completion(ptr noundef %14) #16
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call i64 @ktime_get() #16
  %18 = icmp sgt i64 %17, %2
  br label %19

19:                                               ; preds = %16, %13, %3
  %20 = phi i1 [ true, %13 ], [ true, %3 ], [ %18, %16 ]
  ret i1 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scmi_child_dev_find(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scmi_device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_device_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @scmi_chan_setup(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.scmi_info, ptr %0, i32 0, i32 6
  %6 = getelementptr inbounds %struct.scmi_info, ptr %0, i32 0, i32 7
  %7 = select i1 %3, ptr %5, ptr %6
  %8 = tail call ptr @idr_find(ptr noundef %7, i32 noundef %2) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %45

10:                                               ; preds = %4
  %11 = xor i1 %3, true
  %12 = zext i1 %11 to i32
  %13 = getelementptr inbounds %struct.scmi_info, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.scmi_desc, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.scmi_transport_ops, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call zeroext i1 %18(ptr noundef %1, i32 noundef %12) #16
  br i1 %19, label %23, label %20

20:                                               ; preds = %10
  %21 = tail call ptr @idr_find(ptr noundef %7, i32 noundef 16) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %36, !prof !11

23:                                               ; preds = %10
  %24 = load ptr, ptr %0, align 4
  %25 = tail call noalias ptr @devm_kmalloc(ptr noundef %24, i32 noundef 12, i32 noundef 3520) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %23
  store ptr %1, ptr %25, align 4
  %28 = load ptr, ptr %13, align 4
  %29 = getelementptr inbounds %struct.scmi_desc, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.scmi_transport_ops, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %0, align 4
  %34 = tail call i32 %32(ptr noundef nonnull %25, ptr noundef %33, i1 noundef zeroext %3) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27, %20
  %37 = phi ptr [ %25, %27 ], [ %21, %20 ]
  %38 = add i32 %2, 1
  %39 = tail call i32 @idr_alloc(ptr noundef %7, ptr noundef nonnull %37, i32 noundef %2, i32 noundef %38, i32 noundef 3264) #16
  %40 = icmp eq i32 %39, %2
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef %39) #17
  br label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.scmi_info, ptr %0, i32 0, i32 3
  %44 = getelementptr inbounds %struct.scmi_chan_info, ptr %37, i32 0, i32 1
  store ptr %43, ptr %44, align 4
  br label %45

45:                                               ; preds = %42, %41, %27, %23, %20, %4
  %46 = phi i32 [ %39, %41 ], [ 0, %42 ], [ 0, %4 ], [ -22, %20 ], [ -12, %23 ], [ %34, %27 ]
  ret i32 %46
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_bus_init() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @scmi_transports_init() unnamed_addr #7 section ".init.text" {
  %1 = load ptr, ptr @scmi_mailbox_desc, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = tail call i32 %1() #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %14, %3
  %7 = phi ptr [ @scmi_of_match, %3 ], [ getelementptr inbounds ([3 x %struct.of_device_id], ptr @scmi_of_match, i32 0, i32 1), %14 ]
  %8 = phi i32 [ %4, %3 ], [ %15, %14 ]
  %9 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %9) #17
  br label %17

11:                                               ; preds = %3, %0
  %12 = load ptr, ptr @scmi_smc_desc, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = tail call i32 %12() #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %6

17:                                               ; preds = %14, %11, %6
  %18 = phi i32 [ %8, %6 ], [ 0, %14 ], [ 0, %11 ]
  ret i32 %18
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_base_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_clock_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_perf_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_power_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_reset_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_sensors_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_voltage_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scmi_system_register() local_unnamed_addr #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %3) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %247, label %8

8:                                                ; preds = %1
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 4320, i32 noundef 3520) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %247, label %11

11:                                               ; preds = %8
  store ptr %3, ptr %9, align 4
  %12 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 1
  store ptr %6, ptr %12, align 4
  %13 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 13
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 13, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 8
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 8, i32 0, i32 1
  store i32 33554436, ptr %16, align 4
  %17 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 8, i32 0, i32 2
  store ptr null, ptr %17, align 4
  %18 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 8, i32 1
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 8, i32 2
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %20, ptr noundef nonnull @.str.35, ptr noundef nonnull @scmi_probe.__key) #16
  %21 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 11
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 11, i32 0, i32 1
  store i32 33554436, ptr %22, align 4
  %23 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 11, i32 0, i32 2
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 11, i32 1
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 11, i32 2
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %26, align 8
  %27 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 6
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 6, i32 0, i32 1
  store i32 33554436, ptr %28, align 4
  %29 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 6, i32 0, i32 2
  %30 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 7
  %31 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 7, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  store i32 33554436, ptr %31, align 4
  %32 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 7, i32 0, i32 2
  store ptr null, ptr %32, align 4
  %33 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 7, i32 1
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 7, i32 2
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 3
  %36 = load ptr, ptr %9, align 4
  store ptr %36, ptr %35, align 4
  %37 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 2
  %38 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 3, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 3, i32 2
  store ptr @scmi_devm_protocol_get, ptr %39, align 4
  %40 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 3, i32 3
  store ptr @scmi_devm_protocol_put, ptr %40, align 4
  %41 = getelementptr inbounds %struct.scmi_desc, ptr %6, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %11
  %46 = tail call i32 %43(ptr noundef %3) #16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %247

48:                                               ; preds = %45, %11
  %49 = tail call fastcc i32 @scmi_chan_setup(ptr noundef nonnull %9, ptr noundef %3, i32 noundef 16, i1 noundef zeroext true) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %247

51:                                               ; preds = %48
  %52 = tail call fastcc i32 @scmi_chan_setup(ptr noundef nonnull %9, ptr noundef %3, i32 noundef 16, i1 noundef zeroext false) #16
  %53 = load ptr, ptr %12, align 4
  %54 = getelementptr inbounds %struct.scmi_desc, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.scmi_transport_ops, ptr %55, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = getelementptr inbounds %struct.scmi_desc, ptr %53, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 4, i32 2
  store i32 %61, ptr %62, align 4
  %63 = load i32, ptr %60, align 4
  br label %80

64:                                               ; preds = %51
  %65 = tail call ptr @idr_find(ptr noundef %27, i32 noundef 16) #16
  %66 = icmp eq ptr %65, null
  br i1 %66, label %233, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %54, align 4
  %69 = getelementptr inbounds %struct.scmi_transport_ops, ptr %68, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 %70(ptr noundef nonnull %65) #16
  %72 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 4, i32 2
  store i32 %71, ptr %72, align 4
  %73 = tail call ptr @idr_find(ptr noundef %30, i32 noundef 16) #16
  %74 = icmp eq ptr %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %67
  %76 = load ptr, ptr %54, align 4
  %77 = getelementptr inbounds %struct.scmi_transport_ops, ptr %76, i32 0, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i32 %78(ptr noundef nonnull %73) #16
  br label %80

80:                                               ; preds = %75, %59
  %81 = phi i32 [ %63, %59 ], [ %79, %75 ]
  %82 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 5, i32 2
  store i32 %81, ptr %82, align 4
  br label %83

83:                                               ; preds = %80, %67
  %84 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 4
  %85 = tail call fastcc i32 @__scmi_xfer_info_init(ptr noundef nonnull %9, ptr noundef %84) #16
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %233

87:                                               ; preds = %83
  %88 = tail call ptr @idr_find(ptr noundef %30, i32 noundef 16) #16
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.scmi_info, ptr %9, i32 0, i32 5
  %92 = tail call fastcc i32 @__scmi_xfer_info_init(ptr noundef nonnull %9, ptr noundef %91) #16
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %233

94:                                               ; preds = %90, %87
  %95 = tail call i32 @scmi_notification_init(ptr noundef %35) #16
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.36) #17
  br label %98

98:                                               ; preds = %97, %94
  %99 = tail call fastcc ptr @scmi_get_protocol_instance(ptr noundef %35, i8 noundef zeroext 16) #16
  %100 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = ptrtoint ptr %99 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37) #17
  tail call void @scmi_notification_exit(ptr noundef %35) #16
  br label %233

103:                                              ; preds = %98
  tail call void @mutex_lock(ptr noundef nonnull @scmi_list_mutex) #16
  %104 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @scmi_list, i32 0, i32 1), align 4
  store ptr %13, ptr getelementptr inbounds (%struct.list_head, ptr @scmi_list, i32 0, i32 1), align 4
  store ptr @scmi_list, ptr %13, align 4
  store ptr %104, ptr %14, align 4
  store volatile ptr %13, ptr %104, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @scmi_list_mutex) #16
  %105 = tail call ptr @of_get_next_available_child(ptr noundef %5, ptr noundef null) #16
  %106 = icmp eq ptr %105, null
  br i1 %106, label %247, label %107

107:                                              ; preds = %103
  %108 = getelementptr %struct.scmi_info, ptr %9, i32 0, i32 10
  br label %109

109:                                              ; preds = %230, %107
  %110 = phi ptr [ %105, %107 ], [ %231, %230 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  store i32 0, ptr %2, align 4, !annotation !9
  %111 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %110, ptr noundef nonnull @.str.38, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #16
  %112 = icmp sgt i32 %111, -1
  br i1 %112, label %113, label %230

113:                                              ; preds = %109
  %114 = load i32, ptr %2, align 4
  %115 = and i32 %114, 4194048
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.39, i32 noundef %114) #17
  %118 = load i32, ptr %2, align 4
  br label %119

119:                                              ; preds = %117, %113
  %120 = phi i32 [ %118, %117 ], [ %114, %113 ]
  %121 = trunc i32 %120 to i8
  %122 = load ptr, ptr %108, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %187, label %124

124:                                              ; preds = %119
  %125 = load i8, ptr %122, align 1
  %126 = icmp eq i8 %125, %121
  br i1 %126, label %188, label %127

127:                                              ; preds = %124
  %128 = getelementptr i8, ptr %122, i32 1
  %129 = load i8, ptr %128, align 1
  %130 = icmp eq i8 %129, %121
  br i1 %130, label %188, label %131

131:                                              ; preds = %127
  %132 = getelementptr i8, ptr %122, i32 2
  %133 = load i8, ptr %132, align 1
  %134 = icmp eq i8 %133, %121
  br i1 %134, label %188, label %135

135:                                              ; preds = %131
  %136 = getelementptr i8, ptr %122, i32 3
  %137 = load i8, ptr %136, align 1
  %138 = icmp eq i8 %137, %121
  br i1 %138, label %188, label %139

139:                                              ; preds = %135
  %140 = getelementptr i8, ptr %122, i32 4
  %141 = load i8, ptr %140, align 1
  %142 = icmp eq i8 %141, %121
  br i1 %142, label %188, label %143

143:                                              ; preds = %139
  %144 = getelementptr i8, ptr %122, i32 5
  %145 = load i8, ptr %144, align 1
  %146 = icmp eq i8 %145, %121
  br i1 %146, label %188, label %147

147:                                              ; preds = %143
  %148 = getelementptr i8, ptr %122, i32 6
  %149 = load i8, ptr %148, align 1
  %150 = icmp eq i8 %149, %121
  br i1 %150, label %188, label %151

151:                                              ; preds = %147
  %152 = getelementptr i8, ptr %122, i32 7
  %153 = load i8, ptr %152, align 1
  %154 = icmp eq i8 %153, %121
  br i1 %154, label %188, label %155

155:                                              ; preds = %151
  %156 = getelementptr i8, ptr %122, i32 8
  %157 = load i8, ptr %156, align 1
  %158 = icmp eq i8 %157, %121
  br i1 %158, label %188, label %159

159:                                              ; preds = %155
  %160 = getelementptr i8, ptr %122, i32 9
  %161 = load i8, ptr %160, align 1
  %162 = icmp eq i8 %161, %121
  br i1 %162, label %188, label %163

163:                                              ; preds = %159
  %164 = getelementptr i8, ptr %122, i32 10
  %165 = load i8, ptr %164, align 1
  %166 = icmp eq i8 %165, %121
  br i1 %166, label %188, label %167

167:                                              ; preds = %163
  %168 = getelementptr i8, ptr %122, i32 11
  %169 = load i8, ptr %168, align 1
  %170 = icmp eq i8 %169, %121
  br i1 %170, label %188, label %171

171:                                              ; preds = %167
  %172 = getelementptr i8, ptr %122, i32 12
  %173 = load i8, ptr %172, align 1
  %174 = icmp eq i8 %173, %121
  br i1 %174, label %188, label %175

175:                                              ; preds = %171
  %176 = getelementptr i8, ptr %122, i32 13
  %177 = load i8, ptr %176, align 1
  %178 = icmp eq i8 %177, %121
  br i1 %178, label %188, label %179

179:                                              ; preds = %175
  %180 = getelementptr i8, ptr %122, i32 14
  %181 = load i8, ptr %180, align 1
  %182 = icmp eq i8 %181, %121
  br i1 %182, label %188, label %183

183:                                              ; preds = %179
  %184 = getelementptr i8, ptr %122, i32 15
  %185 = load i8, ptr %184, align 1
  %186 = icmp eq i8 %185, %121
  br i1 %186, label %188, label %187

187:                                              ; preds = %183, %119
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.40, i32 noundef %120) #17
  br label %230

188:                                              ; preds = %183, %179, %175, %171, %167, %163, %159, %155, %151, %147, %143, %139, %135, %131, %127, %124
  %189 = add i32 %120, 1
  %190 = call i32 @idr_alloc(ptr noundef %21, ptr noundef nonnull %110, i32 noundef %120, i32 noundef %189, i32 noundef 3264) #16
  %191 = load i32, ptr %2, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %194, label %193

193:                                              ; preds = %188
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.41, i32 noundef %191) #17
  br label %230

194:                                              ; preds = %188
  %195 = call ptr @of_node_get(ptr noundef nonnull %110) #16
  %196 = load i32, ptr %2, align 4
  call void @mutex_lock(ptr noundef nonnull @scmi_requested_devices_mtx) #16
  %197 = call ptr @idr_find(ptr noundef nonnull @scmi_requested_devices, i32 noundef %196) #16
  %198 = icmp eq ptr %197, null
  br i1 %198, label %229, label %199

199:                                              ; preds = %194
  %200 = load ptr, ptr %197, align 4
  %201 = icmp eq ptr %200, %197
  br i1 %201, label %229, label %202

202:                                              ; preds = %226, %199
  %203 = phi ptr [ %227, %226 ], [ %200, %199 ]
  %204 = getelementptr i8, ptr %203, i32 -4
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.scmi_device_id, ptr %205, i32 0, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = load ptr, ptr %9, align 4
  %209 = call ptr @scmi_child_dev_find(ptr noundef %208, i32 noundef %196, ptr noundef %207) #16
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %224

211:                                              ; preds = %202
  %212 = load ptr, ptr %9, align 4
  %213 = call ptr @scmi_device_create(ptr noundef nonnull %110, ptr noundef %212, i32 noundef %196, ptr noundef %207) #16
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %216, ptr noundef nonnull @.str.30, i32 noundef %196) #17
  br label %226

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.scmi_device, ptr %213, i32 0, i32 3
  %219 = call fastcc i32 @scmi_chan_setup(ptr noundef %9, ptr noundef %218, i32 noundef %196, i1 noundef zeroext true) #16
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = call fastcc i32 @scmi_chan_setup(ptr noundef %9, ptr noundef %218, i32 noundef %196, i1 noundef zeroext false) #16
  br label %224

223:                                              ; preds = %217
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %218, ptr noundef nonnull @.str.31) #17
  call void @scmi_device_destroy(ptr noundef nonnull %213) #16
  br label %226

224:                                              ; preds = %221, %202
  %225 = phi ptr [ %209, %202 ], [ %213, %221 ]
  call void @scmi_set_handle(ptr noundef nonnull %225) #16
  br label %226

226:                                              ; preds = %224, %223, %215
  %227 = load ptr, ptr %203, align 4
  %228 = icmp eq ptr %227, %197
  br i1 %228, label %229, label %202

229:                                              ; preds = %226, %199, %194
  call void @mutex_unlock(ptr noundef nonnull @scmi_requested_devices_mtx) #16
  br label %230

230:                                              ; preds = %229, %193, %187, %109
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %231 = call ptr @of_get_next_available_child(ptr noundef %5, ptr noundef nonnull %110) #16
  %232 = icmp eq ptr %231, null
  br i1 %232, label %247, label %109

233:                                              ; preds = %101, %90, %83, %64
  %234 = phi i32 [ %92, %90 ], [ %102, %101 ], [ -22, %64 ], [ %85, %83 ]
  %235 = load ptr, ptr %12, align 4
  %236 = getelementptr inbounds %struct.scmi_desc, ptr %235, i32 0, i32 2
  %237 = load ptr, ptr %236, align 4
  %238 = getelementptr inbounds %struct.scmi_transport_ops, ptr %237, i32 0, i32 3
  %239 = load ptr, ptr %238, align 4
  %240 = tail call i32 @idr_for_each(ptr noundef %27, ptr noundef %239, ptr noundef %27) #16
  tail call void @idr_destroy(ptr noundef %27) #16
  %241 = load ptr, ptr %12, align 4
  %242 = getelementptr inbounds %struct.scmi_desc, ptr %241, i32 0, i32 2
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr inbounds %struct.scmi_transport_ops, ptr %243, i32 0, i32 3
  %245 = load ptr, ptr %244, align 4
  %246 = tail call i32 @idr_for_each(ptr noundef %30, ptr noundef %245, ptr noundef %30) #16
  tail call void @idr_destroy(ptr noundef %30) #16
  br label %247

247:                                              ; preds = %233, %230, %103, %48, %45, %8, %1
  %248 = phi i32 [ %234, %233 ], [ -22, %1 ], [ -12, %8 ], [ %46, %45 ], [ %49, %48 ], [ 0, %103 ], [ 0, %230 ]
  ret i32 %248
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  tail call void @mutex_lock(ptr noundef nonnull @scmi_list_mutex) #16
  %5 = getelementptr inbounds %struct.scmi_info, ptr %4, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @mutex_unlock(ptr noundef nonnull @scmi_list_mutex) #16
  br label %43

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.scmi_info, ptr %4, i32 0, i32 13
  %11 = getelementptr inbounds %struct.scmi_info, ptr %4, i32 0, i32 13, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @scmi_list_mutex) #16
  %15 = getelementptr inbounds %struct.scmi_info, ptr %4, i32 0, i32 3
  tail call void @scmi_notification_exit(ptr noundef %15) #16
  %16 = getelementptr inbounds %struct.scmi_info, ptr %4, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %16) #16
  %17 = getelementptr inbounds %struct.scmi_info, ptr %4, i32 0, i32 8
  tail call void @idr_destroy(ptr noundef %17) #16
  tail call void @mutex_unlock(ptr noundef %16) #16
  %18 = getelementptr inbounds %struct.scmi_info, ptr %4, i32 0, i32 11
  store i32 0, ptr %2, align 4
  %19 = call ptr @idr_get_next(ptr noundef %18, ptr noundef nonnull %2) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %21, %9
  %22 = phi ptr [ %25, %21 ], [ %19, %9 ]
  call void @of_node_put(ptr noundef nonnull %22) #16
  %23 = load i32, ptr %2, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %2, align 4
  %25 = call ptr @idr_get_next(ptr noundef %18, ptr noundef nonnull %2) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %21

27:                                               ; preds = %21, %9
  call void @idr_destroy(ptr noundef %18) #16
  %28 = getelementptr inbounds %struct.scmi_info, ptr %4, i32 0, i32 6
  %29 = getelementptr inbounds %struct.scmi_info, ptr %4, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.scmi_desc, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.scmi_transport_ops, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 @idr_for_each(ptr noundef %28, ptr noundef %34, ptr noundef %28) #16
  call void @idr_destroy(ptr noundef %28) #16
  %36 = getelementptr inbounds %struct.scmi_info, ptr %4, i32 0, i32 7
  %37 = load ptr, ptr %29, align 4
  %38 = getelementptr inbounds %struct.scmi_desc, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.scmi_transport_ops, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 @idr_for_each(ptr noundef %36, ptr noundef %41, ptr noundef %36) #16
  call void @idr_destroy(ptr noundef %36) #16
  br label %43

43:                                               ; preds = %27, %8
  %44 = phi i32 [ %42, %27 ], [ -16, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @scmi_devm_protocol_get(ptr noundef %0, i8 noundef zeroext %1, ptr noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %2, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @scmi_devm_release_protocol, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.42) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @scmi_get_protocol_instance(ptr noundef %5, i8 noundef zeroext %1)
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @devres_free(ptr noundef nonnull %8) #16
  br label %22

14:                                               ; preds = %10
  store ptr %5, ptr %8, align 4
  %15 = getelementptr inbounds %struct.scmi_protocol_devres, ptr %8, i32 0, i32 1
  store i8 %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 3
  tail call void @devres_add(ptr noundef %16, ptr noundef nonnull %8) #16
  %17 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %11, i32 0, i32 5
  store ptr %17, ptr %2, align 4
  %18 = getelementptr inbounds %struct.scmi_protocol_instance, ptr %11, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.scmi_protocol, ptr %19, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %14, %13, %7, %3
  %23 = phi ptr [ %11, %13 ], [ %21, %14 ], [ inttoptr (i32 -22 to ptr), %3 ], [ inttoptr (i32 -12 to ptr), %7 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scmi_devm_protocol_put(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  store i8 %1, ptr %3, align 1
  %4 = getelementptr inbounds %struct.scmi_device, ptr %0, i32 0, i32 3
  %5 = call i32 @devres_release(ptr noundef %4, ptr noundef nonnull @scmi_devm_release_protocol, ptr noundef nonnull @scmi_devm_protocol_match, ptr noundef nonnull %3) #16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !10

7:                                                ; preds = %2
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1308, i32 noundef 9, ptr noundef null) #16
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scmi_notification_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_notification_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @scmi_devm_release_protocol(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.scmi_protocol_devres, ptr %1, i32 0, i32 1
  %5 = load i8, ptr %4, align 4
  tail call void @scmi_protocol_release(ptr noundef %3, i8 noundef zeroext %5)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @scmi_devm_protocol_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp eq ptr %2, null
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1287, i32 noundef 9, ptr noundef null) #16
  br label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.scmi_protocol_devres, ptr %1, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = load i8, ptr %2, align 1
  %12 = icmp eq i8 %10, %11
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %8, %7
  %15 = phi i32 [ 0, %7 ], [ %13, %8 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__scmi_xfer_info_init(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.scmi_info, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.scmi_xfers_info, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1025
  %9 = icmp ult i32 %8, -1024
  br i1 %9, label %10, label %12, !prof !11

10:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1385, i32 noundef 9, ptr noundef null) #16
  %11 = load i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.43, i32 noundef %11, i32 noundef 1024) #17
  br label %48

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.scmi_xfers_info, ptr %1, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(2048) %13, i8 0, i32 2048, i1 false) #16
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 128, i32 noundef 3520) #16
  store ptr %14, ptr %1, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.scmi_xfers_info, ptr %1, i32 0, i32 3
  store ptr null, ptr %17, align 4
  %18 = load i32, ptr %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.scmi_desc, ptr %5, i32 0, i32 5
  br label %22

22:                                               ; preds = %41, %20
  %23 = phi i32 [ 0, %20 ], [ %43, %41 ]
  %24 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 88, i32 noundef 3520) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %48, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %21, align 4
  %28 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %27, i32 noundef 3520) #16
  %29 = getelementptr inbounds %struct.scmi_xfer, ptr %24, i32 0, i32 3
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.scmi_xfer, ptr %24, i32 0, i32 2
  store ptr %28, ptr %32, align 4
  %33 = getelementptr inbounds %struct.scmi_xfer, ptr %24, i32 0, i32 4
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.scmi_xfer, ptr %24, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %34, ptr noundef nonnull @.str.44, ptr noundef nonnull @init_completion.__key) #16
  %35 = getelementptr inbounds %struct.scmi_xfer, ptr %24, i32 0, i32 11
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.scmi_xfer, ptr %24, i32 0, i32 7
  %37 = load ptr, ptr %17, align 4
  store volatile ptr %37, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.hlist_node, ptr %37, i32 0, i32 1
  store volatile ptr %36, ptr %40, align 4
  br label %41

41:                                               ; preds = %39, %31
  store volatile ptr %36, ptr %17, align 4
  %42 = getelementptr inbounds %struct.scmi_xfer, ptr %24, i32 0, i32 7, i32 1
  store volatile ptr %17, ptr %42, align 4
  %43 = add nuw nsw i32 %23, 1
  %44 = load i32, ptr %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %22, label %46

46:                                               ; preds = %41, %16
  %47 = getelementptr inbounds %struct.scmi_xfers_info, ptr %1, i32 0, i32 1
  store i32 0, ptr %47, align 4
  br label %48

48:                                               ; preds = %46, %26, %22, %12, %10
  %49 = phi i32 [ -22, %10 ], [ 0, %46 ], [ -12, %12 ], [ -12, %22 ], [ -12, %26 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scmi_set_handle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @firmware_version_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.scmi_info, ptr %5, i32 0, i32 2, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.46, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @protocol_version_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.scmi_info, ptr %5, i32 0, i32 2
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.scmi_info, ptr %5, i32 0, i32 2, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.48, i32 noundef %8, i32 noundef %11)
  ret i32 %12
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vendor_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.scmi_info, ptr %5, i32 0, i32 2, i32 5
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.50, ptr noundef %6)
  ret i32 %7
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sub_vendor_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.scmi_info, ptr %5, i32 0, i32 2, i32 6
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.50, ptr noundef %6)
  ret i32 %7
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold }

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
!12 = !{i64 356978}
!13 = !{i64 2154511329}
!14 = !{i64 2154512705}
!15 = !{i64 2148043044}
!16 = !{i64 443039, i64 2147933010, i64 2147933036, i64 2147933083, i64 2147933105, i64 2147933133, i64 2147933153}
!17 = !{i64 2147945906, i64 2147945938, i64 2147945967, i64 2147946001, i64 2147946032, i64 2147946055}
!18 = !{i64 2148043247}
!19 = !{i64 2151983723}
!20 = !{i64 2151983953}
!21 = !{i64 2147946680, i64 2147946712, i64 2147946741, i64 2147946775, i64 2147946806, i64 2147946829}
!22 = !{i64 2148058624}
!23 = !{i64 429102, i64 429126, i64 429147, i64 429164, i64 429181}
!24 = !{i64 2148058824}
!25 = !{i64 2154901681}
!26 = !{i64 2154901523}
!27 = !{i64 2148046878}
!28 = !{i64 2147949037, i64 2147949069, i64 2147949098, i64 2147949132, i64 2147949163, i64 2147949186}
!29 = !{i64 2149342044}
!30 = !{i8 0, i8 2}
!31 = !{i64 2147945222, i64 2147945248, i64 2147945277, i64 2147945311, i64 2147945342, i64 2147945365}
!32 = !{i64 2151945474}
!33 = !{i64 2151945702}
!34 = !{i64 2154954662}
!35 = !{i64 2154955932}
!36 = !{i64 2154955774}
!37 = !{i64 2151966677}
!38 = !{i64 2151966905}
