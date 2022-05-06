; ModuleID = '/llk/IR/drivers/pwm/core.c_pt.bc'
source_filename = "../drivers/pwm/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pwm_xlate_with_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pwm_xlate_with_flags\22\09\09\09\09\09"
module asm "__kstrtabns_of_pwm_xlate_with_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pwm_single_xlate:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pwm_single_xlate\22\09\09\09\09\09"
module asm "__kstrtabns_of_pwm_single_xlate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pwm_set_chip_data:\09\09\09\09\09"
module asm "\09.asciz \09\22pwm_set_chip_data\22\09\09\09\09\09"
module asm "__kstrtabns_pwm_set_chip_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pwm_get_chip_data:\09\09\09\09\09"
module asm "\09.asciz \09\22pwm_get_chip_data\22\09\09\09\09\09"
module asm "__kstrtabns_pwm_get_chip_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pwmchip_add:\09\09\09\09\09"
module asm "\09.asciz \09\22pwmchip_add\22\09\09\09\09\09"
module asm "__kstrtabns_pwmchip_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pwmchip_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22pwmchip_remove\22\09\09\09\09\09"
module asm "__kstrtabns_pwmchip_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pwmchip_add:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pwmchip_add\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pwmchip_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pwm_request:\09\09\09\09\09"
module asm "\09.asciz \09\22pwm_request\22\09\09\09\09\09"
module asm "__kstrtabns_pwm_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pwm_request_from_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22pwm_request_from_chip\22\09\09\09\09\09"
module asm "__kstrtabns_pwm_request_from_chip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pwm_free:\09\09\09\09\09"
module asm "\09.asciz \09\22pwm_free\22\09\09\09\09\09"
module asm "__kstrtabns_pwm_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pwm_apply_state:\09\09\09\09\09"
module asm "\09.asciz \09\22pwm_apply_state\22\09\09\09\09\09"
module asm "__kstrtabns_pwm_apply_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pwm_capture:\09\09\09\09\09"
module asm "\09.asciz \09\22pwm_capture\22\09\09\09\09\09"
module asm "__kstrtabns_pwm_capture:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pwm_adjust_config:\09\09\09\09\09"
module asm "\09.asciz \09\22pwm_adjust_config\22\09\09\09\09\09"
module asm "__kstrtabns_pwm_adjust_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_pwm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_pwm_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_pwm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pwm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22pwm_get\22\09\09\09\09\09"
module asm "__kstrtabns_pwm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pwm_put:\09\09\09\09\09"
module asm "\09.asciz \09\22pwm_put\22\09\09\09\09\09"
module asm "__kstrtabns_pwm_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pwm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pwm_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pwm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_of_pwm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_of_pwm_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_of_pwm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_fwnode_pwm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_fwnode_pwm_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_fwnode_pwm_get:\09\09\09\09\09"
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
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.cpumask = type { [1 x i32] }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_pwm = type { %struct.trace_entry, ptr, i64, i64, i32, i8, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.pwm_lookup = type { %struct.list_head, ptr, i32, ptr, ptr, i32, i32, ptr }
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
%struct.file = type { %union.anon.11, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.11 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__tpstrtab_pwm_apply = internal constant [10 x i8] c"pwm_apply\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pwm_apply = dso_local global %struct.static_call_key { ptr @__traceiter_pwm_apply }, align 4
@__tracepoint_pwm_apply = dso_local global %struct.tracepoint { ptr @__tpstrtab_pwm_apply, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_pwm_apply, ptr null, ptr @__traceiter_pwm_apply, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pwm_apply = internal constant ptr @__tracepoint_pwm_apply, section "__tracepoints_ptrs", align 4
@__tpstrtab_pwm_get = internal constant [8 x i8] c"pwm_get\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_pwm_get = dso_local global %struct.static_call_key { ptr @__traceiter_pwm_get }, align 4
@__tracepoint_pwm_get = dso_local global %struct.tracepoint { ptr @__tpstrtab_pwm_get, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_pwm_get, ptr null, ptr @__traceiter_pwm_get, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_pwm_get = internal constant ptr @__tracepoint_pwm_get, section "__tracepoints_ptrs", align 4
@trace_event_fields_pwm = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.6, %union.anon.89 { %struct.anon.90 { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.89 { %struct.anon.90 { ptr @.str.9, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon.89 { %struct.anon.90 { ptr @.str.10, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.11, %union.anon.89 { %struct.anon.90 { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.89 { %struct.anon.90 { ptr @.str.14, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_pwm = internal global %struct.trace_event_class { ptr @.str.7, ptr @trace_event_raw_event_pwm, ptr @perf_trace_pwm, ptr @trace_event_reg, ptr @trace_event_fields_pwm, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_pwm, i64 24), ptr getelementptr (i8, ptr @event_class_pwm, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_pwm = internal global %struct.trace_event_functions { ptr @trace_raw_output_pwm, ptr null, ptr null, ptr null }, align 4
@print_fmt_pwm = internal global [126 x i8] c"\22%p: period=%llu duty_cycle=%llu polarity=%d enabled=%d\22, REC->pwm, REC->period, REC->duty_cycle, REC->polarity, REC->enabled\00", align 1
@event_pwm_apply = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_pwm, %union.anon.91 { ptr @__tracepoint_pwm_apply }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_pwm }, ptr @print_fmt_pwm, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_pwm_apply = internal global ptr @event_pwm_apply, section "_ftrace_events", align 4
@event_pwm_get = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_pwm, %union.anon.91 { ptr @__tracepoint_pwm_get }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_pwm }, ptr @print_fmt_pwm, ptr null, %union.anon.92 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_pwm_get = internal global ptr @event_pwm_get, section "_ftrace_events", align 4
@__kstrtab_of_pwm_xlate_with_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pwm_xlate_with_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pwm_xlate_with_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pwm_xlate_with_flags to i32), ptr @__kstrtab_of_pwm_xlate_with_flags, ptr @__kstrtabns_of_pwm_xlate_with_flags }, section "___ksymtab_gpl+of_pwm_xlate_with_flags", align 4
@__kstrtab_of_pwm_single_xlate = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pwm_single_xlate = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pwm_single_xlate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pwm_single_xlate to i32), ptr @__kstrtab_of_pwm_single_xlate, ptr @__kstrtabns_of_pwm_single_xlate }, section "___ksymtab_gpl+of_pwm_single_xlate", align 4
@__kstrtab_pwm_set_chip_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_pwm_set_chip_data = external dso_local constant [0 x i8], align 1
@__ksymtab_pwm_set_chip_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pwm_set_chip_data to i32), ptr @__kstrtab_pwm_set_chip_data, ptr @__kstrtabns_pwm_set_chip_data }, section "___ksymtab_gpl+pwm_set_chip_data", align 4
@__kstrtab_pwm_get_chip_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_pwm_get_chip_data = external dso_local constant [0 x i8], align 1
@__ksymtab_pwm_get_chip_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pwm_get_chip_data to i32), ptr @__kstrtab_pwm_get_chip_data, ptr @__kstrtabns_pwm_get_chip_data }, section "___ksymtab_gpl+pwm_get_chip_data", align 4
@pwm_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pwm_lock, i64 12), ptr getelementptr (i8, ptr @pwm_lock, i64 12) } }, align 4
@pwm_tree = internal global %struct.xarray { %struct.spinlock zeroinitializer, i32 3264, ptr null }, align 4
@allocated_pwms = internal global [32 x i32] zeroinitializer, align 4
@pwm_chips = internal global %struct.list_head { ptr @pwm_chips, ptr @pwm_chips }, align 4
@__kstrtab_pwmchip_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_pwmchip_add = external dso_local constant [0 x i8], align 1
@__ksymtab_pwmchip_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pwmchip_add to i32), ptr @__kstrtab_pwmchip_add, ptr @__kstrtabns_pwmchip_add }, section "___ksymtab_gpl+pwmchip_add", align 4
@__kstrtab_pwmchip_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_pwmchip_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_pwmchip_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pwmchip_remove to i32), ptr @__kstrtab_pwmchip_remove, ptr @__kstrtabns_pwmchip_remove }, section "___ksymtab_gpl+pwmchip_remove", align 4
@__kstrtab_devm_pwmchip_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pwmchip_add = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pwmchip_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pwmchip_add to i32), ptr @__kstrtab_devm_pwmchip_add, ptr @__kstrtabns_devm_pwmchip_add }, section "___ksymtab_gpl+devm_pwmchip_add", align 4
@__kstrtab_pwm_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_pwm_request = external dso_local constant [0 x i8], align 1
@__ksymtab_pwm_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pwm_request to i32), ptr @__kstrtab_pwm_request, ptr @__kstrtabns_pwm_request }, section "___ksymtab_gpl+pwm_request", align 4
@__kstrtab_pwm_request_from_chip = external dso_local constant [0 x i8], align 1
@__kstrtabns_pwm_request_from_chip = external dso_local constant [0 x i8], align 1
@__ksymtab_pwm_request_from_chip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pwm_request_from_chip to i32), ptr @__kstrtab_pwm_request_from_chip, ptr @__kstrtabns_pwm_request_from_chip }, section "___ksymtab_gpl+pwm_request_from_chip", align 4
@__kstrtab_pwm_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_pwm_free = external dso_local constant [0 x i8], align 1
@__ksymtab_pwm_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pwm_free to i32), ptr @__kstrtab_pwm_free, ptr @__kstrtabns_pwm_free }, section "___ksymtab_gpl+pwm_free", align 4
@__kstrtab_pwm_apply_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_pwm_apply_state = external dso_local constant [0 x i8], align 1
@__ksymtab_pwm_apply_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pwm_apply_state to i32), ptr @__kstrtab_pwm_apply_state, ptr @__kstrtabns_pwm_apply_state }, section "___ksymtab_gpl+pwm_apply_state", align 4
@__kstrtab_pwm_capture = external dso_local constant [0 x i8], align 1
@__kstrtabns_pwm_capture = external dso_local constant [0 x i8], align 1
@__ksymtab_pwm_capture = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pwm_capture to i32), ptr @__kstrtab_pwm_capture, ptr @__kstrtabns_pwm_capture }, section "___ksymtab_gpl+pwm_capture", align 4
@__kstrtab_pwm_adjust_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_pwm_adjust_config = external dso_local constant [0 x i8], align 1
@__ksymtab_pwm_adjust_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pwm_adjust_config to i32), ptr @__kstrtab_pwm_adjust_config, ptr @__kstrtabns_pwm_adjust_config }, section "___ksymtab_gpl+pwm_adjust_config", align 4
@.str = private unnamed_addr constant [10 x i8] c"pwm-names\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pwms\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"#pwm-cells\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\013%s(): can't parse \22pwms\22 property\0A\00", align 1
@__func__.of_pwm_get = private unnamed_addr constant [11 x i8] c"of_pwm_get\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\013%s(): PWM chip not found\0A\00", align 1
@__kstrtab_of_pwm_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_pwm_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_pwm_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_pwm_get to i32), ptr @__kstrtab_of_pwm_get, ptr @__kstrtabns_of_pwm_get }, section "___ksymtab_gpl+of_pwm_get", align 4
@pwm_lookup_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pwm_lookup_lock, i64 12), ptr getelementptr (i8, ptr @pwm_lookup_lock, i64 12) } }, align 4
@pwm_lookup_list = internal global %struct.list_head { ptr @pwm_lookup_list, ptr @pwm_lookup_list }, align 4
@__kstrtab_pwm_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_pwm_get = external dso_local constant [0 x i8], align 1
@__ksymtab_pwm_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pwm_get to i32), ptr @__kstrtab_pwm_get, ptr @__kstrtabns_pwm_get }, section "___ksymtab_gpl+pwm_get", align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"\014PWM device already freed\0A\00", align 1
@__kstrtab_pwm_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_pwm_put = external dso_local constant [0 x i8], align 1
@__ksymtab_pwm_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pwm_put to i32), ptr @__kstrtab_pwm_put, ptr @__kstrtabns_pwm_put }, section "___ksymtab_gpl+pwm_put", align 4
@__kstrtab_devm_pwm_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pwm_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pwm_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pwm_get to i32), ptr @__kstrtab_devm_pwm_get, ptr @__kstrtabns_devm_pwm_get }, section "___ksymtab_gpl+devm_pwm_get", align 4
@__kstrtab_devm_of_pwm_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_of_pwm_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_of_pwm_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_of_pwm_get to i32), ptr @__kstrtab_devm_of_pwm_get, ptr @__kstrtabns_devm_of_pwm_get }, section "___ksymtab_gpl+devm_of_pwm_get", align 4
@__kstrtab_devm_fwnode_pwm_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_fwnode_pwm_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_fwnode_pwm_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_fwnode_pwm_get to i32), ptr @__kstrtab_devm_fwnode_pwm_get, ptr @__kstrtabns_devm_fwnode_pwm_get }, section "___ksymtab_gpl+devm_fwnode_pwm_get", align 4
@__initcall__kmod_core__249_1298_pwm_debugfs_init4 = internal global ptr @pwm_debugfs_init, section ".initcall4.init", align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"struct pwm_device *\00", align 1
@.str.7 = private constant [4 x i8] c"pwm\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"duty_cycle\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"enum pwm_polarity\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"polarity\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"%p: period=%llu duty_cycle=%llu polarity=%d enabled=%d\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.17 = private unnamed_addr constant [50 x i8] c"No consumer device specified to create a link to\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"failed to create device link to %s\0A\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@pwm_debugfs_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pwm_debugfs_open, ptr null, ptr @seq_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pwm_debugfs_sops = internal constant %struct.seq_operations { ptr @pwm_seq_start, ptr @pwm_seq_stop, ptr @pwm_seq_next, ptr @pwm_seq_show }, align 4
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"%s%s/%s, %d PWM device%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"no-bus\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c" pwm-%-3d (%-20.20s):\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c" requested\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c" enabled\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c" period: %llu ns\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c" duty: %llu ns\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c" polarity: %s\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"inverse\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c" usage_power\00", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @__event_pwm_apply, ptr @__event_pwm_get, ptr @__initcall__kmod_core__249_1298_pwm_debugfs_init4, ptr @__ksymtab_devm_fwnode_pwm_get, ptr @__ksymtab_devm_of_pwm_get, ptr @__ksymtab_devm_pwm_get, ptr @__ksymtab_devm_pwmchip_add, ptr @__ksymtab_of_pwm_get, ptr @__ksymtab_of_pwm_single_xlate, ptr @__ksymtab_of_pwm_xlate_with_flags, ptr @__ksymtab_pwm_adjust_config, ptr @__ksymtab_pwm_apply_state, ptr @__ksymtab_pwm_capture, ptr @__ksymtab_pwm_free, ptr @__ksymtab_pwm_get, ptr @__ksymtab_pwm_get_chip_data, ptr @__ksymtab_pwm_put, ptr @__ksymtab_pwm_request, ptr @__ksymtab_pwm_request_from_chip, ptr @__ksymtab_pwm_set_chip_data, ptr @__ksymtab_pwmchip_add, ptr @__ksymtab_pwmchip_remove, ptr @__tracepoint_ptr_pwm_apply, ptr @__tracepoint_ptr_pwm_get, ptr @__tracepoint_pwm_apply, ptr @__tracepoint_pwm_get, ptr @event_class_pwm, ptr @event_pwm_apply, ptr @event_pwm_get], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_pwm_apply(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pwm_apply, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #14
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
define dso_local i32 @__traceiter_pwm_get(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pwm_get, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #14
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_pwm(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #14
  br i1 %13, label %30, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 40) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_pwm, ptr %15, i32 0, i32 1
  store ptr %1, ptr %18, align 8
  %19 = load i64, ptr %2, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_pwm, ptr %15, i32 0, i32 2
  store i64 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_pwm, ptr %15, i32 0, i32 3
  store i64 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.trace_event_raw_pwm, ptr %15, i32 0, i32 4
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %28 = load i8, ptr %27, align 4, !range !12
  %29 = getelementptr inbounds %struct.trace_event_raw_pwm, ptr %15, i32 0, i32 5
  store i8 %28, ptr %29, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #14
  br label %30

30:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_pwm(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #10, !srcloc !13
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %48, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #14
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #14
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_pwm, ptr %21, i32 0, i32 1
  store ptr %1, ptr %34, align 8
  %35 = load i64, ptr %2, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_pwm, ptr %21, i32 0, i32 2
  store i64 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds %struct.trace_event_raw_pwm, ptr %21, i32 0, i32 3
  store i64 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.trace_event_raw_pwm, ptr %21, i32 0, i32 4
  store i32 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %44 = load i8, ptr %43, align 4, !range !12
  %45 = getelementptr inbounds %struct.trace_event_raw_pwm, ptr %21, i32 0, i32 5
  store i8 %44, ptr %45, align 4
  %46 = load i32, ptr %5, align 4
  %47 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 44, i32 noundef %46, ptr noundef %0, i64 noundef 1, ptr noundef %47, ptr noundef %13, ptr noundef null) #14
  br label %48

48:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_pwm_xlate_with_flags(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %44, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp uge i32 %12, %14
  %16 = icmp eq ptr %0, null
  %17 = or i1 %16, %15
  br i1 %17, label %44, label %18

18:                                               ; preds = %10
  tail call void @mutex_lock(ptr noundef nonnull @pwm_lock) #14
  %19 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.pwm_device, ptr %20, i32 %12
  %22 = tail call fastcc i32 @pwm_device_request(ptr noundef %21, ptr noundef null) #14
  %23 = icmp slt i32 %22, 0
  %24 = inttoptr i32 %22 to ptr
  %25 = select i1 %23, ptr %24, ptr %21
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %44, label %27

27:                                               ; preds = %18
  %28 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.pwm_device, ptr %25, i32 0, i32 6
  store i64 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.pwm_device, ptr %25, i32 0, i32 6, i32 1
  store i32 0, ptr %32, align 8
  %33 = load i32, ptr %3, align 4
  %34 = icmp ugt i32 %33, 2
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load i32, ptr %7, align 4
  %37 = icmp sgt i32 %36, 2
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 1, ptr %32, align 8
  br label %44

44:                                               ; preds = %43, %38, %35, %27, %18, %10, %6, %2
  %45 = phi ptr [ %25, %18 ], [ %25, %35 ], [ %25, %38 ], [ %25, %43 ], [ %25, %27 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -22 to ptr), %10 ]
  ret ptr %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pwm_request_from_chip(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  tail call void @mutex_lock(ptr noundef nonnull @pwm_lock) #14
  %10 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.pwm_device, ptr %11, i32 %1
  %13 = tail call fastcc i32 @pwm_device_request(ptr noundef %12, ptr noundef %2)
  %14 = icmp slt i32 %13, 0
  %15 = inttoptr i32 %13 to ptr
  %16 = select i1 %14, ptr %15, ptr %12
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  br label %17

17:                                               ; preds = %9, %5, %3
  %18 = phi ptr [ %16, %9 ], [ inttoptr (i32 -22 to ptr), %5 ], [ inttoptr (i32 -22 to ptr), %3 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_pwm_single_xlate(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %9, -2
  %11 = icmp eq ptr %0, null
  %12 = or i1 %11, %10
  br i1 %12, label %39, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %39, label %17

17:                                               ; preds = %13
  tail call void @mutex_lock(ptr noundef nonnull @pwm_lock) #14
  %18 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = tail call fastcc i32 @pwm_device_request(ptr noundef %19, ptr noundef null) #14
  %21 = icmp slt i32 %20, 0
  %22 = inttoptr i32 %20 to ptr
  %23 = select i1 %21, ptr %22, ptr %19
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %39, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.pwm_device, ptr %23, i32 0, i32 6
  store i64 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.pwm_device, ptr %23, i32 0, i32 6, i32 1
  store i32 0, ptr %30, align 8
  %31 = load i32, ptr %7, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 1, ptr %30, align 8
  br label %39

39:                                               ; preds = %38, %33, %25, %17, %13, %6, %2
  %40 = phi ptr [ %23, %17 ], [ %23, %38 ], [ %23, %33 ], [ %23, %25 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -22 to ptr), %13 ]
  ret ptr %40
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @pwm_set_chip_data(ptr noundef writeonly %0, ptr noundef %1) #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 5
  store ptr %1, ptr %5, align 4
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ 0, %4 ], [ -22, %2 ]
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @pwm_get_chip_data(ptr noundef readonly %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwmchip_add(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %100, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %100, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %100, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %100, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pwm_ops, ptr %9, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.pwm_ops, ptr %9, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.pwm_ops, ptr %9, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %19, %15
  %28 = getelementptr inbounds %struct.pwm_ops, ptr %9, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %100, label %31

31:                                               ; preds = %27, %23
  tail call void @mutex_lock(ptr noundef nonnull @pwm_lock) #14
  %32 = load i32, ptr %12, align 4
  %33 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef nonnull @allocated_pwms, i32 noundef 1024, i32 noundef 0, i32 noundef %32, i32 noundef 0, i32 noundef 0) #14
  %34 = add i32 %33, %32
  %35 = icmp ugt i32 %34, 1024
  %36 = select i1 %35, i32 -28, i32 %33
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %97, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 2
  store i32 %36, ptr %39, align 4
  %40 = load i32, ptr %12, align 4
  %41 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %40, i32 88) #14
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %43, label %45, !prof !11

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 7
  store ptr null, ptr %44, align 4
  br label %97

45:                                               ; preds = %38
  %46 = extractvalue { i32, i1 } %41, 0
  %47 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #15
  %48 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 7
  store ptr %47, ptr %48, align 4
  %49 = icmp eq ptr %47, null
  br i1 %49, label %97, label %50

50:                                               ; preds = %45
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %66, %50
  %54 = phi ptr [ %67, %66 ], [ %47, %50 ]
  %55 = phi i32 [ %63, %66 ], [ 0, %50 ]
  %56 = getelementptr %struct.pwm_device, ptr %54, i32 %55
  %57 = getelementptr %struct.pwm_device, ptr %54, i32 %55, i32 4
  store ptr %0, ptr %57, align 8
  %58 = load i32, ptr %39, align 4
  %59 = add i32 %58, %55
  %60 = getelementptr %struct.pwm_device, ptr %54, i32 %55, i32 3
  store i32 %59, ptr %60, align 4
  %61 = getelementptr %struct.pwm_device, ptr %54, i32 %55, i32 2
  store i32 %55, ptr %61, align 8
  %62 = tail call i32 @radix_tree_insert(ptr noundef nonnull @pwm_tree, i32 noundef %59, ptr noundef %56) #14
  %63 = add nuw i32 %55, 1
  %64 = load i32, ptr %12, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load ptr, ptr %48, align 4
  br label %53

68:                                               ; preds = %53, %50
  %69 = phi i32 [ 0, %50 ], [ %64, %53 ]
  %70 = load i32, ptr %39, align 4
  tail call void @__bitmap_set(ptr noundef nonnull @allocated_pwms, i32 noundef %70, i32 noundef %69) #14
  %71 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 6
  store volatile ptr %71, ptr %71, align 4
  %72 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 6, i32 1
  %73 = load ptr, ptr @pwm_chips, align 4
  %74 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  store ptr %71, ptr %74, align 4
  store ptr %73, ptr %71, align 4
  store ptr @pwm_chips, ptr %72, align 4
  store volatile ptr %71, ptr @pwm_chips, align 4
  %75 = load ptr, ptr %0, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %99, label %77

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.device, ptr %75, i32 0, i32 25
  %79 = load ptr, ptr %78, align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %99, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 4
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !9
  %86 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %79, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #14
  %87 = icmp sgt i32 %86, -1
  %88 = load i32, ptr %2, align 4
  %89 = select i1 %87, i32 %88, i32 2
  store ptr @of_pwm_xlate_with_flags, ptr %82, align 4
  %90 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 5
  store i32 %89, ptr %90, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %91 = load ptr, ptr %0, align 4
  %92 = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 25
  %93 = load ptr, ptr %92, align 8
  br label %94

94:                                               ; preds = %85, %81
  %95 = phi ptr [ %93, %85 ], [ %79, %81 ]
  %96 = call ptr @of_node_get(ptr noundef %95) #14
  br label %99

97:                                               ; preds = %45, %43, %31
  %98 = phi i32 [ %36, %31 ], [ -12, %45 ], [ -12, %43 ]
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  br label %100

99:                                               ; preds = %94, %77, %68
  call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  call void @pwmchip_sysfs_export(ptr noundef nonnull %0) #14
  br label %100

100:                                              ; preds = %99, %97, %27, %11, %7, %4, %1
  %101 = phi i32 [ -22, %11 ], [ -22, %7 ], [ -22, %4 ], [ -22, %1 ], [ -22, %27 ], [ 0, %99 ], [ %98, %97 ]
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_sysfs_export(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pwmchip_remove(ptr noundef %0) #0 {
  tail call void @pwmchip_sysfs_unexport(ptr noundef %0) #14
  tail call void @mutex_lock(ptr noundef nonnull @pwm_lock) #14
  %2 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 6
  %3 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 6, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %3, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  tail call void @of_node_put(ptr noundef %11) #14
  br label %12

12:                                               ; preds = %9, %1
  %13 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 7
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ 0, %16 ], [ %24, %18 ]
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr %struct.pwm_device, ptr %20, i32 %19, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call ptr @radix_tree_delete(ptr noundef nonnull @pwm_tree, i32 noundef %22) #14
  %24 = add nuw i32 %19, 1
  %25 = load i32, ptr %13, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %18, label %27

27:                                               ; preds = %18, %12
  %28 = phi i32 [ 0, %12 ], [ %25, %18 ]
  %29 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  tail call void @__bitmap_clear(ptr noundef nonnull @allocated_pwms, i32 noundef %30, i32 noundef %28) #14
  %31 = getelementptr inbounds %struct.pwm_chip, ptr %0, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #14
  store ptr null, ptr %31, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_sysfs_unexport(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_pwmchip_add(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @pwmchip_add(ptr noundef %1)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_pwmchip_remove, ptr noundef %1) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @pwmchip_remove(ptr noundef %1) #14
  br label %9

9:                                                ; preds = %8, %5, %2
  %10 = phi i32 [ %3, %2 ], [ 0, %5 ], [ %6, %8 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_pwmchip_remove(ptr noundef %0) #0 {
  tail call void @pwmchip_remove(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pwm_request(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp ugt i32 %0, 1023
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @pwm_lock) #14
  %5 = tail call ptr @radix_tree_lookup(ptr noundef nonnull @pwm_tree, i32 noundef %0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @pwm_device_request(ptr noundef nonnull %5, ptr noundef %1)
  %9 = icmp slt i32 %8, 0
  %10 = inttoptr i32 %8 to ptr
  %11 = select i1 %9, ptr %10, ptr %5
  br label %12

12:                                               ; preds = %7, %4
  %13 = phi ptr [ inttoptr (i32 -517 to ptr), %4 ], [ %11, %7 ]
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %13, %12 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pwm_device_request(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %64

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pwm_chip, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.pwm_ops, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = tail call zeroext i1 @try_module_get(ptr noundef %13) #14
  br i1 %14, label %15, label %64

15:                                               ; preds = %7
  %16 = load ptr, ptr %8, align 8
  %17 = getelementptr inbounds %struct.pwm_chip, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %15
  %22 = tail call i32 %19(ptr noundef %16, ptr noundef %0) #14
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds %struct.pwm_chip, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  br i1 %23, label %30, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.pwm_ops, ptr %26, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  tail call void @module_put(ptr noundef %29) #14
  br label %64

30:                                               ; preds = %21, %15
  %31 = phi ptr [ %18, %15 ], [ %26, %21 ]
  %32 = phi ptr [ %16, %15 ], [ %24, %21 ]
  %33 = getelementptr inbounds %struct.pwm_ops, ptr %31, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 7
  tail call void %34(ptr noundef %32, ptr noundef %0, ptr noundef %37) #14
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pwm_get, i32 0, i32 1), align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = tail call ptr @llvm.thread.pointer() #14
  %42 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 8
  %44 = lshr i32 %43, 5
  %45 = getelementptr i32, ptr @__cpu_online_mask, i32 %44
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %43, 31
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %46
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %40
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  %52 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pwm_get, i32 0, i32 7), align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %62, label %54

54:                                               ; preds = %54, %51
  %55 = phi ptr [ %59, %54 ], [ %52, %51 ]
  %56 = load volatile ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.tracepoint_func, ptr %55, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  tail call void %56(ptr noundef %58, ptr noundef %0, ptr noundef %37) #14
  %59 = getelementptr %struct.tracepoint_func, ptr %55, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %54

62:                                               ; preds = %54, %51
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !15
  br label %63

63:                                               ; preds = %62, %40, %36, %30
  tail call void @_set_bit(i32 noundef 1, ptr noundef %3) #14
  store ptr %1, ptr %0, align 8
  br label %64

64:                                               ; preds = %63, %27, %7, %2
  %65 = phi i32 [ %22, %27 ], [ 0, %63 ], [ -16, %2 ], [ -19, %7 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pwm_free(ptr noundef %0) #0 {
  tail call void @pwm_put(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pwm_put(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @pwm_lock) #14
  %4 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 1
  %5 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %4) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #16
  br label %26

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.pwm_chip, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.pwm_ops, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %9
  tail call void %15(ptr noundef %11, ptr noundef nonnull %0) #14
  %18 = load ptr, ptr %10, align 8
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi ptr [ %18, %17 ], [ %11, %9 ]
  %21 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 5
  store ptr null, ptr %21, align 4
  store ptr null, ptr %0, align 8
  %22 = getelementptr inbounds %struct.pwm_chip, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.pwm_ops, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  tail call void @module_put(ptr noundef %25) #14
  br label %26

26:                                               ; preds = %19, %7
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  br label %27

27:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwm_apply_state(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.pwm_state, align 8
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %148

7:                                                ; preds = %2
  %8 = load i64, ptr %1, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %148, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.pwm_state, ptr %1, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = icmp ugt i64 %12, %8
  br i1 %13, label %148, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 7
  %18 = load i64, ptr %17, align 8
  %19 = icmp eq i64 %8, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 7, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %12, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.pwm_state, ptr %1, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 7, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.pwm_state, ptr %1, i32 0, i32 3
  %32 = load i8, ptr %31, align 4, !range !12
  %33 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 7, i32 3
  %34 = load i8, ptr %33, align 4, !range !12
  %35 = icmp eq i8 %32, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.pwm_state, ptr %1, i32 0, i32 4
  %38 = load i8, ptr %37, align 1, !range !12
  %39 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 7, i32 4
  %40 = load i8, ptr %39, align 1, !range !12
  %41 = icmp eq i8 %38, %40
  br i1 %41, label %148, label %42

42:                                               ; preds = %36, %30, %24, %20, %14
  %43 = getelementptr inbounds %struct.pwm_chip, ptr %16, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.pwm_ops, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = tail call i32 %46(ptr noundef %16, ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  br label %118

50:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef align 8 dereferenceable(24) %17, i32 24, i1 false) #14
  %51 = getelementptr inbounds %struct.pwm_state, ptr %1, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 7, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %78, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.pwm_ops, ptr %44, i32 0, i32 7
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %116, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 7, i32 3
  %62 = load i8, ptr %61, align 4, !range !12
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.pwm_ops, ptr %44, i32 0, i32 9
  %66 = load ptr, ptr %65, align 4
  tail call void %66(ptr noundef %16, ptr noundef nonnull %0) #14
  store i8 0, ptr %61, align 4
  %67 = load ptr, ptr %43, align 4
  %68 = getelementptr inbounds %struct.pwm_ops, ptr %67, i32 0, i32 7
  %69 = load ptr, ptr %68, align 4
  %70 = load i32, ptr %51, align 8
  br label %71

71:                                               ; preds = %64, %60
  %72 = phi i32 [ %70, %64 ], [ %52, %60 ]
  %73 = phi ptr [ %69, %64 ], [ %58, %60 ]
  %74 = tail call i32 %73(ptr noundef %16, ptr noundef nonnull %0, i32 noundef %72) #14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %114

76:                                               ; preds = %71
  %77 = load i32, ptr %51, align 8
  store i32 %77, ptr %53, align 8
  br label %78

78:                                               ; preds = %76, %50
  %79 = getelementptr inbounds %struct.pwm_state, ptr %1, i32 0, i32 3
  %80 = load i8, ptr %79, align 4, !range !12
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 7, i32 3
  %84 = load i8, ptr %83, align 4, !range !12
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %116, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %43, align 4
  %88 = getelementptr inbounds %struct.pwm_ops, ptr %87, i32 0, i32 9
  %89 = load ptr, ptr %88, align 4
  tail call void %89(ptr noundef %16, ptr noundef nonnull %0) #14
  br label %116

90:                                               ; preds = %78
  %91 = load ptr, ptr %43, align 4
  %92 = getelementptr inbounds %struct.pwm_ops, ptr %91, i32 0, i32 6
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %15, align 8
  %95 = load i64, ptr %11, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i64, ptr %1, align 8
  %98 = trunc i64 %97 to i32
  %99 = tail call i32 %93(ptr noundef %94, ptr noundef nonnull %0, i32 noundef %96, i32 noundef %98) #14
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %90
  %102 = load i64, ptr %1, align 8
  store i64 %102, ptr %17, align 8
  %103 = load i64, ptr %11, align 8
  %104 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 7, i32 1
  store i64 %103, ptr %104, align 8
  %105 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 7, i32 3
  %106 = load i8, ptr %105, align 4, !range !12
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = load ptr, ptr %43, align 4
  %110 = getelementptr inbounds %struct.pwm_ops, ptr %109, i32 0, i32 8
  %111 = load ptr, ptr %110, align 4
  %112 = tail call i32 %111(ptr noundef %16, ptr noundef nonnull %0) #14
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %108, %90, %71
  %115 = phi i32 [ %74, %71 ], [ %99, %90 ], [ %112, %108 ]
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 24, i1 false) #14
  br label %116

116:                                              ; preds = %114, %108, %101, %86, %82, %56
  %117 = phi i32 [ %115, %114 ], [ -22, %56 ], [ 0, %86 ], [ 0, %82 ], [ 0, %108 ], [ 0, %101 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3)
  br label %118

118:                                              ; preds = %116, %48
  %119 = phi i32 [ %49, %48 ], [ %117, %116 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %148

121:                                              ; preds = %118
  %122 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pwm_apply, i32 0, i32 1), align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %121
  %125 = tail call ptr @llvm.thread.pointer() #14
  %126 = getelementptr inbounds %struct.thread_info, ptr %125, i32 0, i32 2
  %127 = load i32, ptr %126, align 8
  %128 = lshr i32 %127, 5
  %129 = getelementptr i32, ptr @__cpu_online_mask, i32 %128
  %130 = load volatile i32, ptr %129, align 4
  %131 = and i32 %127, 31
  %132 = shl nuw i32 1, %131
  %133 = and i32 %132, %130
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %147, label %135

135:                                              ; preds = %124
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  %136 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_pwm_apply, i32 0, i32 7), align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %146, label %138

138:                                              ; preds = %138, %135
  %139 = phi ptr [ %143, %138 ], [ %136, %135 ]
  %140 = load volatile ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.tracepoint_func, ptr %139, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  tail call void %140(ptr noundef %142, ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  %143 = getelementptr %struct.tracepoint_func, ptr %139, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %138

146:                                              ; preds = %138, %135
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  br label %147

147:                                              ; preds = %146, %124, %121
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 24, i1 false)
  br label %148

148:                                              ; preds = %147, %118, %36, %10, %7, %2
  %149 = phi i32 [ 0, %147 ], [ -22, %10 ], [ -22, %7 ], [ -22, %2 ], [ 0, %36 ], [ %119, %118 ]
  ret i32 %149
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwm_capture(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pwm_chip, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.pwm_ops, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  tail call void @mutex_lock(ptr noundef nonnull @pwm_lock) #14
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds %struct.pwm_chip, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.pwm_ops, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %16, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #14
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  br label %22

22:                                               ; preds = %15, %11, %5, %3
  %23 = phi i32 [ %21, %15 ], [ -22, %5 ], [ -22, %3 ], [ -38, %11 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwm_adjust_config(ptr noundef %0) #0 {
  %2 = alloca %struct.pwm_state, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %3 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 6
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 6, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.pwm_device, ptr %0, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef align 8 dereferenceable(24) %7, i32 24, i1 false) #14
  %8 = load i64, ptr %2, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  store i64 0, ptr %11, align 8
  store i64 %4, ptr %2, align 8
  %12 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  store i32 %6, ptr %12, align 8
  br label %38

13:                                               ; preds = %1
  %14 = icmp eq i64 %4, %8
  br i1 %14, label %30, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = mul i64 %17, %4
  %19 = trunc i64 %8 to i32
  %20 = icmp ult i64 %18, 4294967296
  br i1 %20, label %21, label %25, !prof !10

21:                                               ; preds = %15
  %22 = trunc i64 %18 to i32
  %23 = udiv i32 %22, %19
  %24 = zext i32 %23 to i64
  br label %28

25:                                               ; preds = %15
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %19, i64 %18) #17, !srcloc !18
  %27 = extractvalue { i64, i64 } %26, 1
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i64 [ %24, %21 ], [ %27, %25 ]
  store i64 %29, ptr %16, align 8
  store i64 %4, ptr %2, align 8
  br label %30

30:                                               ; preds = %28, %13
  %31 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %6, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  store i32 %6, ptr %31, align 8
  %35 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %36 = load i64, ptr %35, align 8
  %37 = sub i64 %4, %36
  store i64 %37, ptr %35, align 8
  br label %38

38:                                               ; preds = %34, %30, %10
  %39 = call i32 @pwm_apply_state(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret i32 %39
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_pwm_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  store ptr %2, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false), !annotation !9
  %6 = icmp eq ptr %2, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @of_property_match_string(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %2) #14
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = inttoptr i32 %8 to ptr
  br label %86

12:                                               ; preds = %7, %3
  %13 = phi i32 [ %8, %7 ], [ 0, %3 ]
  %14 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef -1, i32 noundef %13, ptr noundef nonnull %5) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.of_pwm_get) #16
  %18 = inttoptr i32 %14 to ptr
  br label %86

19:                                               ; preds = %12
  %20 = load ptr, ptr %5, align 4
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.device_node, ptr %20, i32 0, i32 3
  %23 = select i1 %21, ptr null, ptr %22
  call void @mutex_lock(ptr noundef nonnull @pwm_lock) #14
  %24 = load ptr, ptr @pwm_chips, align 4
  %25 = icmp eq ptr %24, @pwm_chips
  br i1 %25, label %37, label %26

26:                                               ; preds = %34, %19
  %27 = phi ptr [ %35, %34 ], [ %24, %19 ]
  %28 = getelementptr i8, ptr %27, i32 -24
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = call ptr @dev_fwnode(ptr noundef nonnull %29) #14
  %33 = icmp eq ptr %32, %23
  br i1 %33, label %38, label %34

34:                                               ; preds = %31, %26
  %35 = load ptr, ptr %27, align 4
  %36 = icmp eq ptr %35, @pwm_chips
  br i1 %36, label %37, label %26

37:                                               ; preds = %34, %19
  call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  br label %83

38:                                               ; preds = %31
  %39 = getelementptr i8, ptr %27, i32 -24
  call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = icmp eq ptr %39, inttoptr (i32 -517 to ptr)
  br i1 %42, label %83, label %43

43:                                               ; preds = %41
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.of_pwm_get) #16
  br label %83

45:                                               ; preds = %38
  %46 = getelementptr i8, ptr %27, i32 -8
  %47 = load ptr, ptr %46, align 4
  %48 = call ptr %47(ptr noundef %39, ptr noundef nonnull %5) #14
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %83, label %50

50:                                               ; preds = %45
  %51 = icmp eq ptr %0, null
  %52 = getelementptr inbounds %struct.pwm_device, ptr %48, i32 0, i32 4
  %53 = load ptr, ptr %52, align 8
  %54 = load ptr, ptr %53, align 4
  br i1 %51, label %55, label %56

55:                                               ; preds = %50
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.17) #16
  br label %73

56:                                               ; preds = %50
  %57 = call ptr @device_link_add(ptr noundef nonnull %0, ptr noundef %54, i32 noundef 2) #14
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load ptr, ptr %52, align 8
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load ptr, ptr %61, align 4
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi ptr [ %66, %65 ], [ %63, %59 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, ptr noundef %68) #16
  br label %71

69:                                               ; preds = %56
  %70 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %73

71:                                               ; preds = %69, %67
  %72 = phi ptr [ inttoptr (i32 -22 to ptr), %67 ], [ %57, %69 ]
  call void @pwm_put(ptr noundef %48) #14
  br label %83

73:                                               ; preds = %69, %55
  br i1 %6, label %74, label %81

74:                                               ; preds = %73
  %75 = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %4, i32 noundef 1, i32 noundef %13) #14
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %4, align 4
  br label %81

