; ModuleID = '/llk/IR/fs/iomap/trace.c_pt.bc'
source_filename = "../fs/iomap/trace.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.trace_print_flags = type { i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.66 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [56 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [40 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.trace_event_raw_iomap_readpage_class = type { %struct.trace_entry, i32, i64, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_iomap_range_class = type { %struct.trace_entry, i32, i64, i64, i64, i64, [0 x i8] }
%struct.trace_event_raw_iomap_class = type { %struct.trace_entry, i32, i64, i64, i64, i64, i16, i16, i32, [0 x i8] }
%struct.iomap = type { i64, i64, i64, i16, i16, ptr, ptr, ptr, ptr, ptr }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr }
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
%struct.trace_event_raw_iomap_iter = type { %struct.trace_entry, i32, i64, i64, i64, i32, ptr, i32, [0 x i8] }
%struct.iomap_iter = type { ptr, i64, i64, i64, i32, %struct.iomap, %struct.iomap }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@__tpstrtab_iomap_readpage = internal constant [15 x i8] c"iomap_readpage\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_readpage = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_readpage }, align 4
@__tracepoint_iomap_readpage = dso_local global %struct.tracepoint { ptr @__tpstrtab_iomap_readpage, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_iomap_readpage, ptr null, ptr @__traceiter_iomap_readpage, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_readpage = internal constant ptr @__tracepoint_iomap_readpage, section "__tracepoints_ptrs", align 4
@__tpstrtab_iomap_readahead = internal constant [16 x i8] c"iomap_readahead\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_readahead = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_readahead }, align 4
@__tracepoint_iomap_readahead = dso_local global %struct.tracepoint { ptr @__tpstrtab_iomap_readahead, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_iomap_readahead, ptr null, ptr @__traceiter_iomap_readahead, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_readahead = internal constant ptr @__tracepoint_iomap_readahead, section "__tracepoints_ptrs", align 4
@__tpstrtab_iomap_writepage = internal constant [16 x i8] c"iomap_writepage\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_writepage = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_writepage }, align 4
@__tracepoint_iomap_writepage = dso_local global %struct.tracepoint { ptr @__tpstrtab_iomap_writepage, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_iomap_writepage, ptr null, ptr @__traceiter_iomap_writepage, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_writepage = internal constant ptr @__tracepoint_iomap_writepage, section "__tracepoints_ptrs", align 4
@__tpstrtab_iomap_releasepage = internal constant [18 x i8] c"iomap_releasepage\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_releasepage = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_releasepage }, align 4
@__tracepoint_iomap_releasepage = dso_local global %struct.tracepoint { ptr @__tpstrtab_iomap_releasepage, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_iomap_releasepage, ptr null, ptr @__traceiter_iomap_releasepage, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_releasepage = internal constant ptr @__tracepoint_iomap_releasepage, section "__tracepoints_ptrs", align 4
@__tpstrtab_iomap_invalidatepage = internal constant [21 x i8] c"iomap_invalidatepage\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_invalidatepage = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_invalidatepage }, align 4
@__tracepoint_iomap_invalidatepage = dso_local global %struct.tracepoint { ptr @__tpstrtab_iomap_invalidatepage, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_iomap_invalidatepage, ptr null, ptr @__traceiter_iomap_invalidatepage, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_invalidatepage = internal constant ptr @__tracepoint_iomap_invalidatepage, section "__tracepoints_ptrs", align 4
@__tpstrtab_iomap_dio_invalidate_fail = internal constant [26 x i8] c"iomap_dio_invalidate_fail\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_dio_invalidate_fail = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_dio_invalidate_fail }, align 4
@__tracepoint_iomap_dio_invalidate_fail = dso_local global %struct.tracepoint { ptr @__tpstrtab_iomap_dio_invalidate_fail, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_iomap_dio_invalidate_fail, ptr null, ptr @__traceiter_iomap_dio_invalidate_fail, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_dio_invalidate_fail = internal constant ptr @__tracepoint_iomap_dio_invalidate_fail, section "__tracepoints_ptrs", align 4
@__tpstrtab_iomap_iter_dstmap = internal constant [18 x i8] c"iomap_iter_dstmap\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_iter_dstmap = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_iter_dstmap }, align 4
@__tracepoint_iomap_iter_dstmap = dso_local global %struct.tracepoint { ptr @__tpstrtab_iomap_iter_dstmap, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_iomap_iter_dstmap, ptr null, ptr @__traceiter_iomap_iter_dstmap, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_iter_dstmap = internal constant ptr @__tracepoint_iomap_iter_dstmap, section "__tracepoints_ptrs", align 4
@__tpstrtab_iomap_iter_srcmap = internal constant [18 x i8] c"iomap_iter_srcmap\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_iter_srcmap = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_iter_srcmap }, align 4
@__tracepoint_iomap_iter_srcmap = dso_local global %struct.tracepoint { ptr @__tpstrtab_iomap_iter_srcmap, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_iomap_iter_srcmap, ptr null, ptr @__traceiter_iomap_iter_srcmap, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_iter_srcmap = internal constant ptr @__tracepoint_iomap_iter_srcmap, section "__tracepoints_ptrs", align 4
@__tpstrtab_iomap_iter = internal constant [11 x i8] c"iomap_iter\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_iomap_iter = dso_local global %struct.static_call_key { ptr @__traceiter_iomap_iter }, align 4
@__tracepoint_iomap_iter = dso_local global %struct.tracepoint { ptr @__tpstrtab_iomap_iter, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_iomap_iter, ptr null, ptr @__traceiter_iomap_iter, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_iomap_iter = internal constant ptr @__tracepoint_iomap_iter, section "__tracepoints_ptrs", align 4
@str__iomap__trace_system_name = internal constant [6 x i8] c"iomap\00", align 1
@trace_event_fields_iomap_readpage_class = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.93 { %struct.anon.94 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.93 { %struct.anon.94 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.93 { %struct.anon.94 { ptr @.str.5, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_iomap_readpage_class = internal global %struct.trace_event_class { ptr @str__iomap__trace_system_name, ptr @trace_event_raw_event_iomap_readpage_class, ptr @perf_trace_iomap_readpage_class, ptr @trace_event_reg, ptr @trace_event_fields_iomap_readpage_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_iomap_readpage_class, i64 24), ptr getelementptr (i8, ptr @event_class_iomap_readpage_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_iomap_readpage_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_iomap_readpage_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_iomap_readpage_class = internal global [147 x i8] c"\22dev %d:%d ino 0x%llx nr_pages %d\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->ino, REC->nr_pages\00", align 1
@event_iomap_readpage = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_readpage_class, %union.anon.95 { ptr @__tracepoint_iomap_readpage }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_readpage_class }, ptr @print_fmt_iomap_readpage_class, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_iomap_readpage = internal global ptr @event_iomap_readpage, section "_ftrace_events", align 4
@event_iomap_readahead = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_readpage_class, %union.anon.95 { ptr @__tracepoint_iomap_readahead }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_readpage_class }, ptr @print_fmt_iomap_readpage_class, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_iomap_readahead = internal global ptr @event_iomap_readahead, section "_ftrace_events", align 4
@trace_event_fields_iomap_range_class = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.93 { %struct.anon.94 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.93 { %struct.anon.94 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.93 { %struct.anon.94 { ptr @.str.8, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.93 { %struct.anon.94 { ptr @.str.9, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.93 { %struct.anon.94 { ptr @.str.10, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_iomap_range_class = internal global %struct.trace_event_class { ptr @str__iomap__trace_system_name, ptr @trace_event_raw_event_iomap_range_class, ptr @perf_trace_iomap_range_class, ptr @trace_event_reg, ptr @trace_event_fields_iomap_range_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_iomap_range_class, i64 24), ptr getelementptr (i8, ptr @event_class_iomap_range_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_iomap_range_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_iomap_range_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_iomap_range_class = internal global [197 x i8] c"\22dev %d:%d ino 0x%llx size 0x%llx offset 0x%llx length 0x%llx\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->ino, REC->size, REC->offset, REC->length\00", align 1
@event_iomap_writepage = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_range_class, %union.anon.95 { ptr @__tracepoint_iomap_writepage }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_range_class }, ptr @print_fmt_iomap_range_class, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_iomap_writepage = internal global ptr @event_iomap_writepage, section "_ftrace_events", align 4
@event_iomap_releasepage = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_range_class, %union.anon.95 { ptr @__tracepoint_iomap_releasepage }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_range_class }, ptr @print_fmt_iomap_range_class, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_iomap_releasepage = internal global ptr @event_iomap_releasepage, section "_ftrace_events", align 4
@event_iomap_invalidatepage = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_range_class, %union.anon.95 { ptr @__tracepoint_iomap_invalidatepage }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_range_class }, ptr @print_fmt_iomap_range_class, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_iomap_invalidatepage = internal global ptr @event_iomap_invalidatepage, section "_ftrace_events", align 4
@event_iomap_dio_invalidate_fail = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_range_class, %union.anon.95 { ptr @__tracepoint_iomap_dio_invalidate_fail }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_range_class }, ptr @print_fmt_iomap_range_class, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_iomap_dio_invalidate_fail = internal global ptr @event_iomap_dio_invalidate_fail, section "_ftrace_events", align 4
@trace_event_fields_iomap_class = internal global [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.93 { %struct.anon.94 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.93 { %struct.anon.94 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.93 { %struct.anon.94 { ptr @.str.12, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.93 { %struct.anon.94 { ptr @.str.9, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.93 { %struct.anon.94 { ptr @.str.10, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.93 { %struct.anon.94 { ptr @.str.14, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.13, %union.anon.93 { %struct.anon.94 { ptr @.str.15, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon.93 { %struct.anon.94 { ptr @.str.16, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_iomap_class = internal global %struct.trace_event_class { ptr @str__iomap__trace_system_name, ptr @trace_event_raw_event_iomap_class, ptr @perf_trace_iomap_class, ptr @trace_event_reg, ptr @trace_event_fields_iomap_class, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_iomap_class, i64 24), ptr getelementptr (i8, ptr @event_class_iomap_class, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_iomap_class = internal global %struct.trace_event_functions { ptr @trace_raw_output_iomap_class, ptr null, ptr null, ptr null }, align 4
@print_fmt_iomap_class = internal global [582 x i8] c"\22dev %d:%d ino 0x%llx bdev %d:%d addr 0x%llx offset 0x%llx length 0x%llx type %s flags %s\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->ino, ((unsigned int) ((REC->bdev) >> 20)), ((unsigned int) ((REC->bdev) & ((1U << 20) - 1))), REC->addr, REC->offset, REC->length, __print_symbolic(REC->type, { 0, \22HOLE\22 }, { 1, \22DELALLOC\22 }, { 2, \22MAPPED\22 }, { 3, \22UNWRITTEN\22 }, { 4, \22INLINE\22 }), __print_flags(REC->flags, \22|\22, { 0x01, \22NEW\22 }, { 0x02, \22DIRTY\22 }, { 0x04, \22SHARED\22 }, { 0x08, \22MERGED\22 }, { 0x10, \22BH\22 }, { 0x100, \22SIZE_CHANGED\22 })\00", align 1
@event_iomap_iter_dstmap = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_class, %union.anon.95 { ptr @__tracepoint_iomap_iter_dstmap }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_class }, ptr @print_fmt_iomap_class, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_iomap_iter_dstmap = internal global ptr @event_iomap_iter_dstmap, section "_ftrace_events", align 4
@event_iomap_iter_srcmap = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_class, %union.anon.95 { ptr @__tracepoint_iomap_iter_srcmap }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_class }, ptr @print_fmt_iomap_class, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_iomap_iter_srcmap = internal global ptr @event_iomap_iter_srcmap, section "_ftrace_events", align 4
@trace_event_fields_iomap_iter = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.93 { %struct.anon.94 { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.93 { %struct.anon.94 { ptr @.str.3, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.7, %union.anon.93 { %struct.anon.94 { ptr @.str.30, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.93 { %struct.anon.94 { ptr @.str.10, i32 8, i32 8, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.31, %union.anon.93 { %struct.anon.94 { ptr @.str.15, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.93 { %struct.anon.94 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.93 { %struct.anon.94 { ptr @.str.35, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_iomap_iter = internal global %struct.trace_event_class { ptr @str__iomap__trace_system_name, ptr @trace_event_raw_event_iomap_iter, ptr @perf_trace_iomap_iter, ptr @trace_event_reg, ptr @trace_event_fields_iomap_iter, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_iomap_iter, i64 24), ptr getelementptr (i8, ptr @event_class_iomap_iter, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_iomap_iter = internal global %struct.trace_event_functions { ptr @trace_raw_output_iomap_iter, ptr null, ptr null, ptr null }, align 4
@print_fmt_iomap_iter = internal global [418 x i8] c"\22dev %d:%d ino 0x%llx pos 0x%llx length 0x%llx flags %s (0x%x) ops %ps caller %pS\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->ino, REC->pos, REC->length, __print_flags(REC->flags, \22|\22, { (1 << 0), \22WRITE\22 }, { (1 << 1), \22ZERO\22 }, { (1 << 2), \22REPORT\22 }, { (1 << 3), \22FAULT\22 }, { (1 << 4), \22DIRECT\22 }, { (1 << 5), \22NOWAIT\22 }), REC->flags, REC->ops, (void *)REC->caller\00", align 1
@event_iomap_iter = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_iomap_iter, %union.anon.95 { ptr @__tracepoint_iomap_iter }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_iomap_iter }, ptr @print_fmt_iomap_iter, ptr null, %union.anon.96 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_iomap_iter = internal global ptr @event_iomap_iter, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [6 x i8] c"dev_t\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"u64\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ino\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"nr_pages\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"dev %d:%d ino 0x%llx nr_pages %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"loff_t\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"dev %d:%d ino 0x%llx size 0x%llx offset 0x%llx length 0x%llx\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"u16\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"bdev\00", align 1
@.str.17 = private unnamed_addr constant [90 x i8] c"dev %d:%d ino 0x%llx bdev %d:%d addr 0x%llx offset 0x%llx length 0x%llx type %s flags %s\0A\00", align 1
@trace_raw_output_iomap_class.symbols = internal constant [6 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.18 }, %struct.trace_print_flags { i32 1, ptr @.str.19 }, %struct.trace_print_flags { i32 2, ptr @.str.20 }, %struct.trace_print_flags { i32 3, ptr @.str.21 }, %struct.trace_print_flags { i32 4, ptr @.str.22 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"HOLE\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"DELALLOC\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"MAPPED\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"UNWRITTEN\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"INLINE\00", align 1
@trace_raw_output_iomap_class.__flags = internal constant [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.23 }, %struct.trace_print_flags { i32 2, ptr @.str.24 }, %struct.trace_print_flags { i32 4, ptr @.str.25 }, %struct.trace_print_flags { i32 8, ptr @.str.26 }, %struct.trace_print_flags { i32 16, ptr @.str.27 }, %struct.trace_print_flags { i32 256, ptr @.str.28 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.23 = private unnamed_addr constant [4 x i8] c"NEW\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"DIRTY\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"SHARED\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"MERGED\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"BH\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"SIZE_CHANGED\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"const void *\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"caller\00", align 1
@.str.36 = private unnamed_addr constant [82 x i8] c"dev %d:%d ino 0x%llx pos 0x%llx length 0x%llx flags %s (0x%x) ops %ps caller %pS\0A\00", align 1
@trace_raw_output_iomap_iter.__flags = internal constant [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 1, ptr @.str.37 }, %struct.trace_print_flags { i32 2, ptr @.str.38 }, %struct.trace_print_flags { i32 4, ptr @.str.39 }, %struct.trace_print_flags { i32 8, ptr @.str.40 }, %struct.trace_print_flags { i32 16, ptr @.str.41 }, %struct.trace_print_flags { i32 32, ptr @.str.42 }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"ZERO\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"REPORT\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"FAULT\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"DIRECT\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"NOWAIT\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @__event_iomap_dio_invalidate_fail, ptr @__event_iomap_invalidatepage, ptr @__event_iomap_iter, ptr @__event_iomap_iter_dstmap, ptr @__event_iomap_iter_srcmap, ptr @__event_iomap_readahead, ptr @__event_iomap_readpage, ptr @__event_iomap_releasepage, ptr @__event_iomap_writepage, ptr @__tracepoint_iomap_dio_invalidate_fail, ptr @__tracepoint_iomap_invalidatepage, ptr @__tracepoint_iomap_iter, ptr @__tracepoint_iomap_iter_dstmap, ptr @__tracepoint_iomap_iter_srcmap, ptr @__tracepoint_iomap_readahead, ptr @__tracepoint_iomap_readpage, ptr @__tracepoint_iomap_releasepage, ptr @__tracepoint_iomap_writepage, ptr @__tracepoint_ptr_iomap_dio_invalidate_fail, ptr @__tracepoint_ptr_iomap_invalidatepage, ptr @__tracepoint_ptr_iomap_iter, ptr @__tracepoint_ptr_iomap_iter_dstmap, ptr @__tracepoint_ptr_iomap_iter_srcmap, ptr @__tracepoint_ptr_iomap_readahead, ptr @__tracepoint_ptr_iomap_readpage, ptr @__tracepoint_ptr_iomap_releasepage, ptr @__tracepoint_ptr_iomap_writepage, ptr @event_class_iomap_class, ptr @event_class_iomap_iter, ptr @event_class_iomap_range_class, ptr @event_class_iomap_readpage_class, ptr @event_iomap_dio_invalidate_fail, ptr @event_iomap_invalidatepage, ptr @event_iomap_iter, ptr @event_iomap_iter_dstmap, ptr @event_iomap_iter_srcmap, ptr @event_iomap_readahead, ptr @event_iomap_readpage, ptr @event_iomap_releasepage, ptr @event_iomap_writepage], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iomap_readpage(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_readpage, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_iomap_readahead(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_readahead, i32 0, i32 7), align 4
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
define dso_local i32 @__traceiter_iomap_writepage(ptr nocapture readnone %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_writepage, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i64 noundef %2, i64 noundef %3) #7
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iomap_releasepage(ptr nocapture readnone %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_releasepage, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i64 noundef %2, i64 noundef %3) #7
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iomap_invalidatepage(ptr nocapture readnone %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_invalidatepage, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i64 noundef %2, i64 noundef %3) #7
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iomap_dio_invalidate_fail(ptr nocapture readnone %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_dio_invalidate_fail, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i64 noundef %2, i64 noundef %3) #7
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iomap_iter_dstmap(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_iter_dstmap, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iomap_iter_srcmap(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_iter_srcmap, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #7
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_iomap_iter(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_iomap_iter, i32 0, i32 7), align 4
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
define internal void @trace_event_raw_event_iomap_readpage_class(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
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
  br i1 %13, label %28, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 32) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %15, i32 0, i32 1
  store i32 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %15, i32 0, i32 2
  store i64 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %15, i32 0, i32 3
  store i32 %2, ptr %27, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #7
  br label %28

28:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_iomap_readpage_class(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
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
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #4, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %46, label %23

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
  %34 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %21, i32 0, i32 1
  store i32 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %21, i32 0, i32 2
  store i64 %41, ptr %42, align 8
  %43 = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %21, i32 0, i32 3
  store i32 %2, ptr %43, align 8
  %44 = load i32, ptr %5, align 4
  %45 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 36, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %13, ptr noundef null) #7
  br label %46

46:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_iomap_range_class(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
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
  br i1 %14, label %47, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 48) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %47, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.super_block, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %16, i32 0, i32 1
  store i32 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %16, i32 0, i32 2
  store i64 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  %29 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  br label %30

30:                                               ; preds = %38, %18
  %31 = load volatile i32, ptr %28, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %34, %30
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !14
  %35 = load volatile i32, ptr %28, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %34

38:                                               ; preds = %34, %30
  %39 = phi i32 [ %31, %30 ], [ %35, %34 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  %40 = load i64, ptr %29, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %41 = load volatile i32, ptr %28, align 4
  %42 = icmp eq i32 %41, %39
  br i1 %42, label %43, label %30

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %16, i32 0, i32 3
  store i64 %40, ptr %44, align 8
  %45 = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %16, i32 0, i32 4
  store i64 %2, ptr %45, align 8
  %46 = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %16, i32 0, i32 5
  store i64 %3, ptr %46, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #7
  br label %47

47:                                               ; preds = %43, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_iomap_range_class(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
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
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #4, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %65, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %65, label %24

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
  %35 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.super_block, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %22, i32 0, i32 1
  store i32 %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %41 = load i32, ptr %40, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %22, i32 0, i32 2
  store i64 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 22
  %45 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 13
  br label %46

46:                                               ; preds = %54, %24
  %47 = load volatile i32, ptr %44, align 4
  %48 = and i32 %47, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %50, %46
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !13
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !14
  %51 = load volatile i32, ptr %44, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %50

54:                                               ; preds = %50, %46
  %55 = phi i32 [ %47, %46 ], [ %51, %50 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !15
  %56 = load i64, ptr %45, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !16
  %57 = load volatile i32, ptr %44, align 4
  %58 = icmp eq i32 %57, %55
  br i1 %58, label %59, label %46

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %22, i32 0, i32 3
  store i64 %56, ptr %60, align 8
  %61 = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %22, i32 0, i32 4
  store i64 %2, ptr %61, align 8
  %62 = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %22, i32 0, i32 5
  store i64 %3, ptr %62, align 8
  %63 = load i32, ptr %6, align 4
  %64 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 52, i32 noundef %63, ptr noundef %0, i64 noundef 1, ptr noundef %64, ptr noundef %14, ptr noundef null) #7
  br label %65

65:                                               ; preds = %59, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_iomap_class(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
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
  br i1 %13, label %50, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 56) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.super_block, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %15, i32 0, i32 1
  store i32 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %15, i32 0, i32 2
  store i64 %25, ptr %26, align 8
  %27 = load i64, ptr %2, align 8
  %28 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %15, i32 0, i32 3
  store i64 %27, ptr %28, align 8
  %29 = getelementptr inbounds %struct.iomap, ptr %2, i32 0, i32 1
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %15, i32 0, i32 4
  store i64 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.iomap, ptr %2, i32 0, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %15, i32 0, i32 5
  store i64 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.iomap, ptr %2, i32 0, i32 3
  %36 = load i16, ptr %35, align 8
  %37 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %15, i32 0, i32 6
  store i16 %36, ptr %37, align 8
  %38 = getelementptr inbounds %struct.iomap, ptr %2, i32 0, i32 4
  %39 = load i16, ptr %38, align 2
  %40 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %15, i32 0, i32 7
  store i16 %39, ptr %40, align 2
  %41 = getelementptr inbounds %struct.iomap, ptr %2, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %17
  %45 = getelementptr inbounds %struct.block_device, ptr %42, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  br label %47

47:                                               ; preds = %44, %17
  %48 = phi i32 [ %46, %44 ], [ 0, %17 ]
  %49 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %15, i32 0, i32 8
  store i32 %48, ptr %49, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #7
  br label %50

50:                                               ; preds = %47, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_iomap_class(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
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
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #4, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %68, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %68, label %23

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
  %34 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.super_block, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %21, i32 0, i32 1
  store i32 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %40 = load i32, ptr %39, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %21, i32 0, i32 2
  store i64 %41, ptr %42, align 8
  %43 = load i64, ptr %2, align 8
  %44 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %21, i32 0, i32 3
  store i64 %43, ptr %44, align 8
  %45 = getelementptr inbounds %struct.iomap, ptr %2, i32 0, i32 1
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %21, i32 0, i32 4
  store i64 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.iomap, ptr %2, i32 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %21, i32 0, i32 5
  store i64 %49, ptr %50, align 8
  %51 = getelementptr inbounds %struct.iomap, ptr %2, i32 0, i32 3
  %52 = load i16, ptr %51, align 8
  %53 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %21, i32 0, i32 6
  store i16 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.iomap, ptr %2, i32 0, i32 4
  %55 = load i16, ptr %54, align 2
  %56 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %21, i32 0, i32 7
  store i16 %55, ptr %56, align 2
  %57 = getelementptr inbounds %struct.iomap, ptr %2, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %23
  %61 = getelementptr inbounds %struct.block_device, ptr %58, i32 0, i32 5
  %62 = load i32, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %23
  %64 = phi i32 [ %62, %60 ], [ 0, %23 ]
  %65 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %21, i32 0, i32 8
  store i32 %64, ptr %65, align 4
  %66 = load i32, ptr %5, align 4
  %67 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 60, i32 noundef %66, ptr noundef %0, i64 noundef 1, ptr noundef %67, ptr noundef %13, ptr noundef null) #7
  br label %68

68:                                               ; preds = %63, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_iomap_iter(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
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
  br i1 %14, label %61, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 56) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %61, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %1, align 8
  %20 = getelementptr inbounds %struct.inode, ptr %19, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.super_block, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %16, i32 0, i32 1
  store i32 %23, ptr %24, align 8
  %25 = load ptr, ptr %1, align 8
  %26 = getelementptr inbounds %struct.inode, ptr %25, i32 0, i32 10
  %27 = load i32, ptr %26, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %16, i32 0, i32 2
  store i64 %28, ptr %29, align 8
  %30 = getelementptr inbounds %struct.iomap_iter, ptr %1, i32 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %16, i32 0, i32 3
  store i64 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.iomap_iter, ptr %1, i32 0, i32 5, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = getelementptr inbounds %struct.iomap_iter, ptr %1, i32 0, i32 5, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = add i64 %36, %34
  %38 = getelementptr inbounds %struct.iomap_iter, ptr %1, i32 0, i32 6, i32 3
  %39 = load i16, ptr %38, align 8
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %18
  %42 = getelementptr inbounds %struct.iomap_iter, ptr %1, i32 0, i32 6, i32 1
  %43 = load i64, ptr %42, align 8
  %44 = getelementptr inbounds %struct.iomap_iter, ptr %1, i32 0, i32 6, i32 2
  %45 = load i64, ptr %44, align 8
  %46 = add i64 %45, %43
  %47 = call i64 @llvm.umin.i64(i64 %37, i64 %46) #7
  br label %48

48:                                               ; preds = %41, %18
  %49 = phi i64 [ %47, %41 ], [ %37, %18 ]
  %50 = getelementptr inbounds %struct.iomap_iter, ptr %1, i32 0, i32 2
  %51 = load i64, ptr %50, align 8
  %52 = load i64, ptr %30, align 8
  %53 = sub i64 %49, %52
  %54 = call i64 @llvm.umin.i64(i64 %51, i64 %53) #7
  %55 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %16, i32 0, i32 4
  store i64 %54, ptr %55, align 8
  %56 = getelementptr inbounds %struct.iomap_iter, ptr %1, i32 0, i32 4
  %57 = load i32, ptr %56, align 8
  %58 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %16, i32 0, i32 5
  store i32 %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %16, i32 0, i32 6
  store ptr %2, ptr %59, align 4
  %60 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %16, i32 0, i32 7
  store i32 %3, ptr %60, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #7
  br label %61

61:                                               ; preds = %48, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_iomap_iter(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
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
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #4, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %79, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 60, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %79, label %24

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
  %35 = load ptr, ptr %1, align 8
  %36 = getelementptr inbounds %struct.inode, ptr %35, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.super_block, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %22, i32 0, i32 1
  store i32 %39, ptr %40, align 8
  %41 = load ptr, ptr %1, align 8
  %42 = getelementptr inbounds %struct.inode, ptr %41, i32 0, i32 10
  %43 = load i32, ptr %42, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %22, i32 0, i32 2
  store i64 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.iomap_iter, ptr %1, i32 0, i32 1
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %22, i32 0, i32 3
  store i64 %47, ptr %48, align 8
  %49 = getelementptr inbounds %struct.iomap_iter, ptr %1, i32 0, i32 5, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = getelementptr inbounds %struct.iomap_iter, ptr %1, i32 0, i32 5, i32 2
  %52 = load i64, ptr %51, align 8
  %53 = add i64 %52, %50
  %54 = getelementptr inbounds %struct.iomap_iter, ptr %1, i32 0, i32 6, i32 3
  %55 = load i16, ptr %54, align 8
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %24
  %58 = getelementptr inbounds %struct.iomap_iter, ptr %1, i32 0, i32 6, i32 1
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr inbounds %struct.iomap_iter, ptr %1, i32 0, i32 6, i32 2
  %61 = load i64, ptr %60, align 8
  %62 = add i64 %61, %59
  %63 = call i64 @llvm.umin.i64(i64 %53, i64 %62) #7
  br label %64

64:                                               ; preds = %57, %24
  %65 = phi i64 [ %63, %57 ], [ %53, %24 ]
  %66 = getelementptr inbounds %struct.iomap_iter, ptr %1, i32 0, i32 2
  %67 = load i64, ptr %66, align 8
  %68 = load i64, ptr %46, align 8
  %69 = sub i64 %65, %68
  %70 = call i64 @llvm.umin.i64(i64 %67, i64 %69) #7
  %71 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %22, i32 0, i32 4
  store i64 %70, ptr %71, align 8
  %72 = getelementptr inbounds %struct.iomap_iter, ptr %1, i32 0, i32 4
  %73 = load i32, ptr %72, align 8
  %74 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %22, i32 0, i32 5
  store i32 %73, ptr %74, align 8
  %75 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %22, i32 0, i32 6
  store ptr %2, ptr %75, align 4
  %76 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %22, i32 0, i32 7
  store i32 %3, ptr %76, align 8
  %77 = load i32, ptr %6, align 4
  %78 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 60, i32 noundef %77, ptr noundef %0, i64 noundef 1, ptr noundef %78, ptr noundef %14, ptr noundef null) #7
  br label %79

79:                                               ; preds = %64, %21, %18
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
define internal i32 @trace_raw_output_iomap_readpage_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #7
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 20
  %13 = and i32 %11, 1048575
  %14 = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %5, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_iomap_readpage_class, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %12, i32 noundef %13, i64 noundef %15, i32 noundef %17) #7
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #7
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
define internal i32 @trace_raw_output_iomap_range_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #7
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 20
  %13 = and i32 %11, 1048575
  %14 = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %5, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %5, i32 0, i32 3
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %5, i32 0, i32 4
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %struct.trace_event_raw_iomap_range_class, ptr %5, i32 0, i32 5
  %21 = load i64, ptr %20, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %12, i32 noundef %13, i64 noundef %15, i64 noundef %17, i64 noundef %19, i64 noundef %21) #7
  %22 = tail call i32 @trace_handle_return(ptr noundef %9) #7
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_iomap_class(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #7
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %36

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 20
  %14 = and i32 %12, 1048575
  %15 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %5, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %5, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 20
  %20 = and i32 %18, 1048575
  %21 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %5, i32 0, i32 3
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %5, i32 0, i32 4
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %5, i32 0, i32 5
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %5, i32 0, i32 6
  %28 = load i16, ptr %27, align 8
  %29 = zext i16 %28 to i32
  %30 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %29, ptr noundef nonnull @trace_raw_output_iomap_class.symbols) #7
  %31 = getelementptr inbounds %struct.trace_event_raw_iomap_class, ptr %5, i32 0, i32 7
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = tail call ptr @trace_print_flags_seq(ptr noundef %9, ptr noundef nonnull @.str.29, i32 noundef %33, ptr noundef nonnull @trace_raw_output_iomap_class.__flags) #7
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %13, i32 noundef %14, i64 noundef %16, i32 noundef %19, i32 noundef %20, i64 noundef %22, i64 noundef %24, i64 noundef %26, ptr noundef %30, ptr noundef %34) #7
  %35 = tail call i32 @trace_handle_return(ptr noundef %10) #7
  br label %36

36:                                               ; preds = %8, %3
  %37 = phi i32 [ %35, %8 ], [ %6, %3 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_flags_seq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_iomap_iter(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #7
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 20
  %14 = and i32 %12, 1048575
  %15 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %5, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %5, i32 0, i32 3
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %5, i32 0, i32 4
  %20 = load i64, ptr %19, align 8
  %21 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %5, i32 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = tail call ptr @trace_print_flags_seq(ptr noundef %9, ptr noundef nonnull @.str.29, i32 noundef %22, ptr noundef nonnull @trace_raw_output_iomap_iter.__flags) #7
  %24 = load i32, ptr %21, align 8
  %25 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %5, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_iomap_iter, ptr %5, i32 0, i32 7
  %28 = load i32, ptr %27, align 8
  %29 = inttoptr i32 %28 to ptr
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %13, i32 noundef %14, i64 noundef %16, i64 noundef %18, i64 noundef %20, ptr noundef %23, i32 noundef %24, ptr noundef %26, ptr noundef %29) #7
  %30 = tail call i32 @trace_handle_return(ptr noundef %10) #7
  br label %31

31:                                               ; preds = %8, %3
  %32 = phi i32 [ %30, %8 ], [ %6, %3 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!12 = !{i64 293288}
!13 = !{i64 2151324719}
!14 = !{i64 2151324561}
!15 = !{i64 2151324863}
!16 = !{i64 2149519106}
