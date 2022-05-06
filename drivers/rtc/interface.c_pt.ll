; ModuleID = '/llk/IR/drivers/rtc/interface.c_pt.bc'
source_filename = "../drivers/rtc/interface.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_read_time:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_read_time\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_read_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_set_time:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_set_time\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_set_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_read_alarm:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_read_alarm\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_read_alarm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_set_alarm:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_set_alarm\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_set_alarm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_initialize_alarm:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_initialize_alarm\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_initialize_alarm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_alarm_irq_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_alarm_irq_enable\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_alarm_irq_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_update_irq_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_update_irq_enable\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_update_irq_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_update_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_update_irq\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_update_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_class_open:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_class_open\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_class_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtc_class_close:\09\09\09\09\09"
module asm "\09.asciz \09\22rtc_class_close\22\09\09\09\09\09"
module asm "__kstrtabns_rtc_class_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.90 }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.92, %struct.trace_event, ptr, ptr, %union.anon.93, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.92 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.93 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_rtc_time_alarm_class = type { %struct.trace_entry, i64, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_rtc_irq_set_freq = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rtc_irq_set_state = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rtc_alarm_irq_enable = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rtc_offset_class = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_rtc_timer_class = type { %struct.trace_entry, ptr, i64, i64, [0 x i8] }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_rtc_set_time = internal constant [13 x i8] c"rtc_set_time\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_set_time = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_set_time }, align 4
@__tracepoint_rtc_set_time = dso_local global %struct.tracepoint { ptr @__tpstrtab_rtc_set_time, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rtc_set_time, ptr null, ptr @__traceiter_rtc_set_time, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_set_time = internal constant ptr @__tracepoint_rtc_set_time, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_read_time = internal constant [14 x i8] c"rtc_read_time\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_read_time = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_read_time }, align 4
@__tracepoint_rtc_read_time = dso_local global %struct.tracepoint { ptr @__tpstrtab_rtc_read_time, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rtc_read_time, ptr null, ptr @__traceiter_rtc_read_time, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_read_time = internal constant ptr @__tracepoint_rtc_read_time, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_set_alarm = internal constant [14 x i8] c"rtc_set_alarm\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_set_alarm = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_set_alarm }, align 4
@__tracepoint_rtc_set_alarm = dso_local global %struct.tracepoint { ptr @__tpstrtab_rtc_set_alarm, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rtc_set_alarm, ptr null, ptr @__traceiter_rtc_set_alarm, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_set_alarm = internal constant ptr @__tracepoint_rtc_set_alarm, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_read_alarm = internal constant [15 x i8] c"rtc_read_alarm\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_read_alarm = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_read_alarm }, align 4
@__tracepoint_rtc_read_alarm = dso_local global %struct.tracepoint { ptr @__tpstrtab_rtc_read_alarm, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rtc_read_alarm, ptr null, ptr @__traceiter_rtc_read_alarm, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_read_alarm = internal constant ptr @__tracepoint_rtc_read_alarm, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_irq_set_freq = internal constant [17 x i8] c"rtc_irq_set_freq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_irq_set_freq = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_irq_set_freq }, align 4
@__tracepoint_rtc_irq_set_freq = dso_local global %struct.tracepoint { ptr @__tpstrtab_rtc_irq_set_freq, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rtc_irq_set_freq, ptr null, ptr @__traceiter_rtc_irq_set_freq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_irq_set_freq = internal constant ptr @__tracepoint_rtc_irq_set_freq, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_irq_set_state = internal constant [18 x i8] c"rtc_irq_set_state\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_irq_set_state = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_irq_set_state }, align 4
@__tracepoint_rtc_irq_set_state = dso_local global %struct.tracepoint { ptr @__tpstrtab_rtc_irq_set_state, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rtc_irq_set_state, ptr null, ptr @__traceiter_rtc_irq_set_state, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_irq_set_state = internal constant ptr @__tracepoint_rtc_irq_set_state, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_alarm_irq_enable = internal constant [21 x i8] c"rtc_alarm_irq_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_alarm_irq_enable = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_alarm_irq_enable }, align 4
@__tracepoint_rtc_alarm_irq_enable = dso_local global %struct.tracepoint { ptr @__tpstrtab_rtc_alarm_irq_enable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rtc_alarm_irq_enable, ptr null, ptr @__traceiter_rtc_alarm_irq_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_alarm_irq_enable = internal constant ptr @__tracepoint_rtc_alarm_irq_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_set_offset = internal constant [15 x i8] c"rtc_set_offset\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_set_offset = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_set_offset }, align 4
@__tracepoint_rtc_set_offset = dso_local global %struct.tracepoint { ptr @__tpstrtab_rtc_set_offset, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rtc_set_offset, ptr null, ptr @__traceiter_rtc_set_offset, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_set_offset = internal constant ptr @__tracepoint_rtc_set_offset, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_read_offset = internal constant [16 x i8] c"rtc_read_offset\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_read_offset = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_read_offset }, align 4
@__tracepoint_rtc_read_offset = dso_local global %struct.tracepoint { ptr @__tpstrtab_rtc_read_offset, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rtc_read_offset, ptr null, ptr @__traceiter_rtc_read_offset, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_read_offset = internal constant ptr @__tracepoint_rtc_read_offset, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_timer_enqueue = internal constant [18 x i8] c"rtc_timer_enqueue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_timer_enqueue = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_timer_enqueue }, align 4
@__tracepoint_rtc_timer_enqueue = dso_local global %struct.tracepoint { ptr @__tpstrtab_rtc_timer_enqueue, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rtc_timer_enqueue, ptr null, ptr @__traceiter_rtc_timer_enqueue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_timer_enqueue = internal constant ptr @__tracepoint_rtc_timer_enqueue, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_timer_dequeue = internal constant [18 x i8] c"rtc_timer_dequeue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_timer_dequeue = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_timer_dequeue }, align 4
@__tracepoint_rtc_timer_dequeue = dso_local global %struct.tracepoint { ptr @__tpstrtab_rtc_timer_dequeue, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rtc_timer_dequeue, ptr null, ptr @__traceiter_rtc_timer_dequeue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_timer_dequeue = internal constant ptr @__tracepoint_rtc_timer_dequeue, section "__tracepoints_ptrs", align 4
@__tpstrtab_rtc_timer_fired = internal constant [16 x i8] c"rtc_timer_fired\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_rtc_timer_fired = dso_local global %struct.static_call_key { ptr @__traceiter_rtc_timer_fired }, align 4
@__tracepoint_rtc_timer_fired = dso_local global %struct.tracepoint { ptr @__tpstrtab_rtc_timer_fired, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_rtc_timer_fired, ptr null, ptr @__traceiter_rtc_timer_fired, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_rtc_timer_fired = internal constant ptr @__tracepoint_rtc_timer_fired, section "__tracepoints_ptrs", align 4
@str__rtc__trace_system_name = internal constant [4 x i8] c"rtc\00", align 1
@trace_event_fields_rtc_time_alarm_class = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.3, %union.anon.90 { %struct.anon.91 { ptr @.str.4, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.90 { %struct.anon.91 { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rtc_time_alarm_class = internal global %struct.trace_event_class { ptr @str__rtc__trace_system_name, ptr @trace_event_raw_event_rtc_time_alarm_class, ptr @perf_trace_rtc_time_alarm_class, ptr @trace_event_reg, ptr @trace_event_fields_rtc_time_alarm_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rtc_time_alarm_class, i64 24), ptr getelementptr (i8, ptr @event_class_rtc_time_alarm_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rtc_time_alarm_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_rtc_time_alarm_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_rtc_time_alarm_class = internal global [39 x i8] c"\22UTC (%lld) (%d)\22, REC->secs, REC->err\00", align 1
@event_rtc_set_time = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_time_alarm_class, %union.anon.92 { ptr @__tracepoint_rtc_set_time }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_time_alarm_class }, ptr @print_fmt_rtc_time_alarm_class, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rtc_set_time = internal global ptr @event_rtc_set_time, section "_ftrace_events", align 4
@event_rtc_read_time = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_time_alarm_class, %union.anon.92 { ptr @__tracepoint_rtc_read_time }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_time_alarm_class }, ptr @print_fmt_rtc_time_alarm_class, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rtc_read_time = internal global ptr @event_rtc_read_time, section "_ftrace_events", align 4
@event_rtc_set_alarm = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_time_alarm_class, %union.anon.92 { ptr @__tracepoint_rtc_set_alarm }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_time_alarm_class }, ptr @print_fmt_rtc_time_alarm_class, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rtc_set_alarm = internal global ptr @event_rtc_set_alarm, section "_ftrace_events", align 4
@event_rtc_read_alarm = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_time_alarm_class, %union.anon.92 { ptr @__tracepoint_rtc_read_alarm }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_time_alarm_class }, ptr @print_fmt_rtc_time_alarm_class, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rtc_read_alarm = internal global ptr @event_rtc_read_alarm, section "_ftrace_events", align 4
@trace_event_fields_rtc_irq_set_freq = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.90 { %struct.anon.91 { ptr @.str.8, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.90 { %struct.anon.91 { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rtc_irq_set_freq = internal global %struct.trace_event_class { ptr @str__rtc__trace_system_name, ptr @trace_event_raw_event_rtc_irq_set_freq, ptr @perf_trace_rtc_irq_set_freq, ptr @trace_event_reg, ptr @trace_event_fields_rtc_irq_set_freq, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rtc_irq_set_freq, i64 24), ptr getelementptr (i8, ptr @event_class_rtc_irq_set_freq, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rtc_irq_set_freq = internal global %struct.trace_event_functions { ptr @trace_raw_output_rtc_irq_set_freq, ptr null, ptr null, ptr null }, align 4
@print_fmt_rtc_irq_set_freq = internal global [62 x i8] c"\22set RTC periodic IRQ frequency:%u (%d)\22, REC->freq, REC->err\00", align 1
@event_rtc_irq_set_freq = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_irq_set_freq, %union.anon.92 { ptr @__tracepoint_rtc_irq_set_freq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_irq_set_freq }, ptr @print_fmt_rtc_irq_set_freq, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rtc_irq_set_freq = internal global ptr @event_rtc_irq_set_freq, section "_ftrace_events", align 4
@trace_event_fields_rtc_irq_set_state = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon.90 { %struct.anon.91 { ptr @.str.10, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.90 { %struct.anon.91 { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rtc_irq_set_state = internal global %struct.trace_event_class { ptr @str__rtc__trace_system_name, ptr @trace_event_raw_event_rtc_irq_set_state, ptr @perf_trace_rtc_irq_set_state, ptr @trace_event_reg, ptr @trace_event_fields_rtc_irq_set_state, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rtc_irq_set_state, i64 24), ptr getelementptr (i8, ptr @event_class_rtc_irq_set_state, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rtc_irq_set_state = internal global %struct.trace_event_functions { ptr @trace_raw_output_rtc_irq_set_state, ptr null, ptr null, ptr null }, align 4
@print_fmt_rtc_irq_set_state = internal global [82 x i8] c"\22%s RTC 2^N Hz periodic IRQs (%d)\22, REC->enabled ? \22enable\22 : \22disable\22, REC->err\00", align 1
@event_rtc_irq_set_state = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_irq_set_state, %union.anon.92 { ptr @__tracepoint_rtc_irq_set_state }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_irq_set_state }, ptr @print_fmt_rtc_irq_set_state, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rtc_irq_set_state = internal global ptr @event_rtc_irq_set_state, section "_ftrace_events", align 4
@trace_event_fields_rtc_alarm_irq_enable = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.14, %union.anon.90 { %struct.anon.91 { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.90 { %struct.anon.91 { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rtc_alarm_irq_enable = internal global %struct.trace_event_class { ptr @str__rtc__trace_system_name, ptr @trace_event_raw_event_rtc_alarm_irq_enable, ptr @perf_trace_rtc_alarm_irq_enable, ptr @trace_event_reg, ptr @trace_event_fields_rtc_alarm_irq_enable, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rtc_alarm_irq_enable, i64 24), ptr getelementptr (i8, ptr @event_class_rtc_alarm_irq_enable, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rtc_alarm_irq_enable = internal global %struct.trace_event_functions { ptr @trace_raw_output_rtc_alarm_irq_enable, ptr null, ptr null, ptr null }, align 4
@print_fmt_rtc_alarm_irq_enable = internal global [71 x i8] c"\22%s RTC alarm IRQ (%d)\22, REC->enabled ? \22enable\22 : \22disable\22, REC->err\00", align 1
@event_rtc_alarm_irq_enable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_alarm_irq_enable, %union.anon.92 { ptr @__tracepoint_rtc_alarm_irq_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_alarm_irq_enable }, ptr @print_fmt_rtc_alarm_irq_enable, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rtc_alarm_irq_enable = internal global ptr @event_rtc_alarm_irq_enable, section "_ftrace_events", align 4
@trace_event_fields_rtc_offset_class = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.16, %union.anon.90 { %struct.anon.91 { ptr @.str.17, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon.90 { %struct.anon.91 { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rtc_offset_class = internal global %struct.trace_event_class { ptr @str__rtc__trace_system_name, ptr @trace_event_raw_event_rtc_offset_class, ptr @perf_trace_rtc_offset_class, ptr @trace_event_reg, ptr @trace_event_fields_rtc_offset_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rtc_offset_class, i64 24), ptr getelementptr (i8, ptr @event_class_rtc_offset_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rtc_offset_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_rtc_offset_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_rtc_offset_class = internal global [46 x i8] c"\22RTC offset: %ld (%d)\22, REC->offset, REC->err\00", align 1
@event_rtc_set_offset = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_offset_class, %union.anon.92 { ptr @__tracepoint_rtc_set_offset }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_offset_class }, ptr @print_fmt_rtc_offset_class, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rtc_set_offset = internal global ptr @event_rtc_set_offset, section "_ftrace_events", align 4
@event_rtc_read_offset = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_offset_class, %union.anon.92 { ptr @__tracepoint_rtc_read_offset }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_offset_class }, ptr @print_fmt_rtc_offset_class, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rtc_read_offset = internal global ptr @event_rtc_read_offset, section "_ftrace_events", align 4
@trace_event_fields_rtc_timer_class = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.19, %union.anon.90 { %struct.anon.91 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.90 { %struct.anon.91 { ptr @.str.22, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.21, %union.anon.90 { %struct.anon.91 { ptr @.str.23, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_rtc_timer_class = internal global %struct.trace_event_class { ptr @str__rtc__trace_system_name, ptr @trace_event_raw_event_rtc_timer_class, ptr @perf_trace_rtc_timer_class, ptr @trace_event_reg, ptr @trace_event_fields_rtc_timer_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_rtc_timer_class, i64 24), ptr getelementptr (i8, ptr @event_class_rtc_timer_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_rtc_timer_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_rtc_timer_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_rtc_timer_class = internal global [81 x i8] c"\22RTC timer:(%p) expires:%lld period:%lld\22, REC->timer, REC->expires, REC->period\00", align 1
@event_rtc_timer_enqueue = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_timer_class, %union.anon.92 { ptr @__tracepoint_rtc_timer_enqueue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_timer_class }, ptr @print_fmt_rtc_timer_class, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rtc_timer_enqueue = internal global ptr @event_rtc_timer_enqueue, section "_ftrace_events", align 4
@event_rtc_timer_dequeue = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_timer_class, %union.anon.92 { ptr @__tracepoint_rtc_timer_dequeue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_timer_class }, ptr @print_fmt_rtc_timer_class, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rtc_timer_dequeue = internal global ptr @event_rtc_timer_dequeue, section "_ftrace_events", align 4
@event_rtc_timer_fired = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_rtc_timer_class, %union.anon.92 { ptr @__tracepoint_rtc_timer_fired }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_rtc_timer_class }, ptr @print_fmt_rtc_timer_class, ptr null, %union.anon.93 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_rtc_timer_fired = internal global ptr @event_rtc_timer_fired, section "_ftrace_events", align 4
@__kstrtab_rtc_read_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_read_time = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_read_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_read_time to i32), ptr @__kstrtab_rtc_read_time, ptr @__kstrtabns_rtc_read_time }, section "___ksymtab_gpl+rtc_read_time", align 4
@__kstrtab_rtc_set_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_set_time = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_set_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_set_time to i32), ptr @__kstrtab_rtc_set_time, ptr @__kstrtabns_rtc_set_time }, section "___ksymtab_gpl+rtc_set_time", align 4
@.str = private unnamed_addr constant [28 x i8] c"alarm rollover not handled\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid alarm value: %ptR\0A\00", align 1
@__kstrtab_rtc_read_alarm = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_read_alarm = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_read_alarm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_read_alarm to i32), ptr @__kstrtab_rtc_read_alarm, ptr @__kstrtabns_rtc_read_alarm }, section "___ksymtab_gpl+rtc_read_alarm", align 4
@__kstrtab_rtc_set_alarm = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_set_alarm = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_set_alarm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_set_alarm to i32), ptr @__kstrtab_rtc_set_alarm, ptr @__kstrtabns_rtc_set_alarm }, section "___ksymtab_gpl+rtc_set_alarm", align 4
@__kstrtab_rtc_initialize_alarm = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_initialize_alarm = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_initialize_alarm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_initialize_alarm to i32), ptr @__kstrtab_rtc_initialize_alarm, ptr @__kstrtabns_rtc_initialize_alarm }, section "___ksymtab_gpl+rtc_initialize_alarm", align 4
@__kstrtab_rtc_alarm_irq_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_alarm_irq_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_alarm_irq_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_alarm_irq_enable to i32), ptr @__kstrtab_rtc_alarm_irq_enable, ptr @__kstrtabns_rtc_alarm_irq_enable }, section "___ksymtab_gpl+rtc_alarm_irq_enable", align 4
@__kstrtab_rtc_update_irq_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_update_irq_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_update_irq_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_update_irq_enable to i32), ptr @__kstrtab_rtc_update_irq_enable, ptr @__kstrtabns_rtc_update_irq_enable }, section "___ksymtab_gpl+rtc_update_irq_enable", align 4
@__kstrtab_rtc_update_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_update_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_update_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_update_irq to i32), ptr @__kstrtab_rtc_update_irq, ptr @__kstrtabns_rtc_update_irq }, section "___ksymtab_gpl+rtc_update_irq", align 4
@rtc_class = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_rtc_class_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_class_open = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_class_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_class_open to i32), ptr @__kstrtab_rtc_class_open, ptr @__kstrtabns_rtc_class_open }, section "___ksymtab_gpl+rtc_class_open", align 4
@__kstrtab_rtc_class_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtc_class_close = external dso_local constant [0 x i8], align 1
@__ksymtab_rtc_class_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtc_class_close to i32), ptr @__kstrtab_rtc_class_close, ptr @__kstrtabns_rtc_class_close }, section "___ksymtab_gpl+rtc_class_close", align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"__rtc_set_alarm: err=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"time64_t\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"secs\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"UTC (%lld) (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"set RTC periodic IRQ frequency:%u (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"%s RTC 2^N Hz periodic IRQs (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"%s RTC alarm IRQ (%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"RTC offset: %ld (%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"struct rtc_timer *\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"ktime_t\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"expires\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"RTC timer:(%p) expires:%lld period:%lld\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [64 x ptr] [ptr @__event_rtc_alarm_irq_enable, ptr @__event_rtc_irq_set_freq, ptr @__event_rtc_irq_set_state, ptr @__event_rtc_read_alarm, ptr @__event_rtc_read_offset, ptr @__event_rtc_read_time, ptr @__event_rtc_set_alarm, ptr @__event_rtc_set_offset, ptr @__event_rtc_set_time, ptr @__event_rtc_timer_dequeue, ptr @__event_rtc_timer_enqueue, ptr @__event_rtc_timer_fired, ptr @__ksymtab_rtc_alarm_irq_enable, ptr @__ksymtab_rtc_class_close, ptr @__ksymtab_rtc_class_open, ptr @__ksymtab_rtc_initialize_alarm, ptr @__ksymtab_rtc_read_alarm, ptr @__ksymtab_rtc_read_time, ptr @__ksymtab_rtc_set_alarm, ptr @__ksymtab_rtc_set_time, ptr @__ksymtab_rtc_update_irq, ptr @__ksymtab_rtc_update_irq_enable, ptr @__tracepoint_ptr_rtc_alarm_irq_enable, ptr @__tracepoint_ptr_rtc_irq_set_freq, ptr @__tracepoint_ptr_rtc_irq_set_state, ptr @__tracepoint_ptr_rtc_read_alarm, ptr @__tracepoint_ptr_rtc_read_offset, ptr @__tracepoint_ptr_rtc_read_time, ptr @__tracepoint_ptr_rtc_set_alarm, ptr @__tracepoint_ptr_rtc_set_offset, ptr @__tracepoint_ptr_rtc_set_time, ptr @__tracepoint_ptr_rtc_timer_dequeue, ptr @__tracepoint_ptr_rtc_timer_enqueue, ptr @__tracepoint_ptr_rtc_timer_fired, ptr @__tracepoint_rtc_alarm_irq_enable, ptr @__tracepoint_rtc_irq_set_freq, ptr @__tracepoint_rtc_irq_set_state, ptr @__tracepoint_rtc_read_alarm, ptr @__tracepoint_rtc_read_offset, ptr @__tracepoint_rtc_read_time, ptr @__tracepoint_rtc_set_alarm, ptr @__tracepoint_rtc_set_offset, ptr @__tracepoint_rtc_set_time, ptr @__tracepoint_rtc_timer_dequeue, ptr @__tracepoint_rtc_timer_enqueue, ptr @__tracepoint_rtc_timer_fired, ptr @event_class_rtc_alarm_irq_enable, ptr @event_class_rtc_irq_set_freq, ptr @event_class_rtc_irq_set_state, ptr @event_class_rtc_offset_class, ptr @event_class_rtc_time_alarm_class, ptr @event_class_rtc_timer_class, ptr @event_rtc_alarm_irq_enable, ptr @event_rtc_irq_set_freq, ptr @event_rtc_irq_set_state, ptr @event_rtc_read_alarm, ptr @event_rtc_read_offset, ptr @event_rtc_read_time, ptr @event_rtc_set_alarm, ptr @event_rtc_set_offset, ptr @event_rtc_set_time, ptr @event_rtc_timer_dequeue, ptr @event_rtc_timer_enqueue, ptr @event_rtc_timer_fired], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_set_time(ptr nocapture readnone %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_set_time, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i64 noundef %1, i32 noundef %2) #10
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
define dso_local i32 @__traceiter_rtc_read_time(ptr nocapture readnone %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_read_time, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i64 noundef %1, i32 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_set_alarm(ptr nocapture readnone %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_set_alarm, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i64 noundef %1, i32 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_read_alarm(ptr nocapture readnone %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_read_alarm, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i64 noundef %1, i32 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_irq_set_freq(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_irq_set_freq, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_irq_set_state(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_irq_set_state, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_alarm_irq_enable(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_alarm_irq_enable, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_set_offset(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_set_offset, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_read_offset(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_read_offset, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #10
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_rtc_timer_enqueue(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_enqueue, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_rtc_timer_dequeue(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_dequeue, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_rtc_timer_fired(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_fired, i32 0, i32 7), align 4
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
define internal void @trace_event_raw_event_rtc_time_alarm_class(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
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
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 24) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_rtc_time_alarm_class, ptr %15, i32 0, i32 1
  store i64 %1, ptr %18, align 8
  %19 = getelementptr inbounds %struct.trace_event_raw_rtc_time_alarm_class, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rtc_time_alarm_class(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #8, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #10
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #10
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_rtc_time_alarm_class, ptr %21, i32 0, i32 1
  store i64 %1, ptr %34, align 8
  %35 = getelementptr inbounds %struct.trace_event_raw_rtc_time_alarm_class, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 8
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 28, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #10
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rtc_irq_set_freq(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_freq, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_freq, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rtc_irq_set_freq(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #8, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #10
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #10
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_freq, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_freq, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #10
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rtc_irq_set_state(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_state, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_state, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rtc_irq_set_state(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #8, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #10
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #10
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_state, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_state, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #10
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rtc_alarm_irq_enable(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_rtc_alarm_irq_enable, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_rtc_alarm_irq_enable, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rtc_alarm_irq_enable(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #8, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #10
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #10
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_rtc_alarm_irq_enable, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rtc_alarm_irq_enable, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #10
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rtc_offset_class(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_rtc_offset_class, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_rtc_offset_class, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #10
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rtc_offset_class(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #10
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #8, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #10
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #10
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #10
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_rtc_offset_class, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_rtc_offset_class, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #10
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_rtc_timer_class(ptr noundef %0, ptr noundef %1) #0 {
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
  br i1 %12, label %24, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 32) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.timerqueue_node, ptr %1, i32 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %14, i32 0, i32 2
  store i64 %19, ptr %20, align 8
  %21 = getelementptr inbounds %struct.rtc_timer, ptr %1, i32 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %14, i32 0, i32 3
  store i64 %22, ptr %23, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #10
  br label %24

24:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_rtc_timer_class(ptr noundef %0, ptr noundef %1) #0 {
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
  br i1 %18, label %42, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %3, ptr noundef nonnull %4) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

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
  %33 = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 8
  %34 = getelementptr inbounds %struct.timerqueue_node, ptr %1, i32 0, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %20, i32 0, i32 2
  store i64 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.rtc_timer, ptr %1, i32 0, i32 1
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %20, i32 0, i32 3
  store i64 %38, ptr %39, align 8
  %40 = load i32, ptr %4, align 4
  %41 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 36, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %12, ptr noundef null) #10
  br label %42

42:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtc_read_time(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 4
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef %3) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @__rtc_read_time(ptr noundef %0, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %3) #10
  %8 = tail call i64 @rtc_tm_to_time64(ptr noundef %1) #10
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_read_time, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %6
  %12 = tail call ptr @llvm.thread.pointer() #10
  %13 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 5
  %16 = getelementptr i32, ptr @__cpu_online_mask, i32 %15
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %14, 31
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %11
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %23 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_read_time, i32 0, i32 7), align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %25, %22
  %26 = phi ptr [ %30, %25 ], [ %23, %22 ]
  %27 = load volatile ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.tracepoint_func, ptr %26, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  tail call void %27(ptr noundef %29, i64 noundef %8, i32 noundef %7) #10
  %30 = getelementptr %struct.tracepoint_func, ptr %26, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %25

33:                                               ; preds = %25, %22
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !14
  br label %34

34:                                               ; preds = %33, %11, %6, %2
  %35 = phi i32 [ %4, %2 ], [ %7, %6 ], [ %7, %11 ], [ %7, %33 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__rtc_read_time(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtc_class_ops, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %6
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %1, i8 0, i32 36, i1 false)
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.rtc_class_ops, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %13(ptr noundef %15, ptr noundef %1) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 25
  %20 = load i64, ptr %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %18
  %23 = tail call i64 @rtc_tm_to_time64(ptr noundef %1) #10
  %24 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 24
  %25 = load i64, ptr %24, align 8
  %26 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 22
  %27 = load i64, ptr %26, align 8
  %28 = icmp sle i64 %25, %27
  %29 = icmp slt i64 %23, %25
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %22
  %32 = icmp slt i64 %25, %27
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 23
  %35 = load i64, ptr %34, align 8
  %36 = sub i64 %25, %27
  %37 = add i64 %36, %35
  %38 = icmp ugt i64 %23, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %31
  %40 = load i64, ptr %19, align 8
  %41 = add i64 %40, %23
  tail call void @rtc_time64_to_tm(i64 noundef %41, ptr noundef %1) #10
  br label %42

42:                                               ; preds = %39, %33, %22, %18
  %43 = tail call i32 @rtc_valid_tm(ptr noundef %1) #10
  br label %44

44:                                               ; preds = %42, %10, %6, %2
  %45 = phi i32 [ %16, %10 ], [ %43, %42 ], [ -19, %2 ], [ -22, %6 ]
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtc_set_time(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @rtc_valid_tm(ptr noundef %1) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %124

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 22
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 23
  %9 = load i64, ptr %8, align 8
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %32, label %11

11:                                               ; preds = %5
  %12 = tail call i64 @rtc_tm_to_time64(ptr noundef %1) #10
  %13 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 26
  %14 = load i8, ptr %13, align 8, !range !15
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 24
  %17 = select i1 %15, ptr %6, ptr %16
  %18 = load i64, ptr %17, align 8
  br i1 %15, label %25, label %19

19:                                               ; preds = %11
  %20 = load i64, ptr %16, align 8
  %21 = load i64, ptr %8, align 8
  %22 = add i64 %21, %20
  %23 = load i64, ptr %6, align 8
  %24 = sub i64 %22, %23
  br label %27

25:                                               ; preds = %11
  %26 = load i64, ptr %8, align 8
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi i64 [ %24, %19 ], [ %26, %25 ]
  %29 = icmp sge i64 %12, %18
  %30 = icmp ule i64 %12, %28
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %124

32:                                               ; preds = %27, %5
  %33 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 25
  %34 = load i64, ptr %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = tail call i64 @rtc_tm_to_time64(ptr noundef %1) #10
  %38 = load i64, ptr %6, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i64, ptr %8, align 8
  %42 = icmp ugt i64 %37, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %36
  %44 = load i64, ptr %33, align 8
  %45 = sub i64 %37, %44
  tail call void @rtc_time64_to_tm(i64 noundef %45, ptr noundef %1) #10
  br label %46

46:                                               ; preds = %43, %40, %32
  %47 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 15, i32 4
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 4
  %52 = tail call i32 @mutex_lock_interruptible(ptr noundef %51) #10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %124

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 15
  %56 = load i32, ptr %47, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 21
  %60 = load volatile i32, ptr %59, align 4
  %61 = and i32 %60, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load volatile i32, ptr %59, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %58
  tail call void @mutex_unlock(ptr noundef %51) #10
  br label %124

68:                                               ; preds = %63
  tail call fastcc void @rtc_timer_remove(ptr noundef %0, ptr noundef %55) #10
  br label %69

69:                                               ; preds = %68, %54
  tail call void @mutex_unlock(ptr noundef %51) #10
  br label %70

70:                                               ; preds = %69, %46
  %71 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 4
  %72 = tail call i32 @mutex_lock_interruptible(ptr noundef %71) #10
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %124

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 3
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.rtc_class_ops, ptr %76, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 %80(ptr noundef %84, ptr noundef %1) #10
  br label %86

86:                                               ; preds = %82, %78, %74
  %87 = phi i32 [ %85, %82 ], [ -19, %74 ], [ -22, %78 ]
  %88 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  tail call void @pm_stay_awake(ptr noundef %89) #10
  tail call void @mutex_unlock(ptr noundef %71) #10
  %90 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 18
  %91 = load ptr, ptr @system_wq, align 4
  %92 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %91, ptr noundef %90) #10
  br i1 %49, label %96, label %93

93:                                               ; preds = %86
  %94 = tail call i32 @rtc_update_irq_enable(ptr noundef %0, i32 noundef 1)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %93, %86
  %97 = phi i32 [ 0, %93 ], [ %87, %86 ]
  %98 = tail call i64 @rtc_tm_to_time64(ptr noundef %1) #10
  %99 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_set_time, i32 0, i32 1), align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %96
  %102 = tail call ptr @llvm.thread.pointer() #10
  %103 = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 2
  %104 = load i32, ptr %103, align 8
  %105 = lshr i32 %104, 5
  %106 = getelementptr i32, ptr @__cpu_online_mask, i32 %105
  %107 = load volatile i32, ptr %106, align 4
  %108 = and i32 %104, 31
  %109 = shl nuw i32 1, %108
  %110 = and i32 %109, %107
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %101
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !16
  %113 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_set_time, i32 0, i32 7), align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %123, label %115

115:                                              ; preds = %115, %112
  %116 = phi ptr [ %120, %115 ], [ %113, %112 ]
  %117 = load volatile ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.tracepoint_func, ptr %116, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  tail call void %117(ptr noundef %119, i64 noundef %98, i32 noundef %97) #10
  %120 = getelementptr %struct.tracepoint_func, ptr %116, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %115

123:                                              ; preds = %115, %112
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !17
  br label %124

124:                                              ; preds = %123, %101, %96, %93, %70, %67, %50, %27, %2
  %125 = phi i32 [ %3, %2 ], [ %72, %70 ], [ %94, %93 ], [ -34, %27 ], [ %97, %96 ], [ %97, %101 ], [ %97, %123 ], [ %52, %50 ], [ -22, %67 ]
  ret i32 %125
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtc_update_irq_enable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.rtc_time, align 4
  %4 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 4
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %64

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 15
  %9 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 15, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %62, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 21
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 16
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load volatile i32, ptr %13, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %12
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %64

22:                                               ; preds = %17
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %61, label %24

24:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false), !annotation !9
  %25 = call fastcc i32 @__rtc_read_time(ptr noundef %0, ptr noundef nonnull %3)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = load i32, ptr %3, align 4
  %29 = insertvalue [9 x i32] poison, i32 %28, 0
  %30 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = insertvalue [9 x i32] %29, i32 %31, 1
  %33 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = insertvalue [9 x i32] %32, i32 %34, 2
  %36 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = insertvalue [9 x i32] %35, i32 %37, 3
  %39 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = insertvalue [9 x i32] %38, i32 %40, 4
  %42 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = insertvalue [9 x i32] %41, i32 %43, 5
  %45 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = insertvalue [9 x i32] %44, i32 %46, 6
  %48 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = insertvalue [9 x i32] %47, i32 %49, 7
  %51 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 8
  %52 = load i32, ptr %51, align 4
  %53 = insertvalue [9 x i32] %50, i32 %52, 8
  %54 = call i64 @rtc_tm_to_ktime([9 x i32] %53) #10
  %55 = add i64 %54, 1000000000
  %56 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 15, i32 0, i32 1
  store i64 %55, ptr %56, align 8
  %57 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 15, i32 1
  store i64 1000000000, ptr %57, align 8
  %58 = call fastcc i32 @rtc_timer_enqueue(ptr noundef %0, ptr noundef %8)
  br label %59

59:                                               ; preds = %27, %24
  %60 = phi i32 [ %58, %27 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #10
  br label %62

61:                                               ; preds = %22
  tail call fastcc void @rtc_timer_remove(ptr noundef %0, ptr noundef %8)
  br label %62

62:                                               ; preds = %61, %59, %7
  %63 = phi i32 [ 0, %7 ], [ %60, %59 ], [ 0, %61 ]
  call void @mutex_unlock(ptr noundef %4) #10
  br label %64

64:                                               ; preds = %62, %21, %2
  %65 = phi i32 [ %63, %62 ], [ -22, %21 ], [ %5, %2 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_stay_awake(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__rtc_read_alarm(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.rtc_time, align 4
  %4 = alloca %struct.rtc_time, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %4, i8 0, i32 36, i1 false), !annotation !9
  %5 = call i32 @rtc_read_time(ptr noundef %0, ptr noundef nonnull %3)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %206, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 4
  %9 = call i32 @mutex_lock_interruptible(ptr noundef %8) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %206

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 3
  %13 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 21
  %14 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  %15 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %17 = getelementptr inbounds %struct.rtc_time, ptr %3, i32 0, i32 1
  %18 = getelementptr inbounds %struct.rtc_time, ptr %4, i32 0, i32 1
  %19 = getelementptr inbounds %struct.rtc_time, ptr %3, i32 0, i32 2
  %20 = getelementptr inbounds %struct.rtc_time, ptr %4, i32 0, i32 2
  %21 = getelementptr inbounds %struct.rtc_time, ptr %3, i32 0, i32 4
  %22 = getelementptr inbounds %struct.rtc_time, ptr %4, i32 0, i32 4
  %23 = getelementptr inbounds %struct.rtc_time, ptr %3, i32 0, i32 5
  %24 = getelementptr inbounds %struct.rtc_time, ptr %4, i32 0, i32 5
  br label %28

25:                                               ; preds = %117, %113, %109, %105
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(36) %4, i32 36, i1 false)
  %26 = call i32 @mutex_lock_interruptible(ptr noundef %8) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %206

28:                                               ; preds = %25, %11
  %29 = load ptr, ptr %12, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = load volatile i32, ptr %13, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.rtc_class_ops, ptr %29, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  store i8 0, ptr %1, align 4
  store i8 0, ptr %14, align 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(36) %15, i8 -1, i64 36, i1 false) #10
  %40 = load ptr, ptr %12, align 8
  %41 = getelementptr inbounds %struct.rtc_class_ops, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %16, align 4
  %44 = call i32 %42(ptr noundef %43, ptr noundef %1) #10
  br label %45

45:                                               ; preds = %39, %35, %31, %28
  %46 = phi i32 [ %44, %39 ], [ -19, %28 ], [ -22, %35 ], [ -22, %31 ]
  call void @mutex_unlock(ptr noundef %8) #10
  %47 = call i64 @rtc_tm_to_time64(ptr noundef %15) #10
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_read_alarm, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %45
  %51 = tail call ptr @llvm.thread.pointer() #10
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %50
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  %62 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_read_alarm, i32 0, i32 7), align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %64, %61
  %65 = phi ptr [ %69, %64 ], [ %62, %61 ]
  %66 = load volatile ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.tracepoint_func, ptr %65, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  call void %66(ptr noundef %68, i64 noundef %47, i32 noundef %46) #10
  %69 = getelementptr %struct.tracepoint_func, ptr %65, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %64

72:                                               ; preds = %64, %61
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %73

73:                                               ; preds = %72, %50, %45
  %74 = icmp eq i32 %46, 0
  br i1 %74, label %75, label %206

75:                                               ; preds = %73
  %76 = call i32 @rtc_valid_tm(ptr noundef %15) #10
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 25
  %80 = load i64, ptr %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %206, label %82

82:                                               ; preds = %78
  %83 = call i64 @rtc_tm_to_time64(ptr noundef %15) #10
  %84 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 24
  %85 = load i64, ptr %84, align 8
  %86 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 22
  %87 = load i64, ptr %86, align 8
  %88 = icmp sle i64 %85, %87
  %89 = icmp slt i64 %83, %85
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %91, label %206

91:                                               ; preds = %82
  %92 = icmp slt i64 %85, %87
  br i1 %92, label %93, label %99

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 23
  %95 = load i64, ptr %94, align 8
  %96 = sub i64 %85, %87
  %97 = add i64 %96, %95
  %98 = icmp ugt i64 %83, %97
  br i1 %98, label %99, label %206

99:                                               ; preds = %93, %91
  %100 = load i64, ptr %79, align 8
  %101 = add i64 %100, %83
  call void @rtc_time64_to_tm(i64 noundef %101, ptr noundef %15) #10
  br label %206

102:                                              ; preds = %75
  %103 = call i32 @rtc_read_time(ptr noundef %0, ptr noundef nonnull %4)
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %206, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %17, align 4
  %107 = load i32, ptr %18, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %25

109:                                              ; preds = %105
  %110 = load i32, ptr %19, align 4
  %111 = load i32, ptr %20, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %25

113:                                              ; preds = %109
  %114 = load i32, ptr %21, align 4
  %115 = load i32, ptr %22, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %25

117:                                              ; preds = %113
  %118 = load i32, ptr %23, align 4
  %119 = load i32, ptr %24, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %25

121:                                              ; preds = %117
  %122 = load i32, ptr %15, align 4
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, ptr %4, align 4
  store i32 %125, ptr %15, align 4
  br label %126

126:                                              ; preds = %124, %121
  %127 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store i32 %106, ptr %127, align 4
  br label %131

131:                                              ; preds = %130, %126
  %132 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, -1
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 %110, ptr %132, align 4
  br label %136

136:                                              ; preds = %135, %131
  %137 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %138 = load i32, ptr %137, align 4
  %139 = add i32 %138, -32
  %140 = icmp ult i32 %139, -31
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.rtc_time, ptr %4, i32 0, i32 3
  %143 = load i32, ptr %142, align 4
  store i32 %143, ptr %137, align 4
  br label %144

144:                                              ; preds = %141, %136
  %145 = phi i32 [ 1, %141 ], [ 2, %136 ]
  %146 = phi i32 [ 1, %141 ], [ 0, %136 ]
  %147 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %148 = load i32, ptr %147, align 4
  %149 = icmp ugt i32 %148, 11
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store i32 %114, ptr %147, align 4
  br label %151

151:                                              ; preds = %150, %144
  %152 = phi i32 [ %145, %150 ], [ %146, %144 ]
  %153 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  store i32 %118, ptr %153, align 4
  %157 = icmp eq i32 %152, 0
  %158 = select i1 %157, i32 3, i32 %152
  br label %159

159:                                              ; preds = %156, %151
  %160 = phi i32 [ %158, %156 ], [ %152, %151 ]
  %161 = call i32 @rtc_valid_tm(ptr noundef %15) #10
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %204

163:                                              ; preds = %159
  %164 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %4) #10
  %165 = call i64 @rtc_tm_to_time64(ptr noundef %15) #10
  %166 = icmp slt i64 %164, %165
  br i1 %166, label %206, label %167

167:                                              ; preds = %163
  switch i32 %160, label %200 [
    i32 1, label %168
    i32 2, label %170
    i32 3, label %185
  ]

168:                                              ; preds = %167
  %169 = add i64 %165, 86400
  call void @rtc_time64_to_tm(i64 noundef %169, ptr noundef %15) #10
  br label %201

170:                                              ; preds = %179, %167
  %171 = load i32, ptr %147, align 4
  %172 = icmp slt i32 %171, 11
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = add nsw i32 %171, 1
  store i32 %174, ptr %147, align 4
  %175 = load i32, ptr %153, align 4
  br label %179

176:                                              ; preds = %170
  store i32 0, ptr %147, align 4
  %177 = load i32, ptr %153, align 4
  %178 = add i32 %177, 1
  store i32 %178, ptr %153, align 4
  br label %179

179:                                              ; preds = %176, %173
  %180 = phi i32 [ %178, %176 ], [ %175, %173 ]
  %181 = phi i32 [ 0, %176 ], [ %174, %173 ]
  %182 = call i32 @rtc_month_days(i32 noundef %181, i32 noundef %180) #10
  %183 = load i32, ptr %137, align 4
  %184 = icmp ult i32 %182, %183
  br i1 %184, label %170, label %201

185:                                              ; preds = %197, %167
  %186 = load i32, ptr %153, align 4
  %187 = add i32 %186, 1
  store i32 %187, ptr %153, align 4
  %188 = add i32 %186, 1901
  %189 = and i32 %188, 3
  %190 = icmp eq i32 %189, 0
  %191 = urem i32 %188, 100
  %192 = icmp ne i32 %191, 0
  %193 = and i1 %190, %192
  %194 = urem i32 %188, 400
  %195 = icmp eq i32 %194, 0
  %196 = select i1 %193, i1 true, i1 %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %185
  %198 = call i32 @rtc_valid_tm(ptr noundef %15) #10
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %201, label %185

200:                                              ; preds = %167
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str) #11
  br label %201

201:                                              ; preds = %200, %197, %185, %179, %168
  %202 = call i32 @rtc_valid_tm(ptr noundef %15) #10
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %201, %159
  %205 = phi i32 [ %202, %201 ], [ %161, %159 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %15) #11
  br label %206

206:                                              ; preds = %204, %201, %163, %102, %99, %93, %82, %78, %73, %25, %7, %2
  %207 = phi i32 [ %5, %2 ], [ %205, %204 ], [ 0, %201 ], [ 0, %78 ], [ 0, %82 ], [ 0, %93 ], [ 0, %99 ], [ 0, %163 ], [ %9, %7 ], [ %46, %73 ], [ %103, %102 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #10
  ret i32 %207
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_month_days(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtc_read_alarm(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rtc_time, align 4
  %4 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 4
  %5 = tail call i32 @mutex_lock_interruptible(ptr noundef %4) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 21
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.rtc_class_ops, ptr %9, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(40) %1, i8 0, i32 40, i1 false)
  %21 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 14, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = trunc i32 %22 to i8
  store i8 %23, ptr %1, align 4
  %24 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #10
  %25 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 14, i32 0, i32 1
  %26 = load i64, ptr %25, align 8
  call void @rtc_ktime_to_tm(ptr nonnull sret(%struct.rtc_time) align 4 %3, i64 noundef %26) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %24, ptr noundef nonnull align 4 dereferenceable(36) %3, i32 36, i1 false)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #10
  br label %27

27:                                               ; preds = %20, %16, %11, %7
  %28 = phi i32 [ 0, %20 ], [ -19, %7 ], [ -22, %16 ], [ -22, %11 ]
  call void @mutex_unlock(ptr noundef %4) #10
  %29 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %30 = call i64 @rtc_tm_to_time64(ptr noundef %29) #10
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_read_alarm, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %27
  %34 = tail call ptr @llvm.thread.pointer() #10
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %33
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !18
  %45 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_read_alarm, i32 0, i32 7), align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %47, %44
  %48 = phi ptr [ %52, %47 ], [ %45, %44 ]
  %49 = load volatile ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.tracepoint_func, ptr %48, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  call void %49(ptr noundef %51, i64 noundef %30, i32 noundef %28) #10
  %52 = getelementptr %struct.tracepoint_func, ptr %48, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %47

55:                                               ; preds = %47, %44
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %56

56:                                               ; preds = %55, %33, %27, %2
  %57 = phi i32 [ %5, %2 ], [ %28, %27 ], [ %28, %33 ], [ %28, %55 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_ktime_to_tm(ptr sret(%struct.rtc_time) align 4, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtc_set_alarm(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %98, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 21
  %8 = load volatile i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %98, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %13 = tail call i32 @rtc_valid_tm(ptr noundef %12) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %98

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 22
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 23
  %19 = load i64, ptr %18, align 8
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %42, label %21

21:                                               ; preds = %15
  %22 = tail call i64 @rtc_tm_to_time64(ptr noundef %12) #10
  %23 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 26
  %24 = load i8, ptr %23, align 8, !range !15
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 24
  %27 = select i1 %25, ptr %16, ptr %26
  %28 = load i64, ptr %27, align 8
  br i1 %25, label %35, label %29

29:                                               ; preds = %21
  %30 = load i64, ptr %26, align 8
  %31 = load i64, ptr %18, align 8
  %32 = add i64 %31, %30
  %33 = load i64, ptr %16, align 8
  %34 = sub i64 %32, %33
  br label %37

35:                                               ; preds = %21
  %36 = load i64, ptr %18, align 8
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi i64 [ %34, %29 ], [ %36, %35 ]
  %39 = icmp sge i64 %22, %28
  %40 = icmp ule i64 %22, %38
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %98

42:                                               ; preds = %37, %15
  %43 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 4
  %44 = tail call i32 @mutex_lock_interruptible(ptr noundef %43) #10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %98

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 14
  %48 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 14, i32 4
  %49 = load i32, ptr %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  tail call fastcc void @rtc_timer_remove(ptr noundef %0, ptr noundef %47)
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, ptr %12, align 4
  %54 = insertvalue [9 x i32] undef, i32 %53, 0
  %55 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = insertvalue [9 x i32] %54, i32 %56, 1
  %58 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = insertvalue [9 x i32] %57, i32 %59, 2
  %61 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = insertvalue [9 x i32] %60, i32 %62, 3
  %64 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = insertvalue [9 x i32] %63, i32 %65, 4
  %67 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %68 = load i32, ptr %67, align 4
  %69 = insertvalue [9 x i32] %66, i32 %68, 5
  %70 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  %71 = load i32, ptr %70, align 4
  %72 = insertvalue [9 x i32] %69, i32 %71, 6
  %73 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 7
  %74 = load i32, ptr %73, align 4
  %75 = insertvalue [9 x i32] %72, i32 %74, 7
  %76 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 8
  %77 = load i32, ptr %76, align 4
  %78 = insertvalue [9 x i32] %75, i32 %77, 8
  %79 = tail call i64 @rtc_tm_to_ktime([9 x i32] %78) #10
  %80 = load volatile i32, ptr %7, align 4
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %52
  %84 = load i32, ptr %12, align 4
  %85 = sext i32 %84 to i64
  %86 = mul nsw i64 %85, -1000000000
  %87 = add i64 %86, %79
  br label %88

88:                                               ; preds = %83, %52
  %89 = phi i64 [ %87, %83 ], [ %79, %52 ]
  %90 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 14, i32 0, i32 1
  store i64 %89, ptr %90, align 8
  %91 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 14, i32 1
  store i64 0, ptr %91, align 8
  %92 = load i8, ptr %1, align 4
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %88
  %95 = tail call fastcc i32 @rtc_timer_enqueue(ptr noundef %0, ptr noundef %47)
  br label %96

96:                                               ; preds = %94, %88
  %97 = phi i32 [ %95, %94 ], [ 0, %88 ]
  tail call void @mutex_unlock(ptr noundef %43) #10
  br label %98

98:                                               ; preds = %96, %42, %37, %11, %6, %2
  %99 = phi i32 [ %97, %96 ], [ -19, %2 ], [ -22, %6 ], [ %13, %11 ], [ %44, %42 ], [ -34, %37 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rtc_timer_remove(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.rtc_wkalrm, align 4
  %4 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 13
  %5 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 13, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call zeroext i1 @timerqueue_del(ptr noundef %4, ptr noundef %1) #10
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_dequeue, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = tail call ptr @llvm.thread.pointer() #10
  %12 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 5
  %15 = getelementptr i32, ptr @__cpu_online_mask, i32 %14
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %13, 31
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %22 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_dequeue, i32 0, i32 7), align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %24, %21
  %25 = phi ptr [ %29, %24 ], [ %22, %21 ]
  %26 = load volatile ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.tracepoint_func, ptr %25, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  tail call void %26(ptr noundef %28, ptr noundef %1) #10
  %29 = getelementptr %struct.tracepoint_func, ptr %25, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24

32:                                               ; preds = %24, %21
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  br label %33

33:                                               ; preds = %32, %10, %2
  %34 = getelementptr inbounds %struct.rtc_timer, ptr %1, i32 0, i32 4
  store i32 0, ptr %34, align 8
  %35 = icmp eq ptr %6, %1
  br i1 %35, label %36, label %95

36:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !9
  %37 = load ptr, ptr %5, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %82

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %81, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 21
  %45 = load volatile i32, ptr %44, align 4
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %81, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.rtc_class_ops, ptr %41, i32 0, i32 6
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %81, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 %50(ptr noundef %54, i32 noundef 0) #10
  %56 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_alarm_irq_enable, i32 0, i32 1), align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %52
  %59 = tail call ptr @llvm.thread.pointer() #10
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 8
  %62 = lshr i32 %61, 5
  %63 = getelementptr i32, ptr @__cpu_online_mask, i32 %62
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %61, 31
  %66 = shl nuw i32 1, %65
  %67 = and i32 %66, %64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %58
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %70 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_alarm_irq_enable, i32 0, i32 7), align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %80, label %72

72:                                               ; preds = %72, %69
  %73 = phi ptr [ %77, %72 ], [ %70, %69 ]
  %74 = load volatile ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.tracepoint_func, ptr %73, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  tail call void %74(ptr noundef %76, i32 noundef 0, i32 noundef 0) #10
  %77 = getelementptr %struct.tracepoint_func, ptr %73, i32 1
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %72

80:                                               ; preds = %72, %69
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %81

81:                                               ; preds = %80, %58, %52, %48, %43, %39
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  br label %95

82:                                               ; preds = %36
  %83 = getelementptr inbounds %struct.rtc_wkalrm, ptr %3, i32 0, i32 2
  %84 = getelementptr inbounds %struct.timerqueue_node, ptr %37, i32 0, i32 1
  %85 = load i64, ptr %84, align 8
  call void @rtc_ktime_to_tm(ptr nonnull sret(%struct.rtc_time) align 4 %83, i64 noundef %85) #10
  store i8 1, ptr %3, align 4
  %86 = call fastcc i32 @__rtc_set_alarm(ptr noundef %0, ptr noundef nonnull %3)
  %87 = icmp eq i32 %86, -62
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  call void @pm_stay_awake(ptr noundef %90) #10
  %91 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 18
  %92 = load ptr, ptr @system_wq, align 4
  %93 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %92, ptr noundef %91) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  br label %95

94:                                               ; preds = %82
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  br label %95

95:                                               ; preds = %94, %88, %81, %33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_ktime([9 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rtc_timer_enqueue(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.rtc_time, align 4
  %4 = alloca %struct.rtc_wkalrm, align 4
  %5 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 13
  %6 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 13, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false), !annotation !9
  %8 = getelementptr inbounds %struct.rtc_timer, ptr %1, i32 0, i32 4
  store i32 1, ptr %8, align 8
  %9 = call fastcc i32 @__rtc_read_time(ptr noundef %0, ptr noundef nonnull %3)
  %10 = load i32, ptr %3, align 4
  %11 = insertvalue [9 x i32] poison, i32 %10, 0
  %12 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = insertvalue [9 x i32] %11, i32 %13, 1
  %15 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = insertvalue [9 x i32] %14, i32 %16, 2
  %18 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = insertvalue [9 x i32] %17, i32 %19, 3
  %21 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = insertvalue [9 x i32] %20, i32 %22, 4
  %24 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = insertvalue [9 x i32] %23, i32 %25, 5
  %27 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = insertvalue [9 x i32] %26, i32 %28, 6
  %30 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  %32 = insertvalue [9 x i32] %29, i32 %31, 7
  %33 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = insertvalue [9 x i32] %32, i32 %34, 8
  %36 = call i64 @rtc_tm_to_ktime([9 x i32] %35) #10
  %37 = icmp eq ptr %7, null
  br i1 %37, label %78, label %38

38:                                               ; preds = %43, %2
  %39 = phi ptr [ %44, %43 ], [ %7, %2 ]
  %40 = getelementptr inbounds %struct.timerqueue_node, ptr %39, i32 0, i32 1
  %41 = load i64, ptr %40, align 8
  %42 = icmp slt i64 %41, %36
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = call ptr @timerqueue_iterate_next(ptr noundef nonnull %39) #10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %78, label %38

46:                                               ; preds = %38
  %47 = call zeroext i1 @timerqueue_add(ptr noundef %5, ptr noundef %1) #10
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_enqueue, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = tail call ptr @llvm.thread.pointer() #10
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %50
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %62 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_enqueue, i32 0, i32 7), align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %64, %61
  %65 = phi ptr [ %69, %64 ], [ %62, %61 ]
  %66 = load volatile ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.tracepoint_func, ptr %65, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  call void %66(ptr noundef %68, ptr noundef %1) #10
  %69 = getelementptr %struct.tracepoint_func, ptr %65, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %64

72:                                               ; preds = %64, %61
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  br label %73

73:                                               ; preds = %72, %50, %46
  %74 = getelementptr inbounds %struct.timerqueue_node, ptr %1, i32 0, i32 1
  %75 = load i64, ptr %74, align 8
  %76 = load i64, ptr %40, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %105, label %145

78:                                               ; preds = %43, %2
  %79 = call zeroext i1 @timerqueue_add(ptr noundef %5, ptr noundef %1) #10
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_enqueue, i32 0, i32 1), align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %78
  %83 = tail call ptr @llvm.thread.pointer() #10
  %84 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 2
  %85 = load i32, ptr %84, align 8
  %86 = lshr i32 %85, 5
  %87 = getelementptr i32, ptr @__cpu_online_mask, i32 %86
  %88 = load volatile i32, ptr %87, align 4
  %89 = and i32 %85, 31
  %90 = shl nuw i32 1, %89
  %91 = and i32 %90, %88
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %105, label %93

93:                                               ; preds = %82
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %94 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_enqueue, i32 0, i32 7), align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %96, %93
  %97 = phi ptr [ %101, %96 ], [ %94, %93 ]
  %98 = load volatile ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.tracepoint_func, ptr %97, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  call void %98(ptr noundef %100, ptr noundef %1) #10
  %101 = getelementptr %struct.tracepoint_func, ptr %97, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %96

104:                                              ; preds = %96, %93
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  br label %105

105:                                              ; preds = %104, %82, %78, %73
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !9
  %106 = getelementptr inbounds %struct.rtc_wkalrm, ptr %4, i32 0, i32 2
  %107 = getelementptr inbounds %struct.timerqueue_node, ptr %1, i32 0, i32 1
  %108 = load i64, ptr %107, align 8
  call void @rtc_ktime_to_tm(ptr nonnull sret(%struct.rtc_time) align 4 %106, i64 noundef %108) #10
  store i8 1, ptr %4, align 4
  %109 = call fastcc i32 @__rtc_set_alarm(ptr noundef %0, ptr noundef nonnull %4)
  switch i32 %109, label %116 [
    i32 -62, label %110
    i32 0, label %144
  ]

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  call void @pm_stay_awake(ptr noundef %112) #10
  %113 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 18
  %114 = load ptr, ptr @system_wq, align 4
  %115 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %114, ptr noundef %113) #10
  br label %144

116:                                              ; preds = %105
  %117 = call zeroext i1 @timerqueue_del(ptr noundef %5, ptr noundef %1) #10
  %118 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_dequeue, i32 0, i32 1), align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %143

120:                                              ; preds = %116
  %121 = tail call ptr @llvm.thread.pointer() #10
  %122 = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 2
  %123 = load i32, ptr %122, align 8
  %124 = lshr i32 %123, 5
  %125 = getelementptr i32, ptr @__cpu_online_mask, i32 %124
  %126 = load volatile i32, ptr %125, align 4
  %127 = and i32 %123, 31
  %128 = shl nuw i32 1, %127
  %129 = and i32 %128, %126
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %143, label %131

131:                                              ; preds = %120
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %132 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_dequeue, i32 0, i32 7), align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %142, label %134

134:                                              ; preds = %134, %131
  %135 = phi ptr [ %139, %134 ], [ %132, %131 ]
  %136 = load volatile ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.tracepoint_func, ptr %135, i32 0, i32 1
  %138 = load ptr, ptr %137, align 4
  call void %136(ptr noundef %138, ptr noundef %1) #10
  %139 = getelementptr %struct.tracepoint_func, ptr %135, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %134

142:                                              ; preds = %134, %131
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  br label %143

143:                                              ; preds = %142, %120, %116
  store i32 0, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  br label %145

144:                                              ; preds = %110, %105
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  br label %145

145:                                              ; preds = %144, %143, %73
  %146 = phi i32 [ %109, %143 ], [ 0, %144 ], [ 0, %73 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #10
  ret i32 %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtc_initialize_alarm(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rtc_time, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %5 = tail call i32 @rtc_valid_tm(ptr noundef %4) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %82

7:                                                ; preds = %2
  %8 = call i32 @rtc_read_time(ptr noundef %0, ptr noundef nonnull %3)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %82

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 4
  %12 = call i32 @mutex_lock_interruptible(ptr noundef %11) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %82

14:                                               ; preds = %10
  %15 = load i32, ptr %4, align 4
  %16 = insertvalue [9 x i32] undef, i32 %15, 0
  %17 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = insertvalue [9 x i32] %16, i32 %18, 1
  %20 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = insertvalue [9 x i32] %19, i32 %21, 2
  %23 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = insertvalue [9 x i32] %22, i32 %24, 3
  %26 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = insertvalue [9 x i32] %25, i32 %27, 4
  %29 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = insertvalue [9 x i32] %28, i32 %30, 5
  %32 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = insertvalue [9 x i32] %31, i32 %33, 6
  %35 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 7
  %36 = load i32, ptr %35, align 4
  %37 = insertvalue [9 x i32] %34, i32 %36, 7
  %38 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = insertvalue [9 x i32] %37, i32 %39, 8
  %41 = call i64 @rtc_tm_to_ktime([9 x i32] %40) #10
  %42 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 14
  %43 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 14, i32 0, i32 1
  store i64 %41, ptr %43, align 8
  %44 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 14, i32 1
  store i64 0, ptr %44, align 8
  %45 = load i8, ptr %1, align 4
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %81, label %47

47:                                               ; preds = %14
  %48 = load i32, ptr %3, align 4
  %49 = insertvalue [9 x i32] poison, i32 %48, 0
  %50 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = insertvalue [9 x i32] %49, i32 %51, 1
  %53 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = insertvalue [9 x i32] %52, i32 %54, 2
  %56 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = insertvalue [9 x i32] %55, i32 %57, 3
  %59 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = insertvalue [9 x i32] %58, i32 %60, 4
  %62 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = insertvalue [9 x i32] %61, i32 %63, 5
  %65 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = insertvalue [9 x i32] %64, i32 %66, 6
  %68 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 7
  %69 = load i32, ptr %68, align 4
  %70 = insertvalue [9 x i32] %67, i32 %69, 7
  %71 = getelementptr inbounds [9 x i32], ptr %3, i32 0, i32 8
  %72 = load i32, ptr %71, align 4
  %73 = insertvalue [9 x i32] %70, i32 %72, 8
  %74 = call i64 @rtc_tm_to_ktime([9 x i32] %73) #10
  %75 = load i64, ptr %43, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %47
  %78 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 14, i32 4
  store i32 1, ptr %78, align 8
  %79 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 13
  %80 = call zeroext i1 @timerqueue_add(ptr noundef %79, ptr noundef %42) #10
  call fastcc void @trace_rtc_timer_enqueue(ptr noundef %42)
  br label %81

81:                                               ; preds = %77, %47, %14
  call void @mutex_unlock(ptr noundef %11) #10
  br label %82

82:                                               ; preds = %81, %10, %7, %2
  %83 = phi i32 [ 0, %81 ], [ %5, %2 ], [ %8, %7 ], [ %12, %10 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #10
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timerqueue_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_rtc_timer_enqueue(ptr noundef %0) unnamed_addr #6 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_enqueue, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_enqueue, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, ptr noundef %0) #10
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  br label %27

27:                                               ; preds = %26, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtc_alarm_irq_enable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 4
  %4 = tail call i32 @mutex_lock_interruptible(ptr noundef %3) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %61

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 14
  %8 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 14, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call fastcc void @rtc_timer_remove(ptr noundef %0, ptr noundef %7)
  br label %17

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @rtc_timer_enqueue(ptr noundef %0, ptr noundef %7)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %14, %13, %6
  %18 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.rtc_class_ops, ptr %19, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %28(ptr noundef %32, i32 noundef %1) #10
  br label %34

34:                                               ; preds = %30, %26, %21, %17, %14
  %35 = phi i32 [ %15, %14 ], [ %33, %30 ], [ -19, %17 ], [ -22, %26 ], [ -22, %21 ]
  tail call void @mutex_unlock(ptr noundef %3) #10
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_alarm_irq_enable, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = tail call ptr @llvm.thread.pointer() #10
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 5
  %43 = getelementptr i32, ptr @__cpu_online_mask, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %41, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %50 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_alarm_irq_enable, i32 0, i32 7), align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %52, %49
  %53 = phi ptr [ %57, %52 ], [ %50, %49 ]
  %54 = load volatile ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.tracepoint_func, ptr %53, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  tail call void %54(ptr noundef %56, i32 noundef %1, i32 noundef %35) #10
  %57 = getelementptr %struct.tracepoint_func, ptr %53, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %52

60:                                               ; preds = %52, %49
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %61

61:                                               ; preds = %60, %38, %34, %2
  %62 = phi i32 [ %4, %2 ], [ %35, %34 ], [ %35, %38 ], [ %35, %60 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtc_handle_legacy_irq(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %1, 8
  %9 = add i32 %7, %8
  %10 = or i32 %9, %2
  %11 = or i32 %10, 128
  store i32 %11, ptr %6, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #10
  %12 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %12, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %13 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 10
  tail call void @kill_fasync(ptr noundef %13, i32 noundef 29, i32 noundef 1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtc_aie_update_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 8
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 256
  %7 = or i32 %6, 160
  store i32 %7, ptr %4, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  %8 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %8, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %9 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 10
  tail call void @kill_fasync(ptr noundef %9, i32 noundef 29, i32 noundef 1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtc_uie_update_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 8
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 256
  %7 = or i32 %6, 144
  store i32 %7, ptr %4, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #10
  %8 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %8, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %9 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 10
  tail call void @kill_fasync(ptr noundef %9, i32 noundef 29, i32 noundef 1) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtc_pie_update_irq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 -112
  %3 = load i32, ptr %2, align 8
  %4 = sdiv i32 1000000000, %3
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.hrtimer, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i64 %9() #10
  %11 = tail call i64 @hrtimer_forward(ptr noundef %0, i64 noundef %10, i64 noundef %5) #10
  %12 = trunc i64 %11 to i32
  %13 = getelementptr i8, ptr %0, i32 -132
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #10
  %15 = getelementptr i8, ptr %0, i32 -136
  %16 = load i32, ptr %15, align 8
  %17 = shl i32 %12, 8
  %18 = add i32 %16, %17
  %19 = or i32 %18, 192
  store i32 %19, ptr %15, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #10
  %20 = getelementptr i8, ptr %0, i32 -128
  tail call void @__wake_up(ptr noundef %20, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  %21 = getelementptr i8, ptr %0, i32 -116
  tail call void @kill_fasync(ptr noundef %21, i32 noundef 29, i32 noundef 1) #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtc_update_irq(ptr noundef %0, i32 %1, i32 %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @pm_stay_awake(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 18
  %11 = load ptr, ptr @system_wq, align 4
  %12 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %11, ptr noundef %10) #10
  br label %13

13:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rtc_class_open(ptr noundef %0) #0 {
  %2 = load ptr, ptr @rtc_class, align 4
  %3 = tail call ptr @class_find_device(ptr noundef %2, ptr noundef null, ptr noundef %0, ptr noundef nonnull @device_match_name) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = tail call zeroext i1 @try_module_get(ptr noundef %7) #10
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @put_device(ptr noundef nonnull %3) #10
  br label %10

10:                                               ; preds = %9, %5, %1
  %11 = phi ptr [ %3, %5 ], [ null, %9 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtc_class_close(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  tail call void @module_put(ptr noundef %3) #10
  tail call void @put_device(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtc_irq_set_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 16
  %4 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %3) #10
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %13, %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 11
  %10 = load i32, ptr %9, align 8
  %11 = sdiv i32 1000000000, %10
  %12 = sext i32 %11 to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %3, i64 noundef %12, i64 noundef 0, i32 noundef 1) #10
  br label %16

13:                                               ; preds = %13, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !27
  %14 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %3) #10
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %13, label %6

16:                                               ; preds = %8, %6
  %17 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 17
  store i32 %1, ptr %17, align 8
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_irq_set_state, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !28
  %32 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_irq_set_state, i32 0, i32 7), align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %34, %31
  %35 = phi ptr [ %39, %34 ], [ %32, %31 ]
  %36 = load volatile ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tracepoint_func, ptr %35, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  tail call void %36(ptr noundef %38, i32 noundef %1, i32 noundef 0) #10
  %39 = getelementptr %struct.tracepoint_func, ptr %35, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %34

42:                                               ; preds = %34, %31
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !29
  br label %43

43:                                               ; preds = %42, %20, %16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtc_irq_set_freq(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = add i32 %1, -8193
  %4 = icmp ult i32 %3, -8192
  br i1 %4, label %48, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 11
  store i32 %1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 17
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 16
  br label %12

12:                                               ; preds = %19, %10
  %13 = tail call i32 @hrtimer_try_to_cancel(ptr noundef %11) #10
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %6, align 8
  %17 = sdiv i32 1000000000, %16
  %18 = sext i32 %17 to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %11, i64 noundef %18, i64 noundef 0, i32 noundef 1) #10
  br label %22

19:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !30
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !31
  %20 = load i32, ptr %7, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %12

22:                                               ; preds = %19, %15, %5
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_irq_set_freq, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = tail call ptr @llvm.thread.pointer() #10
  %27 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 5
  %30 = getelementptr i32, ptr @__cpu_online_mask, i32 %29
  %31 = load volatile i32, ptr %30, align 4
  %32 = and i32 %28, 31
  %33 = shl nuw i32 1, %32
  %34 = and i32 %33, %31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %25
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  %37 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_irq_set_freq, i32 0, i32 7), align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %39, %36
  %40 = phi ptr [ %44, %39 ], [ %37, %36 ]
  %41 = load volatile ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.tracepoint_func, ptr %40, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  tail call void %41(ptr noundef %43, i32 noundef %1, i32 noundef 0) #10
  %44 = getelementptr %struct.tracepoint_func, ptr %40, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %39

47:                                               ; preds = %39, %36
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !33
  br label %48

48:                                               ; preds = %47, %25, %22, %2
  %49 = phi i32 [ -22, %2 ], [ 0, %22 ], [ 0, %25 ], [ 0, %47 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtc_timer_do_work(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.rtc_time, align 4
  %3 = alloca %struct.rtc_wkalrm, align 4
  %4 = alloca %struct.rtc_time, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false), !annotation !9
  %5 = getelementptr i8, ptr %0, i32 -756
  %6 = getelementptr i8, ptr %0, i32 -272
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = getelementptr inbounds [9 x i32], ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds [9 x i32], ptr %2, i32 0, i32 2
  %9 = getelementptr inbounds [9 x i32], ptr %2, i32 0, i32 3
  %10 = getelementptr inbounds [9 x i32], ptr %2, i32 0, i32 4
  %11 = getelementptr inbounds [9 x i32], ptr %2, i32 0, i32 5
  %12 = getelementptr inbounds [9 x i32], ptr %2, i32 0, i32 6
  %13 = getelementptr inbounds [9 x i32], ptr %2, i32 0, i32 7
  %14 = getelementptr inbounds [9 x i32], ptr %2, i32 0, i32 8
  %15 = getelementptr i8, ptr %0, i32 -156
  %16 = getelementptr i8, ptr %0, i32 -152
  %17 = getelementptr inbounds %struct.rtc_wkalrm, ptr %3, i32 0, i32 2
  br label %18

18:                                               ; preds = %182, %1
  %19 = call fastcc i32 @__rtc_read_time(ptr noundef %5, ptr noundef nonnull %2)
  %20 = load i32, ptr %2, align 4
  %21 = insertvalue [9 x i32] poison, i32 %20, 0
  %22 = load i32, ptr %7, align 4
  %23 = insertvalue [9 x i32] %21, i32 %22, 1
  %24 = load i32, ptr %8, align 4
  %25 = insertvalue [9 x i32] %23, i32 %24, 2
  %26 = load i32, ptr %9, align 4
  %27 = insertvalue [9 x i32] %25, i32 %26, 3
  %28 = load i32, ptr %10, align 4
  %29 = insertvalue [9 x i32] %27, i32 %28, 4
  %30 = load i32, ptr %11, align 4
  %31 = insertvalue [9 x i32] %29, i32 %30, 5
  %32 = load i32, ptr %12, align 4
  %33 = insertvalue [9 x i32] %31, i32 %32, 6
  %34 = load i32, ptr %13, align 4
  %35 = insertvalue [9 x i32] %33, i32 %34, 7
  %36 = load i32, ptr %14, align 4
  %37 = insertvalue [9 x i32] %35, i32 %36, 8
  %38 = call i64 @rtc_tm_to_ktime([9 x i32] %37) #10
  %39 = load ptr, ptr %16, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %183, label %41

41:                                               ; preds = %140, %18
  %42 = phi ptr [ %141, %140 ], [ %39, %18 ]
  %43 = getelementptr inbounds %struct.timerqueue_node, ptr %42, i32 0, i32 1
  %44 = load i64, ptr %43, align 8
  %45 = icmp sgt i64 %44, %38
  br i1 %45, label %143, label %46

46:                                               ; preds = %41
  %47 = call zeroext i1 @timerqueue_del(ptr noundef %15, ptr noundef nonnull %42) #10
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_dequeue, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = tail call ptr @llvm.thread.pointer() #10
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %50
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %62 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_dequeue, i32 0, i32 7), align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %64, %61
  %65 = phi ptr [ %69, %64 ], [ %62, %61 ]
  %66 = load volatile ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.tracepoint_func, ptr %65, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  call void %66(ptr noundef %68, ptr noundef nonnull %42) #10
  %69 = getelementptr %struct.tracepoint_func, ptr %65, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %64

72:                                               ; preds = %64, %61
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  br label %73

73:                                               ; preds = %72, %50, %46
  %74 = getelementptr inbounds %struct.rtc_timer, ptr %42, i32 0, i32 4
  store i32 0, ptr %74, align 8
  %75 = getelementptr inbounds %struct.rtc_timer, ptr %42, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.rtc_timer, ptr %42, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  call void %76(ptr noundef %80) #10
  br label %81

81:                                               ; preds = %78, %73
  %82 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_fired, i32 0, i32 1), align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %81
  %85 = tail call ptr @llvm.thread.pointer() #10
  %86 = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %87 = load i32, ptr %86, align 8
  %88 = lshr i32 %87, 5
  %89 = getelementptr i32, ptr @__cpu_online_mask, i32 %88
  %90 = load volatile i32, ptr %89, align 4
  %91 = and i32 %87, 31
  %92 = shl nuw i32 1, %91
  %93 = and i32 %92, %90
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %84
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !34
  %96 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_fired, i32 0, i32 7), align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %98, %95
  %99 = phi ptr [ %103, %98 ], [ %96, %95 ]
  %100 = load volatile ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.tracepoint_func, ptr %99, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  call void %100(ptr noundef %102, ptr noundef nonnull %42) #10
  %103 = getelementptr %struct.tracepoint_func, ptr %99, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %98

106:                                              ; preds = %98, %95
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !35
  br label %107

107:                                              ; preds = %106, %84, %81
  %108 = getelementptr inbounds %struct.rtc_timer, ptr %42, i32 0, i32 1
  %109 = load i64, ptr %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %140, label %111

111:                                              ; preds = %107
  %112 = load i64, ptr %43, align 8
  %113 = add i64 %112, %109
  store i64 %113, ptr %43, align 8
  store i32 1, ptr %74, align 8
  %114 = call zeroext i1 @timerqueue_add(ptr noundef %15, ptr noundef nonnull %42) #10
  %115 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_enqueue, i32 0, i32 1), align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %140

117:                                              ; preds = %111
  %118 = tail call ptr @llvm.thread.pointer() #10
  %119 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 2
  %120 = load i32, ptr %119, align 8
  %121 = lshr i32 %120, 5
  %122 = getelementptr i32, ptr @__cpu_online_mask, i32 %121
  %123 = load volatile i32, ptr %122, align 4
  %124 = and i32 %120, 31
  %125 = shl nuw i32 1, %124
  %126 = and i32 %125, %123
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %117
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !24
  %129 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_enqueue, i32 0, i32 7), align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %139, label %131

131:                                              ; preds = %131, %128
  %132 = phi ptr [ %136, %131 ], [ %129, %128 ]
  %133 = load volatile ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.tracepoint_func, ptr %132, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  call void %133(ptr noundef %135, ptr noundef nonnull %42) #10
  %136 = getelementptr %struct.tracepoint_func, ptr %132, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %131

139:                                              ; preds = %131, %128
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !25
  br label %140

140:                                              ; preds = %139, %117, %111, %107
  %141 = load ptr, ptr %16, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %183, label %41

143:                                              ; preds = %41
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #10
  %144 = load i64, ptr %43, align 8
  call void @rtc_ktime_to_tm(ptr nonnull sret(%struct.rtc_time) align 4 %4, i64 noundef %144) #10
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %17, ptr noundef nonnull align 4 dereferenceable(36) %4, i32 36, i1 false)
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #10
  store i8 1, ptr %3, align 4
  %145 = call fastcc i32 @__rtc_set_alarm(ptr noundef %5, ptr noundef nonnull %3)
  switch i32 %145, label %146 [
    i32 -62, label %182
    i32 0, label %181
  ]

146:                                              ; preds = %143
  %147 = call fastcc i32 @__rtc_set_alarm(ptr noundef %5, ptr noundef nonnull %3)
  switch i32 %147, label %148 [
    i32 -62, label %182
    i32 0, label %181
  ]

148:                                              ; preds = %146
  %149 = call fastcc i32 @__rtc_set_alarm(ptr noundef %5, ptr noundef nonnull %3)
  switch i32 %149, label %150 [
    i32 -62, label %182
    i32 0, label %181
  ]

150:                                              ; preds = %148
  %151 = call fastcc i32 @__rtc_set_alarm(ptr noundef %5, ptr noundef nonnull %3)
  switch i32 %151, label %152 [
    i32 -62, label %182
    i32 0, label %181
  ]

152:                                              ; preds = %150
  %153 = call zeroext i1 @timerqueue_del(ptr noundef %15, ptr noundef nonnull %42) #10
  %154 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_dequeue, i32 0, i32 1), align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %152
  %157 = tail call ptr @llvm.thread.pointer() #10
  %158 = getelementptr inbounds %struct.thread_info, ptr %157, i32 0, i32 2
  %159 = load i32, ptr %158, align 8
  %160 = lshr i32 %159, 5
  %161 = getelementptr i32, ptr @__cpu_online_mask, i32 %160
  %162 = load volatile i32, ptr %161, align 4
  %163 = and i32 %159, 31
  %164 = shl nuw i32 1, %163
  %165 = and i32 %164, %162
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %179, label %167

167:                                              ; preds = %156
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !20
  %168 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_timer_dequeue, i32 0, i32 7), align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %178, label %170

170:                                              ; preds = %170, %167
  %171 = phi ptr [ %175, %170 ], [ %168, %167 ]
  %172 = load volatile ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.tracepoint_func, ptr %171, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  call void %172(ptr noundef %174, ptr noundef nonnull %42) #10
  %175 = getelementptr %struct.tracepoint_func, ptr %171, i32 1
  %176 = load ptr, ptr %175, align 4
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %170

178:                                              ; preds = %170, %167
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !21
  br label %179

179:                                              ; preds = %178, %156, %152
  %180 = getelementptr inbounds %struct.rtc_timer, ptr %42, i32 0, i32 4
  store i32 0, ptr %180, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef %151) #11
  br label %182

181:                                              ; preds = %150, %148, %146, %143
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  br label %225

182:                                              ; preds = %179, %150, %148, %146, %143
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  br label %18

183:                                              ; preds = %140, %18
  %184 = getelementptr i8, ptr %0, i32 -276
  %185 = load ptr, ptr %184, align 8
  %186 = icmp eq ptr %185, null
  br i1 %186, label %225, label %187

187:                                              ; preds = %183
  %188 = getelementptr i8, ptr %0, i32 24
  %189 = load volatile i32, ptr %188, align 4
  %190 = and i32 %189, 1
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %225, label %192

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.rtc_class_ops, ptr %185, i32 0, i32 6
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %225, label %196

196:                                              ; preds = %192
  %197 = getelementptr i8, ptr %0, i32 -720
  %198 = load ptr, ptr %197, align 4
  %199 = call i32 %194(ptr noundef %198, i32 noundef 0) #10
  %200 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_alarm_irq_enable, i32 0, i32 1), align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %225

202:                                              ; preds = %196
  %203 = tail call ptr @llvm.thread.pointer() #10
  %204 = getelementptr inbounds %struct.thread_info, ptr %203, i32 0, i32 2
  %205 = load i32, ptr %204, align 8
  %206 = lshr i32 %205, 5
  %207 = getelementptr i32, ptr @__cpu_online_mask, i32 %206
  %208 = load volatile i32, ptr %207, align 4
  %209 = and i32 %205, 31
  %210 = shl nuw i32 1, %209
  %211 = and i32 %210, %208
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %225, label %213

213:                                              ; preds = %202
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !22
  %214 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_alarm_irq_enable, i32 0, i32 7), align 4
  %215 = icmp eq ptr %214, null
  br i1 %215, label %224, label %216

216:                                              ; preds = %216, %213
  %217 = phi ptr [ %221, %216 ], [ %214, %213 ]
  %218 = load volatile ptr, ptr %217, align 4
  %219 = getelementptr inbounds %struct.tracepoint_func, ptr %217, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  call void %218(ptr noundef %220, i32 noundef 0, i32 noundef 0) #10
  %221 = getelementptr %struct.tracepoint_func, ptr %217, i32 1
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %216

224:                                              ; preds = %216, %213
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !23
  br label %225

225:                                              ; preds = %224, %202, %196, %192, %187, %183, %181
  %226 = getelementptr i8, ptr %0, i32 -720
  %227 = load ptr, ptr %226, align 4
  call void @pm_relax(ptr noundef %227) #10
  call void @mutex_unlock(ptr noundef %6) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @timerqueue_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__rtc_set_alarm(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.rtc_time, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i32 36, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %5 = tail call i32 @rtc_valid_tm(ptr noundef %4) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %73

7:                                                ; preds = %2
  %8 = tail call i64 @rtc_tm_to_time64(ptr noundef %4) #10
  %9 = call fastcc i32 @__rtc_read_time(ptr noundef %0, ptr noundef nonnull %3)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %73

11:                                               ; preds = %7
  %12 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %3) #10
  %13 = icmp sgt i64 %8, %12
  br i1 %13, label %14, label %73

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 25
  %16 = load i64, ptr %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = call i64 @rtc_tm_to_time64(ptr noundef %4) #10
  %20 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 22
  %21 = load i64, ptr %20, align 8
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 23
  %25 = load i64, ptr %24, align 8
  %26 = icmp ugt i64 %19, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %18
  %28 = load i64, ptr %15, align 8
  %29 = sub i64 %19, %28
  call void @rtc_time64_to_tm(i64 noundef %29, ptr noundef %4) #10
  br label %30

30:                                               ; preds = %27, %23, %14
  %31 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 21
  %36 = load volatile i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtc_class_ops, ptr %32, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %41(ptr noundef %43, ptr noundef %1) #10
  br label %45

45:                                               ; preds = %39, %34, %30
  %46 = phi i32 [ %44, %39 ], [ -19, %30 ], [ -22, %34 ]
  %47 = call i64 @rtc_tm_to_time64(ptr noundef %4) #10
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_set_alarm, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %45
  %51 = tail call ptr @llvm.thread.pointer() #10
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 8
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr @__cpu_online_mask, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = and i32 %53, 31
  %58 = shl nuw i32 1, %57
  %59 = and i32 %58, %56
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %50
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !36
  %62 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_set_alarm, i32 0, i32 7), align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %64, %61
  %65 = phi ptr [ %69, %64 ], [ %62, %61 ]
  %66 = load volatile ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.tracepoint_func, ptr %65, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  call void %66(ptr noundef %68, i64 noundef %47, i32 noundef %46) #10
  %69 = getelementptr %struct.tracepoint_func, ptr %65, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %64

72:                                               ; preds = %64, %61
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !37
  br label %73

73:                                               ; preds = %72, %50, %45, %11, %7, %2
  %74 = phi i32 [ %5, %2 ], [ %9, %7 ], [ -62, %11 ], [ %46, %45 ], [ %46, %50 ], [ %46, %72 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #10
  ret i32 %74
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_relax(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rtc_timer_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
  %4 = ptrtoint ptr %0 to i32
  store i32 %4, ptr %0, align 8
  %5 = getelementptr inbounds %struct.rtc_timer, ptr %0, i32 0, i32 4
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.rtc_timer, ptr %0, i32 0, i32 2
  store ptr %1, ptr %6, align 8
  %7 = getelementptr inbounds %struct.rtc_timer, ptr %0, i32 0, i32 3
  store ptr %2, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtc_timer_start(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.rtc_timer, ptr %1, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call fastcc void @rtc_timer_remove(ptr noundef %0, ptr noundef %1)
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds %struct.timerqueue_node, ptr %1, i32 0, i32 1
  store i64 %2, ptr %11, align 8
  %12 = getelementptr inbounds %struct.rtc_timer, ptr %1, i32 0, i32 1
  store i64 %3, ptr %12, align 8
  %13 = tail call fastcc i32 @rtc_timer_enqueue(ptr noundef %0, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %5) #10
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rtc_timer_cancel(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.rtc_timer, ptr %1, i32 0, i32 4
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call fastcc void @rtc_timer_remove(ptr noundef %0, ptr noundef %1)
  br label %8

8:                                                ; preds = %7, %2
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtc_read_offset(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtc_class_ops, ptr %4, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %11) #10
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.rtc_class_ops, ptr %12, i32 0, i32 7
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %14(ptr noundef %16, ptr noundef %1) #10
  tail call void @mutex_unlock(ptr noundef %11) #10
  %18 = load i32, ptr %1, align 4
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_read_offset, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %10
  %22 = tail call ptr @llvm.thread.pointer() #10
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = lshr i32 %24, 5
  %26 = getelementptr i32, ptr @__cpu_online_mask, i32 %25
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %24, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !38
  %33 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_read_offset, i32 0, i32 7), align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %43, label %35

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %40, %35 ], [ %33, %32 ]
  %37 = load volatile ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.tracepoint_func, ptr %36, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  tail call void %37(ptr noundef %39, i32 noundef %18, i32 noundef %17) #10
  %40 = getelementptr %struct.tracepoint_func, ptr %36, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %35

43:                                               ; preds = %35, %32
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !39
  br label %44

44:                                               ; preds = %43, %21, %10, %6, %2
  %45 = phi i32 [ -19, %2 ], [ -22, %6 ], [ %17, %10 ], [ %17, %21 ], [ %17, %43 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rtc_set_offset(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtc_class_ops, ptr %4, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %11) #10
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.rtc_class_ops, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %14(ptr noundef %16, i32 noundef %1) #10
  tail call void @mutex_unlock(ptr noundef %11) #10
  %18 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_set_offset, i32 0, i32 1), align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !40
  %32 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rtc_set_offset, i32 0, i32 7), align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %34, %31
  %35 = phi ptr [ %39, %34 ], [ %32, %31 ]
  %36 = load volatile ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tracepoint_func, ptr %35, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  tail call void %36(ptr noundef %38, i32 noundef %1, i32 noundef %17) #10
  %39 = getelementptr %struct.tracepoint_func, ptr %35, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %34

42:                                               ; preds = %34, %31
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !41
  br label %43

43:                                               ; preds = %42, %20, %10, %6, %2
  %44 = phi i32 [ -19, %2 ], [ -22, %6 ], [ %17, %10 ], [ %17, %20 ], [ %17, %42 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rtc_time_alarm_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rtc_time_alarm_class, ptr %5, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_rtc_time_alarm_class, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef %13) #10
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #10
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rtc_irq_set_freq(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_freq, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_freq, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %11, i32 noundef %13) #10
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rtc_irq_set_state(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_state, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr @.str.13, ptr @.str.12
  %14 = getelementptr inbounds %struct.trace_event_raw_rtc_irq_set_state, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %13, i32 noundef %15) #10
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rtc_alarm_irq_enable(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rtc_alarm_irq_enable, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr @.str.13, ptr @.str.12
  %14 = getelementptr inbounds %struct.trace_event_raw_rtc_alarm_irq_enable, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %13, i32 noundef %15) #10
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rtc_offset_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rtc_offset_class, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_rtc_offset_class, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %11, i32 noundef %13) #10
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #10
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_rtc_timer_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #10
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %5, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.trace_event_raw_rtc_timer_class, ptr %5, i32 0, i32 3
  %15 = load i64, ptr %14, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %11, i64 noundef %13, i64 noundef %15) #10
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
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_name(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_try_to_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @timerqueue_iterate_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
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
!12 = !{i64 383986}
!13 = !{i64 2152408869}
!14 = !{i64 2152409025}
!15 = !{i8 0, i8 2}
!16 = !{i64 2152393189}
!17 = !{i64 2152393343}
!18 = !{i64 2152444436}
!19 = !{i64 2152444594}
!20 = !{i64 2152564877}
!21 = !{i64 2152565033}
!22 = !{i64 2152496730}
!23 = !{i64 2152496906}
!24 = !{i64 2152544764}
!25 = !{i64 2152544920}
!26 = !{i64 2154329109}
!27 = !{i64 2154328951}
!28 = !{i64 2152476306}
!29 = !{i64 2152476476}
!30 = !{i64 2154329366}
!31 = !{i64 2154329208}
!32 = !{i64 2152460268}
!33 = !{i64 2152460430}
!34 = !{i64 2152580853}
!35 = !{i64 2152581005}
!36 = !{i64 2152428664}
!37 = !{i64 2152428820}
!38 = !{i64 2152528778}
!39 = !{i64 2152528942}
!40 = !{i64 2152512910}
!41 = !{i64 2152513072}