79:                                               ; preds = %74
  %80 = load ptr, ptr %1, align 4
  store ptr %80, ptr %4, align 4
  br label %81

81:                                               ; preds = %79, %77, %73
  %82 = phi ptr [ %78, %77 ], [ %80, %79 ], [ %2, %73 ]
  store ptr %82, ptr %48, align 8
  br label %83

83:                                               ; preds = %81, %71, %45, %43, %41, %37
  %84 = phi ptr [ %48, %45 ], [ %72, %71 ], [ %48, %81 ], [ %39, %43 ], [ inttoptr (i32 -517 to ptr), %41 ], [ inttoptr (i32 -517 to ptr), %37 ]
  %85 = load ptr, ptr %5, align 4
  call void @of_node_put(ptr noundef %85) #14
  br label %86

86:                                               ; preds = %83, %16, %10
  %87 = phi ptr [ %11, %10 ], [ %18, %16 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #14
  ret ptr %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pwm_add_table(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @pwm_lookup_lock) #14
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %7, %4 ], [ %1, %2 ]
  %6 = phi ptr [ %10, %4 ], [ %0, %2 ]
  %7 = add i32 %5, -1
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @pwm_lookup_list, i32 0, i32 1), align 4
  store ptr %6, ptr getelementptr inbounds (%struct.list_head, ptr @pwm_lookup_list, i32 0, i32 1), align 4
  store ptr @pwm_lookup_list, ptr %6, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %6, ptr %8, align 4
  %10 = getelementptr %struct.pwm_lookup, ptr %6, i32 1
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %12, label %4

