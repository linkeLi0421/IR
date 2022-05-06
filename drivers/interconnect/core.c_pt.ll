; ModuleID = '/llk/IR/drivers/interconnect/core.c_pt.bc'
source_filename = "../drivers/interconnect/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_std_aggregate:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_std_aggregate\22\09\09\09\09\09"
module asm "__kstrtabns_icc_std_aggregate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_icc_xlate_onecell:\09\09\09\09\09"
module asm "\09.asciz \09\22of_icc_xlate_onecell\22\09\09\09\09\09"
module asm "__kstrtabns_of_icc_xlate_onecell:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_icc_get_from_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22of_icc_get_from_provider\22\09\09\09\09\09"
module asm "__kstrtabns_of_icc_get_from_provider:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_icc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_icc_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_icc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_icc_get_by_index:\09\09\09\09\09"
module asm "\09.asciz \09\22of_icc_get_by_index\22\09\09\09\09\09"
module asm "__kstrtabns_of_icc_get_by_index:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_icc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_icc_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_icc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_set_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_set_tag\22\09\09\09\09\09"
module asm "__kstrtabns_icc_set_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_get_name:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_get_name\22\09\09\09\09\09"
module asm "__kstrtabns_icc_get_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_set_bw:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_set_bw\22\09\09\09\09\09"
module asm "__kstrtabns_icc_set_bw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_enable\22\09\09\09\09\09"
module asm "__kstrtabns_icc_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_disable\22\09\09\09\09\09"
module asm "__kstrtabns_icc_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_get\22\09\09\09\09\09"
module asm "__kstrtabns_icc_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_put\22\09\09\09\09\09"
module asm "__kstrtabns_icc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_node_create:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_node_create\22\09\09\09\09\09"
module asm "__kstrtabns_icc_node_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_node_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_node_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_icc_node_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_link_create:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_link_create\22\09\09\09\09\09"
module asm "__kstrtabns_icc_link_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_link_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_link_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_icc_link_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_node_add:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_node_add\22\09\09\09\09\09"
module asm "__kstrtabns_icc_node_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_node_del:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_node_del\22\09\09\09\09\09"
module asm "__kstrtabns_icc_node_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_nodes_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_nodes_remove\22\09\09\09\09\09"
module asm "__kstrtabns_icc_nodes_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_provider_add:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_provider_add\22\09\09\09\09\09"
module asm "__kstrtabns_icc_provider_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_provider_del:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_provider_del\22\09\09\09\09\09"
module asm "__kstrtabns_icc_provider_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_sync_state:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_sync_state\22\09\09\09\09\09"
module asm "__kstrtabns_icc_sync_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.cpumask = type { [1 x i32] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.icc_path = type { ptr, i32, [0 x %struct.icc_req] }
%struct.icc_req = type { %struct.hlist_node, ptr, ptr, i8, i32, i32, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.icc_node = type { i32, ptr, ptr, i32, ptr, %struct.list_head, %struct.list_head, ptr, i8, %struct.hlist_head, i32, i32, i32, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.trace_event_raw_icc_set_bw = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_icc_set_bw_end = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.icc_onecell_data = type { i32, [0 x ptr] }
%struct.icc_provider = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%struct.icc_node_data = type { ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.61 = type { ptr }

@__tpstrtab_icc_set_bw = internal constant [11 x i8] c"icc_set_bw\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_icc_set_bw = dso_local global %struct.static_call_key { ptr @__traceiter_icc_set_bw }, align 4
@__tracepoint_icc_set_bw = dso_local global %struct.tracepoint { ptr @__tpstrtab_icc_set_bw, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_icc_set_bw, ptr null, ptr @__traceiter_icc_set_bw, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_icc_set_bw = internal constant ptr @__tracepoint_icc_set_bw, section "__tracepoints_ptrs", align 4
@__tpstrtab_icc_set_bw_end = internal constant [15 x i8] c"icc_set_bw_end\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_icc_set_bw_end = dso_local global %struct.static_call_key { ptr @__traceiter_icc_set_bw_end }, align 4
@__tracepoint_icc_set_bw_end = dso_local global %struct.tracepoint { ptr @__tpstrtab_icc_set_bw_end, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_icc_set_bw_end, ptr null, ptr @__traceiter_icc_set_bw_end, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_icc_set_bw_end = internal constant ptr @__tracepoint_icc_set_bw_end, section "__tracepoints_ptrs", align 4
@trace_event_fields_icc_set_bw = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.14, %union.anon.89 { %struct.anon.90 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.89 { %struct.anon.90 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.89 { %struct.anon.90 { ptr @.str.17, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.19, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.21, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.18, %union.anon.89 { %struct.anon.90 { ptr @.str.22, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_icc_set_bw = internal global %struct.trace_event_class { ptr @.str.30, ptr @trace_event_raw_event_icc_set_bw, ptr @perf_trace_icc_set_bw, ptr @trace_event_reg, ptr @trace_event_fields_icc_set_bw, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_icc_set_bw, i64 24), ptr getelementptr (i8, ptr @event_class_icc_set_bw, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_icc_set_bw = internal global %struct.trace_event_functions { ptr @trace_raw_output_icc_set_bw, ptr null, ptr null, ptr null }, align 4
@print_fmt_icc_set_bw = internal global [193 x i8] c"\22path=%s dev=%s node=%s avg_bw=%u peak_bw=%u agg_avg=%u agg_peak=%u\22, __get_str(path_name), __get_str(dev), __get_str(node_name), REC->avg_bw, REC->peak_bw, REC->node_avg_bw, REC->node_peak_bw\00", align 1
@event_icc_set_bw = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_icc_set_bw, %union.anon.91 { ptr @__tracepoint_icc_set_bw }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_icc_set_bw }, ptr @print_fmt_icc_set_bw, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_icc_set_bw = internal global ptr @event_icc_set_bw, section "_ftrace_events", align 4
@trace_event_fields_icc_set_bw_end = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.14, %union.anon.89 { %struct.anon.90 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon.89 { %struct.anon.90 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.24, %union.anon.89 { %struct.anon.90 { ptr @.str.25, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_icc_set_bw_end = internal global %struct.trace_event_class { ptr @.str.30, ptr @trace_event_raw_event_icc_set_bw_end, ptr @perf_trace_icc_set_bw_end, ptr @trace_event_reg, ptr @trace_event_fields_icc_set_bw_end, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_icc_set_bw_end, i64 24), ptr getelementptr (i8, ptr @event_class_icc_set_bw_end, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_icc_set_bw_end = internal global %struct.trace_event_functions { ptr @trace_raw_output_icc_set_bw_end, ptr null, ptr null, ptr null }, align 4
@print_fmt_icc_set_bw_end = internal global [72 x i8] c"\22path=%s dev=%s ret=%d\22, __get_str(path_name), __get_str(dev), REC->ret\00", align 1
@event_icc_set_bw_end = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_icc_set_bw_end, %union.anon.91 { ptr @__tracepoint_icc_set_bw_end }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_icc_set_bw_end }, ptr @print_fmt_icc_set_bw_end, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_icc_set_bw_end = internal global ptr @event_icc_set_bw_end, section "_ftrace_events", align 4
@__kstrtab_icc_std_aggregate = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_std_aggregate = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_std_aggregate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_std_aggregate to i32), ptr @__kstrtab_icc_std_aggregate, ptr @__kstrtabns_icc_std_aggregate }, section "___ksymtab_gpl+icc_std_aggregate", align 4
@.str = private unnamed_addr constant [24 x i8] c"\013%s: invalid index %u\0A\00", align 1
@__func__.of_icc_xlate_onecell = private unnamed_addr constant [21 x i8] c"of_icc_xlate_onecell\00", align 1
@__kstrtab_of_icc_xlate_onecell = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_icc_xlate_onecell = external dso_local constant [0 x i8], align 1
@__ksymtab_of_icc_xlate_onecell = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_icc_xlate_onecell to i32), ptr @__kstrtab_of_icc_xlate_onecell, ptr @__kstrtabns_of_icc_xlate_onecell }, section "___ksymtab_gpl+of_icc_xlate_onecell", align 4
@icc_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @icc_lock, i64 12), ptr getelementptr (i8, ptr @icc_lock, i64 12) } }, align 4
@icc_providers = internal global %struct.list_head { ptr @icc_providers, ptr @icc_providers }, align 4
@__kstrtab_of_icc_get_from_provider = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_icc_get_from_provider = external dso_local constant [0 x i8], align 1
@__ksymtab_of_icc_get_from_provider = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_icc_get_from_provider to i32), ptr @__kstrtab_of_icc_get_from_provider, ptr @__kstrtabns_of_icc_get_from_provider }, section "___ksymtab_gpl+of_icc_get_from_provider", align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"devm_icc_release\00", align 1
@__kstrtab_devm_of_icc_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_icc_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_icc_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_icc_get to i32), ptr @__kstrtab_devm_of_icc_get, ptr @__kstrtabns_devm_of_icc_get }, section "___ksymtab_gpl+devm_of_icc_get", align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"interconnects\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"#interconnect-cells\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"error finding src node\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"error finding dst node\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%s: invalid path=%ld\0A\00", align 1
@__func__.of_icc_get_by_index = private unnamed_addr constant [20 x i8] c"of_icc_get_by_index\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@__kstrtab_of_icc_get_by_index = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_icc_get_by_index = external dso_local constant [0 x i8], align 1
@__ksymtab_of_icc_get_by_index = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_icc_get_by_index to i32), ptr @__kstrtab_of_icc_get_by_index, ptr @__kstrtabns_of_icc_get_by_index }, section "___ksymtab_gpl+of_icc_get_by_index", align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"interconnect-names\00", align 1
@__kstrtab_of_icc_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_icc_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_icc_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_icc_get to i32), ptr @__kstrtab_of_icc_get, ptr @__kstrtabns_of_icc_get }, section "___ksymtab_gpl+of_icc_get", align 4
@__kstrtab_icc_set_tag = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_set_tag = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_set_tag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_set_tag to i32), ptr @__kstrtab_icc_set_tag, ptr @__kstrtabns_icc_set_tag }, section "___ksymtab_gpl+icc_set_tag", align 4
@__kstrtab_icc_get_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_get_name = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_get_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_get_name to i32), ptr @__kstrtab_icc_get_name, ptr @__kstrtabns_icc_get_name }, section "___ksymtab_gpl+icc_get_name", align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"drivers/interconnect/core.c\00", align 1
@__kstrtab_icc_set_bw = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_set_bw = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_set_bw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_set_bw to i32), ptr @__kstrtab_icc_set_bw, ptr @__kstrtabns_icc_set_bw }, section "___ksymtab_gpl+icc_set_bw", align 4
@__kstrtab_icc_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_enable to i32), ptr @__kstrtab_icc_enable, ptr @__kstrtabns_icc_enable }, section "___ksymtab_gpl+icc_enable", align 4
@__kstrtab_icc_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_disable to i32), ptr @__kstrtab_icc_disable, ptr @__kstrtabns_icc_disable }, section "___ksymtab_gpl+icc_disable", align 4
@__func__.icc_get = private unnamed_addr constant [8 x i8] c"icc_get\00", align 1
@__kstrtab_icc_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_get = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_get to i32), ptr @__kstrtab_icc_get, ptr @__kstrtabns_icc_get }, section "___ksymtab_gpl+icc_get", align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"\013%s: error (%d)\0A\00", align 1
@__func__.icc_put = private unnamed_addr constant [8 x i8] c"icc_put\00", align 1
@__kstrtab_icc_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_put = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_put to i32), ptr @__kstrtab_icc_put, ptr @__kstrtabns_icc_put }, section "___ksymtab_gpl+icc_put", align 4
@__kstrtab_icc_node_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_node_create = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_node_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_node_create to i32), ptr @__kstrtab_icc_node_create, ptr @__kstrtabns_icc_node_create }, section "___ksymtab_gpl+icc_node_create", align 4
@icc_idr = internal global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554436, ptr null }, i32 0, i32 0 }, align 4
@__kstrtab_icc_node_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_node_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_node_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_node_destroy to i32), ptr @__kstrtab_icc_node_destroy, ptr @__kstrtabns_icc_node_destroy }, section "___ksymtab_gpl+icc_node_destroy", align 4
@__kstrtab_icc_link_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_link_create = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_link_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_link_create to i32), ptr @__kstrtab_icc_link_create, ptr @__kstrtabns_icc_link_create }, section "___ksymtab_gpl+icc_link_create", align 4
@__kstrtab_icc_link_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_link_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_link_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_link_destroy to i32), ptr @__kstrtab_icc_link_destroy, ptr @__kstrtabns_icc_link_destroy }, section "___ksymtab_gpl+icc_link_destroy", align 4
@__kstrtab_icc_node_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_node_add = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_node_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_node_add to i32), ptr @__kstrtab_icc_node_add, ptr @__kstrtabns_icc_node_add }, section "___ksymtab_gpl+icc_node_add", align 4
@__kstrtab_icc_node_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_node_del = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_node_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_node_del to i32), ptr @__kstrtab_icc_node_del, ptr @__kstrtabns_icc_node_del }, section "___ksymtab_gpl+icc_node_del", align 4
@__kstrtab_icc_nodes_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_nodes_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_nodes_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_nodes_remove to i32), ptr @__kstrtab_icc_nodes_remove, ptr @__kstrtabns_icc_nodes_remove }, section "___ksymtab_gpl+icc_nodes_remove", align 4
@__kstrtab_icc_provider_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_provider_add = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_provider_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_provider_add to i32), ptr @__kstrtab_icc_provider_add, ptr @__kstrtabns_icc_provider_add }, section "___ksymtab_gpl+icc_provider_add", align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"\014interconnect provider still has %d users\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"\014interconnect provider still has nodes\0A\00", align 1
@__kstrtab_icc_provider_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_provider_del = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_provider_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_provider_del to i32), ptr @__kstrtab_icc_provider_del, ptr @__kstrtabns_icc_provider_del }, section "___ksymtab_gpl+icc_provider_del", align 4
@icc_sync_state.count = internal unnamed_addr global i32 0, align 4
@providers_count = internal unnamed_addr global i32 0, align 4
@synced_state = internal unnamed_addr global i1 false, align 1
@__kstrtab_icc_sync_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_sync_state = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_sync_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_sync_state to i32), ptr @__kstrtab_icc_sync_state, ptr @__kstrtabns_icc_sync_state }, section "___ksymtab_gpl+icc_sync_state", align 4
@__initcall__kmod_icc_core__255_1143_icc_init6 = internal global ptr @icc_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author256 = internal constant [57 x i8] c"icc_core.author=Georgi Djakov <georgi.djakov@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [46 x i8] c"icc_core.description=Interconnect Driver Core\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [44 x i8] c"icc_core.file=drivers/interconnect/icc-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [24 x i8] c"icc_core.license=GPL v2\00", section ".modinfo", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"path_name\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"node_name\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"avg_bw\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"peak_bw\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"node_avg_bw\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"node_peak_bw\00", align 1
@.str.23 = private unnamed_addr constant [68 x i8] c"path=%s dev=%s node=%s avg_bw=%u peak_bw=%u agg_avg=%u agg_peak=%u\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"path=%s dev=%s ret=%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.28 = private unnamed_addr constant [22 x i8] c"%s: couldn't get idr\0A\00", align 1
@__func__.icc_node_create_nolock = private unnamed_addr constant [23 x i8] c"icc_node_create_nolock\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.30 = private constant [13 x i8] c"interconnect\00", align 1
@icc_debugfs_dir = internal unnamed_addr global ptr null, align 4
@.str.31 = private unnamed_addr constant [21 x i8] c"interconnect_summary\00", align 1
@icc_summary_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @icc_summary_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.32 = private unnamed_addr constant [19 x i8] c"interconnect_graph\00", align 1
@icc_graph_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @icc_graph_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.33 = private unnamed_addr constant [70 x i8] c" node                                  tag          avg         peak\0A\00", align 1
@.str.34 = private unnamed_addr constant [70 x i8] c"--------------------------------------------------------------------\0A\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"  %-27s %12u %12u %12u\0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"%-42s %12u %12u\0A\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"digraph {\0A\09rankdir = LR\0A\09node [shape = record]\0A\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"\09subgraph cluster_%d {\0A\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"\09\09label = \22%s\22\0A\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"\09\09\22%d:%s\22 [label=\22%d:%s\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"\0A\09\09\09|avg_bw=%ukBps\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"\0A\09\09\09|peak_bw=%ukBps\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"\22]\0A\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"%s\22%d:%s\22 -> \22%d:%s\22\0A\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_license259, ptr @__event_icc_set_bw, ptr @__event_icc_set_bw_end, ptr @__initcall__kmod_icc_core__255_1143_icc_init6, ptr @__ksymtab_devm_of_icc_get, ptr @__ksymtab_icc_disable, ptr @__ksymtab_icc_enable, ptr @__ksymtab_icc_get, ptr @__ksymtab_icc_get_name, ptr @__ksymtab_icc_link_create, ptr @__ksymtab_icc_link_destroy, ptr @__ksymtab_icc_node_add, ptr @__ksymtab_icc_node_create, ptr @__ksymtab_icc_node_del, ptr @__ksymtab_icc_node_destroy, ptr @__ksymtab_icc_nodes_remove, ptr @__ksymtab_icc_provider_add, ptr @__ksymtab_icc_provider_del, ptr @__ksymtab_icc_put, ptr @__ksymtab_icc_set_bw, ptr @__ksymtab_icc_set_tag, ptr @__ksymtab_icc_std_aggregate, ptr @__ksymtab_icc_sync_state, ptr @__ksymtab_of_icc_get, ptr @__ksymtab_of_icc_get_by_index, ptr @__ksymtab_of_icc_get_from_provider, ptr @__ksymtab_of_icc_xlate_onecell, ptr @__tracepoint_icc_set_bw, ptr @__tracepoint_icc_set_bw_end, ptr @__tracepoint_ptr_icc_set_bw, ptr @__tracepoint_ptr_icc_set_bw_end, ptr @event_class_icc_set_bw, ptr @event_class_icc_set_bw_end, ptr @event_icc_set_bw, ptr @event_icc_set_bw_end], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_icc_set_bw(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_icc_set_bw, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #16
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
define dso_local i32 @__traceiter_icc_set_bw_end(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_icc_set_bw_end, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_icc_set_bw(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
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
  br i1 %16, label %91, label %17

17:                                               ; preds = %15, %12, %6
  %18 = load ptr, ptr %1, align 4
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr @.str.13, ptr %18
  %21 = tail call i32 @strlen(ptr noundef nonnull %20) #16
  %22 = add i32 %21, 1
  %23 = shl i32 %22, 16
  %24 = or i32 %23, 36
  %25 = getelementptr %struct.icc_path, ptr %1, i32 0, i32 2, i32 %3, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %17
  %31 = load ptr, ptr %26, align 4
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr @.str.13, ptr %31
  br label %34

34:                                               ; preds = %30, %17
  %35 = phi ptr [ %28, %17 ], [ %33, %30 ]
  %36 = tail call i32 @strlen(ptr noundef nonnull %35) #16
  %37 = add i32 %36, 1
  %38 = getelementptr inbounds %struct.icc_node, ptr %2, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  %41 = select i1 %40, ptr @.str.13, ptr %39
  %42 = add i32 %37, %22
  %43 = tail call i32 @strlen(ptr noundef nonnull %41) #16
  %44 = add i32 %43, 1
  %45 = add i32 %42, 36
  %46 = add i32 %45, %44
  %47 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef %46) #16
  %48 = icmp eq ptr %47, null
  br i1 %48, label %91, label %49

49:                                               ; preds = %34
  %50 = shl i32 %44, 16
  %51 = or i32 %50, %45
  %52 = shl i32 %37, 16
  %53 = add i32 %21, 37
  %54 = or i32 %52, %53
  %55 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %47, i32 0, i32 1
  store i32 %24, ptr %55, align 4
  %56 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %47, i32 0, i32 2
  store i32 %54, ptr %56, align 4
  %57 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %47, i32 0, i32 3
  store i32 %51, ptr %57, align 4
  %58 = getelementptr i8, ptr %47, i32 36
  %59 = load ptr, ptr %1, align 4
  %60 = icmp eq ptr %59, null
  %61 = select i1 %60, ptr @.str.13, ptr %59
  %62 = call ptr @strcpy(ptr noundef %58, ptr noundef nonnull %61)
  %63 = and i32 %53, 65535
  %64 = getelementptr i8, ptr %47, i32 %63
  %65 = load ptr, ptr %25, align 4
  %66 = getelementptr inbounds %struct.device, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %49
  %70 = load ptr, ptr %65, align 4
  %71 = icmp eq ptr %70, null
  %72 = select i1 %71, ptr @.str.13, ptr %70
  br label %73

73:                                               ; preds = %69, %49
  %74 = phi ptr [ %67, %49 ], [ %72, %69 ]
  %75 = call ptr @strcpy(ptr noundef %64, ptr noundef nonnull %74)
  %76 = load i32, ptr %57, align 4
  %77 = and i32 %76, 65535
  %78 = getelementptr i8, ptr %47, i32 %77
  %79 = load ptr, ptr %38, align 4
  %80 = icmp eq ptr %79, null
  %81 = select i1 %80, ptr @.str.13, ptr %79
  %82 = call ptr @strcpy(ptr noundef %78, ptr noundef nonnull %81)
  %83 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %47, i32 0, i32 4
  store i32 %4, ptr %83, align 4
  %84 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %47, i32 0, i32 5
  store i32 %5, ptr %84, align 4
  %85 = getelementptr inbounds %struct.icc_node, ptr %2, i32 0, i32 10
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %47, i32 0, i32 6
  store i32 %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.icc_node, ptr %2, i32 0, i32 11
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %47, i32 0, i32 7
  store i32 %89, ptr %90, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #16
  br label %91

91:                                               ; preds = %73, %34, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_icc_set_bw(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = load ptr, ptr %1, align 4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @.str.13, ptr %9
  %12 = tail call i32 @strlen(ptr noundef nonnull %11) #16
  %13 = add i32 %12, 1
  %14 = shl i32 %13, 16
  %15 = or i32 %14, 36
  %16 = getelementptr %struct.icc_path, ptr %1, i32 0, i32 2, i32 %3, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr @.str.13, ptr %22
  br label %25

25:                                               ; preds = %21, %6
  %26 = phi ptr [ %19, %6 ], [ %24, %21 ]
  %27 = tail call i32 @strlen(ptr noundef nonnull %26) #16
  %28 = add i32 %27, 1
  %29 = add i32 %12, 37
  %30 = shl i32 %28, 16
  %31 = or i32 %30, %29
  %32 = getelementptr inbounds %struct.icc_node, ptr %2, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr @.str.13, ptr %33
  %36 = add i32 %28, %13
  %37 = tail call i32 @strlen(ptr noundef nonnull %35) #16
  %38 = add i32 %37, 1
  %39 = add i32 %36, 36
  %40 = shl i32 %38, 16
  %41 = or i32 %40, %39
  %42 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %43 = load ptr, ptr %42, align 4
  %44 = ptrtoint ptr %43 to i32
  %45 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %46 = inttoptr i32 %45 to ptr
  %47 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %46) #11, !srcloc !12
  %48 = add i32 %47, %44
  %49 = inttoptr i32 %48 to ptr
  %50 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %25
  %54 = load volatile ptr, ptr %49, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %112, label %56

56:                                               ; preds = %53, %25
  %57 = add i32 %36, 47
  %58 = add i32 %57, %38
  %59 = and i32 %58, -8
  %60 = add i32 %59, -4
  %61 = call ptr @perf_trace_buf_alloc(i32 noundef %60, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %62 = icmp eq ptr %61, null
  br i1 %62, label %112, label %63

63:                                               ; preds = %56
  %64 = load ptr, ptr %7, align 4
  %65 = call ptr @llvm.returnaddress(i32 0) #16
  %66 = ptrtoint ptr %65 to i32
  %67 = getelementptr [18 x i32], ptr %64, i32 0, i32 15
  store i32 %66, ptr %67, align 4
  %68 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %69 = ptrtoint ptr %68 to i32
  %70 = getelementptr [18 x i32], ptr %64, i32 0, i32 11
  store i32 %69, ptr %70, align 4
  %71 = call i32 @llvm.read_register.i32(metadata !0) #16
  %72 = getelementptr [18 x i32], ptr %64, i32 0, i32 13
  store i32 %71, ptr %72, align 4
  %73 = getelementptr [18 x i32], ptr %64, i32 0, i32 16
  store i32 19, ptr %73, align 4
  %74 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %61, i32 0, i32 1
  store i32 %15, ptr %74, align 4
  %75 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %61, i32 0, i32 2
  store i32 %31, ptr %75, align 4
  %76 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %61, i32 0, i32 3
  store i32 %41, ptr %76, align 4
  %77 = getelementptr i8, ptr %61, i32 36
  %78 = load ptr, ptr %1, align 4
  %79 = icmp eq ptr %78, null
  %80 = select i1 %79, ptr @.str.13, ptr %78
  %81 = call ptr @strcpy(ptr noundef %77, ptr noundef nonnull %80)
  %82 = and i32 %29, 65535
  %83 = getelementptr i8, ptr %61, i32 %82
  %84 = load ptr, ptr %16, align 4
  %85 = getelementptr inbounds %struct.device, ptr %84, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %63
  %89 = load ptr, ptr %84, align 4
  %90 = icmp eq ptr %89, null
  %91 = select i1 %90, ptr @.str.13, ptr %89
  br label %92

92:                                               ; preds = %88, %63
  %93 = phi ptr [ %86, %63 ], [ %91, %88 ]
  %94 = call ptr @strcpy(ptr noundef %83, ptr noundef nonnull %93)
  %95 = load i32, ptr %76, align 4
  %96 = and i32 %95, 65535
  %97 = getelementptr i8, ptr %61, i32 %96
  %98 = load ptr, ptr %32, align 4
  %99 = icmp eq ptr %98, null
  %100 = select i1 %99, ptr @.str.13, ptr %98
  %101 = call ptr @strcpy(ptr noundef %97, ptr noundef nonnull %100)
  %102 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %61, i32 0, i32 4
  store i32 %4, ptr %102, align 4
  %103 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %61, i32 0, i32 5
  store i32 %5, ptr %103, align 4
  %104 = getelementptr inbounds %struct.icc_node, ptr %2, i32 0, i32 10
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %61, i32 0, i32 6
  store i32 %105, ptr %106, align 4
  %107 = getelementptr inbounds %struct.icc_node, ptr %2, i32 0, i32 11
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %61, i32 0, i32 7
  store i32 %108, ptr %109, align 4
  %110 = load i32, ptr %8, align 4
  %111 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %61, i32 noundef %60, i32 noundef %110, ptr noundef %0, i64 noundef 1, ptr noundef %111, ptr noundef %49, ptr noundef null) #16
  br label %112

112:                                              ; preds = %92, %56, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_icc_set_bw_end(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %13, label %63, label %14

14:                                               ; preds = %12, %9, %3
  %15 = load ptr, ptr %1, align 4
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str.13, ptr %15
  %18 = tail call i32 @strlen(ptr noundef nonnull %17) #16
  %19 = shl i32 %18, 16
  %20 = add i32 %19, 65536
  %21 = or i32 %20, 20
  %22 = getelementptr inbounds %struct.icc_path, ptr %1, i32 2, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = load ptr, ptr %23, align 4
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, ptr @.str.13, ptr %28
  br label %31

31:                                               ; preds = %27, %14
  %32 = phi ptr [ %25, %14 ], [ %30, %27 ]
  %33 = tail call i32 @strlen(ptr noundef nonnull %32) #16
  %34 = add i32 %33, 1
  %35 = add i32 %18, 21
  %36 = add i32 %35, %34
  %37 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %36) #16
  %38 = icmp eq ptr %37, null
  br i1 %38, label %63, label %39

39:                                               ; preds = %31
  %40 = shl i32 %34, 16
  %41 = or i32 %40, %35
  %42 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw_end, ptr %37, i32 0, i32 1
  store i32 %21, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw_end, ptr %37, i32 0, i32 2
  store i32 %41, ptr %43, align 4
  %44 = getelementptr i8, ptr %37, i32 20
  %45 = load ptr, ptr %1, align 4
  %46 = icmp eq ptr %45, null
  %47 = select i1 %46, ptr @.str.13, ptr %45
  %48 = call ptr @strcpy(ptr noundef %44, ptr noundef nonnull %47)
  %49 = and i32 %35, 65535
  %50 = getelementptr i8, ptr %37, i32 %49
  %51 = load ptr, ptr %22, align 4
  %52 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %39
  %56 = load ptr, ptr %51, align 4
  %57 = icmp eq ptr %56, null
  %58 = select i1 %57, ptr @.str.13, ptr %56
  br label %59

59:                                               ; preds = %55, %39
  %60 = phi ptr [ %53, %39 ], [ %58, %55 ]
  %61 = call ptr @strcpy(ptr noundef %50, ptr noundef nonnull %60)
  %62 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw_end, ptr %37, i32 0, i32 3
  store i32 %2, ptr %62, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %63

63:                                               ; preds = %59, %31, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_icc_set_bw_end(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @.str.13, ptr %6
  %9 = tail call i32 @strlen(ptr noundef nonnull %8) #16
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65536
  %12 = or i32 %11, 20
  %13 = getelementptr inbounds %struct.icc_path, ptr %1, i32 2, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr @.str.13, ptr %19
  br label %22

22:                                               ; preds = %18, %3
  %23 = phi ptr [ %16, %3 ], [ %21, %18 ]
  %24 = tail call i32 @strlen(ptr noundef nonnull %23) #16
  %25 = add i32 %24, 1
  %26 = add i32 %9, 21
  %27 = shl i32 %25, 16
  %28 = or i32 %27, %26
  %29 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %30 = load ptr, ptr %29, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %33) #11, !srcloc !12
  %35 = add i32 %34, %31
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %22
  %41 = load volatile ptr, ptr %36, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %84, label %43

43:                                               ; preds = %40, %22
  %44 = add i32 %9, 32
  %45 = add i32 %44, %25
  %46 = and i32 %45, -8
  %47 = add i32 %46, -4
  %48 = call ptr @perf_trace_buf_alloc(i32 noundef %47, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %49 = icmp eq ptr %48, null
  br i1 %49, label %84, label %50

50:                                               ; preds = %43
  %51 = load ptr, ptr %4, align 4
  %52 = call ptr @llvm.returnaddress(i32 0) #16
  %53 = ptrtoint ptr %52 to i32
  %54 = getelementptr [18 x i32], ptr %51, i32 0, i32 15
  store i32 %53, ptr %54, align 4
  %55 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %56 = ptrtoint ptr %55 to i32
  %57 = getelementptr [18 x i32], ptr %51, i32 0, i32 11
  store i32 %56, ptr %57, align 4
  %58 = call i32 @llvm.read_register.i32(metadata !0) #16
  %59 = getelementptr [18 x i32], ptr %51, i32 0, i32 13
  store i32 %58, ptr %59, align 4
  %60 = getelementptr [18 x i32], ptr %51, i32 0, i32 16
  store i32 19, ptr %60, align 4
  %61 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw_end, ptr %48, i32 0, i32 1
  store i32 %12, ptr %61, align 4
  %62 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw_end, ptr %48, i32 0, i32 2
  store i32 %28, ptr %62, align 4
  %63 = getelementptr i8, ptr %48, i32 20
  %64 = load ptr, ptr %1, align 4
  %65 = icmp eq ptr %64, null
  %66 = select i1 %65, ptr @.str.13, ptr %64
  %67 = call ptr @strcpy(ptr noundef %63, ptr noundef nonnull %66)
  %68 = and i32 %26, 65535
  %69 = getelementptr i8, ptr %48, i32 %68
  %70 = load ptr, ptr %13, align 4
  %71 = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %50
  %75 = load ptr, ptr %70, align 4
  %76 = icmp eq ptr %75, null
  %77 = select i1 %76, ptr @.str.13, ptr %75
  br label %78

78:                                               ; preds = %74, %50
  %79 = phi ptr [ %72, %50 ], [ %77, %74 ]
  %80 = call ptr @strcpy(ptr noundef %69, ptr noundef nonnull %79)
  %81 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw_end, ptr %48, i32 0, i32 3
  store i32 %2, ptr %81, align 4
  %82 = load i32, ptr %5, align 4
  %83 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %48, i32 noundef %47, i32 noundef %82, ptr noundef %0, i64 noundef 1, ptr noundef %83, ptr noundef %36, ptr noundef null) #16
  br label %84

84:                                               ; preds = %78, %43, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @icc_std_aggregate(ptr nocapture readnone %0, i32 %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) #3 {
  %7 = load i32, ptr %4, align 4
  %8 = add i32 %7, %2
  store i32 %8, ptr %4, align 4
  %9 = load i32, ptr %5, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 %3)
  store i32 %10, ptr %5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_icc_xlate_onecell(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.of_icc_xlate_onecell, i32 noundef %4) #17
  br label %12

