; ModuleID = '/llk/IR/drivers/fsi/fsi-master-aspeed.c_pt.bc'
source_filename = "../drivers/fsi/fsi-master-aspeed.c"
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
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_fsi_master_aspeed_opb_read = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_fsi_master_aspeed_opb_write = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_fsi_master_aspeed_opb_error = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fsi_master_aspeed = type { %struct.fsi_master, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.fsi_master = type { %struct.device, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__tpstrtab_fsi_master_aspeed_opb_read = internal constant [27 x i8] c"fsi_master_aspeed_opb_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_aspeed_opb_read = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_aspeed_opb_read }, align 4
@__tracepoint_fsi_master_aspeed_opb_read = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_aspeed_opb_read, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_aspeed_opb_read, ptr null, ptr @__traceiter_fsi_master_aspeed_opb_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_aspeed_opb_read = internal constant ptr @__tracepoint_fsi_master_aspeed_opb_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_aspeed_opb_write = internal constant [28 x i8] c"fsi_master_aspeed_opb_write\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_aspeed_opb_write = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_aspeed_opb_write }, align 4
@__tracepoint_fsi_master_aspeed_opb_write = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_aspeed_opb_write, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_aspeed_opb_write, ptr null, ptr @__traceiter_fsi_master_aspeed_opb_write, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_aspeed_opb_write = internal constant ptr @__tracepoint_fsi_master_aspeed_opb_write, section "__tracepoints_ptrs", align 4
@__tpstrtab_fsi_master_aspeed_opb_error = internal constant [28 x i8] c"fsi_master_aspeed_opb_error\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_fsi_master_aspeed_opb_error = dso_local global %struct.static_call_key { ptr @__traceiter_fsi_master_aspeed_opb_error }, align 4
@__tracepoint_fsi_master_aspeed_opb_error = dso_local global %struct.tracepoint { ptr @__tpstrtab_fsi_master_aspeed_opb_error, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_fsi_master_aspeed_opb_error, ptr null, ptr @__traceiter_fsi_master_aspeed_opb_error, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_fsi_master_aspeed_opb_error = internal constant ptr @__tracepoint_fsi_master_aspeed_opb_error, section "__tracepoints_ptrs", align 4
@str__fsi_master_aspeed__trace_system_name = internal constant [18 x i8] c"fsi_master_aspeed\00", align 1
@trace_event_fields_fsi_master_aspeed_opb_read = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.4, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_aspeed_opb_read = internal global %struct.trace_event_class { ptr @str__fsi_master_aspeed__trace_system_name, ptr @trace_event_raw_event_fsi_master_aspeed_opb_read, ptr @perf_trace_fsi_master_aspeed_opb_read, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_aspeed_opb_read, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_aspeed_opb_read, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_aspeed_opb_read, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_aspeed_opb_read = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_aspeed_opb_read, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_aspeed_opb_read = internal global [123 x i8] c"\22addr %08x size %zu: result %08x sts: %08x irq_sts: %08x\22, REC->addr, REC->size, REC->result, REC->status, REC->irq_status\00", align 1
@event_fsi_master_aspeed_opb_read = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_aspeed_opb_read, %union.anon.0 { ptr @__tracepoint_fsi_master_aspeed_opb_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_aspeed_opb_read }, ptr @print_fmt_fsi_master_aspeed_opb_read, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_aspeed_opb_read = internal global ptr @event_fsi_master_aspeed_opb_read, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_aspeed_opb_write = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.5, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_aspeed_opb_write = internal global %struct.trace_event_class { ptr @str__fsi_master_aspeed__trace_system_name, ptr @trace_event_raw_event_fsi_master_aspeed_opb_write, ptr @perf_trace_fsi_master_aspeed_opb_write, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_aspeed_opb_write, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_aspeed_opb_write, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_aspeed_opb_write, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_aspeed_opb_write = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_aspeed_opb_write, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_aspeed_opb_write = internal global [119 x i8] c"\22addr %08x val %08x size %zu status: %08x irq_sts: %08x\22, REC->addr, REC->val, REC->size, REC->status, REC->irq_status\00", align 1
@event_fsi_master_aspeed_opb_write = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_aspeed_opb_write, %union.anon.0 { ptr @__tracepoint_fsi_master_aspeed_opb_write }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_aspeed_opb_write }, ptr @print_fmt_fsi_master_aspeed_opb_write, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_aspeed_opb_write = internal global ptr @event_fsi_master_aspeed_opb_write, section "_ftrace_events", align 4
@trace_event_fields_fsi_master_aspeed_opb_error = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_fsi_master_aspeed_opb_error = internal global %struct.trace_event_class { ptr @str__fsi_master_aspeed__trace_system_name, ptr @trace_event_raw_event_fsi_master_aspeed_opb_error, ptr @perf_trace_fsi_master_aspeed_opb_error, ptr @trace_event_reg, ptr @trace_event_fields_fsi_master_aspeed_opb_error, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_fsi_master_aspeed_opb_error, i64 24), ptr getelementptr (i8, ptr @event_class_fsi_master_aspeed_opb_error, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_fsi_master_aspeed_opb_error = internal global %struct.trace_event_functions { ptr @trace_raw_output_fsi_master_aspeed_opb_error, ptr null, ptr null, ptr null }, align 4
@print_fmt_fsi_master_aspeed_opb_error = internal global [77 x i8] c"\22mresp0 %08x mstap0 %08x mesrb0 %08x\22, REC->mresp0, REC->mstap0, REC->mesrb0\00", align 1
@event_fsi_master_aspeed_opb_error = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_fsi_master_aspeed_opb_error, %union.anon.0 { ptr @__tracepoint_fsi_master_aspeed_opb_error }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_fsi_master_aspeed_opb_error }, ptr @print_fmt_fsi_master_aspeed_opb_error, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_fsi_master_aspeed_opb_error = internal global ptr @event_fsi_master_aspeed_opb_error, section "_ftrace_events", align 4
@__param_str_bus_div = internal constant [8 x i8] c"bus_div\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@aspeed_fsi_divisor = internal global i16 1, align 2
@__param_bus_div = internal constant %struct.kernel_param { ptr @__param_str_bus_div, ptr @__this_module, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @aspeed_fsi_divisor } }, section "__param", align 4
@__UNIQUE_ID_bus_divtype254 = internal constant [24 x i8] c"parmtype=bus_div:ushort\00", section ".modinfo", align 1
@fsi_master_aspeed_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-fsi-master\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"uint32_t\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"irq_status\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"addr %08x size %zu: result %08x sts: %08x irq_sts: %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"addr %08x val %08x size %zu status: %08x irq_sts: %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"mresp0\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"mstap0\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"mesrb0\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"mresp0 %08x mstap0 %08x mesrb0 %08x\0A\00", align 1
@fsi_master_aspeed_driver = internal global %struct.platform_driver { ptr @fsi_master_aspeed_probe, ptr @fsi_master_aspeed_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.14, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsi_master_aspeed_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"fsi-master-aspeed\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Tacoma FSI cable fixup failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"couldn't get clock\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"couldn't enable clock\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"CFAM reset GPIO setup failed\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"failed to read hub version\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"hub version %08x (%d links)\0A\00", align 1
@fsi_master_aspeed_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"&aspeed->lock\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"fsi-routing\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"fsi-mux\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"FSI configured for external cable\0A\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"cfam-reset\00", align 1
@dev_attr_cfam_reset = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 128 }, ptr null, ptr @cfam_reset_store }, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"cfam_reset\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.28 = private unnamed_addr constant [32 x i8] c"mmode set to %08x (divisor %d)\0A\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_bus_divtype254, ptr @__UNIQUE_ID_license255, ptr @__event_fsi_master_aspeed_opb_error, ptr @__event_fsi_master_aspeed_opb_read, ptr @__event_fsi_master_aspeed_opb_write, ptr @__param_bus_div, ptr @__tracepoint_fsi_master_aspeed_opb_error, ptr @__tracepoint_fsi_master_aspeed_opb_read, ptr @__tracepoint_fsi_master_aspeed_opb_write, ptr @__tracepoint_ptr_fsi_master_aspeed_opb_error, ptr @__tracepoint_ptr_fsi_master_aspeed_opb_read, ptr @__tracepoint_ptr_fsi_master_aspeed_opb_write, ptr @event_class_fsi_master_aspeed_opb_error, ptr @event_class_fsi_master_aspeed_opb_read, ptr @event_class_fsi_master_aspeed_opb_write, ptr @event_fsi_master_aspeed_opb_error, ptr @event_fsi_master_aspeed_opb_read, ptr @event_fsi_master_aspeed_opb_write], section "llvm.metadata"

@__mod_of__fsi_master_aspeed_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @fsi_master_aspeed_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_aspeed_opb_read(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_aspeed_opb_read, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #10
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
define dso_local i32 @__traceiter_fsi_master_aspeed_opb_write(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_aspeed_opb_write, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #10
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_fsi_master_aspeed_opb_error(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_aspeed_opb_error, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #10
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_aspeed_opb_read(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
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
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %16, label %26, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 28) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %18, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %18, i32 0, i32 3
  store i32 %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %18, i32 0, i32 4
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %18, i32 0, i32 5
  store i32 %5, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #10
  br label %26

26:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_aspeed_opb_read(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #5, !srcloc !12
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
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #10
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %24, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %24, i32 0, i32 3
  store i32 %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %24, i32 0, i32 4
  store i32 %4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %24, i32 0, i32 5
  store i32 %5, ptr %41, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 28, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %16, ptr noundef null) #10
  br label %44

44:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_aspeed_opb_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
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
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #10
  br i1 %16, label %26, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 28) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %18, i32 0, i32 2
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %18, i32 0, i32 3
  store i32 %3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %18, i32 0, i32 4
  store i32 %4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %18, i32 0, i32 5
  store i32 %5, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #10
  br label %26

26:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_aspeed_opb_write(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store ptr null, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store i32 0, ptr %8, align 4, !annotation !9
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #5, !srcloc !12
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
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #10
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %24, i32 0, i32 2
  store i32 %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %24, i32 0, i32 3
  store i32 %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %24, i32 0, i32 4
  store i32 %4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %24, i32 0, i32 5
  store i32 %5, ptr %41, align 4
  %42 = load i32, ptr %8, align 4
  %43 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 28, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %16, ptr noundef null) #10
  br label %44

44:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_fsi_master_aspeed_opb_error(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
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
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #10
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_fsi_master_aspeed_opb_error(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #10
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
  br i1 %20, label %40, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #10
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #10
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #10
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #3 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsi_master_aspeed_driver, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsi_master_aspeed_driver) #10
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
define internal i32 @trace_raw_output_fsi_master_aspeed_opb_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_read, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #10
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_aspeed_opb_write(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_write, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #10
  %20 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_fsi_master_aspeed_opb_error(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_fsi_master_aspeed_opb_error, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %11, i32 noundef %13, i32 noundef %15) #10
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
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
define internal i32 @fsi_master_aspeed_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef 17) #10
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %27, label %6

6:                                                ; preds = %1
  %7 = icmp eq ptr %4, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %6
  %9 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef 0) #10
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %27, label %11

11:                                               ; preds = %8
  %12 = icmp eq ptr %9, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %11
  %14 = tail call i32 @gpiod_get_value(ptr noundef nonnull %4) #10
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = load i16, ptr @aspeed_fsi_divisor, align 2
  %20 = icmp eq i16 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i16 2, ptr @aspeed_fsi_divisor, align 2
  br label %22

22:                                               ; preds = %21, %18
  %23 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %9, i32 noundef 0) #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.24) #11
  br label %26

24:                                               ; preds = %16
  %25 = tail call i32 @gpiod_direction_output(ptr noundef nonnull %9, i32 noundef 1) #10
  br label %26

26:                                               ; preds = %24, %22
  tail call void @devm_gpiod_put(ptr noundef %3, ptr noundef nonnull %4) #10
  br label %32

27:                                               ; preds = %8, %1
  %28 = phi ptr [ %4, %1 ], [ %9, %8 ]
  %29 = ptrtoint ptr %28 to i32
  br label %30

30:                                               ; preds = %27, %13
  %31 = phi i32 [ %29, %27 ], [ %14, %13 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15) #11
  br label %99

32:                                               ; preds = %26, %11, %6
  %33 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 568, i32 noundef 3520) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %99, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %33, i32 0, i32 2
  store ptr %3, ptr %36, align 4
  %37 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #10
  %38 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %33, i32 0, i32 3
  store ptr %37, ptr %38, align 8
  %39 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = ptrtoint ptr %37 to i32
  br label %99

42:                                               ; preds = %35
  %43 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #10
  %44 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %33, i32 0, i32 4
  store ptr %43, ptr %44, align 4
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.16) #11
  %47 = ptrtoint ptr %43 to i32
  br label %99

48:                                               ; preds = %42
  %49 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %43)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17) #11
  br label %99