12:                                               ; preds = %4, %2
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lookup_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pwm_remove_table(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @pwm_lookup_lock) #14
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %7, %4 ], [ %1, %2 ]
  %6 = phi ptr [ %12, %4 ], [ %0, %2 ]
  %7 = add i32 %5, -1
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %12 = getelementptr %struct.pwm_lookup, ptr %6, i32 1
  %13 = icmp eq i32 %7, 0
  br i1 %13, label %14, label %4

14:                                               ; preds = %4, %2
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lookup_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pwm_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @dev_fwnode(ptr noundef nonnull %0) #14
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 4
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = icmp eq ptr %5, null
  %14 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %15 = or i1 %13, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, @of_fwnode_ops
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %5, i32 -12
  %22 = tail call ptr @of_pwm_get(ptr noundef nonnull %0, ptr noundef %21, ptr noundef %1)
  br label %176

23:                                               ; preds = %16, %11, %2
  %24 = phi ptr [ %12, %16 ], [ %12, %11 ], [ null, %2 ]
  tail call void @mutex_lock(ptr noundef nonnull @pwm_lookup_lock) #14
  %25 = load ptr, ptr @pwm_lookup_list, align 4
  %26 = icmp eq ptr %25, @pwm_lookup_list
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lookup_lock) #14
  br label %176