9:                                                ; preds = %2
  %10 = getelementptr %struct.icc_onecell_data, ptr %1, i32 0, i32 1, i32 %4
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ inttoptr (i32 -22 to ptr), %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_icc_get_from_provider(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %4 = load ptr, ptr @icc_providers, align 4
  %5 = icmp eq ptr %4, @icc_providers
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  br label %51

7:                                                ; preds = %35, %3
  %8 = phi ptr [ %38, %35 ], [ %4, %3 ]
  %9 = phi ptr [ %37, %35 ], [ inttoptr (i32 -517 to ptr), %3 ]
  %10 = phi ptr [ %36, %35 ], [ null, %3 ]
  %11 = getelementptr inbounds %struct.icc_provider, ptr %8, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %0, align 4
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.icc_provider, ptr %8, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.icc_provider, ptr %8, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr %19(ptr noundef nonnull %0, ptr noundef %23) #16
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %24, align 4
  br label %40

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.icc_provider, ptr %8, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.icc_provider, ptr %8, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = tail call ptr %30(ptr noundef nonnull %0, ptr noundef %32) #16
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %40

35:                                               ; preds = %28, %21, %7
  %36 = phi ptr [ %24, %21 ], [ %10, %28 ], [ %10, %7 ]
  %37 = phi ptr [ %9, %21 ], [ %33, %28 ], [ %9, %7 ]
  %38 = load ptr, ptr %8, align 4
  %39 = icmp eq ptr %38, @icc_providers
  br i1 %39, label %40, label %7

40:                                               ; preds = %35, %28, %26
  %41 = phi ptr [ %24, %26 ], [ %36, %35 ], [ %10, %28 ]
  %42 = phi ptr [ %27, %26 ], [ %37, %35 ], [ %33, %28 ]
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = icmp eq ptr %41, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %48 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 8) #18
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store ptr %42, ptr %48, align 8
  br label %51