52:                                               ; preds = %48
  %53 = tail call fastcc i32 @setup_cfam_reset(ptr noundef nonnull %33)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18) #11
  br label %56

56:                                               ; preds = %55, %52
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  %57 = load ptr, ptr %38, align 8
  %58 = getelementptr i8, ptr %57, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 1) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !15
  tail call void @arm_heavy_mb() #10
  %59 = getelementptr i8, ptr %57, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 196608) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !16
  tail call void @arm_heavy_mb() #10
  %60 = getelementptr i8, ptr %57, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 16) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !17
  tail call void @arm_heavy_mb() #10
  %61 = getelementptr i8, ptr %57, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 -2147483648) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !18
  tail call void @arm_heavy_mb() #10
  %62 = getelementptr i8, ptr %57, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 -1610612736) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  tail call void @arm_heavy_mb() #10
  %63 = getelementptr i8, ptr %57, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 199451) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !20
  tail call void @arm_heavy_mb() #10
  %64 = getelementptr i8, ptr %57, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 1118235) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %65 = getelementptr i8, ptr %57, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 204672831) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !22
  tail call void @arm_heavy_mb() #10
  %66 = getelementptr i8, ptr %57, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 1) #10, !srcloc !14
  %67 = call fastcc i32 @__opb_read(ptr noundef nonnull %33, i32 noundef -2147483532, i32 noundef 3, ptr noundef nonnull %2) #10
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.19) #11
  br label %99