28:                                               ; preds = %23
  %29 = icmp eq ptr %24, null
  %30 = icmp eq ptr %1, null
  br label %31

31:                                               ; preds = %58, %28
  %32 = phi ptr [ %25, %28 ], [ %61, %58 ]
  %33 = phi i32 [ 0, %28 ], [ %60, %58 ]
  %34 = phi ptr [ null, %28 ], [ %59, %58 ]
  %35 = getelementptr inbounds %struct.pwm_lookup, ptr %32, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  br i1 %29, label %58, label %39

39:                                               ; preds = %38
  %40 = tail call i32 @strcmp(ptr noundef nonnull %36, ptr noundef nonnull %24)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %39, %31
  %43 = phi i32 [ 0, %31 ], [ 2, %39 ]
  %44 = getelementptr inbounds %struct.pwm_lookup, ptr %32, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  br i1 %30, label %58, label %48

48:                                               ; preds = %47
  %49 = tail call i32 @strcmp(ptr noundef nonnull %45, ptr noundef nonnull %1)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = or i32 %43, 1
  br label %53

53:                                               ; preds = %51, %42
  %54 = phi i32 [ %52, %51 ], [ %43, %42 ]
  %55 = icmp ugt i32 %54, %33
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = icmp eq i32 %54, 3
  br i1 %57, label %63, label %58