51:                                               ; preds = %50, %46, %44, %40, %6, %1
  %52 = phi ptr [ %41, %44 ], [ %48, %50 ], [ inttoptr (i32 -22 to ptr), %1 ], [ %42, %40 ], [ inttoptr (i32 -12 to ptr), %46 ], [ inttoptr (i32 -517 to ptr), %6 ]
  ret ptr %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_of_icc_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_icc_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @of_find_property(ptr noundef nonnull %9, ptr noundef nonnull @.str.2, ptr noundef null) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %11
  %15 = icmp eq ptr %1, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = tail call i32 @of_property_match_string(ptr noundef nonnull %9, ptr noundef nonnull @.str.8, ptr noundef nonnull %1) #16
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = inttoptr i32 %17 to ptr
  br label %24

21:                                               ; preds = %16, %14
  %22 = phi i32 [ %17, %16 ], [ 0, %14 ]
  %23 = tail call ptr @of_icc_get_by_index(ptr noundef nonnull %0, i32 noundef %22) #16
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi ptr [ %20, %19 ], [ %23, %21 ]
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %29, label %27

27:                                               ; preds = %24, %11
  %28 = phi ptr [ %25, %24 ], [ null, %11 ]
  store ptr %28, ptr %3, align 4
  tail call void @devres_add(ptr noundef nonnull %0, ptr noundef nonnull %3) #16
  br label %31