70:                                               ; preds = %56
  %71 = load i32, ptr %2, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71)
  %73 = lshr i32 %72, 8
  %74 = and i32 %73, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.20, i32 noundef %72, i32 noundef %74) #11
  %75 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 1
  store ptr %3, ptr %75, align 4
  %76 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 33
  store ptr @aspeed_master_release, ptr %76, align 4
  %77 = icmp eq ptr %3, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %80 = load ptr, ptr %79, align 8
  br label %81

81:                                               ; preds = %78, %70
  %82 = phi ptr [ %80, %78 ], [ null, %70 ]
  %83 = call ptr @of_node_get(ptr noundef %82) #10
  %84 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 25
  store ptr %83, ptr %84, align 8
  %85 = getelementptr inbounds %struct.fsi_master, ptr %33, i32 0, i32 2
  store i32 %74, ptr %85, align 4
  %86 = getelementptr inbounds %struct.fsi_master, ptr %33, i32 0, i32 5
  store ptr @aspeed_master_read, ptr %86, align 8
  %87 = getelementptr inbounds %struct.fsi_master, ptr %33, i32 0, i32 6
  store ptr @aspeed_master_write, ptr %87, align 4
  %88 = getelementptr inbounds %struct.fsi_master, ptr %33, i32 0, i32 8
  store ptr @aspeed_master_break, ptr %88, align 4
  %89 = getelementptr inbounds %struct.fsi_master, ptr %33, i32 0, i32 7
  store ptr @aspeed_master_term, ptr %89, align 8
  %90 = getelementptr inbounds %struct.fsi_master, ptr %33, i32 0, i32 9
  store ptr @aspeed_master_link_enable, ptr %90, align 8
  %91 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %33, ptr %91, align 8
  %92 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %33, i32 0, i32 1
  call void @__mutex_init(ptr noundef %92, ptr noundef nonnull @.str.21, ptr noundef nonnull @fsi_master_aspeed_probe.__key) #10
  call fastcc void @aspeed_master_init(ptr noundef nonnull %33)
  %93 = call i32 @fsi_master_register(ptr noundef nonnull %33) #10
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %81
  %96 = call ptr @get_device(ptr noundef nonnull %33) #10
  br label %99