58:                                               ; preds = %56, %53, %48, %47, %39, %38
  %59 = phi ptr [ %34, %39 ], [ %34, %48 ], [ %34, %53 ], [ %34, %47 ], [ %34, %38 ], [ %32, %56 ]
  %60 = phi i32 [ %33, %39 ], [ %33, %48 ], [ %33, %53 ], [ %33, %47 ], [ %33, %38 ], [ %54, %56 ]
  %61 = load ptr, ptr %32, align 4
  %62 = icmp eq ptr %61, @pwm_lookup_list
  br i1 %62, label %63, label %31

63:                                               ; preds = %58, %56
  %64 = phi ptr [ %59, %58 ], [ %32, %56 ]
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lookup_lock) #14
  %65 = icmp eq ptr %64, null
  br i1 %65, label %176, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.pwm_lookup, ptr %64, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %94, label %70

70:                                               ; preds = %66
  tail call void @mutex_lock(ptr noundef nonnull @pwm_lock) #14
  %71 = load ptr, ptr @pwm_chips, align 4
  %72 = icmp eq ptr %71, @pwm_chips
  br i1 %72, label %90, label %73

73:                                               ; preds = %87, %70
  %74 = phi ptr [ %88, %87 ], [ %71, %70 ]
  %75 = getelementptr i8, ptr %74, i32 -24
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.device, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load ptr, ptr %76, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %80, %73
  %84 = phi ptr [ %81, %80 ], [ %78, %73 ]
  %85 = tail call i32 @strcmp(ptr noundef nonnull %84, ptr noundef nonnull %68) #14
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83, %80
  %88 = load ptr, ptr %74, align 4
  %89 = icmp eq ptr %88, @pwm_chips
  br i1 %89, label %90, label %73