29:                                               ; preds = %24, %7, %5
  %30 = phi ptr [ %25, %24 ], [ inttoptr (i32 -19 to ptr), %7 ], [ inttoptr (i32 -19 to ptr), %5 ]
  tail call void @devres_free(ptr noundef nonnull %3) #16
  br label %31

31:                                               ; preds = %29, %27, %2
  %32 = phi ptr [ %30, %29 ], [ %28, %27 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_icc_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @icc_put(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_icc_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @of_find_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef null) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = icmp eq ptr %1, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = tail call i32 @of_property_match_string(ptr noundef nonnull %6, ptr noundef nonnull @.str.8, ptr noundef nonnull %1) #16
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = inttoptr i32 %14 to ptr
  br label %21

18:                                               ; preds = %13, %11
  %19 = phi i32 [ %14, %13 ], [ 0, %11 ]
  %20 = tail call ptr @of_icc_get_by_index(ptr noundef nonnull %0, i32 noundef %19)
  br label %21

21:                                               ; preds = %18, %16, %8, %4, %2
  %22 = phi ptr [ %17, %16 ], [ %20, %18 ], [ null, %8 ], [ inttoptr (i32 -19 to ptr), %4 ], [ inttoptr (i32 -19 to ptr), %2 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_icc_get_by_index(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false), !annotation !9
  %5 = icmp eq ptr %0, null
  br i1 %5, label %67, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %67, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @of_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef null) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %67, label %13

13:                                               ; preds = %10
  %14 = shl i32 %1, 1
  %15 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef -1, i32 noundef %14, ptr noundef nonnull %3) #16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = inttoptr i32 %15 to ptr
  br label %67

19:                                               ; preds = %13
  %20 = load ptr, ptr %3, align 4
  call void @of_node_put(ptr noundef %20) #16
  %21 = or i32 %14, 1
  %22 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef -1, i32 noundef %21, ptr noundef nonnull %4) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = inttoptr i32 %22 to ptr
  br label %67

26:                                               ; preds = %19
  %27 = load ptr, ptr %4, align 4
  call void @of_node_put(ptr noundef %27) #16
  %28 = call ptr @of_icc_get_from_provider(ptr noundef nonnull %3)
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = ptrtoint ptr %28 to i32
  %32 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef nonnull %0, i32 noundef %31, ptr noundef nonnull @.str.4) #16
  br label %67

33:                                               ; preds = %26
  %34 = call ptr @of_icc_get_from_provider(ptr noundef nonnull %4)
  %35 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = ptrtoint ptr %34 to i32
  %38 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef nonnull %0, i32 noundef %37, ptr noundef nonnull @.str.5) #16
  call void @kfree(ptr noundef %28) #16
  br label %67

39:                                               ; preds = %33
  call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %40 = load ptr, ptr %28, align 4
  %41 = load ptr, ptr %34, align 4
  %42 = call fastcc ptr @path_find(ptr noundef nonnull %0, ptr noundef %40, ptr noundef %41)
  call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = ptrtoint ptr %42 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.of_icc_get_by_index, i32 noundef %45) #17
  br label %65

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.icc_node_data, ptr %28, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.icc_node_data, ptr %34, i32 0, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %48, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  call void @icc_set_tag(ptr noundef %42, i32 noundef %48)
  br label %55

55:                                               ; preds = %54, %50, %46
  %56 = load ptr, ptr %28, align 4
  %57 = getelementptr inbounds %struct.icc_node, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %34, align 4
  %60 = getelementptr inbounds %struct.icc_node, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef %58, ptr noundef %61) #16
  store ptr %62, ptr %42, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  call void @kfree(ptr noundef %42) #16
  br label %65

65:                                               ; preds = %64, %55, %44
  %66 = phi ptr [ %42, %44 ], [ %42, %55 ], [ inttoptr (i32 -12 to ptr), %64 ]
  call void @kfree(ptr noundef %28) #16
  call void @kfree(ptr noundef %34) #16
  br label %67

67:                                               ; preds = %65, %36, %30, %24, %17, %10, %6, %2
  %68 = phi ptr [ %18, %17 ], [ %25, %24 ], [ %28, %30 ], [ %34, %36 ], [ %66, %65 ], [ null, %10 ], [ inttoptr (i32 -19 to ptr), %6 ], [ inttoptr (i32 -19 to ptr), %2 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #16
  ret ptr %68
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @path_find(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = alloca %struct.list_head, align 8
  %6 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  store volatile ptr %4, ptr %4, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store volatile ptr %5, ptr %5, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %5, ptr %8, align 4
  store volatile ptr %6, ptr %6, align 8
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %6, ptr %9, align 4
  %10 = getelementptr inbounds %struct.icc_node, ptr %1, i32 0, i32 6
  store ptr %10, ptr %7, align 4
  store ptr %4, ptr %10, align 4
  %11 = getelementptr inbounds %struct.icc_node, ptr %1, i32 0, i32 6, i32 1
  store ptr %4, ptr %11, align 4
  store volatile ptr %10, ptr %4, align 8
  %12 = getelementptr inbounds %struct.icc_node, ptr %1, i32 0, i32 7
  store ptr null, ptr %12, align 4
  br label %13

13:                                               ; preds = %83, %3
  %14 = phi ptr [ %10, %3 ], [ %85, %83 ]
  %15 = phi i32 [ 1, %3 ], [ %84, %83 ]
  %16 = icmp eq ptr %14, %4
  br i1 %16, label %69, label %19

17:                                               ; preds = %65, %24
  %18 = icmp eq ptr %22, %4
  br i1 %18, label %69, label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %22, %17 ], [ %14, %13 ]
  %21 = getelementptr i8, ptr %20, i32 -28
  %22 = load ptr, ptr %20, align 4
  %23 = icmp eq ptr %21, %2
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %20, i32 -16
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %17, label %28

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %20, i32 -20
  br label %46

30:                                               ; preds = %19
  %31 = load volatile ptr, ptr %5, align 8
  %32 = icmp eq ptr %31, %5
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %6, align 8
  %35 = load ptr, ptr %8, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %6, ptr %36, align 4
  store ptr %31, ptr %6, align 8
  store ptr %34, ptr %35, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %35, ptr %37, align 4
  store volatile ptr %5, ptr %5, align 8
  store ptr %5, ptr %8, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = load volatile ptr, ptr %4, align 8
  %40 = icmp eq ptr %39, %4
  br i1 %40, label %87, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %6, align 8
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %6, ptr %44, align 4
  store ptr %39, ptr %6, align 8
  store ptr %42, ptr %43, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  store volatile ptr %4, ptr %4, align 8
  store ptr %4, ptr %7, align 4
  br label %87

46:                                               ; preds = %65, %28
  %47 = phi i32 [ %26, %28 ], [ %66, %65 ]
  %48 = phi i32 [ 0, %28 ], [ %67, %65 ]
  %49 = load ptr, ptr %29, align 4
  %50 = getelementptr ptr, ptr %49, i32 %48
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %87, label %53

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.icc_node, ptr %51, i32 0, i32 8
  %55 = load i8, ptr %54, align 4
  %56 = and i8 %55, 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = or i8 %55, 1
  store i8 %59, ptr %54, align 4
  %60 = getelementptr inbounds %struct.icc_node, ptr %51, i32 0, i32 7
  store ptr %21, ptr %60, align 4
  %61 = getelementptr inbounds %struct.icc_node, ptr %51, i32 0, i32 6
  %62 = load ptr, ptr %8, align 4
  store ptr %61, ptr %8, align 4
  store ptr %5, ptr %61, align 4
  %63 = getelementptr inbounds %struct.icc_node, ptr %51, i32 0, i32 6, i32 1
  store ptr %62, ptr %63, align 4
  store volatile ptr %61, ptr %62, align 4
  %64 = load i32, ptr %25, align 4
  br label %65

65:                                               ; preds = %58, %53
  %66 = phi i32 [ %64, %58 ], [ %47, %53 ]
  %67 = add nuw i32 %48, 1
  %68 = icmp ult i32 %67, %66
  br i1 %68, label %46, label %17

69:                                               ; preds = %17, %13
  %70 = load volatile ptr, ptr %4, align 8
  %71 = icmp eq ptr %70, %4
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %6, align 8
  %74 = load ptr, ptr %7, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  store ptr %6, ptr %75, align 4
  store ptr %70, ptr %6, align 8
  store ptr %73, ptr %74, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  store ptr %74, ptr %76, align 4
  store volatile ptr %4, ptr %4, align 8
  store ptr %4, ptr %7, align 4
  br label %77

77:                                               ; preds = %72, %69
  %78 = load volatile ptr, ptr %5, align 8
  %79 = icmp eq ptr %78, %5
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %8, align 4
  %82 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  store ptr %4, ptr %82, align 4
  store ptr %78, ptr %4, align 8
  store ptr %4, ptr %81, align 4
  store ptr %81, ptr %7, align 4
  store volatile ptr %5, ptr %5, align 8
  store ptr %5, ptr %8, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = add i32 %15, 1
  %85 = load volatile ptr, ptr %4, align 8
  %86 = icmp eq ptr %85, %4
  br i1 %86, label %87, label %13

87:                                               ; preds = %83, %46, %41, %38
  %88 = phi i1 [ true, %38 ], [ true, %41 ], [ false, %46 ], [ false, %83 ]
  %89 = phi i32 [ %15, %38 ], [ %15, %41 ], [ %15, %46 ], [ %84, %83 ]
  %90 = phi ptr [ inttoptr (i32 -517 to ptr), %38 ], [ inttoptr (i32 -517 to ptr), %41 ], [ inttoptr (i32 -2 to ptr), %46 ], [ inttoptr (i32 -517 to ptr), %83 ]
  %91 = load ptr, ptr %9, align 4
  %92 = icmp eq ptr %91, %6
  br i1 %92, label %101, label %93

93:                                               ; preds = %93, %87
  %94 = phi ptr [ %99, %93 ], [ %91, %87 ]
  %95 = getelementptr i8, ptr %94, i32 12
  %96 = load i8, ptr %95, align 4
  %97 = and i8 %96, -2
  store i8 %97, ptr %95, align 4
  %98 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %6
  br i1 %100, label %101, label %93

101:                                              ; preds = %93, %87
  br i1 %88, label %102, label %137

102:                                              ; preds = %101
  %103 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %89, i32 32) #16
  %104 = extractvalue { i32, i1 } %103, 1
  %105 = extractvalue { i32, i1 } %103, 0
  %106 = or i32 %105, 8
  %107 = select i1 %104, i32 -1, i32 %106
  %108 = call noalias align 64 ptr @__kmalloc(i32 noundef %107, i32 noundef 3520) #19
  %109 = icmp eq ptr %108, null
  br i1 %109, label %137, label %110

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.icc_path, ptr %108, i32 0, i32 1
  store i32 %89, ptr %111, align 4
  %112 = add i32 %89, -1
  %113 = icmp sgt i32 %112, -1
  br i1 %113, label %114, label %137