97:                                               ; preds = %81
  %98 = load ptr, ptr %44, align 4
  call void @clk_disable(ptr noundef %98) #10
  call void @clk_unprepare(ptr noundef %98) #10
  br label %99

99:                                               ; preds = %97, %95, %69, %51, %46, %40, %32, %30
  %100 = phi i32 [ %31, %30 ], [ %41, %40 ], [ %47, %46 ], [ %49, %51 ], [ %67, %69 ], [ %93, %97 ], [ 0, %95 ], [ -12, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsi_master_aspeed_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @fsi_master_unregister(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #8 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #10
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @setup_cfam_reset(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @devm_gpiod_get_optional(ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef 3) #10
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i32
  br label %15

8:                                                ; preds = %1
  %9 = icmp eq ptr %4, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %0, i32 0, i32 5
  store ptr %4, ptr %11, align 8
  %12 = tail call i32 @device_create_file(ptr noundef %3, ptr noundef nonnull @dev_attr_cfam_reset) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @devm_gpiod_put(ptr noundef %3, ptr noundef nonnull %4) #10
  br label %15

15:                                               ; preds = %14, %10, %8, %6
  %16 = phi i32 [ %7, %6 ], [ %12, %14 ], [ 0, %8 ], [ 0, %10 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @aspeed_master_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_master_read(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = icmp ugt i8 %2, 3
  br i1 %7, label %24, label %8

8:                                                ; preds = %6
  %9 = zext i8 %2 to i32
  %10 = shl nuw nsw i32 %9, 21
  %11 = or i32 %10, %3
  %12 = shl i32 %1, 19
  %13 = add i32 %11, %12
  %14 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %14) #10
  switch i32 %5, label %22 [
    i32 1, label %17
    i32 2, label %15
    i32 4, label %16
  ]

15:                                               ; preds = %8
  br label %17

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16, %15, %8
  %18 = phi i32 [ 3, %16 ], [ 1, %15 ], [ 0, %8 ]
  %19 = add i32 %13, -1610612736
  %20 = tail call fastcc i32 @__opb_read(ptr noundef %0, i32 noundef %19, i32 noundef %18, ptr noundef %4) #10
  %21 = tail call fastcc i32 @check_errors(ptr noundef %0, i32 noundef %20)
  br label %22

22:                                               ; preds = %17, %8
  %23 = phi i32 [ %21, %17 ], [ -22, %8 ]
  tail call void @mutex_unlock(ptr noundef %14) #10
  br label %24

24:                                               ; preds = %22, %6
  %25 = phi i32 [ %23, %22 ], [ -22, %6 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_master_write(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5) #0 {
  %7 = icmp ugt i8 %2, 3
  br i1 %7, label %34, label %8

8:                                                ; preds = %6
  %9 = zext i8 %2 to i32
  %10 = shl nuw nsw i32 %9, 21
  %11 = or i32 %10, %3
  %12 = shl i32 %1, 19
  %13 = add i32 %11, %12
  %14 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %14) #10
  switch i32 %5, label %32 [
    i32 1, label %15
    i32 2, label %20
    i32 4, label %25
  ]

15:                                               ; preds = %8
  %16 = add i32 %13, -1610612736
  %17 = load i8, ptr %4, align 1
  %18 = zext i8 %17 to i32
  %19 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef %16, i32 noundef %18, i32 noundef 0) #10
  br label %29

20:                                               ; preds = %8
  %21 = add i32 %13, -1610612736
  %22 = load i16, ptr %4, align 2
  %23 = zext i16 %22 to i32
  %24 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef %21, i32 noundef %23, i32 noundef 1) #10
  br label %29

25:                                               ; preds = %8
  %26 = add i32 %13, -1610612736
  %27 = load i32, ptr %4, align 4
  %28 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef %26, i32 noundef %27, i32 noundef 3) #10
  br label %29

29:                                               ; preds = %25, %20, %15
  %30 = phi i32 [ %28, %25 ], [ %24, %20 ], [ %19, %15 ]
  %31 = tail call fastcc i32 @check_errors(ptr noundef %0, i32 noundef %30)
  br label %32

32:                                               ; preds = %29, %8
  %33 = phi i32 [ %31, %29 ], [ -22, %8 ]
  tail call void @mutex_unlock(ptr noundef %14) #10
  br label %34

34:                                               ; preds = %32, %6
  %35 = phi i32 [ %33, %32 ], [ -22, %6 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_master_break(ptr noundef %0, i32 noundef %1) #0 {
  %3 = shl i32 %1, 19
  %4 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %4) #10
  %5 = add i32 %3, -1610612736
  %6 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef %5, i32 noundef 57024, i32 noundef 3) #10
  %7 = tail call fastcc i32 @check_errors(ptr noundef %0, i32 noundef %6) #10
  tail call void @mutex_unlock(ptr noundef %4) #10
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_master_term(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) #0 {
  %4 = icmp ugt i8 %2, 3
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = zext i8 %2 to i32
  %7 = shl nuw nsw i32 %6, 21
  %8 = shl i32 %1, 19
  %9 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %9) #10
  %10 = add i32 %8, -1610612732
  %11 = add i32 %10, %7
  %12 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef %11, i32 noundef 49388, i32 noundef 3) #10
  %13 = tail call fastcc i32 @check_errors(ptr noundef %0, i32 noundef %12) #10
  tail call void @mutex_unlock(ptr noundef %9) #10
  br label %14

