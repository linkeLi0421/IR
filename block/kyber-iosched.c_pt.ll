; ModuleID = '/llk/IR/block/kyber-iosched.c_pt.bc'
source_filename = "../block/kyber-iosched.c"
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
%struct.elevator_type = type { ptr, %struct.elevator_mq_ops, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.elv_fs_entry = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.blk_mq_debugfs_attr = type { ptr, i16, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_kyber_latency = type { %struct.trace_entry, i32, [16 x i8], [8 x i8], i8, i8, i8, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_kyber_adjust = type { %struct.trace_entry, i32, [16 x i8], i32, [0 x i8] }
%struct.trace_event_raw_kyber_throttled = type { %struct.trace_entry, i32, [16 x i8], [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, %struct.queue_limits, i32, i32, %struct.mutex, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.lockdep_map = type {}
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.kyber_queue_data = type { ptr, i32, [4 x %struct.sbitmap_queue], i32, ptr, %struct.timer_list, [3 x [2 x [8 x i32]]], [3 x i32], [3 x i32], [3 x i64] }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.elevator_queue = type { ptr, ptr, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.blk_mq_hw_ctx = type { %struct.anon.108, %struct.delayed_work, [1 x %struct.cpumask], i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [16 x i8] }
%struct.anon.108 = type { %struct.spinlock, %struct.list_head, i32, [48 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.kyber_hctx_data = type { %struct.spinlock, [4 x %struct.list_head], i32, i32, ptr, [4 x %struct.sbitmap], [4 x %struct.sbq_wait], [4 x ptr], [4 x %struct.atomic_t] }
%struct.sbq_wait = type { ptr, %struct.wait_queue_entry }
%struct.kyber_ctx_queue = type { %struct.spinlock, [4 x %struct.list_head], [28 x i8] }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, %union.anon.43, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%union.anon.43 = type {}
%struct.bio_vec = type { ptr, i32, i32 }
%struct.blk_mq_ctx = type { %struct.anon.109, i32, [3 x i16], [3 x ptr], ptr, ptr, %struct.kobject, [60 x i8] }
%struct.anon.109 = type { %struct.spinlock, [3 x %struct.list_head], [36 x i8] }
%struct.blk_mq_alloc_data = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.44, ptr, i64, i64, i16, i16, i16, i16, i32, %struct.atomic_t, i32, %union.anon.45, %union.anon.46, %union.anon.47, %union.anon.52, ptr, ptr }
%union.anon.44 = type { %struct.list_head }
%union.anon.45 = type { %struct.hlist_node }
%union.anon.46 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.47 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, %struct.list_head, ptr }
%union.anon.52 = type { i64, [8 x i8] }
%struct.sbitmap_word = type { i32, [60 x i8], i32, [60 x i8], i32, [60 x i8] }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [48 x i8] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__tpstrtab_kyber_latency = internal constant [14 x i8] c"kyber_latency\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kyber_latency = dso_local global %struct.static_call_key { ptr @__traceiter_kyber_latency }, align 4
@__tracepoint_kyber_latency = dso_local global %struct.tracepoint { ptr @__tpstrtab_kyber_latency, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_kyber_latency, ptr null, ptr @__traceiter_kyber_latency, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kyber_latency = internal constant ptr @__tracepoint_kyber_latency, section "__tracepoints_ptrs", align 4
@__tpstrtab_kyber_adjust = internal constant [13 x i8] c"kyber_adjust\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kyber_adjust = dso_local global %struct.static_call_key { ptr @__traceiter_kyber_adjust }, align 4
@__tracepoint_kyber_adjust = dso_local global %struct.tracepoint { ptr @__tpstrtab_kyber_adjust, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_kyber_adjust, ptr null, ptr @__traceiter_kyber_adjust, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kyber_adjust = internal constant ptr @__tracepoint_kyber_adjust, section "__tracepoints_ptrs", align 4
@__tpstrtab_kyber_throttled = internal constant [16 x i8] c"kyber_throttled\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kyber_throttled = dso_local global %struct.static_call_key { ptr @__traceiter_kyber_throttled }, align 4
@__tracepoint_kyber_throttled = dso_local global %struct.tracepoint { ptr @__tpstrtab_kyber_throttled, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_kyber_throttled, ptr null, ptr @__traceiter_kyber_throttled, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kyber_throttled = internal constant ptr @__tracepoint_kyber_throttled, section "__tracepoints_ptrs", align 4
@trace_event_fields_kyber_latency = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon { %struct.anon { ptr @.str.5, i32 8, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon { %struct.anon { ptr @.str.7, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon { %struct.anon { ptr @.str.8, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon { %struct.anon { ptr @.str.9, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_kyber_latency = internal global %struct.trace_event_class { ptr @.str.16, ptr @trace_event_raw_event_kyber_latency, ptr @perf_trace_kyber_latency, ptr @trace_event_reg, ptr @trace_event_fields_kyber_latency, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_kyber_latency, i64 24), ptr getelementptr (i8, ptr @event_class_kyber_latency, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_kyber_latency = internal global %struct.trace_event_functions { ptr @trace_raw_output_kyber_latency, ptr null, ptr null, ptr null }, align 4
@print_fmt_kyber_latency = internal global [211 x i8] c"\22%d,%d %s %s p%u %u/%u samples=%u\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->domain, REC->type, REC->percentile, REC->numerator, REC->denominator, REC->samples\00", align 1
@event_kyber_latency = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kyber_latency, %union.anon.0 { ptr @__tracepoint_kyber_latency }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kyber_latency }, ptr @print_fmt_kyber_latency, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_kyber_latency = internal global ptr @event_kyber_latency, section "_ftrace_events", align 4
@trace_event_fields_kyber_adjust = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon { %struct.anon { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_kyber_adjust = internal global %struct.trace_event_class { ptr @.str.16, ptr @trace_event_raw_event_kyber_adjust, ptr @perf_trace_kyber_adjust, ptr @trace_event_reg, ptr @trace_event_fields_kyber_adjust, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_kyber_adjust, i64 24), ptr getelementptr (i8, ptr @event_class_kyber_adjust, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_kyber_adjust = internal global %struct.trace_event_functions { ptr @trace_raw_output_kyber_adjust, ptr null, ptr null, ptr null }, align 4
@print_fmt_kyber_adjust = internal global [126 x i8] c"\22%d,%d %s %u\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->domain, REC->depth\00", align 1
@event_kyber_adjust = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kyber_adjust, %union.anon.0 { ptr @__tracepoint_kyber_adjust }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kyber_adjust }, ptr @print_fmt_kyber_adjust, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_kyber_adjust = internal global ptr @event_kyber_adjust, section "_ftrace_events", align 4
@trace_event_fields_kyber_throttled = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_kyber_throttled = internal global %struct.trace_event_class { ptr @.str.16, ptr @trace_event_raw_event_kyber_throttled, ptr @perf_trace_kyber_throttled, ptr @trace_event_reg, ptr @trace_event_fields_kyber_throttled, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_kyber_throttled, i64 24), ptr getelementptr (i8, ptr @event_class_kyber_throttled, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_kyber_throttled = internal global %struct.trace_event_functions { ptr @trace_raw_output_kyber_throttled, ptr null, ptr null, ptr null }, align 4
@print_fmt_kyber_throttled = internal global [111 x i8] c"\22%d,%d %s\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->domain\00", align 1
@event_kyber_throttled = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kyber_throttled, %union.anon.0 { ptr @__tracepoint_kyber_throttled }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kyber_throttled }, ptr @print_fmt_kyber_throttled, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_kyber_throttled = internal global ptr @event_kyber_throttled, section "_ftrace_events", align 4
@kyber_sched = internal global %struct.elevator_type { ptr null, %struct.elevator_mq_ops { ptr @kyber_init_sched, ptr @kyber_exit_sched, ptr @kyber_init_hctx, ptr @kyber_exit_hctx, ptr @kyber_depth_updated, ptr null, ptr @kyber_bio_merge, ptr null, ptr null, ptr null, ptr @kyber_limit_depth, ptr @kyber_prepare_request, ptr @kyber_finish_request, ptr @kyber_insert_requests, ptr @kyber_dispatch_request, ptr @kyber_has_work, ptr @kyber_completed_request, ptr @kyber_finish_request, ptr null, ptr null, ptr null, ptr null }, i32 0, i32 0, ptr @kyber_sched_attrs, ptr @.str.16, ptr null, i32 2, ptr null, ptr @kyber_queue_debugfs_attrs, ptr @kyber_hctx_debugfs_attrs, [22 x i8] zeroinitializer, %struct.list_head zeroinitializer }, align 4
@__initcall__kmod_kyber_iosched__356_1050_kyber_init6 = internal global ptr @kyber_init, section ".initcall6.init", align 4
@__exitcall_kyber_exit = internal global ptr @kyber_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author357 = internal constant [35 x i8] c"kyber_iosched.author=Omar Sandoval\00", section ".modinfo", align 1
@__UNIQUE_ID_file358 = internal constant [39 x i8] c"kyber_iosched.file=block/kyber-iosched\00", section ".modinfo", align 1
@__UNIQUE_ID_license359 = internal constant [26 x i8] c"kyber_iosched.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description360 = internal constant [46 x i8] c"kyber_iosched.description=Kyber I/O scheduler\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [6 x i8] c"dev_t\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"char[16]\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"char[8]\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"percentile\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"numerator\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"denominator\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"samples\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"%d,%d %s %s p%u %u/%u samples=%u\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"%d,%d %s %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"%d,%d %s\0A\00", align 1
@kyber_sched_attrs = internal global [3 x %struct.elv_fs_entry] [%struct.elv_fs_entry { %struct.attribute { ptr @.str.26, i16 420 }, ptr @kyber_read_lat_show, ptr @kyber_read_lat_store }, %struct.elv_fs_entry { %struct.attribute { ptr @.str.27, i16 420 }, ptr @kyber_write_lat_show, ptr @kyber_write_lat_store }, %struct.elv_fs_entry zeroinitializer], align 4
@.str.16 = private constant [6 x i8] c"kyber\00", align 1
@kyber_queue_debugfs_attrs = internal constant [6 x %struct.blk_mq_debugfs_attr] [%struct.blk_mq_debugfs_attr { ptr @.str.29, i16 256, ptr @kyber_read_tokens_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.30, i16 256, ptr @kyber_write_tokens_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.31, i16 256, ptr @kyber_discard_tokens_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.32, i16 256, ptr @kyber_other_tokens_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.33, i16 256, ptr @kyber_async_depth_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr zeroinitializer], align 4
@kyber_hctx_debugfs_attrs = internal constant [11 x %struct.blk_mq_debugfs_attr] [%struct.blk_mq_debugfs_attr { ptr @.str.35, i16 256, ptr null, ptr null, ptr @kyber_read_rqs_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.36, i16 256, ptr @kyber_read_waiting_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.37, i16 256, ptr null, ptr null, ptr @kyber_write_rqs_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.38, i16 256, ptr @kyber_write_waiting_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.39, i16 256, ptr null, ptr null, ptr @kyber_discard_rqs_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.40, i16 256, ptr @kyber_discard_waiting_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.41, i16 256, ptr null, ptr null, ptr @kyber_other_rqs_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.42, i16 256, ptr @kyber_other_waiting_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.43, i16 256, ptr @kyber_cur_domain_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.44, i16 256, ptr @kyber_batching_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr zeroinitializer], align 4
@kyber_depth = internal unnamed_addr constant [4 x i32] [i32 256, i32 128, i32 64, i32 16], align 4
@kyber_batch_size = internal unnamed_addr constant [4 x i32] [i32 16, i32 8, i32 1, i32 1], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@kyber_domain_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], align 4
@kyber_latency_type_names = internal unnamed_addr constant [2 x ptr] [ptr @.str.23, ptr @.str.24], align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"DISCARD\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"OTHER\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"I/O\00", align 1
@__tracepoint_block_rq_insert = external dso_local global %struct.tracepoint, align 4
@.str.26 = private unnamed_addr constant [14 x i8] c"read_lat_nsec\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"write_lat_nsec\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"read_tokens\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"write_tokens\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"discard_tokens\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"other_tokens\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"async_depth\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"read_rqs\00", align 1
@kyber_read_rqs_seq_ops = internal constant %struct.seq_operations { ptr @kyber_read_rqs_start, ptr @kyber_read_rqs_stop, ptr @kyber_read_rqs_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.36 = private unnamed_addr constant [13 x i8] c"read_waiting\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"write_rqs\00", align 1
@kyber_write_rqs_seq_ops = internal constant %struct.seq_operations { ptr @kyber_write_rqs_start, ptr @kyber_write_rqs_stop, ptr @kyber_write_rqs_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.38 = private unnamed_addr constant [14 x i8] c"write_waiting\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"discard_rqs\00", align 1
@kyber_discard_rqs_seq_ops = internal constant %struct.seq_operations { ptr @kyber_discard_rqs_start, ptr @kyber_discard_rqs_stop, ptr @kyber_discard_rqs_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.40 = private unnamed_addr constant [16 x i8] c"discard_waiting\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"other_rqs\00", align 1
@kyber_other_rqs_seq_ops = internal constant %struct.seq_operations { ptr @kyber_other_rqs_start, ptr @kyber_other_rqs_stop, ptr @kyber_other_rqs_next, ptr @blk_mq_debugfs_rq_show }, align 4
@.str.42 = private unnamed_addr constant [14 x i8] c"other_waiting\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"cur_domain\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"batching\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_description360, ptr @__UNIQUE_ID_file358, ptr @__UNIQUE_ID_license359, ptr @__event_kyber_adjust, ptr @__event_kyber_latency, ptr @__event_kyber_throttled, ptr @__exitcall_kyber_exit, ptr @__initcall__kmod_kyber_iosched__356_1050_kyber_init6, ptr @__tracepoint_kyber_adjust, ptr @__tracepoint_kyber_latency, ptr @__tracepoint_kyber_throttled, ptr @__tracepoint_ptr_kyber_adjust, ptr @__tracepoint_ptr_kyber_latency, ptr @__tracepoint_ptr_kyber_throttled, ptr @event_class_kyber_adjust, ptr @event_class_kyber_latency, ptr @event_class_kyber_throttled, ptr @event_kyber_adjust, ptr @event_kyber_latency, ptr @event_kyber_throttled, ptr @kyber_exit], section "llvm.metadata"
@switch.table.kyber_insert_requests = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 3, i32 2], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kyber_latency(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kyber_latency, i32 0, i32 7), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %16, %11 ], [ %9, %8 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tracepoint_func, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %13(ptr noundef %15, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #16
  %16 = getelementptr %struct.tracepoint_func, ptr %12, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11

19:                                               ; preds = %11, %8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kyber_adjust(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kyber_adjust, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, ptr noundef %2, i32 noundef %3) #16
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kyber_throttled(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kyber_throttled, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, ptr noundef %2) #16
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_kyber_latency(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 24, i1 false), !annotation !9
  %10 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 704
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14, !prof !10

14:                                               ; preds = %8
  %15 = and i32 %11, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19, !prof !11

17:                                               ; preds = %14
  %18 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %18, label %35, label %19

19:                                               ; preds = %17, %14, %8
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %9, ptr noundef %0, i32 noundef 44) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %35, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %20, i32 0, i32 1
  store i32 %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %20, i32 0, i32 2
  %25 = call i32 @strlcpy(ptr noundef %24, ptr noundef %2, i32 noundef 16) #16
  %26 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %20, i32 0, i32 3
  %27 = call i32 @strlcpy(ptr noundef %26, ptr noundef %3, i32 noundef 8) #16
  %28 = trunc i32 %4 to i8
  %29 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %20, i32 0, i32 4
  store i8 %28, ptr %29, align 4
  %30 = trunc i32 %5 to i8
  %31 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %20, i32 0, i32 5
  store i8 %30, ptr %31, align 1
  %32 = trunc i32 %6 to i8
  %33 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %20, i32 0, i32 6
  store i8 %32, ptr %33, align 2
  %34 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %20, i32 0, i32 7
  store i32 %7, ptr %34, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %9) #16
  br label %35

35:                                               ; preds = %22, %19, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_kyber_latency(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store ptr null, ptr %9, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  store i32 0, ptr %10, align 4, !annotation !9
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #6, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %53, label %25

25:                                               ; preds = %22, %8
  %26 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %53, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %9, align 4
  %30 = call ptr @llvm.returnaddress(i32 0) #16
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %29, i32 0, i32 15
  store i32 %31, ptr %32, align 4
  %33 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %29, i32 0, i32 11
  store i32 %34, ptr %35, align 4
  %36 = call i32 @llvm.read_register.i32(metadata !0) #16
  %37 = getelementptr [18 x i32], ptr %29, i32 0, i32 13
  store i32 %36, ptr %37, align 4
  %38 = getelementptr [18 x i32], ptr %29, i32 0, i32 16
  store i32 19, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %26, i32 0, i32 1
  store i32 %1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %26, i32 0, i32 2
  %41 = call i32 @strlcpy(ptr noundef %40, ptr noundef %2, i32 noundef 16) #16
  %42 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %26, i32 0, i32 3
  %43 = call i32 @strlcpy(ptr noundef %42, ptr noundef %3, i32 noundef 8) #16
  %44 = trunc i32 %4 to i8
  %45 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %26, i32 0, i32 4
  store i8 %44, ptr %45, align 4
  %46 = trunc i32 %5 to i8
  %47 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %26, i32 0, i32 5
  store i8 %46, ptr %47, align 1
  %48 = trunc i32 %6 to i8
  %49 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %26, i32 0, i32 6
  store i8 %48, ptr %49, align 2
  %50 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %26, i32 0, i32 7
  store i32 %7, ptr %50, align 4
  %51 = load i32, ptr %10, align 4
  %52 = load ptr, ptr %9, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %26, i32 noundef 44, i32 noundef %51, ptr noundef %0, i64 noundef 1, ptr noundef %52, ptr noundef %18, ptr noundef null) #16
  br label %53

53:                                               ; preds = %28, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_kyber_adjust(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #16
  br i1 %14, label %23, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 32) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %16, i32 0, i32 2
  %21 = call i32 @strlcpy(ptr noundef %20, ptr noundef %2, i32 noundef 16) #16
  %22 = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %16, i32 0, i32 3
  store i32 %3, ptr %22, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #16
  br label %23

23:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_kyber_adjust(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #6, !srcloc !12
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %5, ptr noundef nonnull %6) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #16
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #16
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %22, i32 0, i32 2
  %37 = call i32 @strlcpy(ptr noundef %36, ptr noundef %2, i32 noundef 16) #16
  %38 = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %22, i32 0, i32 3
  store i32 %3, ptr %38, align 4
  %39 = load i32, ptr %6, align 4
  %40 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 36, i32 noundef %39, ptr noundef %0, i64 noundef 1, ptr noundef %40, ptr noundef %14, ptr noundef null) #16
  br label %41

41:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_kyber_throttled(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
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
  br i1 %13, label %21, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 28) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_kyber_throttled, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_kyber_throttled, ptr %15, i32 0, i32 2
  %20 = call i32 @strlcpy(ptr noundef %19, ptr noundef %2, i32 noundef 16) #16
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #16
  br label %21

21:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_kyber_throttled(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #6, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #16
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_kyber_throttled, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_kyber_throttled, ptr %21, i32 0, i32 2
  %36 = call i32 @strlcpy(ptr noundef %35, ptr noundef %2, i32 noundef 16) #16
  %37 = load i32, ptr %5, align 4
  %38 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 28, i32 noundef %37, ptr noundef %0, i64 noundef 1, ptr noundef %38, ptr noundef %13, ptr noundef null) #16
  br label %39

39:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @kyber_exit() #3 section ".exit.text" {
  tail call void @elv_unregister(ptr noundef nonnull @kyber_sched) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @kyber_init() #3 section ".init.text" {
  %1 = tail call i32 @elv_register(ptr noundef nonnull @kyber_sched) #16
  ret i32 %1
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_kyber_latency(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 20
  %13 = and i32 %11, 1048575
  %14 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %5, i32 0, i32 2
  %15 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %5, i32 0, i32 3
  %16 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %5, i32 0, i32 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %5, i32 0, i32 5
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %5, i32 0, i32 6
  %23 = load i8, ptr %22, align 2
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %5, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %12, i32 noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %18, i32 noundef %21, i32 noundef %24, i32 noundef %26) #16
  %27 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %28

28:                                               ; preds = %8, %3
  %29 = phi i32 [ %27, %8 ], [ %6, %3 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_kyber_adjust(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 20
  %13 = and i32 %11, 1048575
  %14 = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %5, i32 0, i32 2
  %15 = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %5, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %12, i32 noundef %13, ptr noundef %14, i32 noundef %16) #16
  %17 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %18

18:                                               ; preds = %8, %3
  %19 = phi i32 [ %17, %8 ], [ %6, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_kyber_throttled(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #16
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_kyber_throttled, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 20
  %13 = and i32 %11, 1048575
  %14 = getelementptr inbounds %struct.trace_event_raw_kyber_throttled, ptr %5, i32 0, i32 2
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %12, i32 noundef %13, ptr noundef %14) #16
  %15 = tail call i32 @trace_handle_return(ptr noundef %9) #16
  br label %16

16:                                               ; preds = %8, %3
  %17 = phi i32 [ %15, %8 ], [ %6, %3 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_init_sched(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @elevator_alloc(ptr noundef %0, ptr noundef %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %96, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 34
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 456) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %84, label %10

10:                                               ; preds = %5
  store ptr %0, ptr %8, align 8
  %11 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 15
  %12 = load ptr, ptr %11, align 8
  %13 = load i32, ptr %12, align 8
  %14 = shl i32 %13, 20
  %15 = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %14, %16
  %18 = getelementptr inbounds %struct.kyber_queue_data, ptr %8, i32 0, i32 1
  store i32 %17, ptr %18, align 4
  %19 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 192, i32 noundef 4, i32 noundef 3520) #18
  %20 = getelementptr inbounds %struct.kyber_queue_data, ptr %8, i32 0, i32 4
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %82, label %22

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.kyber_queue_data, ptr %8, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %23, ptr noundef nonnull @kyber_timer_fn, i32 noundef 0, ptr noundef null, ptr noundef null) #16
  %24 = getelementptr %struct.kyber_queue_data, ptr %8, i32 0, i32 2, i32 0
  %25 = load i32, ptr %6, align 4
  %26 = tail call i32 @sbitmap_queue_init_node(ptr noundef %24, i32 noundef 256, i32 noundef -1, i1 noundef zeroext false, i32 noundef 3264, i32 noundef %25) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %57, label %79

28:                                               ; preds = %67, %62, %57
  %29 = phi i32 [ 2, %67 ], [ 1, %62 ], [ 0, %57 ]
  %30 = phi i32 [ %70, %67 ], [ %65, %62 ], [ %60, %57 ]
  %31 = getelementptr %struct.kyber_queue_data, ptr %8, i32 0, i32 2, i32 %29
  %32 = getelementptr %struct.kyber_queue_data, ptr %8, i32 0, i32 2, i32 %29, i32 3
  %33 = load ptr, ptr %32, align 4
  tail call void @kfree(ptr noundef %33) #16
  %34 = getelementptr inbounds %struct.sbitmap, ptr %31, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  tail call void @free_percpu(ptr noundef %35) #16
  %36 = getelementptr inbounds %struct.sbitmap, ptr %31, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  tail call void @kfree(ptr noundef %37) #16
  store ptr null, ptr %36, align 4
  br i1 %61, label %38, label %79

38:                                               ; preds = %28
  %39 = add nsw i32 %29, -1
  %40 = getelementptr %struct.kyber_queue_data, ptr %8, i32 0, i32 2, i32 %39
  %41 = getelementptr %struct.kyber_queue_data, ptr %8, i32 0, i32 2, i32 %39, i32 3
  %42 = load ptr, ptr %41, align 4
  tail call void @kfree(ptr noundef %42) #16
  %43 = getelementptr inbounds %struct.sbitmap, ptr %40, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  tail call void @free_percpu(ptr noundef %44) #16
  %45 = getelementptr inbounds %struct.sbitmap, ptr %40, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  tail call void @kfree(ptr noundef %46) #16
  store ptr null, ptr %45, align 4
  %47 = icmp eq i32 %39, 0
  br i1 %47, label %79, label %48

48:                                               ; preds = %38
  %49 = add nsw i32 %29, -2
  %50 = getelementptr %struct.kyber_queue_data, ptr %8, i32 0, i32 2, i32 %49
  %51 = getelementptr %struct.kyber_queue_data, ptr %8, i32 0, i32 2, i32 %49, i32 3
  %52 = load ptr, ptr %51, align 4
  tail call void @kfree(ptr noundef %52) #16
  %53 = getelementptr inbounds %struct.sbitmap, ptr %50, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  tail call void @free_percpu(ptr noundef %54) #16
  %55 = getelementptr inbounds %struct.sbitmap, ptr %50, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  tail call void @kfree(ptr noundef %56) #16
  store ptr null, ptr %55, align 4
  br label %79

57:                                               ; preds = %22
  %58 = getelementptr %struct.kyber_queue_data, ptr %8, i32 0, i32 2, i32 1
  %59 = load i32, ptr %6, align 4
  %60 = tail call i32 @sbitmap_queue_init_node(ptr noundef %58, i32 noundef 128, i32 noundef -1, i1 noundef zeroext false, i32 noundef 3264, i32 noundef %59) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %28

62:                                               ; preds = %57
  %63 = getelementptr %struct.kyber_queue_data, ptr %8, i32 0, i32 2, i32 2
  %64 = load i32, ptr %6, align 4
  %65 = tail call i32 @sbitmap_queue_init_node(ptr noundef %63, i32 noundef 64, i32 noundef -1, i1 noundef zeroext false, i32 noundef 3264, i32 noundef %64) #16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %28

67:                                               ; preds = %62
  %68 = getelementptr %struct.kyber_queue_data, ptr %8, i32 0, i32 2, i32 3
  %69 = load i32, ptr %6, align 4
  %70 = tail call i32 @sbitmap_queue_init_node(ptr noundef %68, i32 noundef 16, i32 noundef -1, i1 noundef zeroext false, i32 noundef 3264, i32 noundef %69) #16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %28

72:                                               ; preds = %67
  %73 = getelementptr %struct.kyber_queue_data, ptr %8, i32 0, i32 8, i32 0
  store i32 -1, ptr %73, align 8
  %74 = getelementptr %struct.kyber_queue_data, ptr %8, i32 0, i32 9, i32 0
  store i64 2000000, ptr %74, align 8
  %75 = getelementptr %struct.kyber_queue_data, ptr %8, i32 0, i32 8, i32 1
  store i32 -1, ptr %75, align 4
  %76 = getelementptr %struct.kyber_queue_data, ptr %8, i32 0, i32 9, i32 1
  store i64 10000000, ptr %76, align 8
  %77 = getelementptr %struct.kyber_queue_data, ptr %8, i32 0, i32 8, i32 2
  store i32 -1, ptr %77, align 8
  %78 = getelementptr %struct.kyber_queue_data, ptr %8, i32 0, i32 9, i32 2
  store i64 5000000000, ptr %78, align 8
  br label %87

79:                                               ; preds = %48, %38, %28, %22
  %80 = phi i32 [ %26, %22 ], [ %30, %48 ], [ %30, %38 ], [ %30, %28 ]
  %81 = load ptr, ptr %20, align 4
  tail call void @free_percpu(ptr noundef %81) #16
  br label %82

82:                                               ; preds = %79, %10
  %83 = phi i32 [ %80, %79 ], [ -12, %10 ]
  tail call void @kfree(ptr noundef nonnull %8) #16
  br label %84

84:                                               ; preds = %82, %5
  %85 = phi i32 [ %83, %82 ], [ -12, %5 ]
  %86 = inttoptr i32 %85 to ptr
  br label %87

87:                                               ; preds = %84, %72
  %88 = phi ptr [ %86, %84 ], [ %8, %72 ]
  %89 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %91) #16
  %92 = ptrtoint ptr %88 to i32
  br label %96

93:                                               ; preds = %87
  tail call void @blk_stat_enable_accounting(ptr noundef %0) #16
  %94 = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  store ptr %88, ptr %94, align 4
  %95 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  store ptr %3, ptr %95, align 4
  br label %96

96:                                               ; preds = %93, %90, %2
  %97 = phi i32 [ %92, %90 ], [ 0, %93 ], [ -12, %2 ]
  ret i32 %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kyber_exit_sched(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.kyber_queue_data, ptr %3, i32 0, i32 5
  %5 = tail call i32 @del_timer_sync(ptr noundef %4) #16
  %6 = load ptr, ptr %3, align 8
  tail call void @blk_stat_disable_accounting(ptr noundef %6) #16
  %7 = getelementptr %struct.kyber_queue_data, ptr %3, i32 0, i32 2, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #16
  %9 = getelementptr %struct.kyber_queue_data, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void @free_percpu(ptr noundef %10) #16
  %11 = getelementptr %struct.kyber_queue_data, ptr %3, i32 0, i32 2, i32 0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #16
  store ptr null, ptr %11, align 4
  %13 = getelementptr %struct.kyber_queue_data, ptr %3, i32 0, i32 2, i32 1, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %14) #16
  %15 = getelementptr %struct.kyber_queue_data, ptr %3, i32 0, i32 2, i32 1, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  tail call void @free_percpu(ptr noundef %16) #16
  %17 = getelementptr %struct.kyber_queue_data, ptr %3, i32 0, i32 2, i32 1, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  tail call void @kfree(ptr noundef %18) #16
  store ptr null, ptr %17, align 4
  %19 = getelementptr %struct.kyber_queue_data, ptr %3, i32 0, i32 2, i32 2, i32 3
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #16
  %21 = getelementptr %struct.kyber_queue_data, ptr %3, i32 0, i32 2, i32 2, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  tail call void @free_percpu(ptr noundef %22) #16
  %23 = getelementptr %struct.kyber_queue_data, ptr %3, i32 0, i32 2, i32 2, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #16
  store ptr null, ptr %23, align 4
  %25 = getelementptr %struct.kyber_queue_data, ptr %3, i32 0, i32 2, i32 3, i32 3
  %26 = load ptr, ptr %25, align 4
  tail call void @kfree(ptr noundef %26) #16
  %27 = getelementptr %struct.kyber_queue_data, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  tail call void @free_percpu(ptr noundef %28) #16
  %29 = getelementptr %struct.kyber_queue_data, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  tail call void @kfree(ptr noundef %30) #16
  store ptr null, ptr %29, align 4
  %31 = getelementptr inbounds %struct.kyber_queue_data, ptr %3, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  tail call void @free_percpu(ptr noundef %32) #16
  tail call void @kfree(ptr noundef %3) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_init_hctx(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 23
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 272) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %141, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 14
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = shl nuw nsw i32 %10, 6
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #18
  %13 = getelementptr inbounds %struct.kyber_hctx_data, ptr %5, i32 0, i32 4
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %140, label %15

15:                                               ; preds = %7
  %16 = load i16, ptr %8, align 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %20, label %26

18:                                               ; preds = %26
  %19 = zext i16 %39 to i32
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %19, %18 ], [ 0, %15 ]
  %22 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 5, i32 0
  %23 = load i32, ptr %3, align 32
  %24 = tail call i32 @sbitmap_init_node(ptr noundef %22, i32 noundef %21, i32 noundef 3, i32 noundef 3264, i32 noundef %23, i1 noundef zeroext false, i1 noundef zeroext false) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %57, label %138

26:                                               ; preds = %42, %15
  %27 = phi ptr [ %43, %42 ], [ %12, %15 ]
  %28 = phi i32 [ %38, %42 ], [ 0, %15 ]
  %29 = getelementptr %struct.kyber_ctx_queue, ptr %27, i32 %28
  store i32 0, ptr %29, align 64
  %30 = getelementptr %struct.kyber_ctx_queue, ptr %27, i32 %28, i32 1, i32 0
  store volatile ptr %30, ptr %30, align 4
  %31 = getelementptr %struct.kyber_ctx_queue, ptr %27, i32 %28, i32 1, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr %struct.kyber_ctx_queue, ptr %27, i32 %28, i32 1, i32 1
  store volatile ptr %32, ptr %32, align 4
  %33 = getelementptr %struct.kyber_ctx_queue, ptr %27, i32 %28, i32 1, i32 1, i32 1
  store ptr %32, ptr %33, align 4
  %34 = getelementptr %struct.kyber_ctx_queue, ptr %27, i32 %28, i32 1, i32 2
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr %struct.kyber_ctx_queue, ptr %27, i32 %28, i32 1, i32 2, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr %struct.kyber_ctx_queue, ptr %27, i32 %28, i32 1, i32 3
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr %struct.kyber_ctx_queue, ptr %27, i32 %28, i32 1, i32 3, i32 1
  store ptr %36, ptr %37, align 4
  %38 = add nuw nsw i32 %28, 1
  %39 = load i16, ptr %8, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %42, label %18

42:                                               ; preds = %26
  %43 = load ptr, ptr %13, align 4
  br label %26

44:                                               ; preds = %64
  %45 = add nsw i32 %65, -1
  %46 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 5, i32 %45, i32 5
  %47 = load ptr, ptr %46, align 4
  tail call void @free_percpu(ptr noundef %47) #16
  %48 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 5, i32 %45, i32 4
  %49 = load ptr, ptr %48, align 8
  tail call void @kfree(ptr noundef %49) #16
  store ptr null, ptr %48, align 8
  %50 = icmp eq i32 %45, 0
  br i1 %50, label %138, label %51

51:                                               ; preds = %44
  %52 = add nsw i32 %65, -2
  %53 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 5, i32 %52, i32 5
  %54 = load ptr, ptr %53, align 4
  tail call void @free_percpu(ptr noundef %54) #16
  %55 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 5, i32 %52, i32 4
  %56 = load ptr, ptr %55, align 8
  tail call void @kfree(ptr noundef %56) #16
  store ptr null, ptr %55, align 8
  br label %138

57:                                               ; preds = %20
  %58 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 5, i32 1
  %59 = load i16, ptr %8, align 2
  %60 = zext i16 %59 to i32
  %61 = load i32, ptr %3, align 32
  %62 = tail call i32 @sbitmap_init_node(ptr noundef %58, i32 noundef %60, i32 noundef 3, i32 noundef 3264, i32 noundef %61, i1 noundef zeroext false, i1 noundef zeroext false) #16
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %77, %70, %57
  %65 = phi i32 [ 0, %57 ], [ 1, %70 ], [ 2, %77 ]
  %66 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 5, i32 %65, i32 5
  %67 = load ptr, ptr %66, align 4
  tail call void @free_percpu(ptr noundef %67) #16
  %68 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 5, i32 %65, i32 4
  %69 = load ptr, ptr %68, align 8
  tail call void @kfree(ptr noundef %69) #16
  store ptr null, ptr %68, align 8
  br i1 %63, label %44, label %138

70:                                               ; preds = %57
  %71 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 5, i32 2
  %72 = load i16, ptr %8, align 2
  %73 = zext i16 %72 to i32
  %74 = load i32, ptr %3, align 32
  %75 = tail call i32 @sbitmap_init_node(ptr noundef %71, i32 noundef %73, i32 noundef 3, i32 noundef 3264, i32 noundef %74, i1 noundef zeroext false, i1 noundef zeroext false) #16
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %64

77:                                               ; preds = %70
  %78 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 5, i32 3
  %79 = load i16, ptr %8, align 2
  %80 = zext i16 %79 to i32
  %81 = load i32, ptr %3, align 32
  %82 = tail call i32 @sbitmap_init_node(ptr noundef %78, i32 noundef %80, i32 noundef 3, i32 noundef 3264, i32 noundef %81, i1 noundef zeroext false, i1 noundef zeroext false) #16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %64

84:                                               ; preds = %77
  store i32 0, ptr %5, align 8
  %85 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 1, i32 0
  store volatile ptr %85, ptr %85, align 4
  %86 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 1, i32 0, i32 1
  store ptr %85, ptr %86, align 8
  %87 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 0
  store ptr null, ptr %87, align 8
  %88 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 0, i32 1
  store i32 0, ptr %88, align 4
  %89 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 0, i32 1, i32 1
  %90 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 0, i32 1, i32 2
  store ptr @kyber_domain_wake, ptr %90, align 4
  store ptr %0, ptr %89, align 8
  %91 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 0, i32 1, i32 3
  store volatile ptr %91, ptr %91, align 8
  %92 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 0, i32 1, i32 3, i32 1
  store ptr %91, ptr %92, align 4
  %93 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 8, i32 0
  store volatile i32 0, ptr %93, align 8
  %94 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 1, i32 1
  store volatile ptr %94, ptr %94, align 4
  %95 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 1, i32 1, i32 1
  store ptr %94, ptr %95, align 8
  %96 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 1
  store ptr null, ptr %96, align 8
  %97 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 1, i32 1
  store i32 0, ptr %97, align 4
  %98 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 1, i32 1, i32 1
  %99 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 1, i32 1, i32 2
  store ptr @kyber_domain_wake, ptr %99, align 4
  store ptr %0, ptr %98, align 8
  %100 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 1, i32 1, i32 3
  store volatile ptr %100, ptr %100, align 8
  %101 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 1, i32 1, i32 3, i32 1
  store ptr %100, ptr %101, align 4
  %102 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 8, i32 1
  store volatile i32 0, ptr %102, align 4
  %103 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 1, i32 2
  store volatile ptr %103, ptr %103, align 4
  %104 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 1, i32 2, i32 1
  store ptr %103, ptr %104, align 8
  %105 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 2
  store ptr null, ptr %105, align 8
  %106 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 2, i32 1
  store i32 0, ptr %106, align 4
  %107 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 2, i32 1, i32 1
  %108 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 2, i32 1, i32 2
  store ptr @kyber_domain_wake, ptr %108, align 4
  store ptr %0, ptr %107, align 8
  %109 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 2, i32 1, i32 3
  store volatile ptr %109, ptr %109, align 8
  %110 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 2, i32 1, i32 3, i32 1
  store ptr %109, ptr %110, align 4
  %111 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 8, i32 2
  store volatile i32 0, ptr %111, align 8
  %112 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 1, i32 3
  store volatile ptr %112, ptr %112, align 4
  %113 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 1, i32 3, i32 1
  store ptr %112, ptr %113, align 8
  %114 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 3
  store ptr null, ptr %114, align 8
  %115 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 3, i32 1
  store i32 0, ptr %115, align 4
  %116 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 3, i32 1, i32 1
  %117 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 3, i32 1, i32 2
  store ptr @kyber_domain_wake, ptr %117, align 4
  store ptr %0, ptr %116, align 8
  %118 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 3, i32 1, i32 3
  store volatile ptr %118, ptr %118, align 8
  %119 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 6, i32 3, i32 1, i32 3, i32 1
  store ptr %118, ptr %119, align 4
  %120 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 8, i32 3
  store volatile i32 0, ptr %120, align 4
  %121 = getelementptr inbounds %struct.kyber_hctx_data, ptr %5, i32 0, i32 2
  store i32 0, ptr %121, align 4
  %122 = getelementptr inbounds %struct.kyber_hctx_data, ptr %5, i32 0, i32 3
  store i32 0, ptr %122, align 8
  %123 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 6
  store ptr %5, ptr %123, align 4
  %124 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %125 = load ptr, ptr %124, align 64
  %126 = getelementptr inbounds %struct.request_queue, ptr %125, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.elevator_queue, ptr %127, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 20
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.blk_mq_tags, ptr %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.blk_mq_tags, ptr %131, i32 0, i32 3, i32 0, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = shl i32 75, %134
  %136 = udiv i32 %135, 100
  %137 = getelementptr inbounds %struct.kyber_queue_data, ptr %129, i32 0, i32 3
  store i32 %136, ptr %137, align 8
  tail call void @sbitmap_queue_min_shallow_depth(ptr noundef %132, i32 noundef %136) #16
  br label %141

138:                                              ; preds = %64, %51, %44, %20
  %139 = load ptr, ptr %13, align 4
  tail call void @kfree(ptr noundef %139) #16
  br label %140

140:                                              ; preds = %138, %7
  tail call void @kfree(ptr noundef nonnull %5) #16
  br label %141

141:                                              ; preds = %140, %84, %2
  %142 = phi i32 [ -12, %140 ], [ 0, %84 ], [ -12, %2 ]
  ret i32 %142
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kyber_exit_hctx(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.kyber_hctx_data, ptr %4, i32 0, i32 5, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  tail call void @free_percpu(ptr noundef %6) #16
  %7 = getelementptr %struct.kyber_hctx_data, ptr %4, i32 0, i32 5, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  tail call void @kfree(ptr noundef %8) #16
  store ptr null, ptr %7, align 4
  %9 = getelementptr %struct.kyber_hctx_data, ptr %4, i32 0, i32 5, i32 1, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void @free_percpu(ptr noundef %10) #16
  %11 = getelementptr %struct.kyber_hctx_data, ptr %4, i32 0, i32 5, i32 1, i32 4
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #16
  store ptr null, ptr %11, align 4
  %13 = getelementptr %struct.kyber_hctx_data, ptr %4, i32 0, i32 5, i32 2, i32 5
  %14 = load ptr, ptr %13, align 4
  tail call void @free_percpu(ptr noundef %14) #16
  %15 = getelementptr %struct.kyber_hctx_data, ptr %4, i32 0, i32 5, i32 2, i32 4
  %16 = load ptr, ptr %15, align 4
  tail call void @kfree(ptr noundef %16) #16
  store ptr null, ptr %15, align 4
  %17 = getelementptr %struct.kyber_hctx_data, ptr %4, i32 0, i32 5, i32 3, i32 5
  %18 = load ptr, ptr %17, align 4
  tail call void @free_percpu(ptr noundef %18) #16
  %19 = getelementptr %struct.kyber_hctx_data, ptr %4, i32 0, i32 5, i32 3, i32 4
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #16
  store ptr null, ptr %19, align 4
  %21 = getelementptr inbounds %struct.kyber_hctx_data, ptr %4, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #16
  %23 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %23) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kyber_depth_updated(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.elevator_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 20
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.blk_mq_tags, ptr %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.blk_mq_tags, ptr %9, i32 0, i32 3, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = shl i32 75, %12
  %14 = udiv i32 %13, 100
  %15 = getelementptr inbounds %struct.kyber_queue_data, ptr %7, i32 0, i32 3
  store i32 %14, ptr %15, align 8
  tail call void @sbitmap_queue_min_shallow_depth(ptr noundef %10, i32 noundef %14) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @kyber_bio_merge(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @llvm.thread.pointer() #16
  %5 = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %9
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 16777216
  %17 = icmp eq i32 %16, 0
  %18 = and i32 %15, 255
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = select i1 %17, i32 %20, i32 2
  %22 = getelementptr %struct.blk_mq_ctx, ptr %13, i32 0, i32 3, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %23, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.kyber_hctx_data, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %23, i32 0, i32 13
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = getelementptr %struct.blk_mq_ctx, ptr %13, i32 0, i32 2, i32 %30
  %32 = load i16, ptr %31, align 2
  %33 = and i32 %15, 252
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = shl i32 %15, 24
  %37 = ashr exact i32 %36, 24
  %38 = getelementptr inbounds [4 x i32], ptr @switch.table.kyber_insert_requests, i32 0, i32 %37
  %39 = load i32, ptr %38, align 4
  br label %40

40:                                               ; preds = %35, %3
  %41 = phi i32 [ %39, %35 ], [ 3, %3 ]
  %42 = zext i16 %32 to i32
  %43 = getelementptr %struct.kyber_ctx_queue, ptr %27, i32 %42
  %44 = getelementptr %struct.kyber_ctx_queue, ptr %27, i32 %42, i32 1, i32 %41
  tail call void @_raw_spin_lock(ptr noundef %43) #16
  %45 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %23, i32 0, i32 7
  %46 = load ptr, ptr %45, align 64
  %47 = tail call zeroext i1 @blk_bio_list_merge(ptr noundef %46, ptr noundef %44, ptr noundef %1, i32 noundef %2) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %48 = load i16, ptr %43, align 4
  %49 = add i16 %48, 1
  store i16 %49, ptr %43, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  ret i1 %47
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @kyber_limit_depth(i32 noundef %0, ptr nocapture noundef %1) #8 {
  %3 = and i32 %0, 255
  %4 = icmp eq i32 %3, 0
  %5 = and i32 %0, 395264
  %6 = icmp ne i32 %5, 0
  %7 = or i1 %4, %6
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr inbounds %struct.request_queue, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.elevator_queue, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.kyber_queue_data, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %1, i32 0, i32 2
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal void @kyber_prepare_request(ptr nocapture noundef writeonly %0) #9 {
  %2 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 25, i32 0, i32 1
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kyber_finish_request(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.request_queue, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 25, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = icmp eq ptr %8, inttoptr (i32 -1 to ptr)
  br i1 %10, label %28, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 252
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = shl i32 %13, 24
  %18 = ashr exact i32 %17, 24
  %19 = getelementptr inbounds [4 x i32], ptr @switch.table.kyber_insert_requests, i32 0, i32 %18
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i32 [ %20, %16 ], [ 3, %11 ]
  %23 = getelementptr %struct.kyber_queue_data, ptr %6, i32 0, i32 2, i32 %22
  %24 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.blk_mq_ctx, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 64
  tail call void @sbitmap_queue_clear(ptr noundef %23, i32 noundef %9, i32 noundef %27) #16
  br label %28

28:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kyber_insert_requests(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %84, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.kyber_hctx_data, ptr %5, i32 0, i32 4
  %10 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 13
  br label %11

11:                                               ; preds = %62, %8
  %12 = phi ptr [ %6, %8 ], [ %13, %62 ]
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr i8, ptr %12, i32 -56
  %15 = getelementptr i8, ptr %12, i32 -44
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 252
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = shl i32 %16, 24
  %21 = ashr exact i32 %20, 24
  %22 = getelementptr inbounds [4 x i32], ptr @switch.table.kyber_insert_requests, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %19, %11
  %25 = phi i32 [ %23, %19 ], [ 3, %11 ]
  %26 = load ptr, ptr %9, align 4
  %27 = getelementptr i8, ptr %12, i32 -52
  %28 = load ptr, ptr %27, align 4
  %29 = load i16, ptr %10, align 4
  %30 = zext i16 %29 to i32
  %31 = getelementptr %struct.blk_mq_ctx, ptr %28, i32 0, i32 2, i32 %30
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr %struct.kyber_ctx_queue, ptr %26, i32 %33
  %35 = getelementptr %struct.kyber_ctx_queue, ptr %26, i32 %33, i32 1, i32 %25
  tail call void @_raw_spin_lock(ptr noundef %34) #16
  %36 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_insert, i32 0, i32 1), align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %24
  %39 = tail call ptr @llvm.thread.pointer() #16
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = lshr i32 %41, 5
  %43 = getelementptr i32, ptr @__cpu_online_mask, i32 %42
  %44 = load volatile i32, ptr %43, align 4
  %45 = and i32 %41, 31
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !17
  %50 = tail call i32 @__traceiter_block_rq_insert(ptr noundef null, ptr noundef %14) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !18
  br label %51

51:                                               ; preds = %49, %38, %24
  %52 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %12, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 4
  store volatile ptr %54, ptr %53, align 4
  br i1 %2, label %56, label %59

56:                                               ; preds = %51
  %57 = load ptr, ptr %35, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  br label %62

59:                                               ; preds = %51
  %60 = getelementptr %struct.kyber_ctx_queue, ptr %26, i32 %33, i32 1, i32 %25, i32 1
  %61 = load ptr, ptr %60, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = phi ptr [ %60, %59 ], [ %58, %56 ]
  %64 = phi ptr [ %35, %59 ], [ %57, %56 ]
  %65 = phi ptr [ %61, %59 ], [ %35, %56 ]
  store ptr %12, ptr %63, align 4
  store ptr %64, ptr %12, align 4
  store ptr %65, ptr %52, align 4
  store volatile ptr %12, ptr %65, align 4
  %66 = load ptr, ptr %27, align 4
  %67 = load i16, ptr %10, align 4
  %68 = zext i16 %67 to i32
  %69 = getelementptr %struct.blk_mq_ctx, ptr %66, i32 0, i32 2, i32 %68
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  %72 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 5, i32 %25, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = shl nsw i32 -1, %73
  %75 = xor i32 %74, -1
  %76 = and i32 %75, %71
  %77 = getelementptr %struct.kyber_hctx_data, ptr %5, i32 0, i32 5, i32 %25, i32 4
  %78 = load ptr, ptr %77, align 4
  %79 = lshr i32 %71, %73
  %80 = getelementptr %struct.sbitmap_word, ptr %78, i32 %79, i32 2
  tail call void @_set_bit(i32 noundef %76, ptr noundef %80) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %81 = load i16, ptr %34, align 4
  %82 = add i16 %81, 1
  store i16 %82, ptr %34, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %83 = icmp eq ptr %13, %1
  br i1 %83, label %84, label %11

84:                                               ; preds = %62, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @kyber_dispatch_request(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 64
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.elevator_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  tail call void @_raw_spin_lock(ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.kyber_hctx_data, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.kyber_hctx_data, ptr %9, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr [4 x i32], ptr @kyber_batch_size, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %11, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = tail call fastcc ptr @kyber_dispatch_cur_domain(ptr noundef %7, ptr noundef %9)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %49

20:                                               ; preds = %17
  %21 = load i32, ptr %12, align 4
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi i32 [ %21, %20 ], [ %13, %1 ]
  store i32 0, ptr %10, align 4
  %24 = icmp eq i32 %23, 3
  %25 = add i32 %23, 1
  %26 = select i1 %24, i32 0, i32 %25
  store i32 %26, ptr %12, align 4
  %27 = tail call fastcc ptr @kyber_dispatch_cur_domain(ptr noundef %7, ptr noundef %9)
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %22
  %30 = load i32, ptr %12, align 4
  %31 = icmp eq i32 %30, 3
  %32 = add i32 %30, 1
  %33 = select i1 %31, i32 0, i32 %32
  store i32 %33, ptr %12, align 4
  %34 = tail call fastcc ptr @kyber_dispatch_cur_domain(ptr noundef %7, ptr noundef %9)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load i32, ptr %12, align 4
  %38 = icmp eq i32 %37, 3
  %39 = add i32 %37, 1
  %40 = select i1 %38, i32 0, i32 %39
  store i32 %40, ptr %12, align 4
  %41 = tail call fastcc ptr @kyber_dispatch_cur_domain(ptr noundef %7, ptr noundef %9)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, ptr %12, align 4
  %45 = icmp eq i32 %44, 3
  %46 = add i32 %44, 1
  %47 = select i1 %45, i32 0, i32 %46
  store i32 %47, ptr %12, align 4
  %48 = tail call fastcc ptr @kyber_dispatch_cur_domain(ptr noundef %7, ptr noundef %9)
  br label %49

49:                                               ; preds = %43, %36, %29, %22, %17
  %50 = phi ptr [ %18, %17 ], [ %27, %22 ], [ %34, %29 ], [ %41, %36 ], [ %48, %43 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %51 = load i16, ptr %9, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  ret ptr %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @kyber_has_work(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 1, i32 0
  %5 = load volatile ptr, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %40, label %47

7:                                                ; preds = %44
  %8 = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 1, i32 1
  %9 = load volatile ptr, ptr %8, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %11, label %47

11:                                               ; preds = %7
  %12 = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 1, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %8
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 5, i32 1
  %17 = tail call zeroext i1 @sbitmap_any_bit_set(ptr noundef %16) #16
  br i1 %17, label %47, label %18

18:                                               ; preds = %15
  %19 = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 1, i32 2
  %20 = load volatile ptr, ptr %19, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 1, i32 2, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %19
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 5, i32 2
  %28 = tail call zeroext i1 @sbitmap_any_bit_set(ptr noundef %27) #16
  br i1 %28, label %47, label %29

29:                                               ; preds = %26
  %30 = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 1, i32 3
  %31 = load volatile ptr, ptr %30, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 1, i32 3, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %30
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 5, i32 3
  %39 = tail call zeroext i1 @sbitmap_any_bit_set(ptr noundef %38) #16
  br label %47

40:                                               ; preds = %1
  %41 = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %4
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 5, i32 0
  %46 = tail call zeroext i1 @sbitmap_any_bit_set(ptr noundef %45) #16
  br i1 %46, label %47, label %7

47:                                               ; preds = %44, %40, %37, %33, %29, %26, %22, %18, %15, %11, %7, %1
  %48 = phi i1 [ true, %1 ], [ true, %40 ], [ true, %44 ], [ true, %7 ], [ true, %11 ], [ true, %15 ], [ true, %18 ], [ true, %22 ], [ true, %26 ], [ true, %29 ], [ true, %33 ], [ %39, %37 ]
  ret i1 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kyber_completed_request(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.elevator_queue, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %59 [
    i8 0, label %13
    i8 1, label %11
    i8 3, label %12
  ]

11:                                               ; preds = %2
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %11, %2
  %14 = phi i32 [ 0, %2 ], [ 1, %11 ], [ 2, %12 ]
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !20
  %15 = getelementptr inbounds %struct.kyber_queue_data, ptr %7, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !0) #16
  %19 = inttoptr i32 %18 to ptr
  %20 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %19) #6, !srcloc !12
  %21 = add i32 %20, %17
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr %struct.kyber_queue_data, ptr %7, i32 0, i32 9, i32 %14
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 14
  %26 = load i64, ptr %25, align 8
  %27 = icmp eq i64 %26, %1
  br i1 %27, label %36, label %28

28:                                               ; preds = %13
  %29 = lshr i64 %24, 2
  %30 = tail call i64 @llvm.umax.i64(i64 %29, i64 1) #16
  %31 = xor i64 %26, -1
  %32 = add i64 %31, %1
  %33 = tail call i64 @div64_u64(i64 noundef %32, i64 noundef %30) #16
  %34 = trunc i64 %33 to i32
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 7) #16
  br label %36

36:                                               ; preds = %28, %13
  %37 = phi i32 [ %35, %28 ], [ 0, %13 ]
  %38 = getelementptr [3 x [2 x [8 x %struct.atomic_t]]], ptr %22, i32 0, i32 %14, i32 0, i32 %37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #16, !srcloc !21
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #16, !srcloc !22
  %40 = getelementptr inbounds %struct.request, ptr %0, i32 0, i32 15
  %41 = load i64, ptr %40, align 8
  %42 = icmp eq i64 %41, %1
  br i1 %42, label %51, label %43

43:                                               ; preds = %36
  %44 = lshr i64 %24, 2
  %45 = tail call i64 @llvm.umax.i64(i64 %44, i64 1) #16
  %46 = xor i64 %41, -1
  %47 = add i64 %46, %1
  %48 = tail call i64 @div64_u64(i64 noundef %47, i64 noundef %45) #16
  %49 = trunc i64 %48 to i32
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 7) #16
  br label %51

51:                                               ; preds = %43, %36
  %52 = phi i32 [ %50, %43 ], [ 0, %36 ]
  %53 = getelementptr [3 x [2 x [8 x %struct.atomic_t]]], ptr %22, i32 0, i32 %14, i32 1, i32 %52
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %53) #16, !srcloc !21
  %54 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %53, ptr %53, i32 1, ptr elementtype(i32) %53) #16, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  %55 = getelementptr inbounds %struct.kyber_queue_data, ptr %7, i32 0, i32 5
  %56 = load volatile i32, ptr @jiffies, align 64
  %57 = add i32 %56, 10
  %58 = tail call i32 @timer_reduce(ptr noundef %55, i32 noundef %57) #16
  br label %59

59:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @elevator_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_enable_accounting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kyber_timer_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -192
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #19
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %0, i32 -4
  br label %20

8:                                                ; preds = %20, %1
  %9 = tail call fastcc i32 @calculate_percentile(ptr noundef %2, i32 noundef 0, i32 noundef 1, i32 noundef 90)
  %10 = icmp sgt i32 %9, 3
  %11 = tail call fastcc i32 @calculate_percentile(ptr noundef %2, i32 noundef 1, i32 noundef 1, i32 noundef 90)
  %12 = icmp sgt i32 %11, 3
  %13 = tail call fastcc i32 @calculate_percentile(ptr noundef %2, i32 noundef 2, i32 noundef 1, i32 noundef 90)
  %14 = icmp sgt i32 %13, 3
  %15 = select i1 %14, i1 true, i1 %12
  %16 = select i1 %15, i1 true, i1 %10
  %17 = getelementptr i8, ptr %0, i32 224
  %18 = getelementptr i8, ptr %0, i32 -184
  %19 = getelementptr i8, ptr %0, i32 -188
  br label %31

20:                                               ; preds = %20, %6
  %21 = phi i32 [ %3, %6 ], [ %28, %20 ]
  %22 = load ptr, ptr %7, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %23
  %27 = inttoptr i32 %26 to ptr
  tail call fastcc void @flush_latency_buckets(ptr noundef %2, ptr noundef %27, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @flush_latency_buckets(ptr noundef %2, ptr noundef %27, i32 noundef 0, i32 noundef 1)
  tail call fastcc void @flush_latency_buckets(ptr noundef %2, ptr noundef %27, i32 noundef 1, i32 noundef 0)
  tail call fastcc void @flush_latency_buckets(ptr noundef %2, ptr noundef %27, i32 noundef 1, i32 noundef 1)
  tail call fastcc void @flush_latency_buckets(ptr noundef %2, ptr noundef %27, i32 noundef 2, i32 noundef 0)
  tail call fastcc void @flush_latency_buckets(ptr noundef %2, ptr noundef %27, i32 noundef 2, i32 noundef 1)
  %28 = tail call i32 @cpumask_next(i32 noundef %21, ptr noundef nonnull @__cpu_online_mask) #19
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %20, label %8

31:                                               ; preds = %90, %8
  %32 = phi i32 [ 0, %8 ], [ %91, %90 ]
  %33 = tail call fastcc i32 @calculate_percentile(ptr noundef %2, i32 noundef %32, i32 noundef 0, i32 noundef 99)
  br i1 %16, label %34, label %39

34:                                               ; preds = %31
  %35 = icmp slt i32 %33, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = getelementptr [3 x i32], ptr %17, i32 0, i32 %32
  %38 = load i32, ptr %37, align 4
  br label %41

39:                                               ; preds = %31
  %40 = icmp sgt i32 %33, -1
  br i1 %40, label %41, label %90

41:                                               ; preds = %39, %36, %34
  %42 = phi i32 [ -1, %36 ], [ -1, %34 ], [ %33, %39 ]
  %43 = phi i32 [ %38, %36 ], [ %33, %34 ], [ %33, %39 ]
  %44 = getelementptr [3 x i32], ptr %17, i32 0, i32 %32
  store i32 %42, ptr %44, align 4
  %45 = icmp sgt i32 %43, -1
  %46 = icmp sgt i32 %43, 3
  %47 = select i1 %16, i1 true, i1 %46
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %49, label %90

49:                                               ; preds = %41
  %50 = getelementptr [4 x %struct.sbitmap_queue], ptr %18, i32 0, i32 %32
  %51 = load i32, ptr %50, align 4
  %52 = add nuw i32 %43, 1
  %53 = mul i32 %51, %52
  %54 = lshr i32 %53, 2
  %55 = tail call i32 @llvm.umax.i32(i32 %54, i32 1) #16
  %56 = getelementptr [4 x i32], ptr @kyber_depth, i32 0, i32 %32
  %57 = load i32, ptr %56, align 4
  %58 = tail call i32 @llvm.umin.i32(i32 %55, i32 %57) #16
  %59 = icmp eq i32 %58, %51
  br i1 %59, label %90, label %60

60:                                               ; preds = %49
  %61 = getelementptr %struct.kyber_queue_data, ptr %2, i32 0, i32 2, i32 %32
  tail call void @sbitmap_queue_resize(ptr noundef %61, i32 noundef %58) #16
  %62 = load i32, ptr %19, align 4
  %63 = getelementptr [4 x ptr], ptr @kyber_domain_names, i32 0, i32 %32
  %64 = load ptr, ptr %63, align 4
  %65 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kyber_adjust, i32 0, i32 1), align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %60
  %68 = tail call ptr @llvm.thread.pointer() #16
  %69 = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 8
  %71 = lshr i32 %70, 5
  %72 = getelementptr i32, ptr @__cpu_online_mask, i32 %71
  %73 = load volatile i32, ptr %72, align 4
  %74 = and i32 %70, 31
  %75 = shl nuw i32 1, %74
  %76 = and i32 %75, %73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %67
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %79 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kyber_adjust, i32 0, i32 7), align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %81, %78
  %82 = phi ptr [ %86, %81 ], [ %79, %78 ]
  %83 = load volatile ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.tracepoint_func, ptr %82, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  tail call void %83(ptr noundef %85, i32 noundef %62, ptr noundef %64, i32 noundef %58) #16
  %86 = getelementptr %struct.tracepoint_func, ptr %82, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %81

89:                                               ; preds = %81, %78
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  br label %90

90:                                               ; preds = %89, %67, %60, %49, %41, %39
  %91 = add nuw nsw i32 %32, 1
  %92 = icmp eq i32 %91, 3
  br i1 %92, label %93, label %31

93:                                               ; preds = %90
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_queue_init_node(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @flush_latency_buckets(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr %struct.kyber_queue_data, ptr %0, i32 0, i32 6, i32 %2, i32 %3
  %6 = getelementptr [3 x [2 x [8 x %struct.atomic_t]]], ptr %1, i32 0, i32 %2, i32 %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #16, !srcloc !21
  %7 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %6) #16, !srcloc !27
  %8 = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  %9 = load i32, ptr %5, align 4
  %10 = add i32 %9, %8
  store i32 %10, ptr %5, align 4
  %11 = getelementptr %struct.atomic_t, ptr %6, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #16, !srcloc !21
  %12 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %11) #16, !srcloc !27
  %13 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  %14 = getelementptr i32, ptr %5, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  store i32 %16, ptr %14, align 4
  %17 = getelementptr %struct.atomic_t, ptr %6, i32 2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %17) #16, !srcloc !21
  %18 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %17) #16, !srcloc !27
  %19 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  %20 = getelementptr i32, ptr %5, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %19
  store i32 %22, ptr %20, align 4
  %23 = getelementptr %struct.atomic_t, ptr %6, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #16, !srcloc !21
  %24 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %23) #16, !srcloc !27
  %25 = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  %26 = getelementptr i32, ptr %5, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  store i32 %28, ptr %26, align 4
  %29 = getelementptr %struct.atomic_t, ptr %6, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #16, !srcloc !21
  %30 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %29) #16, !srcloc !27
  %31 = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  %32 = getelementptr i32, ptr %5, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %31
  store i32 %34, ptr %32, align 4
  %35 = getelementptr %struct.atomic_t, ptr %6, i32 5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #16, !srcloc !21
  %36 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %35) #16, !srcloc !27
  %37 = extractvalue { i32, i32 } %36, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  %38 = getelementptr i32, ptr %5, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %37
  store i32 %40, ptr %38, align 4
  %41 = getelementptr %struct.atomic_t, ptr %6, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %41) #16, !srcloc !21
  %42 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %41) #16, !srcloc !27
  %43 = extractvalue { i32, i32 } %42, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  %44 = getelementptr i32, ptr %5, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %43
  store i32 %46, ptr %44, align 4
  %47 = getelementptr %struct.atomic_t, ptr %6, i32 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %47) #16, !srcloc !21
  %48 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %47) #16, !srcloc !27
  %49 = extractvalue { i32, i32 } %48, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !28
  %50 = getelementptr i32, ptr %5, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %49
  store i32 %52, ptr %50, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @calculate_percentile(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr %struct.kyber_queue_data, ptr %0, i32 0, i32 6, i32 %1, i32 %2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i32, ptr %5, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %6
  %10 = getelementptr i32, ptr %5, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %9
  %13 = getelementptr i32, ptr %5, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %12
  %16 = getelementptr i32, ptr %5, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %15
  %19 = getelementptr i32, ptr %5, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = getelementptr i32, ptr %5, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = getelementptr i32, ptr %5, i32 7
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %109, label %29

29:                                               ; preds = %4
  %30 = getelementptr %struct.kyber_queue_data, ptr %0, i32 0, i32 7, i32 %1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load volatile i32, ptr @jiffies, align 64
  %35 = add i32 %34, 100
  %36 = tail call i32 @llvm.umax.i32(i32 %35, i32 1)
  store i32 %36, ptr %30, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %36, %33 ], [ %31, %29 ]
  %39 = icmp ult i32 %27, 500
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load volatile i32, ptr @jiffies, align 64
  %42 = sub i32 %41, %38
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %109, label %44

44:                                               ; preds = %40, %37
  store i32 0, ptr %30, align 4
  %45 = mul i32 %27, %3
  %46 = add i32 %45, 99
  %47 = udiv i32 %46, 100
  %48 = load i32, ptr %5, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %44
  %51 = sub i32 %47, %48
  %52 = load i32, ptr %7, align 4
  %53 = icmp ugt i32 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = sub i32 %51, %52
  %56 = load i32, ptr %10, align 4
  %57 = icmp ugt i32 %55, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %54
  %59 = sub i32 %55, %56
  %60 = load i32, ptr %13, align 4
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = sub i32 %59, %60
  %64 = load i32, ptr %16, align 4
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = sub i32 %63, %64
  %68 = load i32, ptr %19, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = sub i32 %67, %68
  %72 = load i32, ptr %22, align 4
  %73 = icmp ugt i32 %71, %72
  %74 = select i1 %73, i32 7, i32 6
  br label %75

75:                                               ; preds = %70, %66, %62, %58, %54, %50, %44
  %76 = phi i32 [ 0, %44 ], [ 1, %50 ], [ 2, %54 ], [ 3, %58 ], [ 4, %62 ], [ 5, %66 ], [ %74, %70 ]
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false)
  %77 = getelementptr inbounds %struct.kyber_queue_data, ptr %0, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr [4 x ptr], ptr @kyber_domain_names, i32 0, i32 %1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr [2 x ptr], ptr @kyber_latency_type_names, i32 0, i32 %2
  %82 = load ptr, ptr %81, align 4
  %83 = add nuw nsw i32 %76, 1
  %84 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kyber_latency, i32 0, i32 1), align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %75
  %87 = tail call ptr @llvm.thread.pointer() #16
  %88 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 2
  %89 = load i32, ptr %88, align 8
  %90 = lshr i32 %89, 5
  %91 = getelementptr i32, ptr @__cpu_online_mask, i32 %90
  %92 = load volatile i32, ptr %91, align 4
  %93 = and i32 %89, 31
  %94 = shl nuw i32 1, %93
  %95 = and i32 %94, %92
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %86
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !29
  %98 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kyber_latency, i32 0, i32 7), align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %108, label %100

100:                                              ; preds = %100, %97
  %101 = phi ptr [ %105, %100 ], [ %98, %97 ]
  %102 = load volatile ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.tracepoint_func, ptr %101, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  tail call void %102(ptr noundef %104, i32 noundef %78, ptr noundef %80, ptr noundef %82, i32 noundef %3, i32 noundef %83, i32 noundef 4, i32 noundef %27) #16
  %105 = getelementptr %struct.tracepoint_func, ptr %101, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %100

108:                                              ; preds = %100, %97
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !30
  br label %109

109:                                              ; preds = %108, %86, %75, %40, %4
  %110 = phi i32 [ -1, %4 ], [ -1, %40 ], [ %76, %75 ], [ %76, %86 ], [ %76, %108 ]
  ret i32 %110
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_disable_accounting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_init_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_domain_wake(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %0, i32 0, i32 1
  %6 = load volatile ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -4
  tail call void @sbitmap_del_wait_queue(ptr noundef %7) #16
  tail call void @blk_mq_run_hw_queue(ptr noundef %6, i1 noundef zeroext true) #16
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_del_wait_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queue(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_min_shallow_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_bio_list_merge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_block_rq_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @kyber_dispatch_cur_domain(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.kyber_hctx_data, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 1, i32 %5
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  %9 = getelementptr i8, ptr %7, i32 -56
  %10 = icmp eq ptr %9, null
  %11 = or i1 %8, %10
  br i1 %11, label %56, label %12

12:                                               ; preds = %2
  %13 = tail call fastcc i32 @kyber_get_domain_token(ptr noundef %0, ptr noundef %1)
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.kyber_hctx_data, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = inttoptr i32 %13 to ptr
  %20 = getelementptr i8, ptr %7, i32 76
  store ptr %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %21, align 4
  br label %171

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.kyber_queue_data, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %4, align 4
  %29 = getelementptr [4 x ptr], ptr @kyber_domain_names, i32 0, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kyber_throttled, i32 0, i32 1), align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %171

33:                                               ; preds = %25
  %34 = tail call ptr @llvm.thread.pointer() #16
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = getelementptr i32, ptr @__cpu_online_mask, i32 %37
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %36, 31
  %41 = shl nuw i32 1, %40
  %42 = and i32 %41, %39
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %171, label %44

44:                                               ; preds = %33
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %45 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kyber_throttled, i32 0, i32 7), align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %47, %44
  %48 = phi ptr [ %52, %47 ], [ %45, %44 ]
  %49 = load volatile ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.tracepoint_func, ptr %48, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  tail call void %49(ptr noundef %51, i32 noundef %27, ptr noundef %30) #16
  %52 = getelementptr %struct.tracepoint_func, ptr %48, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %47

55:                                               ; preds = %47, %44
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !32
  br label %171

56:                                               ; preds = %2
  %57 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 %5
  %58 = tail call zeroext i1 @sbitmap_any_bit_set(ptr noundef %57) #16
  br i1 %58, label %59, label %171

59:                                               ; preds = %56
  %60 = tail call fastcc i32 @kyber_get_domain_token(ptr noundef %0, ptr noundef %1)
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %140

62:                                               ; preds = %59
  %63 = load i32, ptr %4, align 4
  %64 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 %63
  %65 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 %63, i32 1
  %66 = load i32, ptr %64, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %128, label %68

68:                                               ; preds = %62
  %69 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 %63, i32 4
  %70 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 %63, i32 2
  %71 = getelementptr inbounds %struct.kyber_hctx_data, ptr %1, i32 0, i32 4
  %72 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 1, i32 %5, i32 1
  br label %73

73:                                               ; preds = %121, %68
  %74 = phi i32 [ %66, %68 ], [ %126, %121 ]
  %75 = phi i32 [ 0, %68 ], [ %125, %121 ]
  %76 = phi i32 [ 0, %68 ], [ %82, %121 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  store i32 0, ptr %3, align 4, !annotation !9
  %77 = load ptr, ptr %69, align 4
  %78 = getelementptr %struct.sbitmap_word, ptr %77, i32 %75
  %79 = load i32, ptr %78, align 64
  %80 = sub i32 %74, %76
  %81 = call i32 @llvm.umin.i32(i32 %79, i32 %80) #16
  %82 = add i32 %81, %76
  %83 = getelementptr %struct.sbitmap_word, ptr %77, i32 %75, i32 2
  %84 = load i32, ptr %83, align 64
  %85 = getelementptr %struct.sbitmap_word, ptr %77, i32 %75, i32 4
  %86 = load i32, ptr %85, align 64
  %87 = xor i32 %86, -1
  %88 = and i32 %84, %87
  store i32 %88, ptr %3, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %121, label %90

90:                                               ; preds = %73
  %91 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %81, i32 noundef 0) #16
  %92 = icmp ult i32 %91, %81
  br i1 %92, label %93, label %121

93:                                               ; preds = %108, %90
  %94 = phi i32 [ %119, %108 ], [ %91, %90 ]
  %95 = load i32, ptr %65, align 4
  %96 = shl i32 %75, %95
  %97 = add i32 %96, %94
  %98 = load ptr, ptr %71, align 4
  %99 = getelementptr %struct.kyber_ctx_queue, ptr %98, i32 %97
  call void @_raw_spin_lock(ptr noundef %99) #16
  %100 = getelementptr %struct.kyber_ctx_queue, ptr %98, i32 %97, i32 1, i32 %63
  %101 = load volatile ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, %100
  br i1 %102, label %108, label %103

103:                                              ; preds = %93
  %104 = load ptr, ptr %72, align 4
  %105 = getelementptr %struct.kyber_ctx_queue, ptr %98, i32 %97, i32 1, i32 %63, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  store ptr %104, ptr %107, align 4
  store ptr %101, ptr %104, align 4
  store ptr %6, ptr %106, align 4
  store ptr %106, ptr %72, align 4
  store volatile ptr %100, ptr %100, align 4
  store ptr %100, ptr %105, align 4
  br label %108

108:                                              ; preds = %103, %93
  %109 = load i32, ptr %65, align 4
  %110 = shl nsw i32 -1, %109
  %111 = xor i32 %110, -1
  %112 = and i32 %97, %111
  %113 = load ptr, ptr %69, align 4
  %114 = lshr i32 %97, %109
  %115 = getelementptr %struct.sbitmap_word, ptr %113, i32 %114, i32 2
  call void @_clear_bit(i32 noundef %112, ptr noundef %115) #16
  call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %116 = load i16, ptr %99, align 4
  %117 = add i16 %116, 1
  store i16 %117, ptr %99, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  %118 = add nuw i32 %94, 1
  %119 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %81, i32 noundef %118) #16
  %120 = icmp ult i32 %119, %81
  br i1 %120, label %93, label %121

121:                                              ; preds = %108, %90, %73
  %122 = add i32 %75, 1
  %123 = load i32, ptr %70, align 4
  %124 = icmp ult i32 %122, %123
  %125 = select i1 %124, i32 %122, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %126 = load i32, ptr %64, align 4
  %127 = icmp ugt i32 %126, %82
  br i1 %127, label %73, label %128

128:                                              ; preds = %121, %62
  %129 = load ptr, ptr %6, align 4
  %130 = getelementptr i8, ptr %129, i32 -56
  %131 = getelementptr inbounds %struct.kyber_hctx_data, ptr %1, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = add i32 %132, 1
  store i32 %133, ptr %131, align 4
  %134 = inttoptr i32 %60 to ptr
  %135 = getelementptr i8, ptr %129, i32 76
  store ptr %134, ptr %135, align 4
  %136 = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  %138 = load ptr, ptr %129, align 4
  %139 = getelementptr inbounds %struct.list_head, ptr %138, i32 0, i32 1
  store ptr %137, ptr %139, align 4
  store volatile ptr %138, ptr %137, align 4
  store volatile ptr %129, ptr %129, align 4
  store ptr %129, ptr %136, align 4
  br label %171

140:                                              ; preds = %59
  %141 = getelementptr inbounds %struct.kyber_queue_data, ptr %0, i32 0, i32 1
  %142 = load i32, ptr %141, align 4
  %143 = load i32, ptr %4, align 4
  %144 = getelementptr [4 x ptr], ptr @kyber_domain_names, i32 0, i32 %143
  %145 = load ptr, ptr %144, align 4
  %146 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kyber_throttled, i32 0, i32 1), align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %171

148:                                              ; preds = %140
  %149 = tail call ptr @llvm.thread.pointer() #16
  %150 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 2
  %151 = load i32, ptr %150, align 8
  %152 = lshr i32 %151, 5
  %153 = getelementptr i32, ptr @__cpu_online_mask, i32 %152
  %154 = load volatile i32, ptr %153, align 4
  %155 = and i32 %151, 31
  %156 = shl nuw i32 1, %155
  %157 = and i32 %156, %154
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %171, label %159

159:                                              ; preds = %148
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !31
  %160 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_kyber_throttled, i32 0, i32 7), align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %170, label %162

162:                                              ; preds = %162, %159
  %163 = phi ptr [ %167, %162 ], [ %160, %159 ]
  %164 = load volatile ptr, ptr %163, align 4
  %165 = getelementptr inbounds %struct.tracepoint_func, ptr %163, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  tail call void %164(ptr noundef %166, i32 noundef %142, ptr noundef %145) #16
  %167 = getelementptr %struct.tracepoint_func, ptr %163, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %162

170:                                              ; preds = %162, %159
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !32
  br label %171

171:                                              ; preds = %170, %148, %140, %128, %56, %55, %33, %25, %15
  %172 = phi ptr [ %9, %15 ], [ %130, %128 ], [ null, %56 ], [ null, %25 ], [ null, %33 ], [ null, %55 ], [ null, %140 ], [ null, %148 ], [ null, %170 ]
  ret ptr %172
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @kyber_get_domain_token(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.kyber_hctx_data, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr %struct.kyber_queue_data, ptr %0, i32 0, i32 2, i32 %4
  %6 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 6, i32 %4
  %7 = tail call i32 @__sbitmap_queue_get(ptr noundef %5) #16
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 6, i32 %4, i32 1, i32 3
  %11 = load volatile ptr, ptr %10, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 6, i32 %4, i32 1, i32 3, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %10
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 8, i32 %4
  %19 = getelementptr %struct.kyber_queue_data, ptr %0, i32 0, i32 2, i32 %4, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load volatile i32, ptr %18, align 4
  %22 = load volatile i32, ptr %18, align 4
  %23 = add i32 %22, 1
  %24 = and i32 %23, 7
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !33
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #16, !srcloc !21
  br label %25

25:                                               ; preds = %25, %17
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 %22, i32 %24, ptr elementtype(i32) %18) #16, !srcloc !34
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %25

29:                                               ; preds = %25
  %30 = getelementptr %struct.sbq_wait_state, ptr %20, i32 %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !35
  %31 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 7, i32 %4
  store ptr %30, ptr %31, align 4
  tail call void @sbitmap_add_wait_queue(ptr noundef %5, ptr noundef %30, ptr noundef %6) #16
  %32 = tail call i32 @__sbitmap_queue_get(ptr noundef %5) #16
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %49

34:                                               ; preds = %29, %2
  %35 = phi i32 [ %32, %29 ], [ %7, %2 ]
  %36 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 6, i32 %4, i32 1, i32 3
  %37 = load volatile ptr, ptr %36, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 6, i32 %4, i32 1, i32 3, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %36
  br i1 %42, label %49, label %43

43:                                               ; preds = %39, %34
  %44 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 7, i32 %4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.sbq_wait_state, ptr %45, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %46) #16
  tail call void @sbitmap_del_wait_queue(ptr noundef %6) #16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %47 = load i16, ptr %46, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #16, !srcloc !36
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !37
  br label %49

49:                                               ; preds = %43, %39, %29, %13, %9
  %50 = phi i32 [ %35, %43 ], [ %35, %39 ], [ %32, %29 ], [ %7, %13 ], [ %7, %9 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sbitmap_any_bit_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_add_wait_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_read_lat_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #13 {
  %3 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.kyber_queue_data, ptr %4, i32 0, i32 9
  %6 = load i64, ptr %5, align 8
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.28, i64 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_read_lat_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8, !annotation !9
  %7 = call i32 @kstrtoull(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i64, ptr %4, align 8
  %11 = getelementptr inbounds %struct.kyber_queue_data, ptr %6, i32 0, i32 9
  store i64 %10, ptr %11, align 8
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %2, %9 ], [ %7, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_write_lat_show(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #13 {
  %3 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.kyber_queue_data, ptr %4, i32 0, i32 9, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.28, i64 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_write_lat_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 0, ptr %4, align 8, !annotation !9
  %7 = call i32 @kstrtoull(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %4) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i64, ptr %4, align 8
  %11 = getelementptr %struct.kyber_queue_data, ptr %6, i32 0, i32 9, i32 1
  store i64 %10, ptr %11, align 8
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi i32 [ %2, %9 ], [ %7, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_read_tokens_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.kyber_queue_data, ptr %6, i32 0, i32 2
  tail call void @sbitmap_queue_show(ptr noundef %7, ptr noundef %1) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_write_tokens_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.kyber_queue_data, ptr %6, i32 0, i32 2, i32 1
  tail call void @sbitmap_queue_show(ptr noundef %7, ptr noundef %1) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_discard_tokens_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.kyber_queue_data, ptr %6, i32 0, i32 2, i32 2
  tail call void @sbitmap_queue_show(ptr noundef %7, ptr noundef %1) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_other_tokens_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.kyber_queue_data, ptr %6, i32 0, i32 2, i32 3
  tail call void @sbitmap_queue_show(ptr noundef %7, ptr noundef %1) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_async_depth_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.request_queue, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.elevator_queue, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.kyber_queue_data, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %8) #16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_show(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_read_waiting_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.kyber_hctx_data, ptr %4, i32 0, i32 6, i32 0, i32 1, i32 3
  %6 = load volatile ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.kyber_hctx_data, ptr %4, i32 0, i32 6, i32 0, i32 1, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, %5
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ 1, %2 ], [ %12, %8 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %14) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_write_waiting_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.kyber_hctx_data, ptr %4, i32 0, i32 6, i32 1, i32 1, i32 3
  %6 = load volatile ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr %struct.kyber_hctx_data, ptr %4, i32 0, i32 6, i32 1, i32 1, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, %5
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ 1, %2 ], [ %12, %8 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %14) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_discard_waiting_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.kyber_hctx_data, ptr %4, i32 0, i32 6, i32 2, i32 1, i32 3
  %6 = load volatile ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr %struct.kyber_hctx_data, ptr %4, i32 0, i32 6, i32 2, i32 1, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, %5
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ 1, %2 ], [ %12, %8 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %14) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_other_waiting_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.kyber_hctx_data, ptr %4, i32 0, i32 6, i32 3, i32 1, i32 3
  %6 = load volatile ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr %struct.kyber_hctx_data, ptr %4, i32 0, i32 6, i32 3, i32 1, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ne ptr %10, %5
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi i32 [ 1, %2 ], [ %12, %8 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.45, i32 noundef %14) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_cur_domain_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.kyber_hctx_data, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr [4 x ptr], ptr @kyber_domain_names, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.46, ptr noundef %8) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @kyber_batching_show(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.kyber_hctx_data, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %6) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @kyber_read_rqs_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_lock(ptr noundef %6) #16
  %7 = getelementptr inbounds %struct.kyber_hctx_data, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %1, align 8
  %9 = tail call ptr @seq_list_start(ptr noundef %7, i64 noundef %8) #16
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kyber_read_rqs_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %7 = load i16, ptr %6, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @kyber_read_rqs_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.kyber_hctx_data, ptr %7, i32 0, i32 1
  %9 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %8, ptr noundef %2) #16
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_debugfs_rq_show(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @kyber_write_rqs_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_lock(ptr noundef %6) #16
  %7 = getelementptr %struct.kyber_hctx_data, ptr %6, i32 0, i32 1, i32 1
  %8 = load i64, ptr %1, align 8
  %9 = tail call ptr @seq_list_start(ptr noundef %7, i64 noundef %8) #16
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kyber_write_rqs_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %7 = load i16, ptr %6, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @kyber_write_rqs_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.kyber_hctx_data, ptr %7, i32 0, i32 1, i32 1
  %9 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %8, ptr noundef %2) #16
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @kyber_discard_rqs_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_lock(ptr noundef %6) #16
  %7 = getelementptr %struct.kyber_hctx_data, ptr %6, i32 0, i32 1, i32 2
  %8 = load i64, ptr %1, align 8
  %9 = tail call ptr @seq_list_start(ptr noundef %7, i64 noundef %8) #16
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kyber_discard_rqs_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %7 = load i16, ptr %6, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @kyber_discard_rqs_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.kyber_hctx_data, ptr %7, i32 0, i32 1, i32 2
  %9 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %8, ptr noundef %2) #16
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @kyber_other_rqs_start(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_lock(ptr noundef %6) #16
  %7 = getelementptr %struct.kyber_hctx_data, ptr %6, i32 0, i32 1, i32 3
  %8 = load i64, ptr %1, align 8
  %9 = tail call ptr @seq_list_start(ptr noundef %7, i64 noundef %8) #16
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @kyber_other_rqs_stop(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !13
  %7 = load i16, ptr %6, align 4
  %8 = add i16 %7, 1
  store i16 %8, ptr %6, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @kyber_other_rqs_next(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.kyber_hctx_data, ptr %7, i32 0, i32 1, i32 3
  %9 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef %8, ptr noundef %2) #16
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elv_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }

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
!12 = !{i64 350921}
!13 = !{i64 2149231391}
!14 = !{i64 2149227215}
!15 = !{i64 2149227290, i64 2149227317, i64 2149227364, i64 2149227386, i64 2149227414, i64 2149227434}
!16 = !{i64 2149254394}
!17 = !{i64 2153538900}
!18 = !{i64 2153539046}
!19 = !{i64 2148636138}
!20 = !{i64 2155145466}
!21 = !{i64 436982, i64 2147926953, i64 2147926979, i64 2147927026, i64 2147927048, i64 2147927076, i64 2147927096}
!22 = !{i64 2147939165, i64 2147939191, i64 2147939220, i64 2147939254, i64 2147939285, i64 2147939308}
!23 = !{i64 2155146371}
!24 = !{i64 2153971757}
!25 = !{i64 2153971929}
!26 = !{i64 2148223179}
!27 = !{i64 446429, i64 446446, i64 446470, i64 446496, i64 446514}
!28 = !{i64 2148223523}
!29 = !{i64 2153950857}
!30 = !{i64 2153951119}
!31 = !{i64 2153987759}
!32 = !{i64 2153987923}
!33 = !{i64 2148052567}
!34 = !{i64 423045, i64 423069, i64 423090, i64 423107, i64 423124}
!35 = !{i64 2148052767}
!36 = !{i64 332466}
!37 = !{i64 2149255535}