114:                                              ; preds = %128, %110
  %115 = phi i32 [ %135, %128 ], [ %112, %110 ]
  %116 = phi ptr [ %134, %128 ], [ %2, %110 ]
  %117 = getelementptr inbounds %struct.icc_node, ptr %116, i32 0, i32 4
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.icc_provider, ptr %118, i32 0, i32 9
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, 1
  store i32 %121, ptr %119, align 4
  %122 = getelementptr %struct.icc_path, ptr %108, i32 0, i32 2, i32 %115
  %123 = getelementptr inbounds %struct.icc_node, ptr %116, i32 0, i32 9
  %124 = load ptr, ptr %123, align 4
  store volatile ptr %124, ptr %122, align 8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %114
  %127 = getelementptr inbounds %struct.hlist_node, ptr %124, i32 0, i32 1
  store volatile ptr %122, ptr %127, align 4
  br label %128

128:                                              ; preds = %126, %114
  store volatile ptr %122, ptr %123, align 4
  %129 = getelementptr inbounds %struct.hlist_node, ptr %122, i32 0, i32 1
  store volatile ptr %123, ptr %129, align 4
  %130 = getelementptr %struct.icc_path, ptr %108, i32 0, i32 2, i32 %115, i32 1
  store ptr %116, ptr %130, align 16
  %131 = getelementptr %struct.icc_path, ptr %108, i32 0, i32 2, i32 %115, i32 2
  store ptr %0, ptr %131, align 4
  %132 = getelementptr %struct.icc_path, ptr %108, i32 0, i32 2, i32 %115, i32 3
  store i8 1, ptr %132, align 8
  %133 = getelementptr inbounds %struct.icc_node, ptr %116, i32 0, i32 7
  %134 = load ptr, ptr %133, align 4
  %135 = add i32 %115, -1
  %136 = icmp sgt i32 %135, -1
  br i1 %136, label %114, label %137

137:                                              ; preds = %128, %110, %102, %101
  %138 = phi ptr [ %90, %101 ], [ inttoptr (i32 -12 to ptr), %102 ], [ %108, %110 ], [ %108, %128 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %138
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @icc_set_tag(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %5 = getelementptr inbounds %struct.icc_path, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %8, %4
  %9 = phi i32 [ %11, %8 ], [ 0, %4 ]
  %10 = getelementptr %struct.icc_path, ptr %0, i32 0, i32 2, i32 %9, i32 4
  store i32 %1, ptr %10, align 4
  %11 = add nuw i32 %9, 1
  %12 = icmp eq i32 %11, %6
  br i1 %12, label %13, label %8

13:                                               ; preds = %8, %4
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  br label %14

14:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @icc_get_name(ptr noundef readonly %0) #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @icc_set_bw(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %251, label %5

5:                                                ; preds = %3
  %6 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.icc_path, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %7, %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 632, i32 noundef 9, ptr noundef null) #16
  br label %251

12:                                               ; preds = %7
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %13 = getelementptr inbounds %struct.icc_path, ptr %0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.icc_path, ptr %0, i32 4, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = load i32, ptr %8, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %224, label %19

19:                                               ; preds = %95, %12
  %20 = phi i32 [ %96, %95 ], [ 0, %12 ]
  %21 = getelementptr %struct.icc_path, ptr %0, i32 0, i32 2, i32 %20, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.icc_path, ptr %0, i32 0, i32 2, i32 %20, i32 5
  store i32 %1, ptr %23, align 4
  %24 = getelementptr %struct.icc_path, ptr %0, i32 0, i32 2, i32 %20, i32 6
  store i32 %2, ptr %24, align 4
  %25 = getelementptr inbounds %struct.icc_node, ptr %22, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.icc_node, ptr %22, i32 0, i32 10
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.icc_node, ptr %22, i32 0, i32 11
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.icc_provider, ptr %26, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  tail call void %30(ptr noundef %22) #16
  br label %33

33:                                               ; preds = %32, %19
  %34 = getelementptr inbounds %struct.icc_node, ptr %22, i32 0, i32 9
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %69, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.icc_provider, ptr %26, i32 0, i32 3
  %39 = getelementptr inbounds %struct.icc_node, ptr %22, i32 0, i32 12
  %40 = getelementptr inbounds %struct.icc_node, ptr %22, i32 0, i32 13
  br label %41

41:                                               ; preds = %66, %37
  %42 = phi ptr [ %35, %37 ], [ %67, %66 ]
  %43 = getelementptr inbounds %struct.icc_req, ptr %42, i32 0, i32 3
  %44 = load i8, ptr %43, align 4, !range !13
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.icc_req, ptr %42, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.icc_req, ptr %42, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = phi i32 [ %50, %46 ], [ 0, %41 ]
  %53 = phi i32 [ %48, %46 ], [ 0, %41 ]
  %54 = load ptr, ptr %38, align 4
  %55 = getelementptr inbounds %struct.icc_req, ptr %42, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = tail call i32 %54(ptr noundef %22, i32 noundef %56, i32 noundef %53, i32 noundef %52, ptr noundef %27, ptr noundef %28) #16
  %58 = load i1, ptr @synced_state, align 1
  br i1 %58, label %66, label %59

59:                                               ; preds = %51
  %60 = load i32, ptr %27, align 4
  %61 = load i32, ptr %39, align 4
  %62 = tail call i32 @llvm.umax.i32(i32 %60, i32 %61) #16
  store i32 %62, ptr %27, align 4
  %63 = load i32, ptr %28, align 4
  %64 = load i32, ptr %40, align 4
  %65 = tail call i32 @llvm.umax.i32(i32 %63, i32 %64) #16
  store i32 %65, ptr %28, align 4
  br label %66

66:                                               ; preds = %59, %51
  %67 = load ptr, ptr %42, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %41

69:                                               ; preds = %66, %33
  %70 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_icc_set_bw, i32 0, i32 1), align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %69
  %73 = tail call ptr @llvm.thread.pointer() #16
  %74 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = lshr i32 %75, 5
  %77 = getelementptr i32, ptr @__cpu_online_mask, i32 %76
  %78 = load volatile i32, ptr %77, align 4
  %79 = and i32 %75, 31
  %80 = shl nuw i32 1, %79
  %81 = and i32 %80, %78
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %95, label %83

83:                                               ; preds = %72
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !14
  %84 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_icc_set_bw, i32 0, i32 7), align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %86, %83
  %87 = phi ptr [ %91, %86 ], [ %84, %83 ]
  %88 = load volatile ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.tracepoint_func, ptr %87, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  tail call void %88(ptr noundef %90, ptr noundef nonnull %0, ptr noundef %22, i32 noundef %20, i32 noundef %1, i32 noundef %2) #16
  %91 = getelementptr %struct.tracepoint_func, ptr %87, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %86

94:                                               ; preds = %86, %83
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !15
  br label %95

95:                                               ; preds = %94, %72, %69
  %96 = add nuw i32 %20, 1
  %97 = load i32, ptr %8, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %19, label %99

99:                                               ; preds = %95
  %100 = icmp eq i32 %97, 0
  br i1 %100, label %137, label %101

101:                                              ; preds = %126, %99
  %102 = phi i32 [ %127, %126 ], [ %97, %99 ]
  %103 = phi i32 [ %129, %126 ], [ 0, %99 ]
  %104 = phi i32 [ %128, %126 ], [ -22, %99 ]
  %105 = phi ptr [ %107, %126 ], [ null, %99 ]
  %106 = getelementptr %struct.icc_path, ptr %0, i32 0, i32 2, i32 %103, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.icc_node, ptr %107, i32 0, i32 4
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %105, null
  br i1 %110, label %126, label %111

111:                                              ; preds = %101
  %112 = getelementptr inbounds %struct.icc_node, ptr %105, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %109, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.icc_provider, ptr %109, i32 0, i32 10
  %117 = load i8, ptr %116, align 4, !range !13
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %115, %111
  %120 = getelementptr inbounds %struct.icc_provider, ptr %109, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  %122 = tail call i32 %121(ptr noundef nonnull %105, ptr noundef %107) #16
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load i32, ptr %8, align 4
  br label %126

126:                                              ; preds = %124, %115, %101
  %127 = phi i32 [ %102, %115 ], [ %102, %101 ], [ %125, %124 ]
  %128 = phi i32 [ %104, %115 ], [ %104, %101 ], [ 0, %124 ]
  %129 = add nuw i32 %103, 1
  %130 = icmp ult i32 %129, %127
  br i1 %130, label %101, label %131

131:                                              ; preds = %126
  %132 = icmp eq i32 %128, 0
  br i1 %132, label %224, label %133

133:                                              ; preds = %131, %119
  %134 = phi i32 [ %128, %131 ], [ %122, %119 ]
  %135 = load i32, ptr %8, align 4
  %136 = icmp eq i32 %135, 0
  br label %137

137:                                              ; preds = %133, %99
  %138 = phi i1 [ %136, %133 ], [ true, %99 ]
  %139 = phi i32 [ %134, %133 ], [ -22, %99 ]
  br i1 %138, label %224, label %140