14:                                               ; preds = %5, %3
  %15 = phi i32 [ %13, %5 ], [ -22, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @aspeed_master_link_enable(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = sdiv i32 %1, 32
  %5 = and i32 %1, 31
  %6 = lshr i32 -2147483648, %5
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #10
  %9 = shl nsw i32 %4, 2
  br i1 %2, label %13, label %10

10:                                               ; preds = %3
  %11 = add i32 %9, -2147483616
  %12 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef %11, i32 noundef %7, i32 noundef 3) #10
  br label %28

13:                                               ; preds = %3
  %14 = add i32 %9, -2147483624
  %15 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef %14, i32 noundef %7, i32 noundef 3) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #10
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #10
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #10
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #10
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #10
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #10
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #10
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #10
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #10
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #10
  br label %28

28:                                               ; preds = %17, %13, %10
  %29 = phi i32 [ %15, %13 ], [ %12, %10 ], [ 0, %17 ]
  tail call void @mutex_unlock(ptr noundef %8) #10
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @aspeed_master_init(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef -2147483440, i32 noundef 60, i32 noundef 3) #10
  %3 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef -2147483440, i32 noundef 60, i32 noundef 3) #10
  %4 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef -2147482912, i32 noundef 12582912, i32 noundef 3) #10
  %5 = load i16, ptr @aspeed_fsi_divisor, align 2
  %6 = zext i16 %5 to i32
  %7 = shl i32 %6, 18
  %8 = and i32 %7, 268173312
  %9 = shl nuw nsw i32 %6, 8
  %10 = and i32 %9, 261888
  %11 = or i32 %10, %8
  %12 = or i32 %11, 1879048208
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.28, i32 noundef %12, i32 noundef %6) #11
  %16 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef -2147483648, i32 noundef %13, i32 noundef 3) #10
  %17 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef -2147483644, i32 noundef 65535, i32 noundef 3) #10
  %18 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef -2147483624, i32 noundef -1, i32 noundef 3) #10
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #10
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #10
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #10
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #10
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #10
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #10
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #10
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #10
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #10
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #10
  %29 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef -2147483616, i32 noundef -1, i32 noundef 3) #10
  %30 = tail call fastcc i32 @__opb_read(ptr noundef %0, i32 noundef -2147483536, i32 noundef 3, ptr noundef null) #10
  %31 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef -2147483440, i32 noundef 48, i32 noundef 3) #10
  %32 = tail call fastcc i32 @__opb_read(ptr noundef %0, i32 noundef -2147483624, i32 noundef 3, ptr noundef null) #10
  %33 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef -2147483184, i32 noundef 128, i32 noundef 3) #10
  %34 = tail call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef -2147483184, i32 noundef 64, i32 noundef 3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_master_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cfam_reset_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef returned %3) #0 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %6, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 1) #10
  tail call void @usleep_range_state(i32 noundef 900, i32 noundef 1000, i32 noundef 2) #10
  %10 = load ptr, ptr %8, align 8
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 0) #10
  tail call void @mutex_unlock(ptr noundef %7) #10
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__opb_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #10, !srcloc !14
  %8 = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %2) #10, !srcloc !14
  %9 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %1) #10, !srcloc !14
  %10 = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 1) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !23
  tail call void @arm_heavy_mb() #10
  %11 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1) #10, !srcloc !14
  %12 = tail call i64 @ktime_get() #10
  %13 = add i64 %12, 500000
  %14 = getelementptr i8, ptr %6, i32 72
  br label %15