90:                                               ; preds = %87, %70
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  br label %94

91:                                               ; preds = %83
  %92 = getelementptr i8, ptr %74, i32 -24
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %128

94:                                               ; preds = %91, %90, %66
  %95 = getelementptr inbounds %struct.pwm_lookup, ptr %64, i32 0, i32 7
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %176, label %98

98:                                               ; preds = %94
  %99 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull %96) #14
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %176

101:                                              ; preds = %98
  %102 = load ptr, ptr %67, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %176, label %104

104:                                              ; preds = %101
  tail call void @mutex_lock(ptr noundef nonnull @pwm_lock) #14
  %105 = load ptr, ptr @pwm_chips, align 4
  %106 = icmp eq ptr %105, @pwm_chips
  br i1 %106, label %124, label %107

107:                                              ; preds = %121, %104
  %108 = phi ptr [ %122, %121 ], [ %105, %104 ]
  %109 = getelementptr i8, ptr %108, i32 -24
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.device, ptr %110, i32 0, i32 3
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load ptr, ptr %110, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %114, %107
  %118 = phi ptr [ %115, %114 ], [ %112, %107 ]
  %119 = tail call i32 @strcmp(ptr noundef nonnull %118, ptr noundef nonnull %102) #14
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %117, %114
  %122 = load ptr, ptr %108, align 4
  %123 = icmp eq ptr %122, @pwm_chips
  br i1 %123, label %124, label %107