140:                                              ; preds = %190, %137
  %141 = phi i32 [ %191, %190 ], [ 0, %137 ]
  %142 = getelementptr %struct.icc_path, ptr %0, i32 0, i32 2, i32 %141, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr %struct.icc_path, ptr %0, i32 0, i32 2, i32 %141, i32 5
  store i32 %14, ptr %144, align 4
  %145 = getelementptr %struct.icc_path, ptr %0, i32 0, i32 2, i32 %141, i32 6
  store i32 %16, ptr %145, align 4
  %146 = getelementptr inbounds %struct.icc_node, ptr %143, i32 0, i32 4
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.icc_node, ptr %143, i32 0, i32 10
  store i32 0, ptr %148, align 4
  %149 = getelementptr inbounds %struct.icc_node, ptr %143, i32 0, i32 11
  store i32 0, ptr %149, align 4
  %150 = getelementptr inbounds %struct.icc_provider, ptr %147, i32 0, i32 4
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %140
  tail call void %151(ptr noundef %143) #16
  br label %154

154:                                              ; preds = %153, %140
  %155 = getelementptr inbounds %struct.icc_node, ptr %143, i32 0, i32 9
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %190, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.icc_provider, ptr %147, i32 0, i32 3
  %160 = getelementptr inbounds %struct.icc_node, ptr %143, i32 0, i32 12
  %161 = getelementptr inbounds %struct.icc_node, ptr %143, i32 0, i32 13
  br label %162

162:                                              ; preds = %187, %158
  %163 = phi ptr [ %156, %158 ], [ %188, %187 ]
  %164 = getelementptr inbounds %struct.icc_req, ptr %163, i32 0, i32 3
  %165 = load i8, ptr %164, align 4, !range !13
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.icc_req, ptr %163, i32 0, i32 5
  %169 = load i32, ptr %168, align 4
  %170 = getelementptr inbounds %struct.icc_req, ptr %163, i32 0, i32 6
  %171 = load i32, ptr %170, align 4
  br label %172

172:                                              ; preds = %167, %162
  %173 = phi i32 [ %171, %167 ], [ 0, %162 ]
  %174 = phi i32 [ %169, %167 ], [ 0, %162 ]
  %175 = load ptr, ptr %159, align 4
  %176 = getelementptr inbounds %struct.icc_req, ptr %163, i32 0, i32 4
  %177 = load i32, ptr %176, align 4
  %178 = tail call i32 %175(ptr noundef %143, i32 noundef %177, i32 noundef %174, i32 noundef %173, ptr noundef %148, ptr noundef %149) #16
  %179 = load i1, ptr @synced_state, align 1
  br i1 %179, label %187, label %180

180:                                              ; preds = %172
  %181 = load i32, ptr %148, align 4
  %182 = load i32, ptr %160, align 4
  %183 = tail call i32 @llvm.umax.i32(i32 %181, i32 %182) #16
  store i32 %183, ptr %148, align 4
  %184 = load i32, ptr %149, align 4
  %185 = load i32, ptr %161, align 4
  %186 = tail call i32 @llvm.umax.i32(i32 %184, i32 %185) #16
  store i32 %186, ptr %149, align 4
  br label %187

187:                                              ; preds = %180, %172
  %188 = load ptr, ptr %163, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %162

190:                                              ; preds = %187, %154
  %191 = add nuw i32 %141, 1
  %192 = load i32, ptr %8, align 4
  %193 = icmp ult i32 %191, %192
  br i1 %193, label %140, label %194

194:                                              ; preds = %190
  %195 = icmp eq i32 %192, 0
  br i1 %195, label %224, label %196

196:                                              ; preds = %220, %194
  %197 = phi i32 [ %221, %220 ], [ %192, %194 ]
  %198 = phi i32 [ %222, %220 ], [ 0, %194 ]
  %199 = phi ptr [ %201, %220 ], [ null, %194 ]
  %200 = getelementptr %struct.icc_path, ptr %0, i32 0, i32 2, i32 %198, i32 1
  %201 = load ptr, ptr %200, align 4
  %202 = getelementptr inbounds %struct.icc_node, ptr %201, i32 0, i32 4
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %199, null
  br i1 %204, label %220, label %205

205:                                              ; preds = %196
  %206 = getelementptr inbounds %struct.icc_node, ptr %199, i32 0, i32 4
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %203, %207
  br i1 %208, label %213, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.icc_provider, ptr %203, i32 0, i32 10
  %211 = load i8, ptr %210, align 4, !range !13
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %209, %205
  %214 = getelementptr inbounds %struct.icc_provider, ptr %203, i32 0, i32 2
  %215 = load ptr, ptr %214, align 4
  %216 = tail call i32 %215(ptr noundef nonnull %199, ptr noundef %201) #16
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load i32, ptr %8, align 4
  br label %220

220:                                              ; preds = %218, %209, %196
  %221 = phi i32 [ %197, %209 ], [ %197, %196 ], [ %219, %218 ]
  %222 = add nuw i32 %198, 1
  %223 = icmp ult i32 %222, %221
  br i1 %223, label %196, label %224

224:                                              ; preds = %220, %213, %194, %137, %131, %12
  %225 = phi i32 [ %139, %194 ], [ 0, %131 ], [ %139, %137 ], [ -22, %12 ], [ %139, %213 ], [ %139, %220 ]
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  %226 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_icc_set_bw_end, i32 0, i32 1), align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %251

228:                                              ; preds = %224
  %229 = tail call ptr @llvm.thread.pointer() #16
  %230 = getelementptr inbounds %struct.thread_info, ptr %229, i32 0, i32 2
  %231 = load i32, ptr %230, align 8
  %232 = lshr i32 %231, 5
  %233 = getelementptr i32, ptr @__cpu_online_mask, i32 %232
  %234 = load volatile i32, ptr %233, align 4
  %235 = and i32 %231, 31
  %236 = shl nuw i32 1, %235
  %237 = and i32 %236, %234
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %251, label %239

239:                                              ; preds = %228
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %240 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_icc_set_bw_end, i32 0, i32 7), align 4
  %241 = icmp eq ptr %240, null
  br i1 %241, label %250, label %242

242:                                              ; preds = %242, %239
  %243 = phi ptr [ %247, %242 ], [ %240, %239 ]
  %244 = load volatile ptr, ptr %243, align 4
  %245 = getelementptr inbounds %struct.tracepoint_func, ptr %243, i32 0, i32 1
  %246 = load ptr, ptr %245, align 4
  tail call void %244(ptr noundef %246, ptr noundef nonnull %0, i32 noundef %225) #16
  %247 = getelementptr %struct.tracepoint_func, ptr %243, i32 1
  %248 = load ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %242

250:                                              ; preds = %242, %239
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  br label %251

251:                                              ; preds = %250, %228, %224, %11, %3
  %252 = phi i32 [ -22, %11 ], [ 0, %3 ], [ %225, %224 ], [ %225, %228 ], [ %225, %250 ]
  ret i32 %252
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @icc_enable(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.icc_path, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 682, i32 noundef 9, ptr noundef null) #16
  br label %24

10:                                               ; preds = %5
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %11 = load i32, ptr %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %13, %10
  %14 = phi i32 [ %16, %13 ], [ 0, %10 ]
  %15 = getelementptr %struct.icc_path, ptr %0, i32 0, i32 2, i32 %14, i32 3
  store i8 1, ptr %15, align 4
  %16 = add nuw i32 %14, 1
  %17 = icmp eq i32 %16, %11
  br i1 %17, label %18, label %13

18:                                               ; preds = %13, %10
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  %19 = getelementptr inbounds %struct.icc_path, ptr %0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.icc_path, ptr %0, i32 4, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @icc_set_bw(ptr noundef nonnull %0, i32 noundef %20, i32 noundef %22) #16
  br label %24

24:                                               ; preds = %18, %9, %1
  %25 = phi i32 [ -22, %9 ], [ %23, %18 ], [ 0, %1 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @icc_disable(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.icc_path, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10, !prof !11

9:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 682, i32 noundef 9, ptr noundef null) #16
  br label %24

10:                                               ; preds = %5
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %11 = load i32, ptr %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %13, %10
  %14 = phi i32 [ %16, %13 ], [ 0, %10 ]
  %15 = getelementptr %struct.icc_path, ptr %0, i32 0, i32 2, i32 %14, i32 3
  store i8 0, ptr %15, align 4
  %16 = add nuw i32 %14, 1
  %17 = icmp eq i32 %16, %11
  br i1 %17, label %18, label %13

18:                                               ; preds = %13, %10
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  %19 = getelementptr inbounds %struct.icc_path, ptr %0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.icc_path, ptr %0, i32 4, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @icc_set_bw(ptr noundef nonnull %0, i32 noundef %20, i32 noundef %22) #16
  br label %24

24:                                               ; preds = %18, %9, %1
  %25 = phi i32 [ -22, %9 ], [ %23, %18 ], [ 0, %1 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @icc_get(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %4 = tail call ptr @idr_find(ptr noundef nonnull @icc_idr, i32 noundef %1) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @idr_find(ptr noundef nonnull @icc_idr, i32 noundef %2) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @path_find(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %7)
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = ptrtoint ptr %10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.icc_get, i32 noundef %13) #17
  br label %22

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.icc_node, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.icc_node, ptr %7, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef %16, ptr noundef %18) #16
  store ptr %19, ptr %10, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  tail call void @kfree(ptr noundef %10) #16
  br label %22

22:                                               ; preds = %21, %14, %12, %6, %3
  %23 = phi ptr [ %10, %12 ], [ %10, %14 ], [ inttoptr (i32 -12 to ptr), %21 ], [ inttoptr (i32 -517 to ptr), %6 ], [ inttoptr (i32 -517 to ptr), %3 ]
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @icc_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 769, i32 noundef 9, ptr noundef null) #16
  br label %41

6:                                                ; preds = %3
  %7 = tail call i32 @icc_set_bw(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.icc_put, i32 noundef %7) #17
  br label %11

11:                                               ; preds = %9, %6
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %12 = getelementptr inbounds %struct.icc_path, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %35, %11
  %16 = phi i32 [ %36, %35 ], [ 0, %11 ]
  %17 = getelementptr %struct.icc_path, ptr %0, i32 0, i32 2, i32 %16
  %18 = getelementptr %struct.icc_path, ptr %0, i32 0, i32 2, i32 %16, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  store volatile ptr %20, ptr %22, align 4
  %23 = icmp eq ptr %20, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  store volatile ptr %22, ptr %25, align 4
  br label %26

26:                                               ; preds = %24, %15
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  %27 = getelementptr inbounds %struct.icc_node, ptr %19, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.icc_provider, ptr %28, i32 0, i32 9
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33, !prof !11

32:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 780, i32 noundef 9, ptr noundef null) #16
  br label %35

33:                                               ; preds = %26
  %34 = add i32 %30, -1
  store i32 %34, ptr %29, align 4
  br label %35

35:                                               ; preds = %33, %32
  %36 = add nuw i32 %16, 1
  %37 = load i32, ptr %12, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %15, label %39

39:                                               ; preds = %35, %11
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  %40 = load ptr, ptr %0, align 4
  tail call void @kfree_const(ptr noundef %40) #16
  tail call void @kfree(ptr noundef nonnull %0) #16
  br label %41