15:                                               ; preds = %19, %4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !24
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !25
  %17 = and i32 %16, 65536
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = tail call i64 @ktime_get() #10
  %21 = icmp sgt i64 %20, %13
  br i1 %21, label %22, label %15

22:                                               ; preds = %19
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #10, !srcloc !24
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %24 = and i32 %23, 65536
  %25 = icmp eq i32 %24, 0
  br label %26

26:                                               ; preds = %22, %15
  %27 = phi i1 [ %25, %22 ], [ false, %15 ]
  %28 = phi i32 [ %23, %22 ], [ %16, %15 ]
  %29 = getelementptr i8, ptr %6, i32 128
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !24
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !27
  %31 = getelementptr i8, ptr %6, i32 132
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !24
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !28
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !24
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !29
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_aspeed_opb_read, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %26
  %37 = tail call ptr @llvm.thread.pointer() #10
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 2
  %39 = load i32, ptr %38, align 8
  %40 = lshr i32 %39, 5
  %41 = getelementptr i32, ptr @__cpu_online_mask, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !30
  %48 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_aspeed_opb_read, i32 0, i32 7), align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %50, %47
  %51 = phi ptr [ %55, %50 ], [ %48, %47 ]
  %52 = load volatile ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.tracepoint_func, ptr %51, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  tail call void %52(ptr noundef %54, i32 noundef %1, i32 noundef %2, i32 noundef %32, i32 noundef %33, i32 noundef %28) #10
  %55 = getelementptr %struct.tracepoint_func, ptr %51, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %50