124:                                              ; preds = %121, %104
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  br label %176

125:                                              ; preds = %117
  %126 = getelementptr i8, ptr %108, i32 -24
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  %127 = icmp eq ptr %126, null
  br i1 %127, label %176, label %128

128:                                              ; preds = %125, %91
  %129 = phi ptr [ %126, %125 ], [ %92, %91 ]
  %130 = getelementptr inbounds %struct.pwm_lookup, ptr %64, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.pwm_chip, ptr %129, i32 0, i32 3
  %133 = load i32, ptr %132, align 4
  %134 = icmp ugt i32 %133, %131
  br i1 %134, label %135, label %176

135:                                              ; preds = %128
  %136 = icmp eq ptr %1, null
  %137 = select i1 %136, ptr %24, ptr %1
  tail call void @mutex_lock(ptr noundef nonnull @pwm_lock) #14
  %138 = getelementptr inbounds %struct.pwm_chip, ptr %129, i32 0, i32 7
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr %struct.pwm_device, ptr %139, i32 %131
  %141 = tail call fastcc i32 @pwm_device_request(ptr noundef %140, ptr noundef %137) #14
  %142 = icmp slt i32 %141, 0
  %143 = inttoptr i32 %141 to ptr
  %144 = select i1 %142, ptr %143, ptr %140
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  %145 = icmp ugt ptr %144, inttoptr (i32 -4096 to ptr)
  br i1 %145, label %176, label %146

146:                                              ; preds = %135
  %147 = getelementptr inbounds %struct.pwm_device, ptr %144, i32 0, i32 4
  %148 = load ptr, ptr %147, align 8
  %149 = load ptr, ptr %148, align 4
  br i1 %3, label %150, label %151

150:                                              ; preds = %146
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %149, ptr noundef nonnull @.str.17) #16
  br label %168

151:                                              ; preds = %146
  %152 = tail call ptr @device_link_add(ptr noundef nonnull %0, ptr noundef %149, i32 noundef 2) #14
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = load ptr, ptr %147, align 8
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.device, ptr %156, i32 0, i32 3
  %158 = load ptr, ptr %157, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load ptr, ptr %156, align 4
  br label %162

