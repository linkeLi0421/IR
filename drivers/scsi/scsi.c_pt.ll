; ModuleID = '/llk/IR/drivers/scsi/scsi.c_pt.bc'
source_filename = "../drivers/scsi/scsi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_change_queue_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_change_queue_depth\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_change_queue_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_track_queue_full:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_track_queue_full\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_track_queue_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_get_vpd_page:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_get_vpd_page\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_get_vpd_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_report_opcode:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_report_opcode\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_report_opcode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_device_get:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_device_get\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_device_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_device_put:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_device_put\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_device_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scsi_iterate_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22__scsi_iterate_devices\22\09\09\09\09\09"
module asm "__kstrtabns___scsi_iterate_devices:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_starget_for_each_device:\09\09\09\09\09"
module asm "\09.asciz \09\22starget_for_each_device\22\09\09\09\09\09"
module asm "__kstrtabns_starget_for_each_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___starget_for_each_device:\09\09\09\09\09"
module asm "\09.asciz \09\22__starget_for_each_device\22\09\09\09\09\09"
module asm "__kstrtabns___starget_for_each_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scsi_device_lookup_by_target:\09\09\09\09\09"
module asm "\09.asciz \09\22__scsi_device_lookup_by_target\22\09\09\09\09\09"
module asm "__kstrtabns___scsi_device_lookup_by_target:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_device_lookup_by_target:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_device_lookup_by_target\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_device_lookup_by_target:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___scsi_device_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22__scsi_device_lookup\22\09\09\09\09\09"
module asm "__kstrtabns___scsi_device_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_device_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_device_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_device_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.103 }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.105, %struct.trace_event, ptr, ptr, %union.anon.106, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.105 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.106 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.trace_event_raw_scsi_dispatch_cmd_start = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.trace_event_raw_scsi_dispatch_cmd_error = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, [0 x i8] }
%struct.trace_event_raw_scsi_cmd_done_timeout_template = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, [0 x i8] }
%struct.trace_event_raw_scsi_eh_wakeup = type { %struct.trace_entry, i32, [0 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.scsi_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_vpd = type { %struct.callback_head, i32, [0 x i8] }
%struct.scsi_sense_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_scsi_dispatch_cmd_start = internal constant [24 x i8] c"scsi_dispatch_cmd_start\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_scsi_dispatch_cmd_start = dso_local global %struct.static_call_key { ptr @__traceiter_scsi_dispatch_cmd_start }, align 4
@__tracepoint_scsi_dispatch_cmd_start = dso_local global %struct.tracepoint { ptr @__tpstrtab_scsi_dispatch_cmd_start, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_scsi_dispatch_cmd_start, ptr null, ptr @__traceiter_scsi_dispatch_cmd_start, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_scsi_dispatch_cmd_start = internal constant ptr @__tracepoint_scsi_dispatch_cmd_start, section "__tracepoints_ptrs", align 4
@__tpstrtab_scsi_dispatch_cmd_error = internal constant [24 x i8] c"scsi_dispatch_cmd_error\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_scsi_dispatch_cmd_error = dso_local global %struct.static_call_key { ptr @__traceiter_scsi_dispatch_cmd_error }, align 4
@__tracepoint_scsi_dispatch_cmd_error = dso_local global %struct.tracepoint { ptr @__tpstrtab_scsi_dispatch_cmd_error, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_scsi_dispatch_cmd_error, ptr null, ptr @__traceiter_scsi_dispatch_cmd_error, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_scsi_dispatch_cmd_error = internal constant ptr @__tracepoint_scsi_dispatch_cmd_error, section "__tracepoints_ptrs", align 4
@__tpstrtab_scsi_dispatch_cmd_done = internal constant [23 x i8] c"scsi_dispatch_cmd_done\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_scsi_dispatch_cmd_done = dso_local global %struct.static_call_key { ptr @__traceiter_scsi_dispatch_cmd_done }, align 4
@__tracepoint_scsi_dispatch_cmd_done = dso_local global %struct.tracepoint { ptr @__tpstrtab_scsi_dispatch_cmd_done, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_scsi_dispatch_cmd_done, ptr null, ptr @__traceiter_scsi_dispatch_cmd_done, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_scsi_dispatch_cmd_done = internal constant ptr @__tracepoint_scsi_dispatch_cmd_done, section "__tracepoints_ptrs", align 4
@__tpstrtab_scsi_dispatch_cmd_timeout = internal constant [26 x i8] c"scsi_dispatch_cmd_timeout\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_scsi_dispatch_cmd_timeout = dso_local global %struct.static_call_key { ptr @__traceiter_scsi_dispatch_cmd_timeout }, align 4
@__tracepoint_scsi_dispatch_cmd_timeout = dso_local global %struct.tracepoint { ptr @__tpstrtab_scsi_dispatch_cmd_timeout, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_scsi_dispatch_cmd_timeout, ptr null, ptr @__traceiter_scsi_dispatch_cmd_timeout, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_scsi_dispatch_cmd_timeout = internal constant ptr @__tracepoint_scsi_dispatch_cmd_timeout, section "__tracepoints_ptrs", align 4
@__tpstrtab_scsi_eh_wakeup = internal constant [15 x i8] c"scsi_eh_wakeup\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_scsi_eh_wakeup = dso_local global %struct.static_call_key { ptr @__traceiter_scsi_eh_wakeup }, align 4
@__tracepoint_scsi_eh_wakeup = dso_local global %struct.tracepoint { ptr @__tpstrtab_scsi_eh_wakeup, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_scsi_eh_wakeup, ptr null, ptr @__traceiter_scsi_eh_wakeup, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_scsi_eh_wakeup = internal constant ptr @__tracepoint_scsi_eh_wakeup, section "__tracepoints_ptrs", align 4
@str__scsi__trace_system_name = internal constant [5 x i8] c"scsi\00", align 1
@trace_event_fields_scsi_dispatch_cmd_start = internal global [11 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.103 { %struct.anon.104 { ptr @.str.10, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.103 { %struct.anon.104 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_scsi_dispatch_cmd_start = internal global %struct.trace_event_class { ptr @str__scsi__trace_system_name, ptr @trace_event_raw_event_scsi_dispatch_cmd_start, ptr @perf_trace_scsi_dispatch_cmd_start, ptr @trace_event_reg, ptr @trace_event_fields_scsi_dispatch_cmd_start, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_scsi_dispatch_cmd_start, i64 24), ptr getelementptr (i8, ptr @event_class_scsi_dispatch_cmd_start, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_scsi_dispatch_cmd_start = internal global %struct.trace_event_functions { ptr @trace_raw_output_scsi_dispatch_cmd_start, ptr null, ptr null, ptr null }, align 4
@print_fmt_scsi_dispatch_cmd_start = internal global [3013 x i8] c"\22host_no=%u channel=%u id=%u lun=%u data_sgl=%u prot_sgl=%u prot_op=%s cmnd=(%s %s raw=%s)\22, REC->host_no, REC->channel, REC->id, REC->lun, REC->data_sglen, REC->prot_sglen, __print_symbolic(REC->prot_op, { SCSI_PROT_NORMAL, \22SCSI_PROT_NORMAL\22 }, { SCSI_PROT_READ_INSERT, \22SCSI_PROT_READ_INSERT\22 }, { SCSI_PROT_WRITE_STRIP, \22SCSI_PROT_WRITE_STRIP\22 }, { SCSI_PROT_READ_STRIP, \22SCSI_PROT_READ_STRIP\22 }, { SCSI_PROT_WRITE_INSERT, \22SCSI_PROT_WRITE_INSERT\22 }, { SCSI_PROT_READ_PASS, \22SCSI_PROT_READ_PASS\22 }, { SCSI_PROT_WRITE_PASS, \22SCSI_PROT_WRITE_PASS\22 }), __print_symbolic(REC->opcode, { 0x00, \22TEST_UNIT_READY\22 }, { 0x01, \22REZERO_UNIT\22 }, { 0x03, \22REQUEST_SENSE\22 }, { 0x04, \22FORMAT_UNIT\22 }, { 0x05, \22READ_BLOCK_LIMITS\22 }, { 0x07, \22REASSIGN_BLOCKS\22 }, { 0x07, \22INITIALIZE_ELEMENT_STATUS\22 }, { 0x08, \22READ_6\22 }, { 0x0a, \22WRITE_6\22 }, { 0x0b, \22SEEK_6\22 }, { 0x0f, \22READ_REVERSE\22 }, { 0x10, \22WRITE_FILEMARKS\22 }, { 0x11, \22SPACE\22 }, { 0x12, \22INQUIRY\22 }, { 0x14, \22RECOVER_BUFFERED_DATA\22 }, { 0x15, \22MODE_SELECT\22 }, { 0x16, \22RESERVE\22 }, { 0x17, \22RELEASE\22 }, { 0x18, \22COPY\22 }, { 0x19, \22ERASE\22 }, { 0x1a, \22MODE_SENSE\22 }, { 0x1b, \22START_STOP\22 }, { 0x1c, \22RECEIVE_DIAGNOSTIC\22 }, { 0x1d, \22SEND_DIAGNOSTIC\22 }, { 0x1e, \22ALLOW_MEDIUM_REMOVAL\22 }, { 0x24, \22SET_WINDOW\22 }, { 0x25, \22READ_CAPACITY\22 }, { 0x28, \22READ_10\22 }, { 0x2a, \22WRITE_10\22 }, { 0x2b, \22SEEK_10\22 }, { 0x2b, \22POSITION_TO_ELEMENT\22 }, { 0x2e, \22WRITE_VERIFY\22 }, { 0x2f, \22VERIFY\22 }, { 0x30, \22SEARCH_HIGH\22 }, { 0x31, \22SEARCH_EQUAL\22 }, { 0x32, \22SEARCH_LOW\22 }, { 0x33, \22SET_LIMITS\22 }, { 0x34, \22PRE_FETCH\22 }, { 0x34, \22READ_POSITION\22 }, { 0x35, \22SYNCHRONIZE_CACHE\22 }, { 0x36, \22LOCK_UNLOCK_CACHE\22 }, { 0x37, \22READ_DEFECT_DATA\22 }, { 0x38, \22MEDIUM_SCAN\22 }, { 0x39, \22COMPARE\22 }, { 0x3a, \22COPY_VERIFY\22 }, { 0x3b, \22WRITE_BUFFER\22 }, { 0x3c, \22READ_BUFFER\22 }, { 0x3d, \22UPDATE_BLOCK\22 }, { 0x3e, \22READ_LONG\22 }, { 0x3f, \22WRITE_LONG\22 }, { 0x40, \22CHANGE_DEFINITION\22 }, { 0x41, \22WRITE_SAME\22 }, { 0x42, \22UNMAP\22 }, { 0x43, \22READ_TOC\22 }, { 0x4c, \22LOG_SELECT\22 }, { 0x4d, \22LOG_SENSE\22 }, { 0x53, \22XDWRITEREAD_10\22 }, { 0x55, \22MODE_SELECT_10\22 }, { 0x56, \22RESERVE_10\22 }, { 0x57, \22RELEASE_10\22 }, { 0x5a, \22MODE_SENSE_10\22 }, { 0x5e, \22PERSISTENT_RESERVE_IN\22 }, { 0x5f, \22PERSISTENT_RESERVE_OUT\22 }, { 0x7f, \22VARIABLE_LENGTH_CMD\22 }, { 0xa0, \22REPORT_LUNS\22 }, { 0xa3, \22MAINTENANCE_IN\22 }, { 0xa4, \22MAINTENANCE_OUT\22 }, { 0xa5, \22MOVE_MEDIUM\22 }, { 0xa6, \22EXCHANGE_MEDIUM\22 }, { 0xa8, \22READ_12\22 }, { 0xaa, \22WRITE_12\22 }, { 0xae, \22WRITE_VERIFY_12\22 }, { 0xb0, \22SEARCH_HIGH_12\22 }, { 0xb1, \22SEARCH_EQUAL_12\22 }, { 0xb2, \22SEARCH_LOW_12\22 }, { 0xb8, \22READ_ELEMENT_STATUS\22 }, { 0xb6, \22SEND_VOLUME_TAG\22 }, { 0xea, \22WRITE_LONG_2\22 }, { 0x88, \22READ_16\22 }, { 0x8a, \22WRITE_16\22 }, { 0x8f, \22VERIFY_16\22 }, { 0x93, \22WRITE_SAME_16\22 }, { 0x94, \22ZBC_OUT\22 }, { 0x95, \22ZBC_IN\22 }, { 0x9e, \22SERVICE_ACTION_IN_16\22 }, { 0x09, \22READ_32\22 }, { 0x0b, \22WRITE_32\22 }, { 0x0d, \22WRITE_SAME_32\22 }, { 0x85, \22ATA_16\22 }, { 0xa1, \22ATA_12\22 }), scsi_trace_parse_cdb(p, __get_dynamic_array(cmnd), REC->cmd_len), __print_hex(__get_dynamic_array(cmnd), REC->cmd_len)\00", align 1
@event_scsi_dispatch_cmd_start = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_scsi_dispatch_cmd_start, %union.anon.105 { ptr @__tracepoint_scsi_dispatch_cmd_start }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_scsi_dispatch_cmd_start }, ptr @print_fmt_scsi_dispatch_cmd_start, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_scsi_dispatch_cmd_start = internal global ptr @event_scsi_dispatch_cmd_start, section "_ftrace_events", align 4
@trace_event_fields_scsi_dispatch_cmd_error = internal global [12 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.112, %union.anon.103 { %struct.anon.104 { ptr @.str.113, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.103 { %struct.anon.104 { ptr @.str.10, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.103 { %struct.anon.104 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_scsi_dispatch_cmd_error = internal global %struct.trace_event_class { ptr @str__scsi__trace_system_name, ptr @trace_event_raw_event_scsi_dispatch_cmd_error, ptr @perf_trace_scsi_dispatch_cmd_error, ptr @trace_event_reg, ptr @trace_event_fields_scsi_dispatch_cmd_error, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_scsi_dispatch_cmd_error, i64 24), ptr getelementptr (i8, ptr @event_class_scsi_dispatch_cmd_error, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_scsi_dispatch_cmd_error = internal global %struct.trace_event_functions { ptr @trace_raw_output_scsi_dispatch_cmd_error, ptr null, ptr null, ptr null }, align 4
@print_fmt_scsi_dispatch_cmd_error = internal global [3030 x i8] c"\22host_no=%u channel=%u id=%u lun=%u data_sgl=%u prot_sgl=%u prot_op=%s cmnd=(%s %s raw=%s) rtn=%d\22, REC->host_no, REC->channel, REC->id, REC->lun, REC->data_sglen, REC->prot_sglen, __print_symbolic(REC->prot_op, { SCSI_PROT_NORMAL, \22SCSI_PROT_NORMAL\22 }, { SCSI_PROT_READ_INSERT, \22SCSI_PROT_READ_INSERT\22 }, { SCSI_PROT_WRITE_STRIP, \22SCSI_PROT_WRITE_STRIP\22 }, { SCSI_PROT_READ_STRIP, \22SCSI_PROT_READ_STRIP\22 }, { SCSI_PROT_WRITE_INSERT, \22SCSI_PROT_WRITE_INSERT\22 }, { SCSI_PROT_READ_PASS, \22SCSI_PROT_READ_PASS\22 }, { SCSI_PROT_WRITE_PASS, \22SCSI_PROT_WRITE_PASS\22 }), __print_symbolic(REC->opcode, { 0x00, \22TEST_UNIT_READY\22 }, { 0x01, \22REZERO_UNIT\22 }, { 0x03, \22REQUEST_SENSE\22 }, { 0x04, \22FORMAT_UNIT\22 }, { 0x05, \22READ_BLOCK_LIMITS\22 }, { 0x07, \22REASSIGN_BLOCKS\22 }, { 0x07, \22INITIALIZE_ELEMENT_STATUS\22 }, { 0x08, \22READ_6\22 }, { 0x0a, \22WRITE_6\22 }, { 0x0b, \22SEEK_6\22 }, { 0x0f, \22READ_REVERSE\22 }, { 0x10, \22WRITE_FILEMARKS\22 }, { 0x11, \22SPACE\22 }, { 0x12, \22INQUIRY\22 }, { 0x14, \22RECOVER_BUFFERED_DATA\22 }, { 0x15, \22MODE_SELECT\22 }, { 0x16, \22RESERVE\22 }, { 0x17, \22RELEASE\22 }, { 0x18, \22COPY\22 }, { 0x19, \22ERASE\22 }, { 0x1a, \22MODE_SENSE\22 }, { 0x1b, \22START_STOP\22 }, { 0x1c, \22RECEIVE_DIAGNOSTIC\22 }, { 0x1d, \22SEND_DIAGNOSTIC\22 }, { 0x1e, \22ALLOW_MEDIUM_REMOVAL\22 }, { 0x24, \22SET_WINDOW\22 }, { 0x25, \22READ_CAPACITY\22 }, { 0x28, \22READ_10\22 }, { 0x2a, \22WRITE_10\22 }, { 0x2b, \22SEEK_10\22 }, { 0x2b, \22POSITION_TO_ELEMENT\22 }, { 0x2e, \22WRITE_VERIFY\22 }, { 0x2f, \22VERIFY\22 }, { 0x30, \22SEARCH_HIGH\22 }, { 0x31, \22SEARCH_EQUAL\22 }, { 0x32, \22SEARCH_LOW\22 }, { 0x33, \22SET_LIMITS\22 }, { 0x34, \22PRE_FETCH\22 }, { 0x34, \22READ_POSITION\22 }, { 0x35, \22SYNCHRONIZE_CACHE\22 }, { 0x36, \22LOCK_UNLOCK_CACHE\22 }, { 0x37, \22READ_DEFECT_DATA\22 }, { 0x38, \22MEDIUM_SCAN\22 }, { 0x39, \22COMPARE\22 }, { 0x3a, \22COPY_VERIFY\22 }, { 0x3b, \22WRITE_BUFFER\22 }, { 0x3c, \22READ_BUFFER\22 }, { 0x3d, \22UPDATE_BLOCK\22 }, { 0x3e, \22READ_LONG\22 }, { 0x3f, \22WRITE_LONG\22 }, { 0x40, \22CHANGE_DEFINITION\22 }, { 0x41, \22WRITE_SAME\22 }, { 0x42, \22UNMAP\22 }, { 0x43, \22READ_TOC\22 }, { 0x4c, \22LOG_SELECT\22 }, { 0x4d, \22LOG_SENSE\22 }, { 0x53, \22XDWRITEREAD_10\22 }, { 0x55, \22MODE_SELECT_10\22 }, { 0x56, \22RESERVE_10\22 }, { 0x57, \22RELEASE_10\22 }, { 0x5a, \22MODE_SENSE_10\22 }, { 0x5e, \22PERSISTENT_RESERVE_IN\22 }, { 0x5f, \22PERSISTENT_RESERVE_OUT\22 }, { 0x7f, \22VARIABLE_LENGTH_CMD\22 }, { 0xa0, \22REPORT_LUNS\22 }, { 0xa3, \22MAINTENANCE_IN\22 }, { 0xa4, \22MAINTENANCE_OUT\22 }, { 0xa5, \22MOVE_MEDIUM\22 }, { 0xa6, \22EXCHANGE_MEDIUM\22 }, { 0xa8, \22READ_12\22 }, { 0xaa, \22WRITE_12\22 }, { 0xae, \22WRITE_VERIFY_12\22 }, { 0xb0, \22SEARCH_HIGH_12\22 }, { 0xb1, \22SEARCH_EQUAL_12\22 }, { 0xb2, \22SEARCH_LOW_12\22 }, { 0xb8, \22READ_ELEMENT_STATUS\22 }, { 0xb6, \22SEND_VOLUME_TAG\22 }, { 0xea, \22WRITE_LONG_2\22 }, { 0x88, \22READ_16\22 }, { 0x8a, \22WRITE_16\22 }, { 0x8f, \22VERIFY_16\22 }, { 0x93, \22WRITE_SAME_16\22 }, { 0x94, \22ZBC_OUT\22 }, { 0x95, \22ZBC_IN\22 }, { 0x9e, \22SERVICE_ACTION_IN_16\22 }, { 0x09, \22READ_32\22 }, { 0x0b, \22WRITE_32\22 }, { 0x0d, \22WRITE_SAME_32\22 }, { 0x85, \22ATA_16\22 }, { 0xa1, \22ATA_12\22 }), scsi_trace_parse_cdb(p, __get_dynamic_array(cmnd), REC->cmd_len), __print_hex(__get_dynamic_array(cmnd), REC->cmd_len), REC->rtn\00", align 1
@event_scsi_dispatch_cmd_error = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_scsi_dispatch_cmd_error, %union.anon.105 { ptr @__tracepoint_scsi_dispatch_cmd_error }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_scsi_dispatch_cmd_error }, ptr @print_fmt_scsi_dispatch_cmd_error, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_scsi_dispatch_cmd_error = internal global ptr @event_scsi_dispatch_cmd_error, section "_ftrace_events", align 4
@trace_event_fields_scsi_cmd_done_timeout_template = internal global [12 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.112, %union.anon.103 { %struct.anon.104 { ptr @.str.116, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.9, %union.anon.103 { %struct.anon.104 { ptr @.str.10, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.103 { %struct.anon.104 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_scsi_cmd_done_timeout_template = internal global %struct.trace_event_class { ptr @str__scsi__trace_system_name, ptr @trace_event_raw_event_scsi_cmd_done_timeout_template, ptr @perf_trace_scsi_cmd_done_timeout_template, ptr @trace_event_reg, ptr @trace_event_fields_scsi_cmd_done_timeout_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_scsi_cmd_done_timeout_template, i64 24), ptr getelementptr (i8, ptr @event_class_scsi_cmd_done_timeout_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_scsi_cmd_done_timeout_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_scsi_cmd_done_timeout_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_scsi_cmd_done_timeout_template = internal global [4352 x i8] c"\22host_no=%u channel=%u id=%u lun=%u data_sgl=%u prot_sgl=%u prot_op=%s cmnd=(%s %s raw=%s) result=(driver=%s host=%s message=%s status=%s)\22, REC->host_no, REC->channel, REC->id, REC->lun, REC->data_sglen, REC->prot_sglen, __print_symbolic(REC->prot_op, { SCSI_PROT_NORMAL, \22SCSI_PROT_NORMAL\22 }, { SCSI_PROT_READ_INSERT, \22SCSI_PROT_READ_INSERT\22 }, { SCSI_PROT_WRITE_STRIP, \22SCSI_PROT_WRITE_STRIP\22 }, { SCSI_PROT_READ_STRIP, \22SCSI_PROT_READ_STRIP\22 }, { SCSI_PROT_WRITE_INSERT, \22SCSI_PROT_WRITE_INSERT\22 }, { SCSI_PROT_READ_PASS, \22SCSI_PROT_READ_PASS\22 }, { SCSI_PROT_WRITE_PASS, \22SCSI_PROT_WRITE_PASS\22 }), __print_symbolic(REC->opcode, { 0x00, \22TEST_UNIT_READY\22 }, { 0x01, \22REZERO_UNIT\22 }, { 0x03, \22REQUEST_SENSE\22 }, { 0x04, \22FORMAT_UNIT\22 }, { 0x05, \22READ_BLOCK_LIMITS\22 }, { 0x07, \22REASSIGN_BLOCKS\22 }, { 0x07, \22INITIALIZE_ELEMENT_STATUS\22 }, { 0x08, \22READ_6\22 }, { 0x0a, \22WRITE_6\22 }, { 0x0b, \22SEEK_6\22 }, { 0x0f, \22READ_REVERSE\22 }, { 0x10, \22WRITE_FILEMARKS\22 }, { 0x11, \22SPACE\22 }, { 0x12, \22INQUIRY\22 }, { 0x14, \22RECOVER_BUFFERED_DATA\22 }, { 0x15, \22MODE_SELECT\22 }, { 0x16, \22RESERVE\22 }, { 0x17, \22RELEASE\22 }, { 0x18, \22COPY\22 }, { 0x19, \22ERASE\22 }, { 0x1a, \22MODE_SENSE\22 }, { 0x1b, \22START_STOP\22 }, { 0x1c, \22RECEIVE_DIAGNOSTIC\22 }, { 0x1d, \22SEND_DIAGNOSTIC\22 }, { 0x1e, \22ALLOW_MEDIUM_REMOVAL\22 }, { 0x24, \22SET_WINDOW\22 }, { 0x25, \22READ_CAPACITY\22 }, { 0x28, \22READ_10\22 }, { 0x2a, \22WRITE_10\22 }, { 0x2b, \22SEEK_10\22 }, { 0x2b, \22POSITION_TO_ELEMENT\22 }, { 0x2e, \22WRITE_VERIFY\22 }, { 0x2f, \22VERIFY\22 }, { 0x30, \22SEARCH_HIGH\22 }, { 0x31, \22SEARCH_EQUAL\22 }, { 0x32, \22SEARCH_LOW\22 }, { 0x33, \22SET_LIMITS\22 }, { 0x34, \22PRE_FETCH\22 }, { 0x34, \22READ_POSITION\22 }, { 0x35, \22SYNCHRONIZE_CACHE\22 }, { 0x36, \22LOCK_UNLOCK_CACHE\22 }, { 0x37, \22READ_DEFECT_DATA\22 }, { 0x38, \22MEDIUM_SCAN\22 }, { 0x39, \22COMPARE\22 }, { 0x3a, \22COPY_VERIFY\22 }, { 0x3b, \22WRITE_BUFFER\22 }, { 0x3c, \22READ_BUFFER\22 }, { 0x3d, \22UPDATE_BLOCK\22 }, { 0x3e, \22READ_LONG\22 }, { 0x3f, \22WRITE_LONG\22 }, { 0x40, \22CHANGE_DEFINITION\22 }, { 0x41, \22WRITE_SAME\22 }, { 0x42, \22UNMAP\22 }, { 0x43, \22READ_TOC\22 }, { 0x4c, \22LOG_SELECT\22 }, { 0x4d, \22LOG_SENSE\22 }, { 0x53, \22XDWRITEREAD_10\22 }, { 0x55, \22MODE_SELECT_10\22 }, { 0x56, \22RESERVE_10\22 }, { 0x57, \22RELEASE_10\22 }, { 0x5a, \22MODE_SENSE_10\22 }, { 0x5e, \22PERSISTENT_RESERVE_IN\22 }, { 0x5f, \22PERSISTENT_RESERVE_OUT\22 }, { 0x7f, \22VARIABLE_LENGTH_CMD\22 }, { 0xa0, \22REPORT_LUNS\22 }, { 0xa3, \22MAINTENANCE_IN\22 }, { 0xa4, \22MAINTENANCE_OUT\22 }, { 0xa5, \22MOVE_MEDIUM\22 }, { 0xa6, \22EXCHANGE_MEDIUM\22 }, { 0xa8, \22READ_12\22 }, { 0xaa, \22WRITE_12\22 }, { 0xae, \22WRITE_VERIFY_12\22 }, { 0xb0, \22SEARCH_HIGH_12\22 }, { 0xb1, \22SEARCH_EQUAL_12\22 }, { 0xb2, \22SEARCH_LOW_12\22 }, { 0xb8, \22READ_ELEMENT_STATUS\22 }, { 0xb6, \22SEND_VOLUME_TAG\22 }, { 0xea, \22WRITE_LONG_2\22 }, { 0x88, \22READ_16\22 }, { 0x8a, \22WRITE_16\22 }, { 0x8f, \22VERIFY_16\22 }, { 0x93, \22WRITE_SAME_16\22 }, { 0x94, \22ZBC_OUT\22 }, { 0x95, \22ZBC_IN\22 }, { 0x9e, \22SERVICE_ACTION_IN_16\22 }, { 0x09, \22READ_32\22 }, { 0x0b, \22WRITE_32\22 }, { 0x0d, \22WRITE_SAME_32\22 }, { 0x85, \22ATA_16\22 }, { 0xa1, \22ATA_12\22 }), scsi_trace_parse_cdb(p, __get_dynamic_array(cmnd), REC->cmd_len), __print_hex(__get_dynamic_array(cmnd), REC->cmd_len), \22DRIVER_OK\22, __print_symbolic(((REC->result) >> 16) & 0xff, { DID_OK, \22DID_OK\22 }, { DID_NO_CONNECT, \22DID_NO_CONNECT\22 }, { DID_BUS_BUSY, \22DID_BUS_BUSY\22 }, { DID_TIME_OUT, \22DID_TIME_OUT\22 }, { DID_BAD_TARGET, \22DID_BAD_TARGET\22 }, { DID_ABORT, \22DID_ABORT\22 }, { DID_PARITY, \22DID_PARITY\22 }, { DID_ERROR, \22DID_ERROR\22 }, { DID_RESET, \22DID_RESET\22 }, { DID_BAD_INTR, \22DID_BAD_INTR\22 }, { DID_PASSTHROUGH, \22DID_PASSTHROUGH\22 }, { DID_SOFT_ERROR, \22DID_SOFT_ERROR\22 }, { DID_IMM_RETRY, \22DID_IMM_RETRY\22 }, { DID_REQUEUE, \22DID_REQUEUE\22 }, { DID_TRANSPORT_DISRUPTED, \22DID_TRANSPORT_DISRUPTED\22 }, { DID_TRANSPORT_FAILFAST, \22DID_TRANSPORT_FAILFAST\22 }), \22COMMAND_COMPLETE\22, __print_symbolic(REC->result & 0xff, { SAM_STAT_GOOD, \22SAM_STAT_GOOD\22 }, { SAM_STAT_CHECK_CONDITION, \22SAM_STAT_CHECK_CONDITION\22 }, { SAM_STAT_CONDITION_MET, \22SAM_STAT_CONDITION_MET\22 }, { SAM_STAT_BUSY, \22SAM_STAT_BUSY\22 }, { SAM_STAT_INTERMEDIATE, \22SAM_STAT_INTERMEDIATE\22 }, { SAM_STAT_INTERMEDIATE_CONDITION_MET, \22SAM_STAT_INTERMEDIATE_CONDITION_MET\22 }, { SAM_STAT_RESERVATION_CONFLICT, \22SAM_STAT_RESERVATION_CONFLICT\22 }, { SAM_STAT_COMMAND_TERMINATED, \22SAM_STAT_COMMAND_TERMINATED\22 }, { SAM_STAT_TASK_SET_FULL, \22SAM_STAT_TASK_SET_FULL\22 }, { SAM_STAT_ACA_ACTIVE, \22SAM_STAT_ACA_ACTIVE\22 }, { SAM_STAT_TASK_ABORTED, \22SAM_STAT_TASK_ABORTED\22 })\00", align 1
@event_scsi_dispatch_cmd_done = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_scsi_cmd_done_timeout_template, %union.anon.105 { ptr @__tracepoint_scsi_dispatch_cmd_done }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_scsi_cmd_done_timeout_template }, ptr @print_fmt_scsi_cmd_done_timeout_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_scsi_dispatch_cmd_done = internal global ptr @event_scsi_dispatch_cmd_done, section "_ftrace_events", align 4
@event_scsi_dispatch_cmd_timeout = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_scsi_cmd_done_timeout_template, %union.anon.105 { ptr @__tracepoint_scsi_dispatch_cmd_timeout }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_scsi_cmd_done_timeout_template }, ptr @print_fmt_scsi_cmd_done_timeout_template, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_scsi_dispatch_cmd_timeout = internal global ptr @event_scsi_dispatch_cmd_timeout, section "_ftrace_events", align 4
@trace_event_fields_scsi_eh_wakeup = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.103 { %struct.anon.104 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_scsi_eh_wakeup = internal global %struct.trace_event_class { ptr @str__scsi__trace_system_name, ptr @trace_event_raw_event_scsi_eh_wakeup, ptr @perf_trace_scsi_eh_wakeup, ptr @trace_event_reg, ptr @trace_event_fields_scsi_eh_wakeup, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_scsi_eh_wakeup, i64 24), ptr getelementptr (i8, ptr @event_class_scsi_eh_wakeup, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_scsi_eh_wakeup = internal global %struct.trace_event_functions { ptr @trace_raw_output_scsi_eh_wakeup, ptr null, ptr null, ptr null }, align 4
@print_fmt_scsi_eh_wakeup = internal global [27 x i8] c"\22host_no=%u\22, REC->host_no\00", align 1
@event_scsi_eh_wakeup = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_scsi_eh_wakeup, %union.anon.105 { ptr @__tracepoint_scsi_eh_wakeup }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_scsi_eh_wakeup }, ptr @print_fmt_scsi_eh_wakeup, ptr null, %union.anon.106 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_scsi_eh_wakeup = internal global ptr @event_scsi_eh_wakeup, section "_ftrace_events", align 4
@__kstrtab_scsi_change_queue_depth = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_change_queue_depth = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_change_queue_depth = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_change_queue_depth to i32), ptr @__kstrtab_scsi_change_queue_depth, ptr @__kstrtabns_scsi_change_queue_depth }, section "___ksymtab+scsi_change_queue_depth", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@__kstrtab_scsi_track_queue_full = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_track_queue_full = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_track_queue_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_track_queue_full to i32), ptr @__kstrtab_scsi_track_queue_full, ptr @__kstrtabns_scsi_track_queue_full }, section "___ksymtab+scsi_track_queue_full", align 4
@__kstrtab_scsi_get_vpd_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_get_vpd_page = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_get_vpd_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_get_vpd_page to i32), ptr @__kstrtab_scsi_get_vpd_page, ptr @__kstrtabns_scsi_get_vpd_page }, section "___ksymtab_gpl+scsi_get_vpd_page", align 4
@__kstrtab_scsi_report_opcode = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_report_opcode = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_report_opcode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_report_opcode to i32), ptr @__kstrtab_scsi_report_opcode, ptr @__kstrtabns_scsi_report_opcode }, section "___ksymtab+scsi_report_opcode", align 4
@__kstrtab_scsi_device_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_device_get = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_device_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_device_get to i32), ptr @__kstrtab_scsi_device_get, ptr @__kstrtabns_scsi_device_get }, section "___ksymtab+scsi_device_get", align 4
@__kstrtab_scsi_device_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_device_put = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_device_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_device_put to i32), ptr @__kstrtab_scsi_device_put, ptr @__kstrtabns_scsi_device_put }, section "___ksymtab+scsi_device_put", align 4
@__kstrtab___scsi_iterate_devices = external dso_local constant [0 x i8], align 1
@__kstrtabns___scsi_iterate_devices = external dso_local constant [0 x i8], align 1
@__ksymtab___scsi_iterate_devices = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scsi_iterate_devices to i32), ptr @__kstrtab___scsi_iterate_devices, ptr @__kstrtabns___scsi_iterate_devices }, section "___ksymtab+__scsi_iterate_devices", align 4
@__kstrtab_starget_for_each_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_starget_for_each_device = external dso_local constant [0 x i8], align 1
@__ksymtab_starget_for_each_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @starget_for_each_device to i32), ptr @__kstrtab_starget_for_each_device, ptr @__kstrtabns_starget_for_each_device }, section "___ksymtab+starget_for_each_device", align 4
@__kstrtab___starget_for_each_device = external dso_local constant [0 x i8], align 1
@__kstrtabns___starget_for_each_device = external dso_local constant [0 x i8], align 1
@__ksymtab___starget_for_each_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__starget_for_each_device to i32), ptr @__kstrtab___starget_for_each_device, ptr @__kstrtabns___starget_for_each_device }, section "___ksymtab+__starget_for_each_device", align 4
@__kstrtab___scsi_device_lookup_by_target = external dso_local constant [0 x i8], align 1
@__kstrtabns___scsi_device_lookup_by_target = external dso_local constant [0 x i8], align 1
@__ksymtab___scsi_device_lookup_by_target = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scsi_device_lookup_by_target to i32), ptr @__kstrtab___scsi_device_lookup_by_target, ptr @__kstrtabns___scsi_device_lookup_by_target }, section "___ksymtab+__scsi_device_lookup_by_target", align 4
@__kstrtab_scsi_device_lookup_by_target = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_device_lookup_by_target = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_device_lookup_by_target = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_device_lookup_by_target to i32), ptr @__kstrtab_scsi_device_lookup_by_target, ptr @__kstrtabns_scsi_device_lookup_by_target }, section "___ksymtab+scsi_device_lookup_by_target", align 4
@__kstrtab___scsi_device_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns___scsi_device_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab___scsi_device_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__scsi_device_lookup to i32), ptr @__kstrtab___scsi_device_lookup, ptr @__kstrtabns___scsi_device_lookup }, section "___ksymtab+__scsi_device_lookup", align 4
@__kstrtab_scsi_device_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_device_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_device_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_device_lookup to i32), ptr @__kstrtab_scsi_device_lookup, ptr @__kstrtabns_scsi_device_lookup }, section "___ksymtab+scsi_device_lookup", align 4
@__UNIQUE_ID_description327 = internal constant [31 x i8] c"scsi_mod.description=SCSI core\00", section ".modinfo", align 1
@__UNIQUE_ID_file328 = internal constant [36 x i8] c"scsi_mod.file=drivers/scsi/scsi_mod\00", section ".modinfo", align 1
@__UNIQUE_ID_license329 = internal constant [21 x i8] c"scsi_mod.license=GPL\00", section ".modinfo", align 1
@__param_str_scsi_logging_level = internal constant [28 x i8] c"scsi_mod.scsi_logging_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@scsi_logging_level = dso_local global i32 0, align 4
@__param_scsi_logging_level = internal constant %struct.kernel_param { ptr @__param_str_scsi_logging_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.14 { ptr @scsi_logging_level } }, section "__param", align 4
@__UNIQUE_ID_scsi_logging_leveltype330 = internal constant [41 x i8] c"scsi_mod.parmtype=scsi_logging_level:int\00", section ".modinfo", align 1
@__UNIQUE_ID_scsi_logging_level331 = internal constant [62 x i8] c"scsi_mod.parm=scsi_logging_level:a bit mask of logging levels\00", section ".modinfo", align 1
@__initcall__kmod_scsi_mod__332_805_init_scsi4 = internal global ptr @init_scsi, section ".initcall4.init", align 4
@__exitcall_exit_scsi = internal global ptr @exit_scsi, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"host_no\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"lun\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"opcode\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"cmd_len\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"data_sglen\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"prot_sglen\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"prot_op\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"__data_loc unsigned char[]\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"cmnd\00", align 1
@.str.13 = private unnamed_addr constant [91 x i8] c"host_no=%u channel=%u id=%u lun=%u data_sgl=%u prot_sgl=%u prot_op=%s cmnd=(%s %s raw=%s)\0A\00", align 1
@trace_raw_output_scsi_dispatch_cmd_start.symbols = internal constant [8 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.14 }, %struct.trace_print_flags { i32 1, ptr @.str.15 }, %struct.trace_print_flags { i32 2, ptr @.str.16 }, %struct.trace_print_flags { i32 3, ptr @.str.17 }, %struct.trace_print_flags { i32 4, ptr @.str.18 }, %struct.trace_print_flags { i32 5, ptr @.str.19 }, %struct.trace_print_flags { i32 6, ptr @.str.20 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.14 = private unnamed_addr constant [17 x i8] c"SCSI_PROT_NORMAL\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"SCSI_PROT_READ_INSERT\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"SCSI_PROT_WRITE_STRIP\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"SCSI_PROT_READ_STRIP\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"SCSI_PROT_WRITE_INSERT\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"SCSI_PROT_READ_PASS\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"SCSI_PROT_WRITE_PASS\00", align 1
@trace_raw_output_scsi_dispatch_cmd_start.symbols.21 = internal constant [91 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.22 }, %struct.trace_print_flags { i32 1, ptr @.str.23 }, %struct.trace_print_flags { i32 3, ptr @.str.24 }, %struct.trace_print_flags { i32 4, ptr @.str.25 }, %struct.trace_print_flags { i32 5, ptr @.str.26 }, %struct.trace_print_flags { i32 7, ptr @.str.27 }, %struct.trace_print_flags { i32 7, ptr @.str.28 }, %struct.trace_print_flags { i32 8, ptr @.str.29 }, %struct.trace_print_flags { i32 10, ptr @.str.30 }, %struct.trace_print_flags { i32 11, ptr @.str.31 }, %struct.trace_print_flags { i32 15, ptr @.str.32 }, %struct.trace_print_flags { i32 16, ptr @.str.33 }, %struct.trace_print_flags { i32 17, ptr @.str.34 }, %struct.trace_print_flags { i32 18, ptr @.str.35 }, %struct.trace_print_flags { i32 20, ptr @.str.36 }, %struct.trace_print_flags { i32 21, ptr @.str.37 }, %struct.trace_print_flags { i32 22, ptr @.str.38 }, %struct.trace_print_flags { i32 23, ptr @.str.39 }, %struct.trace_print_flags { i32 24, ptr @.str.40 }, %struct.trace_print_flags { i32 25, ptr @.str.41 }, %struct.trace_print_flags { i32 26, ptr @.str.42 }, %struct.trace_print_flags { i32 27, ptr @.str.43 }, %struct.trace_print_flags { i32 28, ptr @.str.44 }, %struct.trace_print_flags { i32 29, ptr @.str.45 }, %struct.trace_print_flags { i32 30, ptr @.str.46 }, %struct.trace_print_flags { i32 36, ptr @.str.47 }, %struct.trace_print_flags { i32 37, ptr @.str.48 }, %struct.trace_print_flags { i32 40, ptr @.str.49 }, %struct.trace_print_flags { i32 42, ptr @.str.50 }, %struct.trace_print_flags { i32 43, ptr @.str.51 }, %struct.trace_print_flags { i32 43, ptr @.str.52 }, %struct.trace_print_flags { i32 46, ptr @.str.53 }, %struct.trace_print_flags { i32 47, ptr @.str.54 }, %struct.trace_print_flags { i32 48, ptr @.str.55 }, %struct.trace_print_flags { i32 49, ptr @.str.56 }, %struct.trace_print_flags { i32 50, ptr @.str.57 }, %struct.trace_print_flags { i32 51, ptr @.str.58 }, %struct.trace_print_flags { i32 52, ptr @.str.59 }, %struct.trace_print_flags { i32 52, ptr @.str.60 }, %struct.trace_print_flags { i32 53, ptr @.str.61 }, %struct.trace_print_flags { i32 54, ptr @.str.62 }, %struct.trace_print_flags { i32 55, ptr @.str.63 }, %struct.trace_print_flags { i32 56, ptr @.str.64 }, %struct.trace_print_flags { i32 57, ptr @.str.65 }, %struct.trace_print_flags { i32 58, ptr @.str.66 }, %struct.trace_print_flags { i32 59, ptr @.str.67 }, %struct.trace_print_flags { i32 60, ptr @.str.68 }, %struct.trace_print_flags { i32 61, ptr @.str.69 }, %struct.trace_print_flags { i32 62, ptr @.str.70 }, %struct.trace_print_flags { i32 63, ptr @.str.71 }, %struct.trace_print_flags { i32 64, ptr @.str.72 }, %struct.trace_print_flags { i32 65, ptr @.str.73 }, %struct.trace_print_flags { i32 66, ptr @.str.74 }, %struct.trace_print_flags { i32 67, ptr @.str.75 }, %struct.trace_print_flags { i32 76, ptr @.str.76 }, %struct.trace_print_flags { i32 77, ptr @.str.77 }, %struct.trace_print_flags { i32 83, ptr @.str.78 }, %struct.trace_print_flags { i32 85, ptr @.str.79 }, %struct.trace_print_flags { i32 86, ptr @.str.80 }, %struct.trace_print_flags { i32 87, ptr @.str.81 }, %struct.trace_print_flags { i32 90, ptr @.str.82 }, %struct.trace_print_flags { i32 94, ptr @.str.83 }, %struct.trace_print_flags { i32 95, ptr @.str.84 }, %struct.trace_print_flags { i32 127, ptr @.str.85 }, %struct.trace_print_flags { i32 160, ptr @.str.86 }, %struct.trace_print_flags { i32 163, ptr @.str.87 }, %struct.trace_print_flags { i32 164, ptr @.str.88 }, %struct.trace_print_flags { i32 165, ptr @.str.89 }, %struct.trace_print_flags { i32 166, ptr @.str.90 }, %struct.trace_print_flags { i32 168, ptr @.str.91 }, %struct.trace_print_flags { i32 170, ptr @.str.92 }, %struct.trace_print_flags { i32 174, ptr @.str.93 }, %struct.trace_print_flags { i32 176, ptr @.str.94 }, %struct.trace_print_flags { i32 177, ptr @.str.95 }, %struct.trace_print_flags { i32 178, ptr @.str.96 }, %struct.trace_print_flags { i32 184, ptr @.str.97 }, %struct.trace_print_flags { i32 182, ptr @.str.98 }, %struct.trace_print_flags { i32 234, ptr @.str.99 }, %struct.trace_print_flags { i32 136, ptr @.str.100 }, %struct.trace_print_flags { i32 138, ptr @.str.101 }, %struct.trace_print_flags { i32 143, ptr @.str.102 }, %struct.trace_print_flags { i32 147, ptr @.str.103 }, %struct.trace_print_flags { i32 148, ptr @.str.104 }, %struct.trace_print_flags { i32 149, ptr @.str.105 }, %struct.trace_print_flags { i32 158, ptr @.str.106 }, %struct.trace_print_flags { i32 9, ptr @.str.107 }, %struct.trace_print_flags { i32 11, ptr @.str.108 }, %struct.trace_print_flags { i32 13, ptr @.str.109 }, %struct.trace_print_flags { i32 133, ptr @.str.110 }, %struct.trace_print_flags { i32 161, ptr @.str.111 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"TEST_UNIT_READY\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"REZERO_UNIT\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"REQUEST_SENSE\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"FORMAT_UNIT\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"READ_BLOCK_LIMITS\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"REASSIGN_BLOCKS\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"INITIALIZE_ELEMENT_STATUS\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"READ_6\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"WRITE_6\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"SEEK_6\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"READ_REVERSE\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"WRITE_FILEMARKS\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"SPACE\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"INQUIRY\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"RECOVER_BUFFERED_DATA\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"MODE_SELECT\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"RESERVE\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"RELEASE\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"ERASE\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"MODE_SENSE\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"START_STOP\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"RECEIVE_DIAGNOSTIC\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"SEND_DIAGNOSTIC\00", align 1
@.str.46 = private unnamed_addr constant [21 x i8] c"ALLOW_MEDIUM_REMOVAL\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"SET_WINDOW\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"READ_CAPACITY\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"READ_10\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"WRITE_10\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"SEEK_10\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"POSITION_TO_ELEMENT\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"WRITE_VERIFY\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"VERIFY\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"SEARCH_HIGH\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"SEARCH_EQUAL\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"SEARCH_LOW\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"SET_LIMITS\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"PRE_FETCH\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"READ_POSITION\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"SYNCHRONIZE_CACHE\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"LOCK_UNLOCK_CACHE\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"READ_DEFECT_DATA\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"MEDIUM_SCAN\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"COMPARE\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"COPY_VERIFY\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"WRITE_BUFFER\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"READ_BUFFER\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"UPDATE_BLOCK\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"READ_LONG\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"WRITE_LONG\00", align 1
@.str.72 = private unnamed_addr constant [18 x i8] c"CHANGE_DEFINITION\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"WRITE_SAME\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"UNMAP\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"READ_TOC\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"LOG_SELECT\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"LOG_SENSE\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"XDWRITEREAD_10\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"MODE_SELECT_10\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"RESERVE_10\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"RELEASE_10\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"MODE_SENSE_10\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"PERSISTENT_RESERVE_IN\00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c"PERSISTENT_RESERVE_OUT\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"VARIABLE_LENGTH_CMD\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"REPORT_LUNS\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"MAINTENANCE_IN\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"MAINTENANCE_OUT\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"MOVE_MEDIUM\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"EXCHANGE_MEDIUM\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"READ_12\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"WRITE_12\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"WRITE_VERIFY_12\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"SEARCH_HIGH_12\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"SEARCH_EQUAL_12\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"SEARCH_LOW_12\00", align 1
@.str.97 = private unnamed_addr constant [20 x i8] c"READ_ELEMENT_STATUS\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"SEND_VOLUME_TAG\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"WRITE_LONG_2\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"READ_16\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"WRITE_16\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"VERIFY_16\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"WRITE_SAME_16\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"ZBC_OUT\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"ZBC_IN\00", align 1
@.str.106 = private unnamed_addr constant [21 x i8] c"SERVICE_ACTION_IN_16\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"READ_32\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"WRITE_32\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"WRITE_SAME_32\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"ATA_16\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"ATA_12\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"rtn\00", align 1
@.str.114 = private unnamed_addr constant [98 x i8] c"host_no=%u channel=%u id=%u lun=%u data_sgl=%u prot_sgl=%u prot_op=%s cmnd=(%s %s raw=%s) rtn=%d\0A\00", align 1
@trace_raw_output_scsi_dispatch_cmd_error.symbols = internal constant [8 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.14 }, %struct.trace_print_flags { i32 1, ptr @.str.15 }, %struct.trace_print_flags { i32 2, ptr @.str.16 }, %struct.trace_print_flags { i32 3, ptr @.str.17 }, %struct.trace_print_flags { i32 4, ptr @.str.18 }, %struct.trace_print_flags { i32 5, ptr @.str.19 }, %struct.trace_print_flags { i32 6, ptr @.str.20 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_scsi_dispatch_cmd_error.symbols.115 = internal constant [91 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.22 }, %struct.trace_print_flags { i32 1, ptr @.str.23 }, %struct.trace_print_flags { i32 3, ptr @.str.24 }, %struct.trace_print_flags { i32 4, ptr @.str.25 }, %struct.trace_print_flags { i32 5, ptr @.str.26 }, %struct.trace_print_flags { i32 7, ptr @.str.27 }, %struct.trace_print_flags { i32 7, ptr @.str.28 }, %struct.trace_print_flags { i32 8, ptr @.str.29 }, %struct.trace_print_flags { i32 10, ptr @.str.30 }, %struct.trace_print_flags { i32 11, ptr @.str.31 }, %struct.trace_print_flags { i32 15, ptr @.str.32 }, %struct.trace_print_flags { i32 16, ptr @.str.33 }, %struct.trace_print_flags { i32 17, ptr @.str.34 }, %struct.trace_print_flags { i32 18, ptr @.str.35 }, %struct.trace_print_flags { i32 20, ptr @.str.36 }, %struct.trace_print_flags { i32 21, ptr @.str.37 }, %struct.trace_print_flags { i32 22, ptr @.str.38 }, %struct.trace_print_flags { i32 23, ptr @.str.39 }, %struct.trace_print_flags { i32 24, ptr @.str.40 }, %struct.trace_print_flags { i32 25, ptr @.str.41 }, %struct.trace_print_flags { i32 26, ptr @.str.42 }, %struct.trace_print_flags { i32 27, ptr @.str.43 }, %struct.trace_print_flags { i32 28, ptr @.str.44 }, %struct.trace_print_flags { i32 29, ptr @.str.45 }, %struct.trace_print_flags { i32 30, ptr @.str.46 }, %struct.trace_print_flags { i32 36, ptr @.str.47 }, %struct.trace_print_flags { i32 37, ptr @.str.48 }, %struct.trace_print_flags { i32 40, ptr @.str.49 }, %struct.trace_print_flags { i32 42, ptr @.str.50 }, %struct.trace_print_flags { i32 43, ptr @.str.51 }, %struct.trace_print_flags { i32 43, ptr @.str.52 }, %struct.trace_print_flags { i32 46, ptr @.str.53 }, %struct.trace_print_flags { i32 47, ptr @.str.54 }, %struct.trace_print_flags { i32 48, ptr @.str.55 }, %struct.trace_print_flags { i32 49, ptr @.str.56 }, %struct.trace_print_flags { i32 50, ptr @.str.57 }, %struct.trace_print_flags { i32 51, ptr @.str.58 }, %struct.trace_print_flags { i32 52, ptr @.str.59 }, %struct.trace_print_flags { i32 52, ptr @.str.60 }, %struct.trace_print_flags { i32 53, ptr @.str.61 }, %struct.trace_print_flags { i32 54, ptr @.str.62 }, %struct.trace_print_flags { i32 55, ptr @.str.63 }, %struct.trace_print_flags { i32 56, ptr @.str.64 }, %struct.trace_print_flags { i32 57, ptr @.str.65 }, %struct.trace_print_flags { i32 58, ptr @.str.66 }, %struct.trace_print_flags { i32 59, ptr @.str.67 }, %struct.trace_print_flags { i32 60, ptr @.str.68 }, %struct.trace_print_flags { i32 61, ptr @.str.69 }, %struct.trace_print_flags { i32 62, ptr @.str.70 }, %struct.trace_print_flags { i32 63, ptr @.str.71 }, %struct.trace_print_flags { i32 64, ptr @.str.72 }, %struct.trace_print_flags { i32 65, ptr @.str.73 }, %struct.trace_print_flags { i32 66, ptr @.str.74 }, %struct.trace_print_flags { i32 67, ptr @.str.75 }, %struct.trace_print_flags { i32 76, ptr @.str.76 }, %struct.trace_print_flags { i32 77, ptr @.str.77 }, %struct.trace_print_flags { i32 83, ptr @.str.78 }, %struct.trace_print_flags { i32 85, ptr @.str.79 }, %struct.trace_print_flags { i32 86, ptr @.str.80 }, %struct.trace_print_flags { i32 87, ptr @.str.81 }, %struct.trace_print_flags { i32 90, ptr @.str.82 }, %struct.trace_print_flags { i32 94, ptr @.str.83 }, %struct.trace_print_flags { i32 95, ptr @.str.84 }, %struct.trace_print_flags { i32 127, ptr @.str.85 }, %struct.trace_print_flags { i32 160, ptr @.str.86 }, %struct.trace_print_flags { i32 163, ptr @.str.87 }, %struct.trace_print_flags { i32 164, ptr @.str.88 }, %struct.trace_print_flags { i32 165, ptr @.str.89 }, %struct.trace_print_flags { i32 166, ptr @.str.90 }, %struct.trace_print_flags { i32 168, ptr @.str.91 }, %struct.trace_print_flags { i32 170, ptr @.str.92 }, %struct.trace_print_flags { i32 174, ptr @.str.93 }, %struct.trace_print_flags { i32 176, ptr @.str.94 }, %struct.trace_print_flags { i32 177, ptr @.str.95 }, %struct.trace_print_flags { i32 178, ptr @.str.96 }, %struct.trace_print_flags { i32 184, ptr @.str.97 }, %struct.trace_print_flags { i32 182, ptr @.str.98 }, %struct.trace_print_flags { i32 234, ptr @.str.99 }, %struct.trace_print_flags { i32 136, ptr @.str.100 }, %struct.trace_print_flags { i32 138, ptr @.str.101 }, %struct.trace_print_flags { i32 143, ptr @.str.102 }, %struct.trace_print_flags { i32 147, ptr @.str.103 }, %struct.trace_print_flags { i32 148, ptr @.str.104 }, %struct.trace_print_flags { i32 149, ptr @.str.105 }, %struct.trace_print_flags { i32 158, ptr @.str.106 }, %struct.trace_print_flags { i32 9, ptr @.str.107 }, %struct.trace_print_flags { i32 11, ptr @.str.108 }, %struct.trace_print_flags { i32 13, ptr @.str.109 }, %struct.trace_print_flags { i32 133, ptr @.str.110 }, %struct.trace_print_flags { i32 161, ptr @.str.111 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.116 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.117 = private unnamed_addr constant [139 x i8] c"host_no=%u channel=%u id=%u lun=%u data_sgl=%u prot_sgl=%u prot_op=%s cmnd=(%s %s raw=%s) result=(driver=%s host=%s message=%s status=%s)\0A\00", align 1
@trace_raw_output_scsi_cmd_done_timeout_template.symbols = internal constant [8 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.14 }, %struct.trace_print_flags { i32 1, ptr @.str.15 }, %struct.trace_print_flags { i32 2, ptr @.str.16 }, %struct.trace_print_flags { i32 3, ptr @.str.17 }, %struct.trace_print_flags { i32 4, ptr @.str.18 }, %struct.trace_print_flags { i32 5, ptr @.str.19 }, %struct.trace_print_flags { i32 6, ptr @.str.20 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@trace_raw_output_scsi_cmd_done_timeout_template.symbols.118 = internal constant [91 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.22 }, %struct.trace_print_flags { i32 1, ptr @.str.23 }, %struct.trace_print_flags { i32 3, ptr @.str.24 }, %struct.trace_print_flags { i32 4, ptr @.str.25 }, %struct.trace_print_flags { i32 5, ptr @.str.26 }, %struct.trace_print_flags { i32 7, ptr @.str.27 }, %struct.trace_print_flags { i32 7, ptr @.str.28 }, %struct.trace_print_flags { i32 8, ptr @.str.29 }, %struct.trace_print_flags { i32 10, ptr @.str.30 }, %struct.trace_print_flags { i32 11, ptr @.str.31 }, %struct.trace_print_flags { i32 15, ptr @.str.32 }, %struct.trace_print_flags { i32 16, ptr @.str.33 }, %struct.trace_print_flags { i32 17, ptr @.str.34 }, %struct.trace_print_flags { i32 18, ptr @.str.35 }, %struct.trace_print_flags { i32 20, ptr @.str.36 }, %struct.trace_print_flags { i32 21, ptr @.str.37 }, %struct.trace_print_flags { i32 22, ptr @.str.38 }, %struct.trace_print_flags { i32 23, ptr @.str.39 }, %struct.trace_print_flags { i32 24, ptr @.str.40 }, %struct.trace_print_flags { i32 25, ptr @.str.41 }, %struct.trace_print_flags { i32 26, ptr @.str.42 }, %struct.trace_print_flags { i32 27, ptr @.str.43 }, %struct.trace_print_flags { i32 28, ptr @.str.44 }, %struct.trace_print_flags { i32 29, ptr @.str.45 }, %struct.trace_print_flags { i32 30, ptr @.str.46 }, %struct.trace_print_flags { i32 36, ptr @.str.47 }, %struct.trace_print_flags { i32 37, ptr @.str.48 }, %struct.trace_print_flags { i32 40, ptr @.str.49 }, %struct.trace_print_flags { i32 42, ptr @.str.50 }, %struct.trace_print_flags { i32 43, ptr @.str.51 }, %struct.trace_print_flags { i32 43, ptr @.str.52 }, %struct.trace_print_flags { i32 46, ptr @.str.53 }, %struct.trace_print_flags { i32 47, ptr @.str.54 }, %struct.trace_print_flags { i32 48, ptr @.str.55 }, %struct.trace_print_flags { i32 49, ptr @.str.56 }, %struct.trace_print_flags { i32 50, ptr @.str.57 }, %struct.trace_print_flags { i32 51, ptr @.str.58 }, %struct.trace_print_flags { i32 52, ptr @.str.59 }, %struct.trace_print_flags { i32 52, ptr @.str.60 }, %struct.trace_print_flags { i32 53, ptr @.str.61 }, %struct.trace_print_flags { i32 54, ptr @.str.62 }, %struct.trace_print_flags { i32 55, ptr @.str.63 }, %struct.trace_print_flags { i32 56, ptr @.str.64 }, %struct.trace_print_flags { i32 57, ptr @.str.65 }, %struct.trace_print_flags { i32 58, ptr @.str.66 }, %struct.trace_print_flags { i32 59, ptr @.str.67 }, %struct.trace_print_flags { i32 60, ptr @.str.68 }, %struct.trace_print_flags { i32 61, ptr @.str.69 }, %struct.trace_print_flags { i32 62, ptr @.str.70 }, %struct.trace_print_flags { i32 63, ptr @.str.71 }, %struct.trace_print_flags { i32 64, ptr @.str.72 }, %struct.trace_print_flags { i32 65, ptr @.str.73 }, %struct.trace_print_flags { i32 66, ptr @.str.74 }, %struct.trace_print_flags { i32 67, ptr @.str.75 }, %struct.trace_print_flags { i32 76, ptr @.str.76 }, %struct.trace_print_flags { i32 77, ptr @.str.77 }, %struct.trace_print_flags { i32 83, ptr @.str.78 }, %struct.trace_print_flags { i32 85, ptr @.str.79 }, %struct.trace_print_flags { i32 86, ptr @.str.80 }, %struct.trace_print_flags { i32 87, ptr @.str.81 }, %struct.trace_print_flags { i32 90, ptr @.str.82 }, %struct.trace_print_flags { i32 94, ptr @.str.83 }, %struct.trace_print_flags { i32 95, ptr @.str.84 }, %struct.trace_print_flags { i32 127, ptr @.str.85 }, %struct.trace_print_flags { i32 160, ptr @.str.86 }, %struct.trace_print_flags { i32 163, ptr @.str.87 }, %struct.trace_print_flags { i32 164, ptr @.str.88 }, %struct.trace_print_flags { i32 165, ptr @.str.89 }, %struct.trace_print_flags { i32 166, ptr @.str.90 }, %struct.trace_print_flags { i32 168, ptr @.str.91 }, %struct.trace_print_flags { i32 170, ptr @.str.92 }, %struct.trace_print_flags { i32 174, ptr @.str.93 }, %struct.trace_print_flags { i32 176, ptr @.str.94 }, %struct.trace_print_flags { i32 177, ptr @.str.95 }, %struct.trace_print_flags { i32 178, ptr @.str.96 }, %struct.trace_print_flags { i32 184, ptr @.str.97 }, %struct.trace_print_flags { i32 182, ptr @.str.98 }, %struct.trace_print_flags { i32 234, ptr @.str.99 }, %struct.trace_print_flags { i32 136, ptr @.str.100 }, %struct.trace_print_flags { i32 138, ptr @.str.101 }, %struct.trace_print_flags { i32 143, ptr @.str.102 }, %struct.trace_print_flags { i32 147, ptr @.str.103 }, %struct.trace_print_flags { i32 148, ptr @.str.104 }, %struct.trace_print_flags { i32 149, ptr @.str.105 }, %struct.trace_print_flags { i32 158, ptr @.str.106 }, %struct.trace_print_flags { i32 9, ptr @.str.107 }, %struct.trace_print_flags { i32 11, ptr @.str.108 }, %struct.trace_print_flags { i32 13, ptr @.str.109 }, %struct.trace_print_flags { i32 133, ptr @.str.110 }, %struct.trace_print_flags { i32 161, ptr @.str.111 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.119 = private unnamed_addr constant [10 x i8] c"DRIVER_OK\00", align 1
@trace_raw_output_scsi_cmd_done_timeout_template.symbols.120 = internal constant [17 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.121 }, %struct.trace_print_flags { i32 1, ptr @.str.122 }, %struct.trace_print_flags { i32 2, ptr @.str.123 }, %struct.trace_print_flags { i32 3, ptr @.str.124 }, %struct.trace_print_flags { i32 4, ptr @.str.125 }, %struct.trace_print_flags { i32 5, ptr @.str.126 }, %struct.trace_print_flags { i32 6, ptr @.str.127 }, %struct.trace_print_flags { i32 7, ptr @.str.128 }, %struct.trace_print_flags { i32 8, ptr @.str.129 }, %struct.trace_print_flags { i32 9, ptr @.str.130 }, %struct.trace_print_flags { i32 10, ptr @.str.131 }, %struct.trace_print_flags { i32 11, ptr @.str.132 }, %struct.trace_print_flags { i32 12, ptr @.str.133 }, %struct.trace_print_flags { i32 13, ptr @.str.134 }, %struct.trace_print_flags { i32 14, ptr @.str.135 }, %struct.trace_print_flags { i32 15, ptr @.str.136 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.121 = private unnamed_addr constant [7 x i8] c"DID_OK\00", align 1
@.str.122 = private unnamed_addr constant [15 x i8] c"DID_NO_CONNECT\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"DID_BUS_BUSY\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"DID_TIME_OUT\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"DID_BAD_TARGET\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"DID_ABORT\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"DID_PARITY\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"DID_ERROR\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"DID_RESET\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"DID_BAD_INTR\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"DID_PASSTHROUGH\00", align 1
@.str.132 = private unnamed_addr constant [15 x i8] c"DID_SOFT_ERROR\00", align 1
@.str.133 = private unnamed_addr constant [14 x i8] c"DID_IMM_RETRY\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"DID_REQUEUE\00", align 1
@.str.135 = private unnamed_addr constant [24 x i8] c"DID_TRANSPORT_DISRUPTED\00", align 1
@.str.136 = private unnamed_addr constant [23 x i8] c"DID_TRANSPORT_FAILFAST\00", align 1
@.str.137 = private unnamed_addr constant [17 x i8] c"COMMAND_COMPLETE\00", align 1
@trace_raw_output_scsi_cmd_done_timeout_template.symbols.138 = internal constant [12 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.139 }, %struct.trace_print_flags { i32 2, ptr @.str.140 }, %struct.trace_print_flags { i32 4, ptr @.str.141 }, %struct.trace_print_flags { i32 8, ptr @.str.142 }, %struct.trace_print_flags { i32 16, ptr @.str.143 }, %struct.trace_print_flags { i32 20, ptr @.str.144 }, %struct.trace_print_flags { i32 24, ptr @.str.145 }, %struct.trace_print_flags { i32 34, ptr @.str.146 }, %struct.trace_print_flags { i32 40, ptr @.str.147 }, %struct.trace_print_flags { i32 48, ptr @.str.148 }, %struct.trace_print_flags { i32 64, ptr @.str.149 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.139 = private unnamed_addr constant [14 x i8] c"SAM_STAT_GOOD\00", align 1
@.str.140 = private unnamed_addr constant [25 x i8] c"SAM_STAT_CHECK_CONDITION\00", align 1
@.str.141 = private unnamed_addr constant [23 x i8] c"SAM_STAT_CONDITION_MET\00", align 1
@.str.142 = private unnamed_addr constant [14 x i8] c"SAM_STAT_BUSY\00", align 1
@.str.143 = private unnamed_addr constant [22 x i8] c"SAM_STAT_INTERMEDIATE\00", align 1
@.str.144 = private unnamed_addr constant [36 x i8] c"SAM_STAT_INTERMEDIATE_CONDITION_MET\00", align 1
@.str.145 = private unnamed_addr constant [30 x i8] c"SAM_STAT_RESERVATION_CONFLICT\00", align 1
@.str.146 = private unnamed_addr constant [28 x i8] c"SAM_STAT_COMMAND_TERMINATED\00", align 1
@.str.147 = private unnamed_addr constant [23 x i8] c"SAM_STAT_TASK_SET_FULL\00", align 1
@.str.148 = private unnamed_addr constant [20 x i8] c"SAM_STAT_ACA_ACTIVE\00", align 1
@.str.149 = private unnamed_addr constant [22 x i8] c"SAM_STAT_TASK_ABORTED\00", align 1
@.str.150 = private unnamed_addr constant [12 x i8] c"host_no=%u\0A\00", align 1
@.str.151 = private unnamed_addr constant [30 x i8] c"\015SCSI subsystem initialized\0A\00", align 1
@.str.152 = private unnamed_addr constant [51 x i8] c"\013SCSI subsystem failed to initialize, error = %d\0A\00", align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_description327, ptr @__UNIQUE_ID_file328, ptr @__UNIQUE_ID_license329, ptr @__UNIQUE_ID_scsi_logging_level331, ptr @__UNIQUE_ID_scsi_logging_leveltype330, ptr @__event_scsi_dispatch_cmd_done, ptr @__event_scsi_dispatch_cmd_error, ptr @__event_scsi_dispatch_cmd_start, ptr @__event_scsi_dispatch_cmd_timeout, ptr @__event_scsi_eh_wakeup, ptr @__exitcall_exit_scsi, ptr @__initcall__kmod_scsi_mod__332_805_init_scsi4, ptr @__ksymtab___scsi_device_lookup, ptr @__ksymtab___scsi_device_lookup_by_target, ptr @__ksymtab___scsi_iterate_devices, ptr @__ksymtab___starget_for_each_device, ptr @__ksymtab_scsi_change_queue_depth, ptr @__ksymtab_scsi_device_get, ptr @__ksymtab_scsi_device_lookup, ptr @__ksymtab_scsi_device_lookup_by_target, ptr @__ksymtab_scsi_device_put, ptr @__ksymtab_scsi_get_vpd_page, ptr @__ksymtab_scsi_report_opcode, ptr @__ksymtab_scsi_track_queue_full, ptr @__ksymtab_starget_for_each_device, ptr @__param_scsi_logging_level, ptr @__tracepoint_ptr_scsi_dispatch_cmd_done, ptr @__tracepoint_ptr_scsi_dispatch_cmd_error, ptr @__tracepoint_ptr_scsi_dispatch_cmd_start, ptr @__tracepoint_ptr_scsi_dispatch_cmd_timeout, ptr @__tracepoint_ptr_scsi_eh_wakeup, ptr @__tracepoint_scsi_dispatch_cmd_done, ptr @__tracepoint_scsi_dispatch_cmd_error, ptr @__tracepoint_scsi_dispatch_cmd_start, ptr @__tracepoint_scsi_dispatch_cmd_timeout, ptr @__tracepoint_scsi_eh_wakeup, ptr @event_class_scsi_cmd_done_timeout_template, ptr @event_class_scsi_dispatch_cmd_error, ptr @event_class_scsi_dispatch_cmd_start, ptr @event_class_scsi_eh_wakeup, ptr @event_scsi_dispatch_cmd_done, ptr @event_scsi_dispatch_cmd_error, ptr @event_scsi_dispatch_cmd_start, ptr @event_scsi_dispatch_cmd_timeout, ptr @event_scsi_eh_wakeup, ptr @exit_scsi], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_scsi_dispatch_cmd_start(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_start, i32 0, i32 7), align 4
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_scsi_dispatch_cmd_error(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_error, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_scsi_dispatch_cmd_done(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_done, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_scsi_dispatch_cmd_timeout(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_dispatch_cmd_timeout, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_scsi_eh_wakeup(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_scsi_eh_wakeup, i32 0, i32 7), align 4
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
define internal void @trace_event_raw_event_scsi_dispatch_cmd_start(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  br i1 %12, label %70, label %13

13:                                               ; preds = %11, %8, %2
  %14 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = add nuw nsw i32 %16, 48
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %17) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %70, label %20

20:                                               ; preds = %13
  %21 = shl nuw i32 %16, 16
  %22 = or i32 %21, 48
  %23 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %18, i32 0, i32 10
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, ptr %26, i32 0, i32 17
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %18, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr %24, align 4
  %31 = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 17
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %18, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  %34 = load ptr, ptr %24, align 4
  %35 = getelementptr inbounds %struct.scsi_device, ptr %34, i32 0, i32 16
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %18, i32 0, i32 3
  store i32 %36, ptr %37, align 4
  %38 = load ptr, ptr %24, align 4
  %39 = getelementptr inbounds %struct.scsi_device, ptr %38, i32 0, i32 18
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %18, i32 0, i32 4
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %44 = load ptr, ptr %43, align 4
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %18, i32 0, i32 5
  store i32 %46, ptr %47, align 4
  %48 = load i16, ptr %14, align 4
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %18, i32 0, i32 6
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %18, i32 0, i32 7
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 18
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %20
  %58 = getelementptr inbounds %struct.sg_table, ptr %55, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %20
  %61 = phi i32 [ %59, %57 ], [ 0, %20 ]
  %62 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %18, i32 0, i32 8
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 10
  %64 = load i8, ptr %63, align 4
  %65 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %18, i32 0, i32 9
  store i8 %64, ptr %65, align 4
  %66 = getelementptr i8, ptr %18, i32 48
  %67 = load ptr, ptr %43, align 4
  %68 = load i16, ptr %14, align 4
  %69 = zext i16 %68 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %66, ptr align 1 %67, i32 %69, i1 false)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #13
  br label %70

70:                                               ; preds = %60, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_scsi_dispatch_cmd_start(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = shl nuw i32 %7, 16
  %9 = or i32 %8, 48
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #8, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %90, label %24

24:                                               ; preds = %21, %2
  %25 = add nuw nsw i32 %7, 59
  %26 = and i32 %25, 131064
  %27 = add nsw i32 %26, -4
  %28 = call ptr @perf_trace_buf_alloc(i32 noundef %27, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %90, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %3, align 4
  %32 = call ptr @llvm.returnaddress(i32 0) #13
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %31, i32 0, i32 15
  store i32 %33, ptr %34, align 4
  %35 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %31, i32 0, i32 11
  store i32 %36, ptr %37, align 4
  %38 = call i32 @llvm.read_register.i32(metadata !0) #13
  %39 = getelementptr [18 x i32], ptr %31, i32 0, i32 13
  store i32 %38, ptr %39, align 4
  %40 = getelementptr [18 x i32], ptr %31, i32 0, i32 16
  store i32 19, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %28, i32 0, i32 10
  store i32 %9, ptr %41, align 4
  %42 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, ptr %44, i32 0, i32 17
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %28, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  %48 = load ptr, ptr %42, align 4
  %49 = getelementptr inbounds %struct.scsi_device, ptr %48, i32 0, i32 17
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %28, i32 0, i32 2
  store i32 %50, ptr %51, align 4
  %52 = load ptr, ptr %42, align 4
  %53 = getelementptr inbounds %struct.scsi_device, ptr %52, i32 0, i32 16
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %28, i32 0, i32 3
  store i32 %54, ptr %55, align 4
  %56 = load ptr, ptr %42, align 4
  %57 = getelementptr inbounds %struct.scsi_device, ptr %56, i32 0, i32 18
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %28, i32 0, i32 4
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %62 = load ptr, ptr %61, align 4
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %28, i32 0, i32 5
  store i32 %64, ptr %65, align 4
  %66 = load i16, ptr %5, align 4
  %67 = zext i16 %66 to i32
  %68 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %28, i32 0, i32 6
  store i32 %67, ptr %68, align 4
  %69 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %28, i32 0, i32 7
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 18
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %30
  %76 = getelementptr inbounds %struct.sg_table, ptr %73, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %75, %30
  %79 = phi i32 [ %77, %75 ], [ 0, %30 ]
  %80 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %28, i32 0, i32 8
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 10
  %82 = load i8, ptr %81, align 4
  %83 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %28, i32 0, i32 9
  store i8 %82, ptr %83, align 4
  %84 = getelementptr i8, ptr %28, i32 48
  %85 = load ptr, ptr %61, align 4
  %86 = load i16, ptr %5, align 4
  %87 = zext i16 %86 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %84, ptr align 1 %85, i32 %87, i1 false)
  %88 = load i32, ptr %4, align 4
  %89 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %28, i32 noundef %27, i32 noundef %88, ptr noundef %0, i64 noundef 1, ptr noundef %89, ptr noundef %17, ptr noundef null) #13
  br label %90

90:                                               ; preds = %78, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_scsi_dispatch_cmd_error(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
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
  br i1 %13, label %72, label %14

14:                                               ; preds = %12, %9, %3
  %15 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  %18 = add nuw nsw i32 %17, 52
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %18) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %72, label %21

21:                                               ; preds = %14
  %22 = shl nuw i32 %17, 16
  %23 = or i32 %22, 52
  %24 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %19, i32 0, i32 11
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.Scsi_Host, ptr %27, i32 0, i32 17
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %19, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = load ptr, ptr %25, align 4
  %32 = getelementptr inbounds %struct.scsi_device, ptr %31, i32 0, i32 17
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %19, i32 0, i32 2
  store i32 %33, ptr %34, align 4
  %35 = load ptr, ptr %25, align 4
  %36 = getelementptr inbounds %struct.scsi_device, ptr %35, i32 0, i32 16
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %19, i32 0, i32 3
  store i32 %37, ptr %38, align 4
  %39 = load ptr, ptr %25, align 4
  %40 = getelementptr inbounds %struct.scsi_device, ptr %39, i32 0, i32 18
  %41 = load i64, ptr %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %19, i32 0, i32 4
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %19, i32 0, i32 5
  store i32 %2, ptr %44, align 4
  %45 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %46 = load ptr, ptr %45, align 4
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %19, i32 0, i32 6
  store i32 %48, ptr %49, align 4
  %50 = load i16, ptr %15, align 4
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %19, i32 0, i32 7
  store i32 %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %19, i32 0, i32 8
  store i32 %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 18
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %21
  %60 = getelementptr inbounds %struct.sg_table, ptr %57, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %21
  %63 = phi i32 [ %61, %59 ], [ 0, %21 ]
  %64 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %19, i32 0, i32 9
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 10
  %66 = load i8, ptr %65, align 4
  %67 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %19, i32 0, i32 10
  store i8 %66, ptr %67, align 4
  %68 = getelementptr i8, ptr %19, i32 52
  %69 = load ptr, ptr %45, align 4
  %70 = load i16, ptr %15, align 4
  %71 = zext i16 %70 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %68, ptr align 1 %69, i32 %71, i1 false)
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #13
  br label %72

72:                                               ; preds = %62, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_scsi_dispatch_cmd_error(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = shl nuw i32 %8, 16
  %10 = or i32 %9, 52
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #8, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %92, label %25

25:                                               ; preds = %22, %3
  %26 = add nuw nsw i32 %8, 63
  %27 = and i32 %26, 131064
  %28 = add nsw i32 %27, -4
  %29 = call ptr @perf_trace_buf_alloc(i32 noundef %28, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %92, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %4, align 4
  %33 = call ptr @llvm.returnaddress(i32 0) #13
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %32, i32 0, i32 15
  store i32 %34, ptr %35, align 4
  %36 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %37 = ptrtoint ptr %36 to i32
  %38 = getelementptr [18 x i32], ptr %32, i32 0, i32 11
  store i32 %37, ptr %38, align 4
  %39 = call i32 @llvm.read_register.i32(metadata !0) #13
  %40 = getelementptr [18 x i32], ptr %32, i32 0, i32 13
  store i32 %39, ptr %40, align 4
  %41 = getelementptr [18 x i32], ptr %32, i32 0, i32 16
  store i32 19, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %29, i32 0, i32 11
  store i32 %10, ptr %42, align 4
  %43 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.Scsi_Host, ptr %45, i32 0, i32 17
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %29, i32 0, i32 1
  store i32 %47, ptr %48, align 4
  %49 = load ptr, ptr %43, align 4
  %50 = getelementptr inbounds %struct.scsi_device, ptr %49, i32 0, i32 17
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %29, i32 0, i32 2
  store i32 %51, ptr %52, align 4
  %53 = load ptr, ptr %43, align 4
  %54 = getelementptr inbounds %struct.scsi_device, ptr %53, i32 0, i32 16
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %29, i32 0, i32 3
  store i32 %55, ptr %56, align 4
  %57 = load ptr, ptr %43, align 4
  %58 = getelementptr inbounds %struct.scsi_device, ptr %57, i32 0, i32 18
  %59 = load i64, ptr %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %29, i32 0, i32 4
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %29, i32 0, i32 5
  store i32 %2, ptr %62, align 4
  %63 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %64 = load ptr, ptr %63, align 4
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %29, i32 0, i32 6
  store i32 %66, ptr %67, align 4
  %68 = load i16, ptr %6, align 4
  %69 = zext i16 %68 to i32
  %70 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %29, i32 0, i32 7
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %29, i32 0, i32 8
  store i32 %72, ptr %73, align 4
  %74 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 18
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %31
  %78 = getelementptr inbounds %struct.sg_table, ptr %75, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %31
  %81 = phi i32 [ %79, %77 ], [ 0, %31 ]
  %82 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %29, i32 0, i32 9
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 10
  %84 = load i8, ptr %83, align 4
  %85 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %29, i32 0, i32 10
  store i8 %84, ptr %85, align 4
  %86 = getelementptr i8, ptr %29, i32 52
  %87 = load ptr, ptr %63, align 4
  %88 = load i16, ptr %6, align 4
  %89 = zext i16 %88 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %86, ptr align 1 %87, i32 %89, i1 false)
  %90 = load i32, ptr %5, align 4
  %91 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %29, i32 noundef %28, i32 noundef %90, ptr noundef %0, i64 noundef 1, ptr noundef %91, ptr noundef %18, ptr noundef null) #13
  br label %92

92:                                               ; preds = %80, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_scsi_cmd_done_timeout_template(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  br i1 %12, label %73, label %13

13:                                               ; preds = %11, %8, %2
  %14 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = add nuw nsw i32 %16, 52
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %17) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %73, label %20

20:                                               ; preds = %13
  %21 = shl nuw i32 %16, 16
  %22 = or i32 %21, 52
  %23 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %18, i32 0, i32 11
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, ptr %26, i32 0, i32 17
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %18, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr %24, align 4
  %31 = getelementptr inbounds %struct.scsi_device, ptr %30, i32 0, i32 17
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %18, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  %34 = load ptr, ptr %24, align 4
  %35 = getelementptr inbounds %struct.scsi_device, ptr %34, i32 0, i32 16
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %18, i32 0, i32 3
  store i32 %36, ptr %37, align 4
  %38 = load ptr, ptr %24, align 4
  %39 = getelementptr inbounds %struct.scsi_device, ptr %38, i32 0, i32 18
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %18, i32 0, i32 4
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %18, i32 0, i32 5
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %47 = load ptr, ptr %46, align 4
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %18, i32 0, i32 6
  store i32 %49, ptr %50, align 4
  %51 = load i16, ptr %14, align 4
  %52 = zext i16 %51 to i32
  %53 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %18, i32 0, i32 7
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %18, i32 0, i32 8
  store i32 %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 18
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %20
  %61 = getelementptr inbounds %struct.sg_table, ptr %58, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %20
  %64 = phi i32 [ %62, %60 ], [ 0, %20 ]
  %65 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %18, i32 0, i32 9
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 10
  %67 = load i8, ptr %66, align 4
  %68 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %18, i32 0, i32 10
  store i8 %67, ptr %68, align 4
  %69 = getelementptr i8, ptr %18, i32 52
  %70 = load ptr, ptr %46, align 4
  %71 = load i16, ptr %14, align 4
  %72 = zext i16 %71 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %69, ptr align 1 %70, i32 %72, i1 false)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #13
  br label %73

73:                                               ; preds = %63, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_scsi_cmd_done_timeout_template(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 14
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = shl nuw i32 %7, 16
  %9 = or i32 %8, 52
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #13
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #8, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %93, label %24

24:                                               ; preds = %21, %2
  %25 = add nuw nsw i32 %7, 63
  %26 = and i32 %25, 131064
  %27 = add nsw i32 %26, -4
  %28 = call ptr @perf_trace_buf_alloc(i32 noundef %27, ptr noundef nonnull %3, ptr noundef nonnull %4) #13
  %29 = icmp eq ptr %28, null
  br i1 %29, label %93, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %3, align 4
  %32 = call ptr @llvm.returnaddress(i32 0) #13
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %31, i32 0, i32 15
  store i32 %33, ptr %34, align 4
  %35 = call ptr @llvm.frameaddress.p0(i32 0) #13
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %31, i32 0, i32 11
  store i32 %36, ptr %37, align 4
  %38 = call i32 @llvm.read_register.i32(metadata !0) #13
  %39 = getelementptr [18 x i32], ptr %31, i32 0, i32 13
  store i32 %38, ptr %39, align 4
  %40 = getelementptr [18 x i32], ptr %31, i32 0, i32 16
  store i32 19, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %28, i32 0, i32 11
  store i32 %9, ptr %41, align 4
  %42 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, ptr %44, i32 0, i32 17
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %28, i32 0, i32 1
  store i32 %46, ptr %47, align 4
  %48 = load ptr, ptr %42, align 4
  %49 = getelementptr inbounds %struct.scsi_device, ptr %48, i32 0, i32 17
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %28, i32 0, i32 2
  store i32 %50, ptr %51, align 4
  %52 = load ptr, ptr %42, align 4
  %53 = getelementptr inbounds %struct.scsi_device, ptr %52, i32 0, i32 16
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %28, i32 0, i32 3
  store i32 %54, ptr %55, align 4
  %56 = load ptr, ptr %42, align 4
  %57 = getelementptr inbounds %struct.scsi_device, ptr %56, i32 0, i32 18
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %28, i32 0, i32 4
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 24
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %28, i32 0, i32 5
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 16
  %65 = load ptr, ptr %64, align 4
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %28, i32 0, i32 6
  store i32 %67, ptr %68, align 4
  %69 = load i16, ptr %5, align 4
  %70 = zext i16 %69 to i32
  %71 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %28, i32 0, i32 7
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 17, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %28, i32 0, i32 8
  store i32 %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 18
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %30
  %79 = getelementptr inbounds %struct.sg_table, ptr %76, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  br label %81

81:                                               ; preds = %78, %30
  %82 = phi i32 [ %80, %78 ], [ 0, %30 ]
  %83 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %28, i32 0, i32 9
  store i32 %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.scsi_cmnd, ptr %1, i32 0, i32 10
  %85 = load i8, ptr %84, align 4
  %86 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %28, i32 0, i32 10
  store i8 %85, ptr %86, align 4
  %87 = getelementptr i8, ptr %28, i32 52
  %88 = load ptr, ptr %64, align 4
  %89 = load i16, ptr %5, align 4
  %90 = zext i16 %89 to i32
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %87, ptr align 1 %88, i32 %90, i1 false)
  %91 = load i32, ptr %4, align 4
  %92 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %28, i32 noundef %27, i32 noundef %91, ptr noundef %0, i64 noundef 1, ptr noundef %92, ptr noundef %17, ptr noundef null) #13
  br label %93

93:                                               ; preds = %81, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_scsi_eh_wakeup(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  %17 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 17
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_scsi_eh_wakeup, ptr %14, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #13
  br label %20

20:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_scsi_eh_wakeup(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
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
  %33 = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 17
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_scsi_eh_wakeup, ptr %20, i32 0, i32 1
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
define dso_local void @scsi_finish_command(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 54, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  tail call void @scsi_device_unbusy(ptr noundef %3, ptr noundef %0) #13
  %7 = getelementptr inbounds %struct.Scsi_Host, ptr %6, i32 0, i32 14
  %8 = load volatile i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store volatile i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %10, %1
  %12 = getelementptr i8, ptr %5, i32 492
  %13 = load volatile i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store volatile i32 0, ptr %12, align 4
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.scsi_device, ptr %3, i32 0, i32 5
  %18 = load volatile i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store volatile i32 0, ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.scsi_cmnd, ptr %0, i32 0, i32 17, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %0, i32 -156
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 254
  %27 = icmp eq i32 %26, 34
  br i1 %27, label %46, label %28

28:                                               ; preds = %21
  %29 = getelementptr i8, ptr %0, i32 -168
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 15
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.gendisk, ptr %32, i32 0, i32 10
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.scsi_driver, ptr %35, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %28
  %40 = tail call i32 %37(ptr noundef %0) #13
  %41 = icmp eq i32 %40, %23
  br i1 %41, label %42, label %46

42:                                               ; preds = %39, %28
  %43 = getelementptr inbounds %struct.scsi_request, ptr %0, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = sub i32 %23, %44
  br label %46

46:                                               ; preds = %42, %39, %21
  %47 = phi i32 [ %23, %21 ], [ %45, %42 ], [ %40, %39 ]
  tail call void @scsi_io_completion(ptr noundef %0, i32 noundef %47) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_unbusy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_io_completion(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @scsi_device_max_queue_depth(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 26
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @llvm.smin.i32(i32 %4, i32 1024)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_change_queue_depth(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 0, i32 26
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 %1)
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 1024)
  %8 = icmp sgt i32 %6, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = trunc i32 %7 to i16
  %11 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 9
  store i16 %10, ptr %11, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !13
  tail call void @arm_heavy_mb() #13
  br label %12

12:                                               ; preds = %9, %2
  %13 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @blk_set_queue_depth(ptr noundef nonnull %14, i32 noundef %7) #13
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 4
  %19 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 9
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  tail call void @sbitmap_resize(ptr noundef %18, i32 noundef %21) #13
  %22 = load i16, ptr %19, align 4
  %23 = zext i16 %22 to i32
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_set_queue_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_track_queue_full(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = xor i32 %5, %3
  %7 = icmp ult i32 %6, 16
  br i1 %7, label %43, label %8

8:                                                ; preds = %2
  %9 = load volatile i32, ptr @jiffies, align 64
  store i32 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 11
  %11 = load i16, ptr %10, align 8
  %12 = zext i16 %11 to i32
  %13 = icmp eq i32 %12, %1
  %14 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 12
  br i1 %13, label %17, label %15

15:                                               ; preds = %8
  store i16 1, ptr %14, align 2
  %16 = trunc i32 %1 to i16
  store i16 %16, ptr %10, align 8
  br label %43

17:                                               ; preds = %8
  %18 = load i16, ptr %14, align 2
  %19 = add i16 %18, 1
  store i16 %19, ptr %14, align 2
  %20 = icmp ult i16 %19, 11
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, ptr %22, i32 0, i32 26
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @llvm.smin.i32(i32 %24, i32 %1) #13
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 1024) #13
  %27 = icmp sgt i32 %25, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = trunc i32 %26 to i16
  %30 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 9
  store i16 %29, ptr %30, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #13, !srcloc !13
  tail call void @arm_heavy_mb() #13
  br label %31

31:                                               ; preds = %28, %21
  %32 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @blk_set_queue_depth(ptr noundef nonnull %33, i32 noundef %26) #13
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 4
  %38 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 9
  %39 = load i16, ptr %38, align 4
  %40 = zext i16 %39 to i32
  tail call void @sbitmap_resize(ptr noundef %37, i32 noundef %40) #13
  %41 = load i16, ptr %38, align 4
  %42 = zext i16 %41 to i32
  br label %43

43:                                               ; preds = %36, %17, %15, %2
  %44 = phi i32 [ %42, %36 ], [ 0, %2 ], [ 0, %17 ], [ 0, %15 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_get_vpd_page(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca [16 x i8], align 1
  %6 = alloca [16 x i8], align 1
  %7 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %8 = load i64, ptr %7, align 4
  %9 = and i64 %8, 8388608
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %67

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %12 = getelementptr inbounds i8, ptr %6, i32 6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %12, i8 0, i32 10, i1 false) #13, !annotation !9
  %13 = icmp ult i32 %3, 4
  br i1 %13, label %29, label %14

14:                                               ; preds = %11
  store i8 18, ptr %6, align 1
  %15 = getelementptr inbounds [16 x i8], ptr %6, i32 0, i32 1
  store i8 1, ptr %15, align 1
  %16 = getelementptr inbounds [16 x i8], ptr %6, i32 0, i32 2
  store i8 0, ptr %16, align 1
  %17 = lshr i32 %3, 8
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds [16 x i8], ptr %6, i32 0, i32 3
  store i8 %18, ptr %19, align 1
  %20 = trunc i32 %3 to i8
  %21 = getelementptr inbounds [16 x i8], ptr %6, i32 0, i32 4
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds [16 x i8], ptr %6, i32 0, i32 5
  store i8 0, ptr %22, align 1
  %23 = call i32 @__scsi_execute(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 2, ptr noundef %2, i32 noundef %3, ptr noundef null, ptr noundef null, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #13
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = getelementptr i8, ptr %2, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %14, %11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %67

30:                                               ; preds = %25
  %31 = getelementptr i8, ptr %2, i32 2
  %32 = load i16, ptr %31, align 1
  %33 = call i16 @llvm.bswap.i16(i16 %32) #13
  %34 = zext i16 %33 to i32
  %35 = add nuw nsw i32 %34, 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  %36 = icmp eq i8 %1, 0
  br i1 %36, label %67, label %37

37:                                               ; preds = %30
  %38 = call i32 @llvm.smin.i32(i32 %35, i32 %3)
  %39 = icmp sgt i32 %38, 4
  br i1 %39, label %40, label %48

40:                                               ; preds = %45, %37
  %41 = phi i32 [ %46, %45 ], [ 4, %37 ]
  %42 = getelementptr i8, ptr %2, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, %1
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = add nuw nsw i32 %41, 1
  %47 = icmp eq i32 %46, %38
  br i1 %47, label %48, label %40

48:                                               ; preds = %45, %37
  %49 = phi i32 [ 4, %37 ], [ %38, %45 ]
  %50 = icmp uge i32 %49, %35
  %51 = icmp slt i32 %49, %3
  %52 = or i1 %50, %51
  br i1 %52, label %67, label %53

53:                                               ; preds = %48, %40
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %54 = getelementptr inbounds i8, ptr %5, i32 6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %54, i8 0, i32 10, i1 false) #13, !annotation !9
  store i8 18, ptr %5, align 1
  %55 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 1
  store i8 1, ptr %55, align 1
  %56 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 2
  store i8 %1, ptr %56, align 1
  %57 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 3
  store i8 %18, ptr %57, align 1
  %58 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 4
  store i8 %20, ptr %58, align 1
  %59 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 5
  store i8 0, ptr %59, align 1
  %60 = call i32 @__scsi_execute(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 2, ptr noundef %2, i32 noundef %3, ptr noundef null, ptr noundef null, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #13
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i8, ptr %26, align 1
  %64 = icmp eq i8 %63, %1
  br i1 %64, label %66, label %65

65:                                               ; preds = %62, %53
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %67

66:                                               ; preds = %62
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %67

67:                                               ; preds = %66, %65, %48, %30, %29, %4
  %68 = phi i32 [ 0, %30 ], [ 0, %66 ], [ -22, %65 ], [ -22, %29 ], [ -22, %48 ], [ -22, %4 ]
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_attach_vpd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %3 = load i64, ptr %2, align 4
  %4 = and i64 %3, 16777216
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 23
  %8 = load i8, ptr %7, align 1
  %9 = icmp ult i8 %8, 5
  %10 = and i64 %3, 8388608
  %11 = icmp ne i64 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %77, label %13

13:                                               ; preds = %6, %1
  %14 = tail call fastcc ptr @scsi_get_vpd_buf(ptr noundef %0, i8 noundef zeroext 0)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %77, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.scsi_vpd, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, 4
  br i1 %19, label %20, label %76

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 33
  %22 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 26
  %23 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 35
  %24 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 34
  %25 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 36
  br label %26

26:                                               ; preds = %72, %20
  %27 = phi i32 [ 4, %20 ], [ %73, %72 ]
  %28 = getelementptr %struct.scsi_vpd, ptr %14, i32 0, i32 2, i32 %27
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = tail call fastcc ptr @scsi_get_vpd_buf(ptr noundef %0, i8 noundef zeroext 0) #13
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  tail call void @mutex_lock(ptr noundef %22) #13
  %35 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  store volatile ptr %32, ptr %21, align 4
  tail call void @mutex_unlock(ptr noundef %22) #13
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @kvfree_call_rcu(ptr noundef nonnull %35, ptr noundef null) #13
  br label %38

38:                                               ; preds = %37, %34, %31
  %39 = load i8, ptr %28, align 1
  br label %40

40:                                               ; preds = %38, %26
  %41 = phi i8 [ %39, %38 ], [ %29, %26 ]
  %42 = icmp eq i8 %41, -128
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = tail call fastcc ptr @scsi_get_vpd_buf(ptr noundef %0, i8 noundef zeroext -128) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  tail call void @mutex_lock(ptr noundef %22) #13
  %47 = load ptr, ptr %23, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  store volatile ptr %44, ptr %23, align 4
  tail call void @mutex_unlock(ptr noundef %22) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @kvfree_call_rcu(ptr noundef nonnull %47, ptr noundef null) #13
  br label %50

50:                                               ; preds = %49, %46, %43, %40
  %51 = load i8, ptr %28, align 1
  %52 = icmp eq i8 %51, -125
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = tail call fastcc ptr @scsi_get_vpd_buf(ptr noundef %0, i8 noundef zeroext -125) #13
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  tail call void @mutex_lock(ptr noundef %22) #13
  %57 = load ptr, ptr %24, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  store volatile ptr %54, ptr %24, align 4
  tail call void @mutex_unlock(ptr noundef %22) #13
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void @kvfree_call_rcu(ptr noundef nonnull %57, ptr noundef null) #13
  br label %60

60:                                               ; preds = %59, %56, %53
  %61 = load i8, ptr %28, align 1
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi i8 [ %61, %60 ], [ %51, %50 ]
  %64 = icmp eq i8 %63, -119
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = tail call fastcc ptr @scsi_get_vpd_buf(ptr noundef %0, i8 noundef zeroext -119) #13
  %67 = icmp eq ptr %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  tail call void @mutex_lock(ptr noundef %22) #13
  %69 = load ptr, ptr %25, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #13, !srcloc !14
  store volatile ptr %66, ptr %25, align 4
  tail call void @mutex_unlock(ptr noundef %22) #13
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @kvfree_call_rcu(ptr noundef nonnull %69, ptr noundef null) #13
  br label %72

72:                                               ; preds = %71, %68, %65, %62
  %73 = add nuw nsw i32 %27, 1
  %74 = load i32, ptr %17, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %26, label %76

76:                                               ; preds = %72, %16
  tail call void @kfree(ptr noundef nonnull %14) #13
  br label %77

77:                                               ; preds = %76, %13, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @scsi_get_vpd_buf(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca [16 x i8], align 1
  %4 = getelementptr inbounds i8, ptr %3, i32 6
  %5 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 1
  %6 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 2
  %7 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 3
  %8 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 4
  %9 = getelementptr inbounds [16 x i8], ptr %3, i32 0, i32 5
  br label %10

10:                                               ; preds = %34, %2
  %11 = phi i32 [ 255, %2 ], [ %32, %34 ]
  %12 = add nuw nsw i32 %11, 12
  %13 = call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3264) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.scsi_vpd, ptr %13, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 10, i1 false) #13, !annotation !9
  store i8 18, ptr %3, align 1
  store i8 1, ptr %5, align 1
  store i8 %1, ptr %6, align 1
  %17 = lshr i32 %11, 8
  %18 = trunc i32 %17 to i8
  store i8 %18, ptr %7, align 1
  %19 = trunc i32 %11 to i8
  store i8 %19, ptr %8, align 1
  store i8 0, ptr %9, align 1
  %20 = call i32 @__scsi_execute(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 2, ptr noundef %16, i32 noundef %11, ptr noundef null, ptr noundef null, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %16, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, %1
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @kfree(ptr noundef nonnull %13) #13
  br label %37

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %16, i32 2
  %29 = load i16, ptr %28, align 2
  %30 = call i16 @llvm.bswap.i16(i16 %29) #13
  %31 = zext i16 %30 to i32
  %32 = add nuw nsw i32 %31, 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  %33 = icmp ugt i32 %32, %11
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  call void @kfree(ptr noundef nonnull %13) #13
  br label %10

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.scsi_vpd, ptr %13, i32 0, i32 1
  store i32 %32, ptr %36, align 8
  br label %37

37:                                               ; preds = %35, %26, %10
  %38 = phi ptr [ null, %26 ], [ %13, %35 ], [ null, %10 ]
  ret ptr %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_report_opcode(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) #0 {
  %5 = alloca [16 x i8], align 1
  %6 = alloca %struct.scsi_sense_hdr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  store i64 0, ptr %6, align 8, !annotation !9
  %7 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 41
  %8 = load i64, ptr %7, align 4
  %9 = and i64 %8, 262144
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 23
  %13 = load i8, ptr %12, align 1
  %14 = icmp ult i8 %13, 6
  br i1 %14, label %49, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %16, i8 0, i32 12, i1 false)
  store i8 -93, ptr %5, align 1
  %17 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 1
  store i8 12, ptr %17, align 1
  %18 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 2
  store i8 1, ptr %18, align 1
  %19 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 3
  store i8 %3, ptr %19, align 1
  %20 = getelementptr inbounds [16 x i8], ptr %5, i32 0, i32 6
  %21 = tail call i32 @llvm.bswap.i32(i32 %2) #13
  store i32 %21, ptr %20, align 1
  tail call void @llvm.memset.p0.i32(ptr align 1 %1, i8 0, i32 %2, i1 false)
  %22 = call i32 @__scsi_execute(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 2, ptr noundef %1, i32 noundef %2, ptr noundef null, ptr noundef nonnull %6, i32 noundef 3000, i32 noundef 3, i64 noundef 0, i32 noundef 0, ptr noundef null) #13
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %15
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %24
  %27 = load i8, ptr %6, align 8
  %28 = and i8 %27, 112
  %29 = icmp eq i8 %28, 112
  %30 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %6, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 5
  %33 = select i1 %29, i1 %32, i1 false
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %6, i32 0, i32 2
  %36 = load i8, ptr %35, align 2
  %37 = and i8 %36, -5
  %38 = icmp eq i8 %37, 32
  %39 = getelementptr inbounds %struct.scsi_sense_hdr, ptr %6, i32 0, i32 3
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %38, i1 %41, i1 false
  br i1 %42, label %49, label %43

43:                                               ; preds = %34, %26, %24
  %44 = getelementptr i8, ptr %1, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = and i8 %45, 3
  %47 = icmp eq i8 %46, 3
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %43, %34, %15, %11, %4
  %50 = phi i32 [ -22, %11 ], [ -22, %4 ], [ %22, %15 ], [ -22, %34 ], [ %48, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret i32 %50
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @scsi_device_get(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 68
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -3
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54
  %8 = tail call ptr @get_device(ptr noundef %7) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, ptr %11, i32 0, i32 11
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.scsi_host_template, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call zeroext i1 @try_module_get(ptr noundef %15) #13
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @put_device(ptr noundef %7) #13
  br label %18

18:                                               ; preds = %17, %10, %6, %1
  %19 = phi i32 [ 0, %10 ], [ -6, %1 ], [ -6, %6 ], [ -6, %17 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @scsi_device_put(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.Scsi_Host, ptr %2, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.scsi_host_template, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.scsi_device, ptr %0, i32 0, i32 54
  tail call void @put_device(ptr noundef %7) #13
  tail call void @module_put(ptr noundef %6) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__scsi_iterate_devices(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 2
  %5 = select i1 %3, ptr %0, ptr %4
  %6 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #13
  %9 = load ptr, ptr %5, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %35, label %11

11:                                               ; preds = %31, %2
  %12 = phi ptr [ %33, %31 ], [ %9, %2 ]
  %13 = phi ptr [ %32, %31 ], [ %5, %2 ]
  %14 = getelementptr i8, ptr %12, i32 -8
  %15 = getelementptr i8, ptr %12, i32 1284
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -3
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %31, label %19

19:                                               ; preds = %11
  %20 = getelementptr i8, ptr %12, i32 256
  %21 = tail call ptr @get_device(ptr noundef %20) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %14, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, ptr %24, i32 0, i32 11
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.scsi_host_template, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = tail call zeroext i1 @try_module_get(ptr noundef %28) #13
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  tail call void @put_device(ptr noundef %20) #13
  br label %31

31:                                               ; preds = %30, %19, %11
  %32 = load ptr, ptr %13, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %0
  br i1 %34, label %35, label %11

35:                                               ; preds = %31, %23, %2
  %36 = phi ptr [ null, %2 ], [ %14, %23 ], [ null, %31 ]
  %37 = load ptr, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %8) #13
  br i1 %3, label %45, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %1, align 8
  %40 = getelementptr inbounds %struct.Scsi_Host, ptr %39, i32 0, i32 11
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.scsi_host_template, ptr %41, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.scsi_device, ptr %1, i32 0, i32 54
  tail call void @put_device(ptr noundef %44) #13
  tail call void @module_put(ptr noundef %43) #13
  br label %45

45:                                               ; preds = %38, %35
  ret ptr %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @starget_for_each_device(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %5, %3 ], [ %12, %10 ]
  %8 = tail call i32 @scsi_is_host_device(ptr noundef %7) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %6

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %7, i32 -360
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ null, %10 ]
  %18 = tail call ptr @__scsi_iterate_devices(ptr noundef %17, ptr noundef null)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 5
  %22 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 6
  br label %23

23:                                               ; preds = %35, %20
  %24 = phi ptr [ %18, %20 ], [ %36, %35 ]
  %25 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 17
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %21, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.scsi_device, ptr %24, i32 0, i32 16
  %31 = load i32, ptr %30, align 8
  %32 = load i32, ptr %22, align 8
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  tail call void %2(ptr noundef nonnull %24, ptr noundef %1) #13
  br label %35

35:                                               ; preds = %34, %29, %23
  %36 = tail call ptr @__scsi_iterate_devices(ptr noundef %17, ptr noundef nonnull %24)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %23

38:                                               ; preds = %35, %16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__starget_for_each_device(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %5, %3 ], [ %12, %10 ]
  %8 = tail call i32 @scsi_is_host_device(ptr noundef %7) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %6

14:                                               ; preds = %6
  %15 = getelementptr i8, ptr %7, i32 -360
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi ptr [ %15, %14 ], [ null, %10 ]
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %39, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 5
  %22 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 6
  br label %23

23:                                               ; preds = %36, %20
  %24 = phi ptr [ %18, %20 ], [ %37, %36 ]
  %25 = getelementptr i8, ptr %24, i32 -8
  %26 = getelementptr i8, ptr %24, i32 84
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %21, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = getelementptr i8, ptr %24, i32 80
  %32 = load i32, ptr %31, align 8
  %33 = load i32, ptr %22, align 8
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void %2(ptr noundef %25, ptr noundef %1) #13
  br label %36

36:                                               ; preds = %35, %30, %23
  %37 = load ptr, ptr %24, align 8
  %38 = icmp eq ptr %37, %17
  br i1 %38, label %39, label %23

39:                                               ; preds = %36, %16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @__scsi_device_lookup_by_target(ptr noundef readonly %0, i64 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %20, label %6

6:                                                ; preds = %15, %2
  %7 = phi ptr [ %16, %15 ], [ %4, %2 ]
  %8 = getelementptr i8, ptr %7, i32 1276
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 80
  %13 = load i64, ptr %12, align 8
  %14 = icmp eq i64 %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %6
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %20, label %6

18:                                               ; preds = %11
  %19 = getelementptr i8, ptr %7, i32 -16
  br label %20

20:                                               ; preds = %18, %15, %2
  %21 = phi ptr [ %19, %18 ], [ null, %2 ], [ null, %15 ]
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scsi_device_lookup_by_target(ptr noundef readonly %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi ptr [ %4, %2 ], [ %11, %9 ]
  %7 = tail call i32 @scsi_is_host_device(ptr noundef %6) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %5

13:                                               ; preds = %5
  %14 = getelementptr i8, ptr %6, i32 -360
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ null, %9 ]
  %17 = getelementptr inbounds %struct.Scsi_Host, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #13
  %20 = getelementptr inbounds %struct.scsi_target, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %53, label %23

23:                                               ; preds = %32, %15
  %24 = phi ptr [ %33, %32 ], [ %21, %15 ]
  %25 = getelementptr i8, ptr %24, i32 1276
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %24, i32 80
  %30 = load i64, ptr %29, align 8
  %31 = icmp eq i64 %30, %1
  br i1 %31, label %35, label %32

32:                                               ; preds = %28, %23
  %33 = load ptr, ptr %24, align 4
  %34 = icmp eq ptr %33, %20
  br i1 %34, label %53, label %23

35:                                               ; preds = %28
  %36 = getelementptr i8, ptr %24, i32 -16
  %37 = icmp eq ptr %36, null
  %38 = add i32 %26, -3
  %39 = icmp ult i32 %38, 2
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = getelementptr i8, ptr %24, i32 248
  %43 = tail call ptr @get_device(ptr noundef %42) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %36, align 8
  %47 = getelementptr inbounds %struct.Scsi_Host, ptr %46, i32 0, i32 11
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.scsi_host_template, ptr %48, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = tail call zeroext i1 @try_module_get(ptr noundef %50) #13
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  tail call void @put_device(ptr noundef %42) #13
  br label %53

53:                                               ; preds = %52, %45, %41, %35, %32, %15
  %54 = phi ptr [ null, %35 ], [ %36, %45 ], [ null, %15 ], [ null, %41 ], [ null, %52 ], [ null, %32 ]
  %55 = load ptr, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %55, i32 noundef %19) #13
  ret ptr %54
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @__scsi_device_lookup(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) #5 {
  %5 = load ptr, ptr %0, align 8
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %29, label %7

7:                                                ; preds = %24, %4
  %8 = phi ptr [ %25, %24 ], [ %5, %4 ]
  %9 = getelementptr i8, ptr %8, i32 1284
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %8, i32 84
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %8, i32 80
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %8, i32 88
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %22, %3
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %16, %12, %7
  %25 = load ptr, ptr %8, align 8
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %29, label %7

27:                                               ; preds = %20
  %28 = getelementptr i8, ptr %8, i32 -8
  br label %29

29:                                               ; preds = %27, %24, %4
  %30 = phi ptr [ %28, %27 ], [ null, %4 ], [ null, %24 ]
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @scsi_device_lookup(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.Scsi_Host, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #13
  %8 = load ptr, ptr %0, align 8
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %48, label %10

10:                                               ; preds = %27, %4
  %11 = phi ptr [ %28, %27 ], [ %8, %4 ]
  %12 = getelementptr i8, ptr %11, i32 1284
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %27, label %15

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %11, i32 84
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %11, i32 80
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %11, i32 88
  %25 = load i64, ptr %24, align 8
  %26 = icmp eq i64 %25, %3
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %19, %15, %10
  %28 = load ptr, ptr %11, align 8
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %48, label %10

30:                                               ; preds = %23
  %31 = getelementptr i8, ptr %11, i32 -8
  %32 = icmp eq ptr %31, null
  %33 = add i32 %13, -3
  %34 = icmp ult i32 %33, 2
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = getelementptr i8, ptr %11, i32 256
  %38 = tail call ptr @get_device(ptr noundef %37) #13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %31, align 8
  %42 = getelementptr inbounds %struct.Scsi_Host, ptr %41, i32 0, i32 11
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.scsi_host_template, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = tail call zeroext i1 @try_module_get(ptr noundef %45) #13
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  tail call void @put_device(ptr noundef %37) #13
  br label %48

48:                                               ; preds = %47, %40, %36, %30, %27, %4
  %49 = phi ptr [ null, %30 ], [ %31, %40 ], [ null, %4 ], [ null, %36 ], [ null, %47 ], [ null, %27 ]
  %50 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %50, i32 noundef %7) #13
  ret ptr %49
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exit_scsi() #6 section ".exit.text" {
  tail call void @scsi_sysfs_unregister() #13
  tail call void @scsi_exit_sysctl() #13
  tail call void @scsi_exit_hosts() #13
  tail call void @scsi_exit_devinfo() #13
  tail call void @scsi_exit_procfs() #13
  tail call void @scsi_exit_queue() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_sysfs_unregister() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_exit_sysctl() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_exit_hosts() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_exit_devinfo() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_exit_procfs() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_exit_queue() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_scsi() #6 section ".init.text" {
  %1 = tail call i32 @scsi_init_procfs() #13
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %24

3:                                                ; preds = %0
  %4 = tail call i32 @scsi_init_devinfo() #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = tail call i32 @scsi_init_hosts() #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = tail call i32 @scsi_init_sysctl() #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = tail call i32 @scsi_sysfs_register() #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151) #15
  br label %28

17:                                               ; preds = %12
  tail call void @scsi_exit_sysctl() #13
  br label %18

18:                                               ; preds = %17, %9
  %19 = phi i32 [ %10, %9 ], [ %13, %17 ]
  tail call void @scsi_exit_hosts() #13
  br label %20

20:                                               ; preds = %18, %6
  %21 = phi i32 [ %7, %6 ], [ %19, %18 ]
  tail call void @scsi_exit_devinfo() #13
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi i32 [ %4, %3 ], [ %21, %20 ]
  tail call void @scsi_exit_procfs() #13
  br label %24

24:                                               ; preds = %22, %0
  %25 = phi i32 [ %1, %0 ], [ %23, %22 ]
  tail call void @scsi_exit_queue() #13
  %26 = sub i32 0, %25
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, i32 noundef %26) #15
  br label %28

28:                                               ; preds = %24, %15
  %29 = phi i32 [ %25, %24 ], [ 0, %15 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_scsi_dispatch_cmd_start(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %43

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %5, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %5, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %5, i32 0, i32 9
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %25, ptr noundef nonnull @trace_raw_output_scsi_dispatch_cmd_start.symbols) #13
  %27 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %5, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %28, ptr noundef nonnull @trace_raw_output_scsi_dispatch_cmd_start.symbols.21) #13
  %30 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %5, i32 0, i32 10
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 65535
  %33 = getelementptr i8, ptr %5, i32 %32
  %34 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_start, ptr %5, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = tail call ptr @scsi_trace_parse_cdb(ptr noundef %9, ptr noundef %33, i32 noundef %35) #13
  %37 = load i32, ptr %30, align 4
  %38 = and i32 %37, 65535
  %39 = getelementptr i8, ptr %5, i32 %38
  %40 = load i32, ptr %34, align 4
  %41 = tail call ptr @trace_print_hex_seq(ptr noundef %9, ptr noundef %39, i32 noundef %40, i1 noundef zeroext false) #13
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, ptr noundef %26, ptr noundef %29, ptr noundef %36, ptr noundef %41) #13
  %42 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %43

43:                                               ; preds = %8, %3
  %44 = phi i32 [ %42, %8 ], [ %6, %3 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_trace_parse_cdb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_hex_seq(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_scsi_dispatch_cmd_error(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %45

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %5, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %5, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %5, i32 0, i32 10
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %25, ptr noundef nonnull @trace_raw_output_scsi_dispatch_cmd_error.symbols) #13
  %27 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %5, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %28, ptr noundef nonnull @trace_raw_output_scsi_dispatch_cmd_error.symbols.115) #13
  %30 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %5, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 65535
  %33 = getelementptr i8, ptr %5, i32 %32
  %34 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %5, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = tail call ptr @scsi_trace_parse_cdb(ptr noundef %9, ptr noundef %33, i32 noundef %35) #13
  %37 = load i32, ptr %30, align 4
  %38 = and i32 %37, 65535
  %39 = getelementptr i8, ptr %5, i32 %38
  %40 = load i32, ptr %34, align 4
  %41 = tail call ptr @trace_print_hex_seq(ptr noundef %9, ptr noundef %39, i32 noundef %40, i1 noundef zeroext false) #13
  %42 = getelementptr inbounds %struct.trace_event_raw_scsi_dispatch_cmd_error, ptr %5, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.114, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, ptr noundef %26, ptr noundef %29, ptr noundef %36, ptr noundef %41, i32 noundef %43) #13
  %44 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %45

45:                                               ; preds = %8, %3
  %46 = phi i32 [ %44, %8 ], [ %6, %3 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_scsi_cmd_done_timeout_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %51

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %5, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %5, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %5, i32 0, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %5, i32 0, i32 10
  %24 = load i8, ptr %23, align 4
  %25 = zext i8 %24 to i32
  %26 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %25, ptr noundef nonnull @trace_raw_output_scsi_cmd_done_timeout_template.symbols) #13
  %27 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %5, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %28, ptr noundef nonnull @trace_raw_output_scsi_cmd_done_timeout_template.symbols.118) #13
  %30 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %5, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 65535
  %33 = getelementptr i8, ptr %5, i32 %32
  %34 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %5, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = tail call ptr @scsi_trace_parse_cdb(ptr noundef %9, ptr noundef %33, i32 noundef %35) #13
  %37 = load i32, ptr %30, align 4
  %38 = and i32 %37, 65535
  %39 = getelementptr i8, ptr %5, i32 %38
  %40 = load i32, ptr %34, align 4
  %41 = tail call ptr @trace_print_hex_seq(ptr noundef %9, ptr noundef %39, i32 noundef %40, i1 noundef zeroext false) #13
  %42 = getelementptr inbounds %struct.trace_event_raw_scsi_cmd_done_timeout_template, ptr %5, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %45, ptr noundef nonnull @trace_raw_output_scsi_cmd_done_timeout_template.symbols.120) #13
  %47 = load i32, ptr %42, align 4
  %48 = and i32 %47, 255
  %49 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %48, ptr noundef nonnull @trace_raw_output_scsi_cmd_done_timeout_template.symbols.138) #13
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.117, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, ptr noundef %26, ptr noundef %29, ptr noundef %36, ptr noundef %41, ptr noundef nonnull @.str.119, ptr noundef %46, ptr noundef nonnull @.str.137, ptr noundef %49) #13
  %50 = tail call i32 @trace_handle_return(ptr noundef %10) #13
  br label %51

51:                                               ; preds = %8, %3
  %52 = phi i32 [ %50, %8 ], [ %6, %3 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_scsi_eh_wakeup(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #13
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_scsi_eh_wakeup, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.150, i32 noundef %11) #13
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
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scsi_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_init_procfs() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @scsi_init_devinfo() local_unnamed_addr #12 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_init_hosts() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_init_sysctl() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_sysfs_register() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
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
!12 = !{i64 486670}
!13 = !{i64 2155192656}
!14 = !{i64 2155204305}