58:                                               ; preds = %50, %47
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  br label %59

59:                                               ; preds = %58, %36, %26
  br i1 %27, label %71, label %60

60:                                               ; preds = %59
  %61 = and i32 %30, 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = icmp eq ptr %3, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %63
  switch i32 %2, label %71 [
    i32 0, label %66
    i32 1, label %68
    i32 3, label %70
  ]

66:                                               ; preds = %65
  %67 = trunc i32 %32 to i8
  store i8 %67, ptr %3, align 1
  br label %71

68:                                               ; preds = %65
  %69 = trunc i32 %32 to i16
  store i16 %69, ptr %3, align 2
  br label %71

70:                                               ; preds = %65
  store i32 %32, ptr %3, align 4
  br label %71

71:                                               ; preds = %70, %68, %66, %65, %63, %60, %59
  %72 = phi i32 [ -110, %59 ], [ -5, %60 ], [ -22, %65 ], [ 0, %66 ], [ 0, %68 ], [ 0, %70 ], [ 0, %63 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_errors(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_aspeed_opb_error, i32 0, i32 1), align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %44

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %9 = call fastcc i32 @__opb_read(ptr noundef %0, i32 noundef -2147483440, i32 noundef 3, ptr noundef nonnull %3) #10
  %10 = call fastcc i32 @__opb_read(ptr noundef %0, i32 noundef -2147483440, i32 noundef 3, ptr noundef nonnull %4) #10
  %11 = call fastcc i32 @__opb_read(ptr noundef %0, i32 noundef -2147483184, i32 noundef 3, ptr noundef nonnull %5) #10
  %12 = load i32, ptr %3, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %14 = load i32, ptr %4, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %16 = load i32, ptr %5, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_aspeed_opb_error, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %8
  %21 = tail call ptr @llvm.thread.pointer() #10
  %22 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 2
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 5
  %25 = getelementptr i32, ptr @__cpu_online_mask, i32 %24
  %26 = load volatile i32, ptr %25, align 4
  %27 = and i32 %23, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %20
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  %32 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_aspeed_opb_error, i32 0, i32 7), align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %34, %31
  %35 = phi ptr [ %39, %34 ], [ %32, %31 ]
  %36 = load volatile ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tracepoint_func, ptr %35, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  call void %36(ptr noundef %38, i32 noundef %13, i32 noundef %15, i32 noundef %17) #10
  %39 = getelementptr %struct.tracepoint_func, ptr %35, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %34