162:                                              ; preds = %160, %154
  %163 = phi ptr [ %161, %160 ], [ %158, %154 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, ptr noundef %163) #16
  br label %166

164:                                              ; preds = %151
  %165 = icmp ugt ptr %152, inttoptr (i32 -4096 to ptr)
  br i1 %165, label %166, label %168

166:                                              ; preds = %164, %162
  %167 = phi ptr [ inttoptr (i32 -22 to ptr), %162 ], [ %152, %164 ]
  tail call void @pwm_put(ptr noundef %144) #14
  br label %176

168:                                              ; preds = %164, %150
  %169 = getelementptr inbounds %struct.pwm_lookup, ptr %64, i32 0, i32 5
  %170 = load i32, ptr %169, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.pwm_device, ptr %144, i32 0, i32 6
  store i64 %171, ptr %172, align 8
  %173 = getelementptr inbounds %struct.pwm_lookup, ptr %64, i32 0, i32 6
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr inbounds %struct.pwm_device, ptr %144, i32 0, i32 6, i32 1
  store i32 %174, ptr %175, align 8
  br label %176

176:                                              ; preds = %168, %166, %135, %128, %125, %124, %101, %98, %94, %63, %27, %20
  %177 = phi ptr [ %22, %20 ], [ %167, %166 ], [ %144, %168 ], [ %144, %135 ], [ inttoptr (i32 -19 to ptr), %63 ], [ inttoptr (i32 -517 to ptr), %124 ], [ inttoptr (i32 -517 to ptr), %125 ], [ inttoptr (i32 -517 to ptr), %98 ], [ inttoptr (i32 -517 to ptr), %94 ], [ inttoptr (i32 -517 to ptr), %101 ], [ inttoptr (i32 -22 to ptr), %128 ], [ inttoptr (i32 -19 to ptr), %27 ]
  ret ptr %177
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_pwm_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @pwm_get(ptr noundef %0, ptr noundef %1)
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_pwm_release, ptr noundef %3) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  tail call void @pwm_put(ptr noundef %3) #14
  %9 = inttoptr i32 %6 to ptr
  br label %10

10:                                               ; preds = %8, %5, %2
  %11 = phi ptr [ %9, %8 ], [ %3, %2 ], [ %3, %5 ]
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_pwm_release(ptr noundef %0) #0 {
  tail call void @pwm_put(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_of_pwm_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @of_pwm_get(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_pwm_release, ptr noundef %4) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  tail call void @pwm_put(ptr noundef %4) #14
  %10 = inttoptr i32 %7 to ptr
  br label %11

11:                                               ; preds = %9, %6, %3
  %12 = phi ptr [ %10, %9 ], [ %4, %3 ], [ %4, %6 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_fwnode_pwm_get(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @of_fwnode_ops
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %1, i32 -12
  %13 = tail call ptr @of_pwm_get(ptr noundef %0, ptr noundef %12, ptr noundef %2)
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @devm_pwm_release, ptr noundef %13) #14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  tail call void @pwm_put(ptr noundef %13) #14
  %19 = inttoptr i32 %16 to ptr
  br label %20

20:                                               ; preds = %18, %15, %11, %7, %3
  %21 = phi ptr [ %19, %18 ], [ %13, %11 ], [ inttoptr (i32 -19 to ptr), %7 ], [ inttoptr (i32 -19 to ptr), %3 ], [ %13, %15 ]
  ret ptr %21
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pwm_debugfs_init() #9 section ".init.text" {
  %1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext -32476, ptr noundef null, ptr noundef null, ptr noundef nonnull @pwm_debugfs_fops) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_pwm(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_pwm, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_pwm, ptr %5, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_pwm, ptr %5, i32 0, i32 3
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_pwm, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.trace_event_raw_pwm, ptr %5, i32 0, i32 5
  %19 = load i8, ptr %18, align 4, !range !12
  %20 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef %11, i64 noundef %13, i64 noundef %15, i32 noundef %17, i32 noundef %20) #14
  %21 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %22

22:                                               ; preds = %8, %3
  %23 = phi i32 [ %21, %8 ], [ %6, %3 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_debugfs_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call i32 @seq_open(ptr noundef %1, ptr noundef nonnull @pwm_debugfs_sops) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 15
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.seq_file, ptr %11, i32 0, i32 11
  store ptr %7, ptr %12, align 8
  br label %13

13:                                               ; preds = %9, %5, %2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pwm_seq_start(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @pwm_lock) #14
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  store ptr @.str.19, ptr %3, align 8
  %4 = load i64, ptr %1, align 8
  %5 = tail call ptr @seq_list_start(ptr noundef nonnull @pwm_chips, i64 noundef %4) #14
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pwm_seq_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @pwm_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @pwm_seq_next(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  store ptr @.str.20, ptr %4, align 8
  %5 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef nonnull @pwm_chips, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pwm_seq_show(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %1, i32 -24
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %8, align 4
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi ptr [ %11, %10 ], [ @.str.22, %2 ]
  %14 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load ptr, ptr %6, align 4
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %18, %17 ], [ %15, %12 ]
  %21 = getelementptr i8, ptr %1, i32 -12
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 1
  %24 = select i1 %23, ptr @.str.19, ptr @.str.23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef %5, ptr noundef %13, ptr noundef %20, i32 noundef %22, ptr noundef nonnull %24) #14
  %25 = load i32, ptr %21, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %61, label %27

27:                                               ; preds = %19
  %28 = getelementptr i8, ptr %1, i32 8
  br label %29

29:                                               ; preds = %57, %27
  %30 = phi i32 [ 0, %27 ], [ %58, %57 ]
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr %struct.pwm_device, ptr %31, i32 %30
  %33 = getelementptr %struct.pwm_device, ptr %31, i32 %30, i32 7
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds i8, ptr %33, i32 8
  %36 = load i64, ptr %35, align 8
  %37 = getelementptr inbounds i8, ptr %33, i32 16
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds i8, ptr %33, i32 20
  %40 = load i8, ptr %39, align 4
  %41 = getelementptr inbounds i8, ptr %33, i32 21
  %42 = load i8, ptr %41, align 1
  %43 = load ptr, ptr %32, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %30, ptr noundef %43) #14
  %44 = getelementptr %struct.pwm_device, ptr %31, i32 %30, i32 1
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %29
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.25) #14
  br label %49

49:                                               ; preds = %48, %29
  %50 = icmp eq i8 %40, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.26) #14
  br label %52

52:                                               ; preds = %51, %49
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, i64 noundef %34) #14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.28, i64 noundef %36) #14
  %53 = icmp eq i32 %38, 0
  %54 = select i1 %53, ptr @.str.31, ptr @.str.30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef nonnull %54) #14
  %55 = icmp eq i8 %42, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.32) #14
  br label %57

57:                                               ; preds = %56, %52
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.20) #14
  %58 = add nuw i32 %30, 1
  %59 = load i32, ptr %21, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %29, label %61

61:                                               ; preds = %57, %19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }

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
!12 = !{i8 0, i8 2}
!13 = !{i64 446581}
!14 = !{i64 2152695262}
!15 = !{i64 2152695408}
!16 = !{i64 2152679459}
!17 = !{i64 2152679609}
!18 = !{i64 2148708658, i64 2148708938, i64 2148709272, i64 2148709606}