41:                                               ; preds = %39, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @icc_node_create(i32 noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %2 = tail call fastcc ptr @icc_node_create_nolock(i32 noundef %0)
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @icc_node_create_nolock(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @idr_find(ptr noundef nonnull @icc_idr, i32 noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 68) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = add i32 %0, 1
  %10 = tail call i32 @idr_alloc(ptr noundef nonnull @icc_idr, ptr noundef nonnull %6, i32 noundef %0, i32 noundef %9, i32 noundef 3264) #16
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 805, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.icc_node_create_nolock) #16
  tail call void @kfree(ptr noundef nonnull %6) #16
  %13 = inttoptr i32 %10 to ptr
  br label %15

14:                                               ; preds = %8
  store i32 %10, ptr %6, align 8
  br label %15

15:                                               ; preds = %14, %12, %4, %1
  %16 = phi ptr [ %13, %12 ], [ %6, %14 ], [ %2, %1 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @icc_node_destroy(i32 noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %2 = tail call ptr @idr_find(ptr noundef nonnull @icc_idr, i32 noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 4
  %6 = tail call ptr @idr_remove(ptr noundef nonnull @icc_idr, i32 noundef %5) #16
  %7 = getelementptr inbounds %struct.icc_node, ptr %2, i32 0, i32 9
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !10

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 848, i32 noundef 9, ptr noundef null) #16
  br label %11

11:                                               ; preds = %10, %4, %1
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  tail call void @kfree(ptr noundef %2) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @icc_link_create(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %7 = tail call ptr @idr_find(ptr noundef nonnull @icc_idr, i32 noundef %1) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @icc_node_create_nolock(i32 noundef %1)
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = ptrtoint ptr %10 to i32
  br label %28

14:                                               ; preds = %9, %6
  %15 = phi ptr [ %7, %6 ], [ %10, %9 ]
  %16 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 2
  %21 = add i32 %20, 4
  %22 = tail call noalias ptr @krealloc(ptr noundef %17, i32 noundef %21, i32 noundef 3264) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  store ptr %22, ptr %16, align 4
  %25 = load i32, ptr %18, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %18, align 4
  %27 = getelementptr ptr, ptr %22, i32 %25
  store ptr %15, ptr %27, align 4
  br label %28

28:                                               ; preds = %24, %14, %12
  %29 = phi i32 [ 0, %24 ], [ %13, %12 ], [ -12, %14 ]
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  br label %30

30:                                               ; preds = %28, %2
  %31 = phi i32 [ %29, %28 ], [ -22, %2 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @icc_link_destroy(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %1, null
  %8 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %44, label %10

10:                                               ; preds = %6
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %11 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %22, %14
  %18 = phi i32 [ 0, %14 ], [ %23, %22 ]
  %19 = getelementptr ptr, ptr %16, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = add nuw i32 %18, 1
  %24 = icmp eq i32 %23, %12
  br i1 %24, label %28, label %17

25:                                               ; preds = %17, %10
  %26 = phi i32 [ 0, %10 ], [ %18, %17 ]
  %27 = icmp eq i32 %26, %12
  br i1 %27, label %28, label %29, !prof !11

28:                                               ; preds = %25, %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 934, i32 noundef 9, ptr noundef null) #16
  br label %42

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = add i32 %12, -1
  store i32 %32, ptr %11, align 4
  %33 = getelementptr ptr, ptr %31, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr ptr, ptr %31, i32 %26
  store ptr %34, ptr %35, align 4
  %36 = load ptr, ptr %30, align 4
  %37 = load i32, ptr %11, align 4
  %38 = shl i32 %37, 2
  %39 = tail call noalias ptr @krealloc(ptr noundef %36, i32 noundef %38, i32 noundef 3264) #20
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %29
  store ptr %39, ptr %30, align 4
  br label %42

42:                                               ; preds = %41, %29, %28
  %43 = phi i32 [ -6, %28 ], [ 0, %41 ], [ -12, %29 ]
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  br label %44

44:                                               ; preds = %42, %6, %2
  %45 = phi i32 [ %43, %42 ], [ -22, %2 ], [ -22, %6 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @icc_node_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 962, i32 noundef 9, ptr noundef null) #16
  br label %47

7:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  store ptr %1, ptr %3, align 4
  %8 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.icc_provider, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.icc_provider, ptr %1, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %8, ptr %10, align 4
  store ptr %9, ptr %8, align 4
  %12 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 5, i32 1
  store ptr %11, ptr %12, align 4
  store volatile ptr %8, ptr %11, align 4
  %13 = getelementptr inbounds %struct.icc_provider, ptr %1, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 12
  br i1 %15, label %22, label %17

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 13
  %19 = tail call i32 %14(ptr noundef %0, ptr noundef %16, ptr noundef %18) #16
  %20 = load i32, ptr %16, align 4
  %21 = load i32, ptr %18, align 4
  br label %24

22:                                               ; preds = %7
  store i32 2147483647, ptr %16, align 4
  %23 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 13
  store i32 2147483647, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi i32 [ 2147483647, %22 ], [ %21, %17 ]
  %26 = phi i32 [ 2147483647, %22 ], [ %20, %17 ]
  %27 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 12
  %28 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 10
  store i32 %26, ptr %28, align 4
  %29 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 13
  %30 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 11
  store i32 %25, ptr %30, align 4
  %31 = getelementptr inbounds %struct.icc_provider, ptr %1, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  tail call void %32(ptr noundef %0) #16
  br label %35

35:                                               ; preds = %34, %24
  %36 = getelementptr inbounds %struct.icc_provider, ptr %1, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %27, align 4
  %41 = load i32, ptr %29, align 4
  %42 = tail call i32 %37(ptr noundef %0, i32 noundef 0, i32 noundef %40, i32 noundef %41, ptr noundef %28, ptr noundef %30) #16
  br label %43

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds %struct.icc_provider, ptr %1, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef %0, ptr noundef %0) #16
  store i32 0, ptr %28, align 4
  store i32 0, ptr %30, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  br label %47

47:                                               ; preds = %43, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @icc_node_del(ptr nocapture noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %2 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 5
  %3 = getelementptr inbounds %struct.icc_node, ptr %0, i32 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @icc_nodes_remove(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1019, i32 noundef 9, ptr noundef null) #16
  br label %21

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.icc_provider, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.icc_provider, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %7
  br i1 %10, label %21, label %11

11:                                               ; preds = %11, %6
  %12 = phi ptr [ %15, %11 ], [ %9, %6 ]
  %13 = getelementptr i8, ptr %12, i32 -20
  %14 = getelementptr %struct.list_head, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %16 = load ptr, ptr %14, align 4
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  %19 = load i32, ptr %13, align 4
  tail call void @icc_node_destroy(i32 noundef %19)
  %20 = icmp eq ptr %15, %7
  br i1 %20, label %21, label %11

21:                                               ; preds = %11, %6, %5
  %22 = phi i32 [ -22, %5 ], [ 0, %6 ], [ 0, %11 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @icc_provider_add(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.icc_provider, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !11

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1039, i32 noundef 9, ptr noundef null) #16
  br label %20

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.icc_provider, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.icc_provider, ptr %0, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !11

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1041, i32 noundef 9, ptr noundef null) #16
  br label %20

15:                                               ; preds = %10, %6
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %16 = getelementptr inbounds %struct.icc_provider, ptr %0, i32 0, i32 1
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.icc_provider, ptr %0, i32 0, i32 1, i32 1
  store ptr %16, ptr %17, align 4
  %18 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @icc_providers, i32 0, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @icc_providers, i32 0, i32 1), align 4
  store ptr @icc_providers, ptr %0, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  store volatile ptr %0, ptr %18, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  br label %20

20:                                               ; preds = %15, %14, %5
  %21 = phi i32 [ -22, %5 ], [ -22, %14 ], [ 0, %15 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @icc_provider_del(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %2 = getelementptr inbounds %struct.icc_provider, ptr %0, i32 0, i32 9
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %3) #17
  br label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.icc_provider, ptr %0, i32 0, i32 1
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #17
  br label %18

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %0, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  br label %18

18:                                               ; preds = %13, %11, %5
  %19 = phi i32 [ -16, %5 ], [ 0, %13 ], [ -16, %11 ]
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @icc_sync_state(ptr nocapture readnone %0) #0 {
  %2 = load i32, ptr @icc_sync_state.count, align 4
  %3 = add i32 %2, 1
  store i32 %3, ptr @icc_sync_state.count, align 4
  %4 = load i32, ptr @providers_count, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %80, label %6

6:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  store i1 true, ptr @synced_state, align 1
  %7 = load ptr, ptr @icc_providers, align 4
  %8 = icmp eq ptr %7, @icc_providers
  br i1 %8, label %79, label %12

9:                                                ; preds = %76, %12
  %10 = load ptr, ptr %13, align 4
  %11 = icmp eq ptr %10, @icc_providers
  br i1 %11, label %79, label %12

12:                                               ; preds = %9, %6
  %13 = phi ptr [ %10, %9 ], [ %7, %6 ]
  %14 = getelementptr inbounds %struct.icc_provider, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %9, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.icc_provider, ptr %13, i32 0, i32 2
  br label %19

19:                                               ; preds = %76, %17
  %20 = phi ptr [ %15, %17 ], [ %77, %76 ]
  %21 = getelementptr i8, ptr %20, i32 -20
  %22 = getelementptr i8, ptr %20, i32 36
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %20, i32 40
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %76, label %29

29:                                               ; preds = %25, %19
  store i32 0, ptr %22, align 4
  %30 = getelementptr i8, ptr %20, i32 40
  store i32 0, ptr %30, align 4
  %31 = getelementptr i8, ptr %20, i32 -4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %20, i32 28
  store i32 0, ptr %33, align 4
  %34 = getelementptr i8, ptr %20, i32 32
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.icc_provider, ptr %32, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  tail call void %36(ptr noundef %21) #16
  br label %39

39:                                               ; preds = %38, %29
  %40 = getelementptr i8, ptr %20, i32 24
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %73, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.icc_provider, ptr %32, i32 0, i32 3
  br label %45

45:                                               ; preds = %70, %43
  %46 = phi ptr [ %41, %43 ], [ %71, %70 ]
  %47 = getelementptr inbounds %struct.icc_req, ptr %46, i32 0, i32 3
  %48 = load i8, ptr %47, align 4, !range !13
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.icc_req, ptr %46, i32 0, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.icc_req, ptr %46, i32 0, i32 6
  %54 = load i32, ptr %53, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i32 [ %54, %50 ], [ 0, %45 ]
  %57 = phi i32 [ %52, %50 ], [ 0, %45 ]
  %58 = load ptr, ptr %44, align 4
  %59 = getelementptr inbounds %struct.icc_req, ptr %46, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = tail call i32 %58(ptr noundef %21, i32 noundef %60, i32 noundef %57, i32 noundef %56, ptr noundef %33, ptr noundef %34) #16
  %62 = load i1, ptr @synced_state, align 1
  br i1 %62, label %70, label %63

63:                                               ; preds = %55
  %64 = load i32, ptr %33, align 4
  %65 = load i32, ptr %22, align 4
  %66 = tail call i32 @llvm.umax.i32(i32 %64, i32 %65) #16
  store i32 %66, ptr %33, align 4
  %67 = load i32, ptr %34, align 4
  %68 = load i32, ptr %30, align 4
  %69 = tail call i32 @llvm.umax.i32(i32 %67, i32 %68) #16
  store i32 %69, ptr %34, align 4
  br label %70

70:                                               ; preds = %63, %55
  %71 = load ptr, ptr %46, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %45

73:                                               ; preds = %70, %39
  %74 = load ptr, ptr %18, align 4
  %75 = tail call i32 %74(ptr noundef %21, ptr noundef %21) #16
  br label %76

76:                                               ; preds = %73, %25
  %77 = load ptr, ptr %20, align 4
  %78 = icmp eq ptr %77, %14
  br i1 %78, label %9, label %19

79:                                               ; preds = %9, %6
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  br label %80

80:                                               ; preds = %79, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @icc_init() #8 section ".init.text" {
  %1 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.29, ptr noundef null) #16
  %2 = tail call fastcc i32 @of_count_icc_providers(ptr noundef %1)
  store i32 %2, ptr @providers_count, align 4
  tail call void @of_node_put(ptr noundef %1) #16
  %3 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.30, ptr noundef null) #16
  store ptr %3, ptr @icc_debugfs_dir, align 4
  %4 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 292, ptr noundef %3, ptr noundef null, ptr noundef nonnull @icc_summary_fops) #16
  %5 = load ptr, ptr @icc_debugfs_dir, align 4
  %6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.32, i16 noundef zeroext 292, ptr noundef %5, ptr noundef null, ptr noundef nonnull @icc_graph_fops) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_icc_set_bw(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65535
  %17 = getelementptr i8, ptr %5, i32 %16
  %18 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 65535
  %21 = getelementptr i8, ptr %5, i32 %20
  %22 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %5, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %5, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %5, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw, ptr %5, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %13, ptr noundef %17, ptr noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #16
  %30 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %31

31:                                               ; preds = %8, %3
  %32 = phi i32 [ %30, %8 ], [ %6, %3 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_icc_set_bw_end(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw_end, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw_end, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65535
  %17 = getelementptr i8, ptr %5, i32 %16
  %18 = getelementptr inbounds %struct.trace_event_raw_icc_set_bw_end, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef %13, ptr noundef %17, i32 noundef %19) #16
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #12

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @of_count_icc_providers(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @of_get_next_available_child(ptr noundef %0, ptr noundef null) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ %12, %4 ], [ 0, %1 ]
  %6 = phi ptr [ %13, %4 ], [ %2, %1 ]
  %7 = tail call ptr @of_find_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.3, ptr noundef null) #16
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i32
  %10 = tail call fastcc i32 @of_count_icc_providers(ptr noundef nonnull %6)
  %11 = add i32 %10, %5
  %12 = add i32 %11, %9
  %13 = tail call ptr @of_get_next_available_child(ptr noundef %0, ptr noundef nonnull %6) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %4

15:                                               ; preds = %4, %1
  %16 = phi i32 [ 0, %1 ], [ %12, %4 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @icc_summary_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @icc_summary_show, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @icc_summary_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.33) #16
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.34) #16
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %3 = load ptr, ptr @icc_providers, align 4
  %4 = icmp eq ptr %3, @icc_providers
  br i1 %4, label %60, label %8

5:                                                ; preds = %13, %8
  %6 = load ptr, ptr %9, align 4
  %7 = icmp eq ptr %6, @icc_providers
  br i1 %7, label %60, label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.icc_provider, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %5, label %16

13:                                               ; preds = %57, %27
  %14 = load ptr, ptr %17, align 4
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %5, label %16

16:                                               ; preds = %13, %8
  %17 = phi ptr [ %14, %13 ], [ %11, %8 ]
  %18 = getelementptr i8, ptr %17, i32 -20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %17, i32 -16
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %17, i32 28
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %17, i32 32
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef %22, i32 noundef %24, i32 noundef %26) #16
  br label %27