42:                                               ; preds = %34, %31
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  br label %43

43:                                               ; preds = %42, %20, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  br label %44

44:                                               ; preds = %43, %2
  %45 = icmp eq i32 %1, -5
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = call fastcc i32 @__opb_write(ptr noundef %0, i32 noundef -2147483440, i32 noundef 32, i32 noundef 3) #10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %44
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i32 [ %1, %49 ], [ %47, %46 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__opb_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.fsi_master_aspeed, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #10, !srcloc !14
  %8 = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %3) #10, !srcloc !14
  %9 = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %1) #10, !srcloc !14
  %10 = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %2) #10, !srcloc !14
  %11 = getelementptr i8, ptr %6, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 1) #10, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !34
  tail call void @arm_heavy_mb() #10
  %12 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #10, !srcloc !14
  %13 = tail call i64 @ktime_get() #10
  %14 = add i64 %13, 500000
  %15 = getelementptr i8, ptr %6, i32 72
  br label %16

16:                                               ; preds = %20, %4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !24
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !35
  %18 = and i32 %17, 65536
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = tail call i64 @ktime_get() #10
  %22 = icmp sgt i64 %21, %14
  br i1 %22, label %23, label %16

23:                                               ; preds = %20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #10, !srcloc !24
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !36
  br label %25

25:                                               ; preds = %23, %16
  %26 = phi i32 [ %24, %23 ], [ %17, %16 ]
  %27 = getelementptr i8, ptr %6, i32 128
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #10, !srcloc !24
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !37
  %29 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_aspeed_opb_write, i32 0, i32 1), align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = tail call ptr @llvm.thread.pointer() #10
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 5
  %36 = getelementptr i32, ptr @__cpu_online_mask, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %34, 31
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %31
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  %43 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_fsi_master_aspeed_opb_write, i32 0, i32 7), align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %45, %42
  %46 = phi ptr [ %50, %45 ], [ %43, %42 ]
  %47 = load volatile ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.tracepoint_func, ptr %46, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  tail call void %47(ptr noundef %49, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %28, i32 noundef %26) #10
  %50 = getelementptr %struct.tracepoint_func, ptr %46, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %45

53:                                               ; preds = %45, %42
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !39
  br label %54

54:                                               ; preds = %53, %31, %25
  %55 = and i32 %26, 65536
  %56 = icmp eq i32 %55, 0
  %57 = and i32 %28, 4
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, i32 0, i32 -5
  %60 = select i1 %56, i32 -110, i32 %59
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_master_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!12 = !{i64 368893}
!13 = !{i64 2154248165}
!14 = !{i64 3661723}
!15 = !{i64 2154248712}
!16 = !{i64 2154249148}
!17 = !{i64 2154249479}
!18 = !{i64 2154249819}
!19 = !{i64 2154250159}
!20 = !{i64 2154250503}
!21 = !{i64 2154250847}
!22 = !{i64 2154251184}
!23 = !{i64 2154219016}
!24 = !{i64 3662141}
!25 = !{i64 2154220640}
!26 = !{i64 2154220956}
!27 = !{i64 2154221281}
!28 = !{i64 2154221602}
!29 = !{i64 2154221923}
!30 = !{i64 2151640254}
!31 = !{i64 2151644555}
!32 = !{i64 2151673312}
!33 = !{i64 2151673522}
!34 = !{i64 2154215571}
!35 = !{i64 2154217195}
!36 = !{i64 2154217511}
!37 = !{i64 2154217836}
!38 = !{i64 2151659055}
!39 = !{i64 2151659291}
