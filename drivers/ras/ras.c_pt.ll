; ModuleID = '/llk/IR/drivers/ras/ras.c_pt.bc'
source_filename = "../drivers/ras/ras.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_mc_event:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_mc_event\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_mc_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_mc_event:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_mc_event\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_mc_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_mc_event:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_mc_event\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_mc_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_non_standard_event:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_non_standard_event\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_non_standard_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_non_standard_event:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_non_standard_event\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_non_standard_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_non_standard_event:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_non_standard_event\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_non_standard_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_arm_event:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_arm_event\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_arm_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_arm_event:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_arm_event\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_arm_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_arm_event:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_arm_event\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_arm_event:\09\09\09\09\09"
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
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.trace_print_flags = type { i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_mc_event = type { %struct.trace_entry, i32, i32, i32, i16, i8, i8, i8, i8, i32, i8, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.cper_sec_proc_arm = type { i32, i16, i16, i32, i8, [3 x i8], i64, i64, i32, i32 }
%struct.trace_event_raw_arm_event = type { %struct.trace_entry, i64, i64, i32, i32, i8, [0 x i8] }
%struct.trace_event_raw_non_standard_event = type { %struct.trace_entry, [16 x i8], [16 x i8], i32, i8, i32, i32, [0 x i8] }
%struct.trace_event_raw_aer_event = type { %struct.trace_entry, i32, i32, i8, i8, [4 x i32], [0 x i8] }
%struct.aer_header_log_regs = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_mc_event = internal constant [9 x i8] c"mc_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mc_event = dso_local global %struct.static_call_key { ptr @__traceiter_mc_event }, align 4
@__tracepoint_mc_event = dso_local global %struct.tracepoint { ptr @__tpstrtab_mc_event, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mc_event, ptr null, ptr @__traceiter_mc_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mc_event = internal constant ptr @__tracepoint_mc_event, section "__tracepoints_ptrs", align 4
@__tpstrtab_arm_event = internal constant [10 x i8] c"arm_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_arm_event = dso_local global %struct.static_call_key { ptr @__traceiter_arm_event }, align 4
@__tracepoint_arm_event = dso_local global %struct.tracepoint { ptr @__tpstrtab_arm_event, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_arm_event, ptr null, ptr @__traceiter_arm_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_arm_event = internal constant ptr @__tracepoint_arm_event, section "__tracepoints_ptrs", align 4
@__tpstrtab_non_standard_event = internal constant [19 x i8] c"non_standard_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_non_standard_event = dso_local global %struct.static_call_key { ptr @__traceiter_non_standard_event }, align 4
@__tracepoint_non_standard_event = dso_local global %struct.tracepoint { ptr @__tpstrtab_non_standard_event, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_non_standard_event, ptr null, ptr @__traceiter_non_standard_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_non_standard_event = internal constant ptr @__tracepoint_non_standard_event, section "__tracepoints_ptrs", align 4
@__tpstrtab_aer_event = internal constant [10 x i8] c"aer_event\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_aer_event = dso_local global %struct.static_call_key { ptr @__traceiter_aer_event }, align 4
@__tracepoint_aer_event = dso_local global %struct.tracepoint { ptr @__tpstrtab_aer_event, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_aer_event, ptr null, ptr @__traceiter_aer_event, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_aer_event = internal constant ptr @__tracepoint_aer_event, section "__tracepoints_ptrs", align 4
@str__ras__trace_system_name = internal constant [4 x i8] c"ras\00", align 1
@trace_event_fields_mc_event = internal global [13 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.1, %union.anon { %struct.anon { ptr @.str.2, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon { %struct.anon { ptr @.str.7, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon { %struct.anon { ptr @.str.9, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon { %struct.anon { ptr @.str.11, i32 1, i32 1, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon { %struct.anon { ptr @.str.12, i32 1, i32 1, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon { %struct.anon { ptr @.str.13, i32 1, i32 1, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon { %struct.anon { ptr @.str.15, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon { %struct.anon { ptr @.str.16, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.14, %union.anon { %struct.anon { ptr @.str.17, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.18, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mc_event = internal global %struct.trace_event_class { ptr @str__ras__trace_system_name, ptr @trace_event_raw_event_mc_event, ptr @perf_trace_mc_event, ptr @trace_event_reg, ptr @trace_event_fields_mc_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mc_event, i64 24), ptr getelementptr (i8, ptr @event_class_mc_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mc_event = internal global %struct.trace_event_functions { ptr @trace_raw_output_mc_event, ptr null, ptr null, ptr null }, align 4
@print_fmt_mc_event = internal global [437 x i8] c"\22%d %s error%s:%s%s on %s (mc:%d location:%d:%d:%d address:0x%08lx grain:%d syndrome:0x%08lx%s%s)\22, REC->error_count, mc_event_error_type(REC->error_type), REC->error_count > 1 ? \22s\22 : \22\22, __get_str(msg)[0] ? \22 \22 : \22\22, __get_str(msg), __get_str(label), REC->mc_index, REC->top_layer, REC->middle_layer, REC->lower_layer, REC->address, 1 << REC->grain_bits, REC->syndrome, __get_str(driver_detail)[0] ? \22 \22 : \22\22, __get_str(driver_detail)\00", align 1
@event_mc_event = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mc_event, %union.anon.0 { ptr @__tracepoint_mc_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mc_event }, ptr @print_fmt_mc_event, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mc_event = internal global ptr @event_mc_event, section "_ftrace_events", align 4
@trace_event_fields_arm_event = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.28, %union.anon { %struct.anon { ptr @.str.29, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon { %struct.anon { ptr @.str.30, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon { %struct.anon { ptr @.str.32, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon { %struct.anon { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon { %struct.anon { ptr @.str.34, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_arm_event = internal global %struct.trace_event_class { ptr @str__ras__trace_system_name, ptr @trace_event_raw_event_arm_event, ptr @perf_trace_arm_event, ptr @trace_event_reg, ptr @trace_event_fields_arm_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_arm_event, i64 24), ptr getelementptr (i8, ptr @event_class_arm_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_arm_event = internal global %struct.trace_event_functions { ptr @trace_raw_output_arm_event, ptr null, ptr null, ptr null }, align 4
@print_fmt_arm_event = internal global [162 x i8] c"\22affinity level: %d; MPIDR: %016llx; MIDR: %016llx; running state: %d; PSCI state: %d\22, REC->affinity, REC->mpidr, REC->midr, REC->running_state, REC->psci_state\00", align 1
@event_arm_event = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_arm_event, %union.anon.0 { ptr @__tracepoint_arm_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_arm_event }, ptr @print_fmt_arm_event, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_arm_event = internal global ptr @event_arm_event, section "_ftrace_events", align 4
@trace_event_fields_non_standard_event = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.37, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon { %struct.anon { ptr @.str.38, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.39, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon { %struct.anon { ptr @.str.40, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon { %struct.anon { ptr @.str.41, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.42, %union.anon { %struct.anon { ptr @.str.43, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_non_standard_event = internal global %struct.trace_event_class { ptr @str__ras__trace_system_name, ptr @trace_event_raw_event_non_standard_event, ptr @perf_trace_non_standard_event, ptr @trace_event_reg, ptr @trace_event_fields_non_standard_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_non_standard_event, i64 24), ptr getelementptr (i8, ptr @event_class_non_standard_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_non_standard_event = internal global %struct.trace_event_functions { ptr @trace_raw_output_non_standard_event, ptr null, ptr null, ptr null }, align 4
@print_fmt_non_standard_event = internal global [186 x i8] c"\22severity: %d; sec type:%pU; FRU: %pU %s; data len:%d; raw data:%s\22, REC->sev, REC->sec_type, REC->fru_id, __get_str(fru_text), REC->len, __print_hex(__get_dynamic_array(buf), REC->len)\00", align 1
@event_non_standard_event = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_non_standard_event, %union.anon.0 { ptr @__tracepoint_non_standard_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_non_standard_event }, ptr @print_fmt_non_standard_event, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_non_standard_event = internal global ptr @event_non_standard_event, section "_ftrace_events", align 4
@trace_event_fields_aer_event = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon { %struct.anon { ptr @.str.45, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon { %struct.anon { ptr @.str.46, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon { %struct.anon { ptr @.str.47, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.8, %union.anon { %struct.anon { ptr @.str.48, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon { %struct.anon { ptr @.str.50, i32 16, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_aer_event = internal global %struct.trace_event_class { ptr @str__ras__trace_system_name, ptr @trace_event_raw_event_aer_event, ptr @perf_trace_aer_event, ptr @trace_event_reg, ptr @trace_event_fields_aer_event, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_aer_event, i64 24), ptr getelementptr (i8, ptr @event_class_aer_event, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_aer_event = internal global %struct.trace_event_functions { ptr @trace_raw_output_aer_event, ptr null, ptr null, ptr null }, align 4
@print_fmt_aer_event = internal global [1228 x i8] c"\22%s PCIe Bus Error: severity=%s, %s, TLP Header=%s\0A\22, __get_str(dev_name), REC->severity == 2 ? \22Corrected\22 : REC->severity == 1 ? \22Fatal\22 : \22Uncorrected, non-fatal\22, REC->severity == 2 ? __print_flags(REC->status, \22|\22, {0x00000001, \22Receiver Error\22}, {0x00000040, \22Bad TLP\22}, {0x00000080, \22Bad DLLP\22}, {0x00000100, \22RELAY_NUM Rollover\22}, {0x00001000, \22Replay Timer Timeout\22}, {0x00002000, \22Advisory Non-Fatal Error\22}, {0x00004000, \22Corrected Internal Error\22}, {0x00008000, \22Header Log Overflow\22}) : __print_flags(REC->status, \22|\22, {0x00000001, \22Undefined\22}, {0x00000010, \22Data Link Protocol Error\22}, {0x00000020, \22Surprise Down Error\22}, {0x00001000,\22Poisoned TLP\22}, {0x00002000, \22Flow Control Protocol Error\22}, {0x00004000, \22Completion Timeout\22}, {0x00008000,\22Completer Abort\22}, {0x00010000, \22Unexpected Completion\22}, {0x00020000, \22Receiver Overflow\22}, {0x00040000, \22Malformed TLP\22}, {0x00080000, \22ECRC Error\22}, {0x00100000, \22Unsupported Request Error\22}, {0x00200000, \22ACS Violation\22}, {0x00400000, \22Uncorrectable Internal Error\22}, {0x00800000, \22MC Blocked TLP\22}, {0x01000000, \22AtomicOp Egress Blocked\22}, {0x02000000, \22TLP Prefix Blocked Error\22}), REC->tlp_header_valid ? __print_array(REC->tlp_header, 4, 4) : \22Not available\22\00", align 1
@event_aer_event = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_aer_event, %union.anon.0 { ptr @__tracepoint_aer_event }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_aer_event }, ptr @print_fmt_aer_event, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_aer_event = internal global ptr @event_aer_event, section "_ftrace_events", align 4
@__initcall__kmod_ras__267_38_ras_init4 = internal global ptr @ras_init, section ".initcall4.init", align 4
@__kstrtab___tracepoint_mc_event = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_mc_event = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_mc_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_mc_event to i32), ptr @__kstrtab___tracepoint_mc_event, ptr @__kstrtabns___tracepoint_mc_event }, section "___ksymtab_gpl+__tracepoint_mc_event", align 4
@__kstrtab___traceiter_mc_event = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_mc_event = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_mc_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_mc_event to i32), ptr @__kstrtab___traceiter_mc_event, ptr @__kstrtabns___traceiter_mc_event }, section "___ksymtab_gpl+__traceiter_mc_event", align 4
@__kstrtab___SCK__tp_func_mc_event = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_mc_event = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_mc_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_mc_event to i32), ptr @__kstrtab___SCK__tp_func_mc_event, ptr @__kstrtabns___SCK__tp_func_mc_event }, section "___ksymtab_gpl+__SCK__tp_func_mc_event", align 4
@__kstrtab___tracepoint_non_standard_event = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_non_standard_event = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_non_standard_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_non_standard_event to i32), ptr @__kstrtab___tracepoint_non_standard_event, ptr @__kstrtabns___tracepoint_non_standard_event }, section "___ksymtab_gpl+__tracepoint_non_standard_event", align 4
@__kstrtab___traceiter_non_standard_event = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_non_standard_event = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_non_standard_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_non_standard_event to i32), ptr @__kstrtab___traceiter_non_standard_event, ptr @__kstrtabns___traceiter_non_standard_event }, section "___ksymtab_gpl+__traceiter_non_standard_event", align 4
@__kstrtab___SCK__tp_func_non_standard_event = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_non_standard_event = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_non_standard_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_non_standard_event to i32), ptr @__kstrtab___SCK__tp_func_non_standard_event, ptr @__kstrtabns___SCK__tp_func_non_standard_event }, section "___ksymtab_gpl+__SCK__tp_func_non_standard_event", align 4
@__kstrtab___tracepoint_arm_event = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_arm_event = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_arm_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_arm_event to i32), ptr @__kstrtab___tracepoint_arm_event, ptr @__kstrtabns___tracepoint_arm_event }, section "___ksymtab_gpl+__tracepoint_arm_event", align 4
@__kstrtab___traceiter_arm_event = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_arm_event = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_arm_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_arm_event to i32), ptr @__kstrtab___traceiter_arm_event, ptr @__kstrtabns___traceiter_arm_event }, section "___ksymtab_gpl+__traceiter_arm_event", align 4
@__kstrtab___SCK__tp_func_arm_event = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_arm_event = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_arm_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_arm_event to i32), ptr @__kstrtab___SCK__tp_func_arm_event, ptr @__kstrtabns___SCK__tp_func_arm_event }, section "___ksymtab_gpl+__SCK__tp_func_arm_event", align 4
@__setup_str_parse_ras_param = internal constant [4 x i8] c"ras\00", section ".init.rodata", align 1
@__setup_parse_ras_param = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_ras_param, ptr @parse_ras_param, i32 0 }, section ".init.setup", align 4
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"error_type\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"u16\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"error_count\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"mc_index\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"s8\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"top_layer\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"middle_layer\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"lower_layer\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"grain_bits\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"syndrome\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"driver_detail\00", align 1
@.str.19 = private unnamed_addr constant [98 x i8] c"%d %s error%s:%s%s on %s (mc:%d location:%d:%d:%d address:0x%08lx grain:%d syndrome:0x%08lx%s%s)\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"Corrected\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Uncorrected\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Deferred\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"Fatal\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"mpidr\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"midr\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"running_state\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"psci_state\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"affinity\00", align 1
@.str.35 = private unnamed_addr constant [86 x i8] c"affinity level: %d; MPIDR: %016llx; MIDR: %016llx; running state: %d; PSCI state: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"char[16]\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"sec_type\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"fru_id\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"fru_text\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"sev\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"__data_loc u8[]\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.44 = private unnamed_addr constant [67 x i8] c"severity: %d; sec type:%pU; FRU: %pU %s; data len:%d; raw data:%s\0A\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"dev_name\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"severity\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"tlp_header_valid\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"u32[4]\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"tlp_header\00", align 1
@.str.51 = private unnamed_addr constant [52 x i8] c"%s PCIe Bus Error: severity=%s, %s, TLP Header=%s\0A\0A\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"Uncorrected, non-fatal\00", align 1
@trace_raw_output_aer_event.__flags = internal constant [9 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.53 }, %struct.trace_print_flags { i32 64, ptr @.str.54 }, %struct.trace_print_flags { i32 128, ptr @.str.55 }, %struct.trace_print_flags { i32 256, ptr @.str.56 }, %struct.trace_print_flags { i32 4096, ptr @.str.57 }, %struct.trace_print_flags { i32 8192, ptr @.str.58 }, %struct.trace_print_flags { i32 16384, ptr @.str.59 }, %struct.trace_print_flags { i32 32768, ptr @.str.60 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.53 = private unnamed_addr constant [15 x i8] c"Receiver Error\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"Bad TLP\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"Bad DLLP\00", align 1
@.str.56 = private unnamed_addr constant [19 x i8] c"RELAY_NUM Rollover\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"Replay Timer Timeout\00", align 1
@.str.58 = private unnamed_addr constant [25 x i8] c"Advisory Non-Fatal Error\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"Corrected Internal Error\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"Header Log Overflow\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@trace_raw_output_aer_event.__flags.62 = internal constant [18 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.63 }, %struct.trace_print_flags { i32 16, ptr @.str.64 }, %struct.trace_print_flags { i32 32, ptr @.str.65 }, %struct.trace_print_flags { i32 4096, ptr @.str.66 }, %struct.trace_print_flags { i32 8192, ptr @.str.67 }, %struct.trace_print_flags { i32 16384, ptr @.str.68 }, %struct.trace_print_flags { i32 32768, ptr @.str.69 }, %struct.trace_print_flags { i32 65536, ptr @.str.70 }, %struct.trace_print_flags { i32 131072, ptr @.str.71 }, %struct.trace_print_flags { i32 262144, ptr @.str.72 }, %struct.trace_print_flags { i32 524288, ptr @.str.73 }, %struct.trace_print_flags { i32 1048576, ptr @.str.74 }, %struct.trace_print_flags { i32 2097152, ptr @.str.75 }, %struct.trace_print_flags { i32 4194304, ptr @.str.76 }, %struct.trace_print_flags { i32 8388608, ptr @.str.77 }, %struct.trace_print_flags { i32 16777216, ptr @.str.78 }, %struct.trace_print_flags { i32 33554432, ptr @.str.79 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.63 = private unnamed_addr constant [10 x i8] c"Undefined\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"Data Link Protocol Error\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"Surprise Down Error\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"Poisoned TLP\00", align 1
@.str.67 = private unnamed_addr constant [28 x i8] c"Flow Control Protocol Error\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"Completion Timeout\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"Completer Abort\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"Unexpected Completion\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"Receiver Overflow\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"Malformed TLP\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"ECRC Error\00", align 1
@.str.74 = private unnamed_addr constant [26 x i8] c"Unsupported Request Error\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"ACS Violation\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"Uncorrectable Internal Error\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"MC Blocked TLP\00", align 1
@.str.78 = private unnamed_addr constant [24 x i8] c"AtomicOp Egress Blocked\00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c"TLP Prefix Blocked Error\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"Not available\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@llvm.compiler.used = appending global [31 x ptr] [ptr @__event_aer_event, ptr @__event_arm_event, ptr @__event_mc_event, ptr @__event_non_standard_event, ptr @__initcall__kmod_ras__267_38_ras_init4, ptr @__ksymtab___SCK__tp_func_arm_event, ptr @__ksymtab___SCK__tp_func_mc_event, ptr @__ksymtab___SCK__tp_func_non_standard_event, ptr @__ksymtab___traceiter_arm_event, ptr @__ksymtab___traceiter_mc_event, ptr @__ksymtab___traceiter_non_standard_event, ptr @__ksymtab___tracepoint_arm_event, ptr @__ksymtab___tracepoint_mc_event, ptr @__ksymtab___tracepoint_non_standard_event, ptr @__setup_parse_ras_param, ptr @__tracepoint_aer_event, ptr @__tracepoint_arm_event, ptr @__tracepoint_mc_event, ptr @__tracepoint_non_standard_event, ptr @__tracepoint_ptr_aer_event, ptr @__tracepoint_ptr_arm_event, ptr @__tracepoint_ptr_mc_event, ptr @__tracepoint_ptr_non_standard_event, ptr @event_aer_event, ptr @event_arm_event, ptr @event_class_aer_event, ptr @event_class_arm_event, ptr @event_class_mc_event, ptr @event_class_non_standard_event, ptr @event_mc_event, ptr @event_non_standard_event], section "llvm.metadata"
@switch.table.trace_raw_output_mc_event = private unnamed_addr constant [4 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mc_event(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5, i8 noundef signext %6, i8 noundef signext %7, i8 noundef signext %8, i32 noundef %9, i8 noundef zeroext %10, i32 noundef %11, ptr noundef %12) #0 {
  %14 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mc_event, i32 0, i32 7), align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %16, %13
  %17 = phi ptr [ %21, %16 ], [ %14, %13 ]
  %18 = load volatile ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tracepoint_func, ptr %17, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void %18(ptr noundef %20, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext %5, i8 noundef signext %6, i8 noundef signext %7, i8 noundef signext %8, i32 noundef %9, i8 noundef zeroext %10, i32 noundef %11, ptr noundef %12) #11
  %21 = getelementptr %struct.tracepoint_func, ptr %17, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %16

24:                                               ; preds = %16, %13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_arm_event(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_arm_event, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #11
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_non_standard_event(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5, i32 noundef %6) #0 {
  %8 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_non_standard_event, i32 0, i32 7), align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %15, %10 ], [ %8, %7 ]
  %12 = load volatile ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.tracepoint_func, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void %12(ptr noundef %14, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr noundef %5, i32 noundef %6) #11
  %15 = getelementptr %struct.tracepoint_func, ptr %11, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10

18:                                               ; preds = %10, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_aer_event(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_aer_event, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5) #11
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mc_event(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, i32 noundef %4, i8 noundef zeroext %5, i8 noundef signext %6, i8 noundef signext %7, i8 noundef signext %8, i32 noundef %9, i8 noundef zeroext %10, i32 noundef %11, ptr noundef readonly %12) #0 {
  %14 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 24, i1 false), !annotation !9
  %15 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 704
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19, !prof !10

19:                                               ; preds = %13
  %20 = and i32 %16, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24, !prof !11

22:                                               ; preds = %19
  %23 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #11
  br i1 %23, label %72, label %24

24:                                               ; preds = %22, %19, %13
  %25 = icmp eq ptr %2, null
  %26 = select i1 %25, ptr @.str, ptr %2
  %27 = tail call i32 @strlen(ptr noundef %26) #11
  %28 = add i32 %27, 1
  %29 = icmp eq ptr %3, null
  %30 = select i1 %29, ptr @.str, ptr %3
  %31 = tail call i32 @strlen(ptr noundef %30) #11
  %32 = add i32 %31, 1
  %33 = add i32 %32, %28
  %34 = icmp eq ptr %12, null
  %35 = select i1 %34, ptr @.str, ptr %12
  %36 = tail call i32 @strlen(ptr noundef %35) #11
  %37 = add i32 %36, 1
  %38 = add i32 %33, 44
  %39 = add i32 %38, %37
  %40 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %14, ptr noundef %0, i32 noundef %39) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %72, label %42

42:                                               ; preds = %24
  %43 = shl i32 %37, 16
  %44 = or i32 %43, %38
  %45 = shl i32 %32, 16
  %46 = add i32 %27, 45
  %47 = or i32 %45, %46
  %48 = shl i32 %28, 16
  %49 = or i32 %48, 44
  %50 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %40, i32 0, i32 2
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %40, i32 0, i32 3
  store i32 %47, ptr %51, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %40, i32 0, i32 12
  store i32 %44, ptr %52, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %40, i32 0, i32 1
  store i32 %1, ptr %53, align 4
  %54 = getelementptr i8, ptr %40, i32 44
  %55 = call ptr @strcpy(ptr noundef %54, ptr noundef %26)
  %56 = and i32 %46, 65535
  %57 = getelementptr i8, ptr %40, i32 %56
  %58 = call ptr @strcpy(ptr noundef %57, ptr noundef %30)
  %59 = trunc i32 %4 to i16
  %60 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %40, i32 0, i32 4
  store i16 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %40, i32 0, i32 5
  store i8 %5, ptr %61, align 2
  %62 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %40, i32 0, i32 6
  store i8 %6, ptr %62, align 1
  %63 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %40, i32 0, i32 7
  store i8 %7, ptr %63, align 4
  %64 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %40, i32 0, i32 8
  store i8 %8, ptr %64, align 1
  %65 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %40, i32 0, i32 9
  store i32 %9, ptr %65, align 4
  %66 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %40, i32 0, i32 10
  store i8 %10, ptr %66, align 4
  %67 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %40, i32 0, i32 11
  store i32 %11, ptr %67, align 4
  %68 = load i32, ptr %52, align 4
  %69 = and i32 %68, 65535
  %70 = getelementptr i8, ptr %40, i32 %69
  %71 = call ptr @strcpy(ptr noundef %70, ptr noundef %35)
  call void @trace_event_buffer_commit(ptr noundef nonnull %14) #11
  br label %72

72:                                               ; preds = %42, %24, %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mc_event(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, i32 noundef %4, i8 noundef zeroext %5, i8 noundef signext %6, i8 noundef signext %7, i8 noundef signext %8, i32 noundef %9, i8 noundef zeroext %10, i32 noundef %11, ptr noundef readonly %12) #0 {
  %14 = alloca ptr, align 4
  %15 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #11
  store ptr null, ptr %14, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  store i32 0, ptr %15, align 4, !annotation !9
  %16 = icmp eq ptr %2, null
  %17 = select i1 %16, ptr @.str, ptr %2
  %18 = tail call i32 @strlen(ptr noundef %17) #11
  %19 = add i32 %18, 1
  %20 = shl i32 %19, 16
  %21 = or i32 %20, 44
  %22 = icmp eq ptr %3, null
  %23 = select i1 %22, ptr @.str, ptr %3
  %24 = tail call i32 @strlen(ptr noundef %23) #11
  %25 = add i32 %24, 1
  %26 = add i32 %18, 45
  %27 = shl i32 %25, 16
  %28 = or i32 %27, %26
  %29 = add i32 %25, %19
  %30 = icmp eq ptr %12, null
  %31 = select i1 %30, ptr @.str, ptr %12
  %32 = tail call i32 @strlen(ptr noundef %31) #11
  %33 = add i32 %32, 1
  %34 = add i32 %29, 44
  %35 = shl i32 %33, 16
  %36 = or i32 %35, %34
  %37 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %41 = inttoptr i32 %40 to ptr
  %42 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %41) #9, !srcloc !12
  %43 = add i32 %42, %39
  %44 = inttoptr i32 %43 to ptr
  %45 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %13
  %49 = load volatile ptr, ptr %44, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %93, label %51

51:                                               ; preds = %48, %13
  %52 = add i32 %29, 55
  %53 = add i32 %52, %33
  %54 = and i32 %53, -8
  %55 = add i32 %54, -4
  %56 = call ptr @perf_trace_buf_alloc(i32 noundef %55, ptr noundef nonnull %14, ptr noundef nonnull %15) #11
  %57 = icmp eq ptr %56, null
  br i1 %57, label %93, label %58

58:                                               ; preds = %51
  %59 = load ptr, ptr %14, align 4
  %60 = call ptr @llvm.returnaddress(i32 0) #11
  %61 = ptrtoint ptr %60 to i32
  %62 = getelementptr [18 x i32], ptr %59, i32 0, i32 15
  store i32 %61, ptr %62, align 4
  %63 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %64 = ptrtoint ptr %63 to i32
  %65 = getelementptr [18 x i32], ptr %59, i32 0, i32 11
  store i32 %64, ptr %65, align 4
  %66 = call i32 @llvm.read_register.i32(metadata !0) #11
  %67 = getelementptr [18 x i32], ptr %59, i32 0, i32 13
  store i32 %66, ptr %67, align 4
  %68 = getelementptr [18 x i32], ptr %59, i32 0, i32 16
  store i32 19, ptr %68, align 4
  %69 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %56, i32 0, i32 2
  store i32 %21, ptr %69, align 4
  %70 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %56, i32 0, i32 3
  store i32 %28, ptr %70, align 4
  %71 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %56, i32 0, i32 12
  store i32 %36, ptr %71, align 4
  %72 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %56, i32 0, i32 1
  store i32 %1, ptr %72, align 4
  %73 = getelementptr i8, ptr %56, i32 44
  %74 = call ptr @strcpy(ptr noundef %73, ptr noundef %17)
  %75 = and i32 %26, 65535
  %76 = getelementptr i8, ptr %56, i32 %75
  %77 = call ptr @strcpy(ptr noundef %76, ptr noundef %23)
  %78 = trunc i32 %4 to i16
  %79 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %56, i32 0, i32 4
  store i16 %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %56, i32 0, i32 5
  store i8 %5, ptr %80, align 2
  %81 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %56, i32 0, i32 6
  store i8 %6, ptr %81, align 1
  %82 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %56, i32 0, i32 7
  store i8 %7, ptr %82, align 4
  %83 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %56, i32 0, i32 8
  store i8 %8, ptr %83, align 1
  %84 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %56, i32 0, i32 9
  store i32 %9, ptr %84, align 4
  %85 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %56, i32 0, i32 10
  store i8 %10, ptr %85, align 4
  %86 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %56, i32 0, i32 11
  store i32 %11, ptr %86, align 4
  %87 = load i32, ptr %71, align 4
  %88 = and i32 %87, 65535
  %89 = getelementptr i8, ptr %56, i32 %88
  %90 = call ptr @strcpy(ptr noundef %89, ptr noundef %31)
  %91 = load i32, ptr %15, align 4
  %92 = load ptr, ptr %14, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %56, i32 noundef %55, i32 noundef %91, ptr noundef %0, i64 noundef 1, ptr noundef %92, ptr noundef %44, ptr noundef null) #11
  br label %93

93:                                               ; preds = %58, %51, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_arm_event(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #11
  br i1 %12, label %52, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 40) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %1, align 1
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cper_sec_proc_arm, ptr %1, i32 0, i32 4
  %22 = load i8, ptr %21, align 1
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i8 [ %22, %20 ], [ -1, %16 ]
  %25 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %14, i32 0, i32 5
  store i8 %24, ptr %25, align 8
  %26 = load i32, ptr %1, align 1
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.cper_sec_proc_arm, ptr %1, i32 0, i32 6
  %31 = load i64, ptr %30, align 1
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i64 [ %31, %29 ], [ 0, %23 ]
  %34 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %14, i32 0, i32 1
  store i64 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.cper_sec_proc_arm, ptr %1, i32 0, i32 7
  %36 = load i64, ptr %35, align 1
  %37 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %14, i32 0, i32 2
  store i64 %36, ptr %37, align 8
  %38 = load i32, ptr %1, align 1
  %39 = and i32 %38, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.cper_sec_proc_arm, ptr %1, i32 0, i32 8
  %43 = load i32, ptr %42, align 1
  %44 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %14, i32 0, i32 3
  store i32 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.cper_sec_proc_arm, ptr %1, i32 0, i32 9
  %46 = load i32, ptr %45, align 1
  br label %49

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %14, i32 0, i32 3
  store i32 -1, ptr %48, align 8
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi i32 [ -1, %47 ], [ %46, %41 ]
  %51 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %14, i32 0, i32 4
  store i32 %50, ptr %51, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #11
  br label %52

52:                                               ; preds = %49, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_arm_event(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #9, !srcloc !12
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %70, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %70, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #11
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #11
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = load i32, ptr %1, align 1
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.cper_sec_proc_arm, ptr %1, i32 0, i32 4
  %38 = load i8, ptr %37, align 1
  br label %39

39:                                               ; preds = %36, %22
  %40 = phi i8 [ %38, %36 ], [ -1, %22 ]
  %41 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %20, i32 0, i32 5
  store i8 %40, ptr %41, align 8
  %42 = load i32, ptr %1, align 1
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.cper_sec_proc_arm, ptr %1, i32 0, i32 6
  %47 = load i64, ptr %46, align 1
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi i64 [ %47, %45 ], [ 0, %39 ]
  %50 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %20, i32 0, i32 1
  store i64 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.cper_sec_proc_arm, ptr %1, i32 0, i32 7
  %52 = load i64, ptr %51, align 1
  %53 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %20, i32 0, i32 2
  store i64 %52, ptr %53, align 8
  %54 = load i32, ptr %1, align 1
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.cper_sec_proc_arm, ptr %1, i32 0, i32 8
  %59 = load i32, ptr %58, align 1
  %60 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %20, i32 0, i32 3
  store i32 %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.cper_sec_proc_arm, ptr %1, i32 0, i32 9
  %62 = load i32, ptr %61, align 1
  br label %65

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %20, i32 0, i32 3
  store i32 -1, ptr %64, align 8
  br label %65

65:                                               ; preds = %63, %57
  %66 = phi i32 [ -1, %63 ], [ %62, %57 ]
  %67 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %20, i32 0, i32 4
  store i32 %66, ptr %67, align 4
  %68 = load i32, ptr %4, align 4
  %69 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 44, i32 noundef %68, ptr noundef %0, i64 noundef 1, ptr noundef %69, ptr noundef %12, ptr noundef null) #11
  br label %70

70:                                               ; preds = %65, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_non_standard_event(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i8 noundef zeroext %4, ptr nocapture noundef readonly %5, i32 noundef %6) #0 {
  %8 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
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
  %17 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #11
  br i1 %17, label %43, label %18

18:                                               ; preds = %16, %13, %7
  %19 = icmp eq ptr %3, null
  %20 = select i1 %19, ptr @.str, ptr %3
  %21 = tail call i32 @strlen(ptr noundef %20) #11
  %22 = add i32 %21, 1
  %23 = add i32 %6, 56
  %24 = add i32 %23, %22
  %25 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %8, ptr noundef %0, i32 noundef %24) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %18
  %28 = add i32 %21, 57
  %29 = shl i32 %6, 16
  %30 = or i32 %28, %29
  %31 = shl i32 %22, 16
  %32 = or i32 %31, 56
  %33 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %25, i32 0, i32 3
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %25, i32 0, i32 6
  store i32 %30, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %25, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %35, ptr noundef align 1 dereferenceable(16) %1, i32 16, i1 false)
  %36 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %25, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %36, ptr noundef align 1 dereferenceable(16) %2, i32 16, i1 false)
  %37 = getelementptr i8, ptr %25, i32 56
  %38 = call ptr @strcpy(ptr noundef %37, ptr noundef %20)
  %39 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %25, i32 0, i32 4
  store i8 %4, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %25, i32 0, i32 5
  store i32 %6, ptr %40, align 4
  %41 = and i32 %28, 65535
  %42 = getelementptr i8, ptr %25, i32 %41
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %42, ptr align 1 %5, i32 %6, i1 false)
  call void @trace_event_buffer_commit(ptr noundef nonnull %8) #11
  br label %43

43:                                               ; preds = %27, %18, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_non_standard_event(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i8 noundef zeroext %4, ptr nocapture noundef readonly %5, i32 noundef %6) #0 {
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 0, ptr %9, align 4, !annotation !9
  %10 = icmp eq ptr %3, null
  %11 = select i1 %10, ptr @.str, ptr %3
  %12 = tail call i32 @strlen(ptr noundef %11) #11
  %13 = add i32 %12, 1
  %14 = shl i32 %13, 16
  %15 = or i32 %14, 56
  %16 = add i32 %12, 57
  %17 = shl i32 %6, 16
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #9, !srcloc !12
  %25 = add i32 %24, %21
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %7
  %31 = load volatile ptr, ptr %26, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %63, label %33

33:                                               ; preds = %30, %7
  %34 = add i32 %6, 67
  %35 = add i32 %34, %13
  %36 = and i32 %35, -8
  %37 = add i32 %36, -4
  %38 = call ptr @perf_trace_buf_alloc(i32 noundef %37, ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %63, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %8, align 4
  %42 = call ptr @llvm.returnaddress(i32 0) #11
  %43 = ptrtoint ptr %42 to i32
  %44 = getelementptr [18 x i32], ptr %41, i32 0, i32 15
  store i32 %43, ptr %44, align 4
  %45 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %46 = ptrtoint ptr %45 to i32
  %47 = getelementptr [18 x i32], ptr %41, i32 0, i32 11
  store i32 %46, ptr %47, align 4
  %48 = call i32 @llvm.read_register.i32(metadata !0) #11
  %49 = getelementptr [18 x i32], ptr %41, i32 0, i32 13
  store i32 %48, ptr %49, align 4
  %50 = getelementptr [18 x i32], ptr %41, i32 0, i32 16
  store i32 19, ptr %50, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %38, i32 0, i32 3
  store i32 %15, ptr %51, align 4
  %52 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %38, i32 0, i32 6
  store i32 %18, ptr %52, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %38, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %53, ptr noundef align 1 dereferenceable(16) %1, i32 16, i1 false)
  %54 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %38, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %54, ptr noundef align 1 dereferenceable(16) %2, i32 16, i1 false)
  %55 = getelementptr i8, ptr %38, i32 56
  %56 = call ptr @strcpy(ptr noundef %55, ptr noundef %11)
  %57 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %38, i32 0, i32 4
  store i8 %4, ptr %57, align 4
  %58 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %38, i32 0, i32 5
  store i32 %6, ptr %58, align 4
  %59 = and i32 %16, 65535
  %60 = getelementptr i8, ptr %38, i32 %59
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %60, ptr align 1 %5, i32 %6, i1 false)
  %61 = load i32, ptr %9, align 4
  %62 = load ptr, ptr %8, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %38, i32 noundef %37, i32 noundef %61, ptr noundef %0, i64 noundef 1, ptr noundef %62, ptr noundef %26, ptr noundef null) #11
  br label %63

63:                                               ; preds = %40, %33, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_aer_event(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
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
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #11
  br i1 %16, label %47, label %17

17:                                               ; preds = %15, %12, %6
  %18 = icmp eq ptr %1, null
  %19 = select i1 %18, ptr @.str, ptr %1
  %20 = tail call i32 @strlen(ptr noundef %19) #11
  %21 = add i32 %20, 37
  %22 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef %21) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %47, label %24

24:                                               ; preds = %17
  %25 = shl i32 %20, 16
  %26 = add i32 %25, 65572
  %27 = getelementptr inbounds %struct.trace_event_raw_aer_event, ptr %22, i32 0, i32 1
  store i32 %26, ptr %27, align 4
  %28 = getelementptr i8, ptr %22, i32 36
  %29 = call ptr @strcpy(ptr noundef %28, ptr noundef %19)
  %30 = getelementptr inbounds %struct.trace_event_raw_aer_event, ptr %22, i32 0, i32 2
  store i32 %2, ptr %30, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_aer_event, ptr %22, i32 0, i32 3
  store i8 %3, ptr %31, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_aer_event, ptr %22, i32 0, i32 4
  store i8 %4, ptr %32, align 1
  %33 = icmp eq i8 %4, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %24
  %35 = load i32, ptr %5, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_aer_event, ptr %22, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.aer_header_log_regs, ptr %5, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr %struct.trace_event_raw_aer_event, ptr %22, i32 0, i32 5, i32 1
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.aer_header_log_regs, ptr %5, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.trace_event_raw_aer_event, ptr %22, i32 0, i32 5, i32 2
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.aer_header_log_regs, ptr %5, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.trace_event_raw_aer_event, ptr %22, i32 0, i32 5, i32 3
  store i32 %44, ptr %45, align 4
  br label %46

46:                                               ; preds = %34, %24
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #11
  br label %47

47:                                               ; preds = %46, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_aer_event(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = icmp eq ptr %1, null
  %10 = select i1 %9, ptr @.str, ptr %1
  %11 = tail call i32 @strlen(ptr noundef %10) #11
  %12 = shl i32 %11, 16
  %13 = add i32 %12, 65572
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #11
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #9, !srcloc !12
  %20 = add i32 %19, %16
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load volatile ptr, ptr %21, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %67, label %28

28:                                               ; preds = %25, %6
  %29 = add i32 %11, 48
  %30 = and i32 %29, -8
  %31 = add i32 %30, -4
  %32 = call ptr @perf_trace_buf_alloc(i32 noundef %31, ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %67, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %7, align 4
  %36 = call ptr @llvm.returnaddress(i32 0) #11
  %37 = ptrtoint ptr %36 to i32
  %38 = getelementptr [18 x i32], ptr %35, i32 0, i32 15
  store i32 %37, ptr %38, align 4
  %39 = call ptr @llvm.frameaddress.p0(i32 0) #11
  %40 = ptrtoint ptr %39 to i32
  %41 = getelementptr [18 x i32], ptr %35, i32 0, i32 11
  store i32 %40, ptr %41, align 4
  %42 = call i32 @llvm.read_register.i32(metadata !0) #11
  %43 = getelementptr [18 x i32], ptr %35, i32 0, i32 13
  store i32 %42, ptr %43, align 4
  %44 = getelementptr [18 x i32], ptr %35, i32 0, i32 16
  store i32 19, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_aer_event, ptr %32, i32 0, i32 1
  store i32 %13, ptr %45, align 4
  %46 = getelementptr i8, ptr %32, i32 36
  %47 = call ptr @strcpy(ptr noundef %46, ptr noundef %10)
  %48 = getelementptr inbounds %struct.trace_event_raw_aer_event, ptr %32, i32 0, i32 2
  store i32 %2, ptr %48, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_aer_event, ptr %32, i32 0, i32 3
  store i8 %3, ptr %49, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_aer_event, ptr %32, i32 0, i32 4
  store i8 %4, ptr %50, align 1
  %51 = icmp eq i8 %4, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %34
  %53 = load i32, ptr %5, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_aer_event, ptr %32, i32 0, i32 5
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.aer_header_log_regs, ptr %5, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr %struct.trace_event_raw_aer_event, ptr %32, i32 0, i32 5, i32 1
  store i32 %56, ptr %57, align 4
  %58 = getelementptr inbounds %struct.aer_header_log_regs, ptr %5, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr %struct.trace_event_raw_aer_event, ptr %32, i32 0, i32 5, i32 2
  store i32 %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.aer_header_log_regs, ptr %5, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr %struct.trace_event_raw_aer_event, ptr %32, i32 0, i32 5, i32 3
  store i32 %62, ptr %63, align 4
  br label %64

64:                                               ; preds = %52, %34
  %65 = load i32, ptr %8, align 4
  %66 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %32, i32 noundef %31, i32 noundef %65, ptr noundef %0, i64 noundef 1, ptr noundef %66, ptr noundef %21, ptr noundef null) #11
  br label %67

67:                                               ; preds = %64, %28, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @log_non_standard_event(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_non_standard_event, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  %10 = tail call ptr @llvm.thread.pointer() #11
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !13
  %21 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_non_standard_event, i32 0, i32 7), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %28, %23 ], [ %21, %20 ]
  %25 = load volatile ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tracepoint_func, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void %25(ptr noundef %27, ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5) #11
  %28 = getelementptr %struct.tracepoint_func, ptr %24, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %23

31:                                               ; preds = %23, %20
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %32

32:                                               ; preds = %31, %9, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @log_arm_hw_error(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_arm_event, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #11
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_arm_event, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, ptr noundef %0) #11
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !16
  br label %27

27:                                               ; preds = %26, %4, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ras_init() #3 section ".init.text" {
  tail call void @ras_debugfs_init() #11
  %1 = tail call i32 @ras_add_daemon_trace() #11
  ret i32 %1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal i32 @parse_ras_param(ptr nocapture noundef readnone %0) #4 section ".init.text" {
  ret i32 1
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mc_event(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #11
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %62

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %5, i32 0, i32 4
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %5, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = getelementptr inbounds [4 x ptr], ptr @switch.table.trace_raw_output_mc_event, i32 0, i32 %14
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %8
  %20 = phi ptr [ %18, %16 ], [ @.str.27, %8 ]
  %21 = icmp ugt i16 %11, 1
  %22 = select i1 %21, ptr @.str.20, ptr @.str.21
  %23 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %5, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 65535
  %26 = getelementptr i8, ptr %5, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, ptr @.str.21, ptr @.str.22
  %30 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %5, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 65535
  %33 = getelementptr i8, ptr %5, i32 %32
  %34 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %5, i32 0, i32 5
  %35 = load i8, ptr %34, align 2
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %5, i32 0, i32 6
  %38 = load i8, ptr %37, align 1
  %39 = sext i8 %38 to i32
  %40 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %5, i32 0, i32 7
  %41 = load i8, ptr %40, align 4
  %42 = sext i8 %41 to i32
  %43 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %5, i32 0, i32 8
  %44 = load i8, ptr %43, align 1
  %45 = sext i8 %44 to i32
  %46 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %5, i32 0, i32 9
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %5, i32 0, i32 10
  %49 = load i8, ptr %48, align 4
  %50 = zext i8 %49 to i32
  %51 = shl nuw i32 1, %50
  %52 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %5, i32 0, i32 11
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_mc_event, ptr %5, i32 0, i32 12
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 65535
  %57 = getelementptr i8, ptr %5, i32 %56
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %59, ptr @.str.21, ptr @.str.22
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %12, ptr noundef nonnull %20, ptr noundef nonnull %22, ptr noundef nonnull %29, ptr noundef %26, ptr noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %42, i32 noundef %45, i32 noundef %47, i32 noundef %51, i32 noundef %53, ptr noundef nonnull %60, ptr noundef %57) #11
  %61 = tail call i32 @trace_handle_return(ptr noundef %9) #11
  br label %62

62:                                               ; preds = %19, %3
  %63 = phi i32 [ %61, %19 ], [ %6, %3 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_arm_event(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #11
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %5, i32 0, i32 5
  %11 = load i8, ptr %10, align 8
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %5, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %5, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %5, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.trace_event_raw_arm_event, ptr %5, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %12, i64 noundef %14, i64 noundef %16, i32 noundef %18, i32 noundef %20) #11
  %21 = tail call i32 @trace_handle_return(ptr noundef %9) #11
  br label %22

22:                                               ; preds = %8, %3
  %23 = phi i32 [ %21, %8 ], [ %6, %3 ]
  ret i32 %23
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_non_standard_event(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #11
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %5, i32 0, i32 4
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %5, i32 0, i32 1
  %15 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %5, i32 0, i32 2
  %16 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 65535
  %19 = getelementptr i8, ptr %5, i32 %18
  %20 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_non_standard_event, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 65535
  %25 = getelementptr i8, ptr %5, i32 %24
  %26 = tail call ptr @trace_print_hex_seq(ptr noundef %9, ptr noundef %25, i32 noundef %21, i1 noundef zeroext false) #11
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %19, i32 noundef %21, ptr noundef %26) #11
  %27 = tail call i32 @trace_handle_return(ptr noundef %10) #11
  br label %28

28:                                               ; preds = %8, %3
  %29 = phi i32 [ %27, %8 ], [ %6, %3 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_hex_seq(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_aer_event(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %6 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #11
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %34

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.trace_event_raw_aer_event, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 65535
  %14 = getelementptr i8, ptr %7, i32 %13
  %15 = getelementptr inbounds %struct.trace_event_raw_aer_event, ptr %7, i32 0, i32 3
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 2
  %18 = icmp eq i8 %16, 1
  %19 = select i1 %18, ptr @.str.26, ptr @.str.52
  %20 = select i1 %17, ptr @.str.23, ptr %19
  %21 = getelementptr inbounds %struct.trace_event_raw_aer_event, ptr %7, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = select i1 %17, ptr @trace_raw_output_aer_event.__flags, ptr @trace_raw_output_aer_event.__flags.62
  %24 = tail call ptr @trace_print_flags_seq(ptr noundef %5, ptr noundef nonnull @.str.61, i32 noundef %22, ptr noundef nonnull %23) #11
  %25 = getelementptr inbounds %struct.trace_event_raw_aer_event, ptr %7, i32 0, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %10
  %29 = getelementptr inbounds %struct.trace_event_raw_aer_event, ptr %7, i32 0, i32 5
  %30 = tail call ptr @trace_print_array_seq(ptr noundef %5, ptr noundef %29, i32 noundef 4, i32 noundef 4) #11
  br label %31

31:                                               ; preds = %28, %10
  %32 = phi ptr [ %30, %28 ], [ @.str.80, %10 ]
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef %14, ptr noundef nonnull %20, ptr noundef %24, ptr noundef %32) #11
  %33 = tail call i32 @trace_handle_return(ptr noundef %4) #11
  br label %34

34:                                               ; preds = %31, %3
  %35 = phi i32 [ %33, %31 ], [ %8, %3 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_array_seq(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @ras_debugfs_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ras_add_daemon_trace() local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind }

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
!12 = !{i64 797588}
!13 = !{i64 2153353048}
!14 = !{i64 2153353278}
!15 = !{i64 2153331565}
!16 = !{i64 2153331703}