27:                                               ; preds = %20, %16
  %28 = getelementptr i8, ptr %17, i32 24
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %13, label %31

31:                                               ; preds = %57, %27
  %32 = phi ptr [ %58, %57 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.icc_req, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %57, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.icc_req, ptr %32, i32 0, i32 3
  %38 = load i8, ptr %37, align 4, !range !13
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.icc_req, ptr %32, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.icc_req, ptr %32, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi i32 [ %44, %40 ], [ 0, %36 ]
  %47 = phi i32 [ %42, %40 ], [ 0, %36 ]
  %48 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load ptr, ptr %34, align 4
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi ptr [ %52, %51 ], [ %49, %45 ]
  %55 = getelementptr inbounds %struct.icc_req, ptr %32, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef %54, i32 noundef %56, i32 noundef %47, i32 noundef %46) #16
  br label %57

57:                                               ; preds = %53, %31
  %58 = load ptr, ptr %32, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %13, label %31

60:                                               ; preds = %5, %2
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @icc_graph_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @icc_graph_show, ptr noundef %4) #16
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @icc_graph_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.37) #16
  tail call void @mutex_lock(ptr noundef nonnull @icc_lock) #16
  %3 = load ptr, ptr @icc_providers, align 4
  %4 = icmp eq ptr %3, @icc_providers
  br i1 %4, label %121, label %8

5:                                                ; preds = %76
  %6 = load ptr, ptr @icc_providers, align 4
  %7 = icmp eq ptr %6, @icc_providers
  br i1 %7, label %121, label %82

8:                                                ; preds = %76, %2
  %9 = phi ptr [ %77, %76 ], [ %3, %2 ]
  %10 = phi i32 [ %11, %76 ], [ 0, %2 ]
  %11 = add i32 %10, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %11) #16
  %12 = getelementptr inbounds %struct.icc_provider, ptr %9, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load ptr, ptr %13, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi ptr [ %20, %19 ], [ %17, %15 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef %22) #16
  br label %23

23:                                               ; preds = %21, %8
  %24 = getelementptr inbounds %struct.icc_provider, ptr %9, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %76, label %30

27:                                               ; preds = %30
  %28 = load ptr, ptr %24, align 4
  %29 = icmp eq ptr %28, %24
  br i1 %29, label %76, label %45

30:                                               ; preds = %30, %23
  %31 = phi ptr [ %40, %30 ], [ %25, %23 ]
  %32 = getelementptr i8, ptr %31, i32 -20
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr i8, ptr %31, i32 -16
  %35 = load ptr, ptr %34, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %33, ptr noundef %35, i32 noundef %33, ptr noundef %35) #16
  %36 = getelementptr i8, ptr %31, i32 28
  %37 = load i32, ptr %36, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %37) #16
  %38 = getelementptr i8, ptr %31, i32 32
  %39 = load i32, ptr %38, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %39) #16
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.45) #16
  %40 = load ptr, ptr %31, align 4
  %41 = icmp eq ptr %40, %24
  br i1 %41, label %27, label %30

42:                                               ; preds = %72, %45
  %43 = load ptr, ptr %46, align 4
  %44 = icmp eq ptr %43, %24
  br i1 %44, label %76, label %45

45:                                               ; preds = %42, %27
  %46 = phi ptr [ %43, %42 ], [ %28, %27 ]
  %47 = getelementptr i8, ptr %46, i32 -20
  %48 = getelementptr i8, ptr %46, i32 -8
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %42, label %51

51:                                               ; preds = %45
  %52 = getelementptr i8, ptr %46, i32 -4
  %53 = getelementptr i8, ptr %46, i32 -12
  %54 = getelementptr i8, ptr %46, i32 -16
  br label %55

55:                                               ; preds = %72, %51
  %56 = phi i32 [ %49, %51 ], [ %73, %72 ]
  %57 = phi i32 [ 0, %51 ], [ %74, %72 ]
  %58 = load ptr, ptr %52, align 4
  %59 = load ptr, ptr %53, align 4
  %60 = getelementptr ptr, ptr %59, i32 %57
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.icc_node, ptr %61, i32 0, i32 4
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %58, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = load i32, ptr %47, align 4
  %67 = load ptr, ptr %54, align 4
  %68 = load i32, ptr %61, align 4
  %69 = getelementptr inbounds %struct.icc_node, ptr %61, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef %66, ptr noundef %67, i32 noundef %68, ptr noundef %70) #16
  %71 = load i32, ptr %48, align 4
  br label %72

72:                                               ; preds = %65, %55
  %73 = phi i32 [ %56, %55 ], [ %71, %65 ]
  %74 = add nuw i32 %57, 1
  %75 = icmp ult i32 %74, %73
  br i1 %75, label %55, label %42

76:                                               ; preds = %42, %27, %23
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.40) #16
  %77 = load ptr, ptr %9, align 4
  %78 = icmp eq ptr %77, @icc_providers
  br i1 %78, label %5, label %8

79:                                               ; preds = %87, %82
  %80 = load ptr, ptr %83, align 4
  %81 = icmp eq ptr %80, @icc_providers
  br i1 %81, label %121, label %82

82:                                               ; preds = %79, %5
  %83 = phi ptr [ %80, %79 ], [ %6, %5 ]
  %84 = getelementptr inbounds %struct.icc_provider, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, %84
  br i1 %86, label %79, label %90

87:                                               ; preds = %117, %90
  %88 = load ptr, ptr %91, align 4
  %89 = icmp eq ptr %88, %84
  br i1 %89, label %79, label %90

90:                                               ; preds = %87, %82
  %91 = phi ptr [ %88, %87 ], [ %85, %82 ]
  %92 = getelementptr i8, ptr %91, i32 -20
  %93 = getelementptr i8, ptr %91, i32 -8
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %87, label %96

96:                                               ; preds = %90
  %97 = getelementptr i8, ptr %91, i32 -4
  %98 = getelementptr i8, ptr %91, i32 -12
  %99 = getelementptr i8, ptr %91, i32 -16
  br label %100

100:                                              ; preds = %117, %96
  %101 = phi i32 [ %94, %96 ], [ %118, %117 ]
  %102 = phi i32 [ 0, %96 ], [ %119, %117 ]
  %103 = load ptr, ptr %97, align 4
  %104 = load ptr, ptr %98, align 4
  %105 = getelementptr ptr, ptr %104, i32 %102
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.icc_node, ptr %106, i32 0, i32 4
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %103, %108
  br i1 %109, label %117, label %110

110:                                              ; preds = %100
  %111 = load i32, ptr %92, align 4
  %112 = load ptr, ptr %99, align 4
  %113 = load i32, ptr %106, align 4
  %114 = getelementptr inbounds %struct.icc_node, ptr %106, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.48, i32 noundef %111, ptr noundef %112, i32 noundef %113, ptr noundef %115) #16
  %116 = load i32, ptr %93, align 4
  br label %117

117:                                              ; preds = %110, %100
  %118 = phi i32 [ %101, %100 ], [ %116, %110 ]
  %119 = add nuw i32 %102, 1
  %120 = icmp ult i32 %119, %118
  br i1 %120, label %100, label %87

121:                                              ; preds = %79, %5, %2
  tail call void @mutex_unlock(ptr noundef nonnull @icc_lock) #16
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.41) #16
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(1) }

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
!12 = !{i64 788595}
!13 = !{i8 0, i8 2}
!14 = !{i64 2152155600}
!15 = !{i64 2152155780}
!16 = !{i64 2152171479}
!17 = !{i64 2152171631}
