; ModuleID = '/llk/IR/kernel/bpf/core.c_pt.bc'
source_filename = "../kernel/bpf/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_prog_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_prog_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_prog_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bpf_call_base:\09\09\09\09\09"
module asm "\09.asciz \09\22__bpf_call_base\22\09\09\09\09\09"
module asm "__kstrtabns___bpf_call_base:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_prog_select_runtime:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_prog_select_runtime\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_prog_select_runtime:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_prog_free:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_prog_free\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_prog_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_event_output:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_event_output\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_event_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpf_stats_enabled_key:\09\09\09\09\09"
module asm "\09.asciz \09\22bpf_stats_enabled_key\22\09\09\09\09\09"
module asm "__kstrtabns_bpf_stats_enabled_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_xdp_exception:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_xdp_exception\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_xdp_exception:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_xdp_exception:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_xdp_exception\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_xdp_exception:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_xdp_exception:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_xdp_exception\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_xdp_exception:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___tracepoint_xdp_bulk_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22__tracepoint_xdp_bulk_tx\22\09\09\09\09\09"
module asm "__kstrtabns___tracepoint_xdp_bulk_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___traceiter_xdp_bulk_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22__traceiter_xdp_bulk_tx\22\09\09\09\09\09"
module asm "__kstrtabns___traceiter_xdp_bulk_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___SCK__tp_func_xdp_bulk_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22__SCK__tp_func_xdp_bulk_tx\22\09\09\09\09\09"
module asm "__kstrtabns___SCK__tp_func_xdp_bulk_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type {}
%struct.cpumask = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.195 = type { %struct.bpf_prog_array, ptr }
%struct.bpf_prog_array = type { %struct.callback_head, [0 x %struct.bpf_prog_array_item] }
%struct.callback_head = type { ptr, ptr }
%struct.bpf_prog_array_item = type { ptr, %union.anon.104 }
%union.anon.104 = type { i64 }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.bpf_func_proto = type { ptr, i8, i8, i32, %union.anon.81, %union.anon.83, ptr, ptr }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32, i32, i32, i32 }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { ptr, ptr, ptr, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.197 }
%union.anon.197 = type { %struct.anon.198 }
%struct.anon.198 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.199, %struct.trace_event, ptr, ptr, %union.anon.200, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.199 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.200 = type { ptr }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { %struct.anon.101, [0 x %struct.sock_filter] }
%struct.anon.101 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.trace_print_flags = type { i32, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.153, %union.anon.154, [48 x i8], %union.anon.155, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.157, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.153 = type { ptr }
%union.anon.154 = type { i64 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { i32, ptr }
%union.anon.157 = type { %struct.anon.158 }
%struct.anon.158 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.159, i32, i32, i32, i16, i16, %union.anon.161, %union.anon.162, %union.anon.163, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.159 = type { i32 }
%union.anon.161 = type { i32 }
%union.anon.162 = type { i32 }
%union.anon.163 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.99 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.98 }
%struct.atomic64_t = type { i64 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.98 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.bpf_line_info = type { i32, i32, i32, i32 }
%struct.bpf_insn = type { i8, i8, i16, i32 }
%struct.bpf_array = type { %struct.bpf_map, i32, i32, ptr, [4 x i8], %union.anon.194, [48 x i8] }
%struct.bpf_map = type { ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], i8, i8, [42 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t }
%union.anon.194 = type { [0 x ptr] }
%struct.anon.193 = type { %struct.spinlock, i32, i8 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.vm_struct = type { ptr, ptr, i32, i32, ptr, i32, i32, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_xdp_exception = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.152 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.trace_event_raw_xdp_bulk_tx = type { %struct.trace_entry, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_xdp_redirect_template = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_xdp_cpumap_kthread = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.xdp_cpumap_stats = type { i32, i32, i32 }
%struct.trace_event_raw_xdp_cpumap_enqueue = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_xdp_devmap_xmit = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_mem_disconnect = type { %struct.trace_entry, ptr, i32, i32, ptr, [0 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_mem_allocator = type { %struct.xdp_mem_info, %union.anon.196, %struct.rhash_head, %struct.callback_head }
%union.anon.196 = type { ptr }
%struct.rhash_head = type { ptr }
%struct.trace_event_raw_mem_connect = type { %struct.trace_entry, ptr, i32, i32, ptr, ptr, i32, [0 x i8] }
%struct.trace_event_raw_mem_return_failed = type { %struct.trace_entry, ptr, i32, i32, [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }

@bpf_prog_alloc_no_stats.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [26 x i8] c"&fp->aux->used_maps_mutex\00", align 1
@bpf_prog_alloc_no_stats.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"&fp->aux->dst_mutex\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@__kstrtab_bpf_prog_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_prog_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_prog_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_prog_alloc to i32), ptr @__kstrtab_bpf_prog_alloc, ptr @__kstrtabns_bpf_prog_alloc }, section "___ksymtab_gpl+bpf_prog_alloc", align 4
@bpf_remove_insns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"kernel/bpf/core.c\00", align 1
@__kstrtab___bpf_call_base = external dso_local constant [0 x i8], align 1
@__kstrtabns___bpf_call_base = external dso_local constant [0 x i8], align 1
@__ksymtab___bpf_call_base = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bpf_call_base to i32), ptr @__kstrtab___bpf_call_base, ptr @__kstrtabns___bpf_call_base }, section "___ksymtab_gpl+__bpf_call_base", align 4
@bpf_opcode_in_insntable.public_insntable = internal unnamed_addr constant <{ [223 x i8], [33 x i8] }> <{ [223 x i8] c"\00\00\00\00\01\01\00\01\00\00\00\00\01\00\00\01\00\00\00\00\01\01\01\01\01\00\00\00\01\01\01\01\01\00\00\00\01\01\01\01\01\00\00\00\01\01\01\01\01\00\00\00\01\01\01\01\00\00\00\00\01\01\01\01\01\00\00\00\01\01\01\01\01\00\00\00\01\01\01\01\01\00\00\00\01\01\01\01\00\00\00\00\01\01\01\01\00\01\01\01\01\01\01\01\00\01\01\01\01\01\01\01\00\01\01\01\01\01\01\01\00\01\01\01\01\01\01\01\00\00\00\00\01\01\00\01\00\00\00\00\00\00\00\00\00\00\00\00\01\01\00\01\00\00\00\00\01\00\00\01\00\00\00\00\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\01\01\01\01\01\00\00\00\00\01\01\01\01\00\00\00\00\01\01\01\00\00\00\00\01\01\01\01", [33 x i8] zeroinitializer }>, align 1
@interpreters_args = internal unnamed_addr constant [16 x ptr] [ptr @__bpf_prog_run_args32, ptr @__bpf_prog_run_args64, ptr @__bpf_prog_run_args96, ptr @__bpf_prog_run_args128, ptr @__bpf_prog_run_args160, ptr @__bpf_prog_run_args192, ptr @__bpf_prog_run_args224, ptr @__bpf_prog_run_args256, ptr @__bpf_prog_run_args288, ptr @__bpf_prog_run_args320, ptr @__bpf_prog_run_args352, ptr @__bpf_prog_run_args384, ptr @__bpf_prog_run_args416, ptr @__bpf_prog_run_args448, ptr @__bpf_prog_run_args480, ptr @__bpf_prog_run_args512], align 4
@__kstrtab_bpf_prog_select_runtime = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_prog_select_runtime = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_prog_select_runtime = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_prog_select_runtime to i32), ptr @__kstrtab_bpf_prog_select_runtime, ptr @__kstrtabns_bpf_prog_select_runtime }, section "___ksymtab_gpl+bpf_prog_select_runtime", align 4
@empty_prog_array = internal global %struct.anon.195 zeroinitializer, align 8
@__kstrtab_bpf_prog_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_prog_free = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_prog_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_prog_free to i32), ptr @__kstrtab_bpf_prog_free, ptr @__kstrtabns_bpf_prog_free }, section "___ksymtab_gpl+bpf_prog_free", align 4
@bpf_user_rnd_init_once.___done = internal global i8 0, section ".data.once", align 1
@bpf_user_rnd_init_once.___once_key = internal global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@bpf_user_rnd_state = internal global %struct.rnd_state zeroinitializer, section ".data..percpu", align 4
@__kstrtab_bpf_event_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_event_output = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_event_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_event_output to i32), ptr @__kstrtab_bpf_event_output, ptr @__kstrtabns_bpf_event_output }, section "___ksymtab_gpl+bpf_event_output", align 4
@bpf_tail_call_proto = dso_local local_unnamed_addr constant %struct.bpf_func_proto { ptr null, i8 0, i8 0, i32 1, %union.anon.81 { %struct.anon.82 { i32 9, i32 1, i32 10, i32 0, i32 0 } }, %union.anon.83 zeroinitializer, ptr null, ptr null }, align 4
@bpf_stats_enabled_key = dso_local global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_bpf_stats_enabled_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpf_stats_enabled_key = external dso_local constant [0 x i8], align 1
@__ksymtab_bpf_stats_enabled_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpf_stats_enabled_key to i32), ptr @__kstrtab_bpf_stats_enabled_key, ptr @__kstrtabns_bpf_stats_enabled_key }, section "___ksymtab+bpf_stats_enabled_key", align 4
@__tpstrtab_xdp_exception = internal constant [14 x i8] c"xdp_exception\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_exception = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_exception }, align 4
@__tracepoint_xdp_exception = dso_local global %struct.tracepoint { ptr @__tpstrtab_xdp_exception, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xdp_exception, ptr null, ptr @__traceiter_xdp_exception, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_exception = internal constant ptr @__tracepoint_xdp_exception, section "__tracepoints_ptrs", align 4
@__tpstrtab_xdp_bulk_tx = internal constant [12 x i8] c"xdp_bulk_tx\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_bulk_tx = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_bulk_tx }, align 4
@__tracepoint_xdp_bulk_tx = dso_local global %struct.tracepoint { ptr @__tpstrtab_xdp_bulk_tx, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xdp_bulk_tx, ptr null, ptr @__traceiter_xdp_bulk_tx, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_bulk_tx = internal constant ptr @__tracepoint_xdp_bulk_tx, section "__tracepoints_ptrs", align 4
@__tpstrtab_xdp_redirect = internal constant [13 x i8] c"xdp_redirect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_redirect = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_redirect }, align 4
@__tracepoint_xdp_redirect = dso_local global %struct.tracepoint { ptr @__tpstrtab_xdp_redirect, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xdp_redirect, ptr null, ptr @__traceiter_xdp_redirect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_redirect = internal constant ptr @__tracepoint_xdp_redirect, section "__tracepoints_ptrs", align 4
@__tpstrtab_xdp_redirect_err = internal constant [17 x i8] c"xdp_redirect_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_redirect_err = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_redirect_err }, align 4
@__tracepoint_xdp_redirect_err = dso_local global %struct.tracepoint { ptr @__tpstrtab_xdp_redirect_err, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xdp_redirect_err, ptr null, ptr @__traceiter_xdp_redirect_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_redirect_err = internal constant ptr @__tracepoint_xdp_redirect_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_xdp_redirect_map = internal constant [17 x i8] c"xdp_redirect_map\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_redirect_map = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_redirect_map }, align 4
@__tracepoint_xdp_redirect_map = dso_local global %struct.tracepoint { ptr @__tpstrtab_xdp_redirect_map, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xdp_redirect_map, ptr null, ptr @__traceiter_xdp_redirect_map, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_redirect_map = internal constant ptr @__tracepoint_xdp_redirect_map, section "__tracepoints_ptrs", align 4
@__tpstrtab_xdp_redirect_map_err = internal constant [21 x i8] c"xdp_redirect_map_err\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_redirect_map_err = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_redirect_map_err }, align 4
@__tracepoint_xdp_redirect_map_err = dso_local global %struct.tracepoint { ptr @__tpstrtab_xdp_redirect_map_err, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xdp_redirect_map_err, ptr null, ptr @__traceiter_xdp_redirect_map_err, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_redirect_map_err = internal constant ptr @__tracepoint_xdp_redirect_map_err, section "__tracepoints_ptrs", align 4
@__tpstrtab_xdp_cpumap_kthread = internal constant [19 x i8] c"xdp_cpumap_kthread\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_cpumap_kthread = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_cpumap_kthread }, align 4
@__tracepoint_xdp_cpumap_kthread = dso_local global %struct.tracepoint { ptr @__tpstrtab_xdp_cpumap_kthread, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xdp_cpumap_kthread, ptr null, ptr @__traceiter_xdp_cpumap_kthread, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_cpumap_kthread = internal constant ptr @__tracepoint_xdp_cpumap_kthread, section "__tracepoints_ptrs", align 4
@__tpstrtab_xdp_cpumap_enqueue = internal constant [19 x i8] c"xdp_cpumap_enqueue\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_cpumap_enqueue = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_cpumap_enqueue }, align 4
@__tracepoint_xdp_cpumap_enqueue = dso_local global %struct.tracepoint { ptr @__tpstrtab_xdp_cpumap_enqueue, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xdp_cpumap_enqueue, ptr null, ptr @__traceiter_xdp_cpumap_enqueue, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_cpumap_enqueue = internal constant ptr @__tracepoint_xdp_cpumap_enqueue, section "__tracepoints_ptrs", align 4
@__tpstrtab_xdp_devmap_xmit = internal constant [16 x i8] c"xdp_devmap_xmit\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_xdp_devmap_xmit = dso_local global %struct.static_call_key { ptr @__traceiter_xdp_devmap_xmit }, align 4
@__tracepoint_xdp_devmap_xmit = dso_local global %struct.tracepoint { ptr @__tpstrtab_xdp_devmap_xmit, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_xdp_devmap_xmit, ptr null, ptr @__traceiter_xdp_devmap_xmit, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_xdp_devmap_xmit = internal constant ptr @__tracepoint_xdp_devmap_xmit, section "__tracepoints_ptrs", align 4
@__tpstrtab_mem_disconnect = internal constant [15 x i8] c"mem_disconnect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mem_disconnect = dso_local global %struct.static_call_key { ptr @__traceiter_mem_disconnect }, align 4
@__tracepoint_mem_disconnect = dso_local global %struct.tracepoint { ptr @__tpstrtab_mem_disconnect, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mem_disconnect, ptr null, ptr @__traceiter_mem_disconnect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mem_disconnect = internal constant ptr @__tracepoint_mem_disconnect, section "__tracepoints_ptrs", align 4
@__tpstrtab_mem_connect = internal constant [12 x i8] c"mem_connect\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mem_connect = dso_local global %struct.static_call_key { ptr @__traceiter_mem_connect }, align 4
@__tracepoint_mem_connect = dso_local global %struct.tracepoint { ptr @__tpstrtab_mem_connect, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mem_connect, ptr null, ptr @__traceiter_mem_connect, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mem_connect = internal constant ptr @__tracepoint_mem_connect, section "__tracepoints_ptrs", align 4
@__tpstrtab_mem_return_failed = internal constant [18 x i8] c"mem_return_failed\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mem_return_failed = dso_local global %struct.static_call_key { ptr @__traceiter_mem_return_failed }, align 4
@__tracepoint_mem_return_failed = dso_local global %struct.tracepoint { ptr @__tpstrtab_mem_return_failed, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mem_return_failed, ptr null, ptr @__traceiter_mem_return_failed, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mem_return_failed = internal constant ptr @__tracepoint_mem_return_failed, section "__tracepoints_ptrs", align 4
@str__xdp__trace_system_name = internal constant [4 x i8] c"xdp\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"XDP_ABORTED\00", align 1
@__TRACE_SYSTEM_XDP_ABORTED = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.4, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_XDP_ABORTED = internal global ptr @__TRACE_SYSTEM_XDP_ABORTED, section "_ftrace_eval_map", align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"XDP_DROP\00", align 1
@__TRACE_SYSTEM_XDP_DROP = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.5, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_XDP_DROP = internal global ptr @__TRACE_SYSTEM_XDP_DROP, section "_ftrace_eval_map", align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"XDP_PASS\00", align 1
@__TRACE_SYSTEM_XDP_PASS = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.6, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_XDP_PASS = internal global ptr @__TRACE_SYSTEM_XDP_PASS, section "_ftrace_eval_map", align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"XDP_TX\00", align 1
@__TRACE_SYSTEM_XDP_TX = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.7, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_XDP_TX = internal global ptr @__TRACE_SYSTEM_XDP_TX, section "_ftrace_eval_map", align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"XDP_REDIRECT\00", align 1
@__TRACE_SYSTEM_XDP_REDIRECT = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.8, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_XDP_REDIRECT = internal global ptr @__TRACE_SYSTEM_XDP_REDIRECT, section "_ftrace_eval_map", align 4
@.str.9 = private unnamed_addr constant [21 x i8] c"MEM_TYPE_PAGE_SHARED\00", align 1
@__TRACE_SYSTEM_MEM_TYPE_PAGE_SHARED = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.9, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_MEM_TYPE_PAGE_SHARED = internal global ptr @__TRACE_SYSTEM_MEM_TYPE_PAGE_SHARED, section "_ftrace_eval_map", align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"MEM_TYPE_PAGE_ORDER0\00", align 1
@__TRACE_SYSTEM_MEM_TYPE_PAGE_ORDER0 = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.10, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_MEM_TYPE_PAGE_ORDER0 = internal global ptr @__TRACE_SYSTEM_MEM_TYPE_PAGE_ORDER0, section "_ftrace_eval_map", align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"MEM_TYPE_PAGE_POOL\00", align 1
@__TRACE_SYSTEM_MEM_TYPE_PAGE_POOL = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.11, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_MEM_TYPE_PAGE_POOL = internal global ptr @__TRACE_SYSTEM_MEM_TYPE_PAGE_POOL, section "_ftrace_eval_map", align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"MEM_TYPE_XSK_BUFF_POOL\00", align 1
@__TRACE_SYSTEM_MEM_TYPE_XSK_BUFF_POOL = internal global %struct.trace_eval_map { ptr @str__xdp__trace_system_name, ptr @.str.12, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_MEM_TYPE_XSK_BUFF_POOL = internal global ptr @__TRACE_SYSTEM_MEM_TYPE_XSK_BUFF_POOL, section "_ftrace_eval_map", align 4
@trace_event_fields_xdp_exception = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.18, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.197 { %struct.anon.198 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.21, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xdp_exception = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_xdp_exception, ptr @perf_trace_xdp_exception, ptr @trace_event_reg, ptr @trace_event_fields_xdp_exception, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xdp_exception, i64 24), ptr getelementptr (i8, ptr @event_class_xdp_exception, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xdp_exception = internal global %struct.trace_event_functions { ptr @trace_raw_output_xdp_exception, ptr null, ptr null, ptr null }, align 4
@print_fmt_xdp_exception = internal global [231 x i8] c"\22prog_id=%d action=%s ifindex=%d\22, REC->prog_id, __print_symbolic(REC->act, { XDP_ABORTED, \22ABORTED\22 }, { XDP_DROP, \22DROP\22 }, { XDP_PASS, \22PASS\22 }, { XDP_TX, \22TX\22 }, { XDP_REDIRECT, \22REDIRECT\22 }, { -1, ((void *)0) }), REC->ifindex\00", align 1
@event_xdp_exception = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_exception, %union.anon.199 { ptr @__tracepoint_xdp_exception }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_exception }, ptr @print_fmt_xdp_exception, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xdp_exception = internal global ptr @event_xdp_exception, section "_ftrace_events", align 4
@trace_event_fields_xdp_bulk_tx = internal global [6 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.21, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.197 { %struct.anon.198 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.28, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.29, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xdp_bulk_tx = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_xdp_bulk_tx, ptr @perf_trace_xdp_bulk_tx, ptr @trace_event_reg, ptr @trace_event_fields_xdp_bulk_tx, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xdp_bulk_tx, i64 24), ptr getelementptr (i8, ptr @event_class_xdp_bulk_tx, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xdp_bulk_tx = internal global %struct.trace_event_functions { ptr @trace_raw_output_xdp_bulk_tx, ptr null, ptr null, ptr null }, align 4
@print_fmt_xdp_bulk_tx = internal global [263 x i8] c"\22ifindex=%d action=%s sent=%d drops=%d err=%d\22, REC->ifindex, __print_symbolic(REC->act, { XDP_ABORTED, \22ABORTED\22 }, { XDP_DROP, \22DROP\22 }, { XDP_PASS, \22PASS\22 }, { XDP_TX, \22TX\22 }, { XDP_REDIRECT, \22REDIRECT\22 }, { -1, ((void *)0) }), REC->sent, REC->drops, REC->err\00", align 1
@event_xdp_bulk_tx = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_bulk_tx, %union.anon.199 { ptr @__tracepoint_xdp_bulk_tx }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_bulk_tx }, ptr @print_fmt_xdp_bulk_tx, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xdp_bulk_tx = internal global ptr @event_xdp_bulk_tx, section "_ftrace_events", align 4
@trace_event_fields_xdp_redirect_template = internal global [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.18, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.197 { %struct.anon.198 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.21, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.32, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.197 { %struct.anon.198 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.34, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xdp_redirect_template = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_xdp_redirect_template, ptr @perf_trace_xdp_redirect_template, ptr @trace_event_reg, ptr @trace_event_fields_xdp_redirect_template, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xdp_redirect_template, i64 24), ptr getelementptr (i8, ptr @event_class_xdp_redirect_template, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xdp_redirect_template = internal global %struct.trace_event_functions { ptr @trace_raw_output_xdp_redirect_template, ptr null, ptr null, ptr null }, align 4
@print_fmt_xdp_redirect_template = internal global [331 x i8] c"\22prog_id=%d action=%s ifindex=%d to_ifindex=%d err=%d map_id=%d map_index=%d\22, REC->prog_id, __print_symbolic(REC->act, { XDP_ABORTED, \22ABORTED\22 }, { XDP_DROP, \22DROP\22 }, { XDP_PASS, \22PASS\22 }, { XDP_TX, \22TX\22 }, { XDP_REDIRECT, \22REDIRECT\22 }, { -1, ((void *)0) }), REC->ifindex, REC->to_ifindex, REC->err, REC->map_id, REC->map_index\00", align 1
@event_xdp_redirect = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_redirect_template, %union.anon.199 { ptr @__tracepoint_xdp_redirect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_redirect_template }, ptr @print_fmt_xdp_redirect_template, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xdp_redirect = internal global ptr @event_xdp_redirect, section "_ftrace_events", align 4
@event_xdp_redirect_err = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_redirect_template, %union.anon.199 { ptr @__tracepoint_xdp_redirect_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_redirect_template }, ptr @print_fmt_xdp_redirect_template, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xdp_redirect_err = internal global ptr @event_xdp_redirect_err, section "_ftrace_events", align 4
@event_xdp_redirect_map = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_redirect_template, %union.anon.199 { ptr @__tracepoint_xdp_redirect_map }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_redirect_template }, ptr @print_fmt_xdp_redirect_template, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xdp_redirect_map = internal global ptr @event_xdp_redirect_map, section "_ftrace_events", align 4
@event_xdp_redirect_map_err = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_redirect_template, %union.anon.199 { ptr @__tracepoint_xdp_redirect_map_err }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_redirect_template }, ptr @print_fmt_xdp_redirect_template, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xdp_redirect_map_err = internal global ptr @event_xdp_redirect_map_err, section "_ftrace_events", align 4
@trace_event_fields_xdp_cpumap_kthread = internal global [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.33, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.197 { %struct.anon.198 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.36, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.197 { %struct.anon.198 { ptr @.str.28, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.197 { %struct.anon.198 { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.39, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.197 { %struct.anon.198 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.197 { %struct.anon.198 { ptr @.str.41, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.197 { %struct.anon.198 { ptr @.str.42, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xdp_cpumap_kthread = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_xdp_cpumap_kthread, ptr @perf_trace_xdp_cpumap_kthread, ptr @trace_event_reg, ptr @trace_event_fields_xdp_cpumap_kthread, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xdp_cpumap_kthread, i64 24), ptr getelementptr (i8, ptr @event_class_xdp_cpumap_kthread, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xdp_cpumap_kthread = internal global %struct.trace_event_functions { ptr @trace_raw_output_xdp_cpumap_kthread, ptr null, ptr null, ptr null }, align 4
@print_fmt_xdp_cpumap_kthread = internal global [389 x i8] c"\22kthread cpu=%d map_id=%d action=%s processed=%u drops=%u sched=%d xdp_pass=%u xdp_drop=%u xdp_redirect=%u\22, REC->cpu, REC->map_id, __print_symbolic(REC->act, { XDP_ABORTED, \22ABORTED\22 }, { XDP_DROP, \22DROP\22 }, { XDP_PASS, \22PASS\22 }, { XDP_TX, \22TX\22 }, { XDP_REDIRECT, \22REDIRECT\22 }, { -1, ((void *)0) }), REC->processed, REC->drops, REC->sched, REC->xdp_pass, REC->xdp_drop, REC->xdp_redirect\00", align 1
@event_xdp_cpumap_kthread = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_cpumap_kthread, %union.anon.199 { ptr @__tracepoint_xdp_cpumap_kthread }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_cpumap_kthread }, ptr @print_fmt_xdp_cpumap_kthread, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xdp_cpumap_kthread = internal global ptr @event_xdp_cpumap_kthread, section "_ftrace_events", align 4
@trace_event_fields_xdp_cpumap_enqueue = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.33, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.197 { %struct.anon.198 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.36, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.197 { %struct.anon.198 { ptr @.str.28, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.197 { %struct.anon.198 { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.44, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xdp_cpumap_enqueue = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_xdp_cpumap_enqueue, ptr @perf_trace_xdp_cpumap_enqueue, ptr @trace_event_reg, ptr @trace_event_fields_xdp_cpumap_enqueue, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xdp_cpumap_enqueue, i64 24), ptr getelementptr (i8, ptr @event_class_xdp_cpumap_enqueue, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xdp_cpumap_enqueue = internal global %struct.trace_event_functions { ptr @trace_raw_output_xdp_cpumap_enqueue, ptr null, ptr null, ptr null }, align 4
@print_fmt_xdp_cpumap_enqueue = internal global [302 x i8] c"\22enqueue cpu=%d map_id=%d action=%s processed=%u drops=%u to_cpu=%d\22, REC->cpu, REC->map_id, __print_symbolic(REC->act, { XDP_ABORTED, \22ABORTED\22 }, { XDP_DROP, \22DROP\22 }, { XDP_PASS, \22PASS\22 }, { XDP_TX, \22TX\22 }, { XDP_REDIRECT, \22REDIRECT\22 }, { -1, ((void *)0) }), REC->processed, REC->drops, REC->to_cpu\00", align 1
@event_xdp_cpumap_enqueue = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_cpumap_enqueue, %union.anon.199 { ptr @__tracepoint_xdp_cpumap_enqueue }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_cpumap_enqueue }, ptr @print_fmt_xdp_cpumap_enqueue, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xdp_cpumap_enqueue = internal global ptr @event_xdp_cpumap_enqueue, section "_ftrace_events", align 4
@trace_event_fields_xdp_devmap_xmit = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.46, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.197 { %struct.anon.198 { ptr @.str.20, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.32, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.28, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.29, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_xdp_devmap_xmit = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_xdp_devmap_xmit, ptr @perf_trace_xdp_devmap_xmit, ptr @trace_event_reg, ptr @trace_event_fields_xdp_devmap_xmit, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_xdp_devmap_xmit, i64 24), ptr getelementptr (i8, ptr @event_class_xdp_devmap_xmit, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_xdp_devmap_xmit = internal global %struct.trace_event_functions { ptr @trace_raw_output_xdp_devmap_xmit, ptr null, ptr null, ptr null }, align 4
@print_fmt_xdp_devmap_xmit = internal global [317 x i8] c"\22ndo_xdp_xmit from_ifindex=%d to_ifindex=%d action=%s sent=%d drops=%d err=%d\22, REC->from_ifindex, REC->to_ifindex, __print_symbolic(REC->act, { XDP_ABORTED, \22ABORTED\22 }, { XDP_DROP, \22DROP\22 }, { XDP_PASS, \22PASS\22 }, { XDP_TX, \22TX\22 }, { XDP_REDIRECT, \22REDIRECT\22 }, { -1, ((void *)0) }), REC->sent, REC->drops, REC->err\00", align 1
@event_xdp_devmap_xmit = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_xdp_devmap_xmit, %union.anon.199 { ptr @__tracepoint_xdp_devmap_xmit }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_xdp_devmap_xmit }, ptr @print_fmt_xdp_devmap_xmit, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_xdp_devmap_xmit = internal global ptr @event_xdp_devmap_xmit, section "_ftrace_events", align 4
@trace_event_fields_mem_disconnect = internal global [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.48, %union.anon.197 { %struct.anon.198 { ptr @.str.49, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.197 { %struct.anon.198 { ptr @.str.50, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.197 { %struct.anon.198 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.197 { %struct.anon.198 { ptr @.str.53, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mem_disconnect = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_mem_disconnect, ptr @perf_trace_mem_disconnect, ptr @trace_event_reg, ptr @trace_event_fields_mem_disconnect, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mem_disconnect, i64 24), ptr getelementptr (i8, ptr @event_class_mem_disconnect, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mem_disconnect = internal global %struct.trace_event_functions { ptr @trace_raw_output_mem_disconnect, ptr null, ptr null, ptr null }, align 4
@print_fmt_mem_disconnect = internal global [274 x i8] c"\22mem_id=%d mem_type=%s allocator=%p\22, REC->mem_id, __print_symbolic(REC->mem_type, { MEM_TYPE_PAGE_SHARED, \22PAGE_SHARED\22 }, { MEM_TYPE_PAGE_ORDER0, \22PAGE_ORDER0\22 }, { MEM_TYPE_PAGE_POOL, \22PAGE_POOL\22 }, { MEM_TYPE_XSK_BUFF_POOL, \22XSK_BUFF_POOL\22 }, { -1, 0 }), REC->allocator\00", align 1
@event_mem_disconnect = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mem_disconnect, %union.anon.199 { ptr @__tracepoint_mem_disconnect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mem_disconnect }, ptr @print_fmt_mem_disconnect, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mem_disconnect = internal global ptr @event_mem_disconnect, section "_ftrace_events", align 4
@trace_event_fields_mem_connect = internal global [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.48, %union.anon.197 { %struct.anon.198 { ptr @.str.49, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.197 { %struct.anon.198 { ptr @.str.50, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.197 { %struct.anon.198 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.52, %union.anon.197 { %struct.anon.198 { ptr @.str.53, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.59, %union.anon.197 { %struct.anon.198 { ptr @.str.60, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.17, %union.anon.197 { %struct.anon.198 { ptr @.str.21, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mem_connect = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_mem_connect, ptr @perf_trace_mem_connect, ptr @trace_event_reg, ptr @trace_event_fields_mem_connect, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mem_connect, i64 24), ptr getelementptr (i8, ptr @event_class_mem_connect, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mem_connect = internal global %struct.trace_event_functions { ptr @trace_raw_output_mem_connect, ptr null, ptr null, ptr null }, align 4
@print_fmt_mem_connect = internal global [299 x i8] c"\22mem_id=%d mem_type=%s allocator=%p ifindex=%d\22, REC->mem_id, __print_symbolic(REC->mem_type, { MEM_TYPE_PAGE_SHARED, \22PAGE_SHARED\22 }, { MEM_TYPE_PAGE_ORDER0, \22PAGE_ORDER0\22 }, { MEM_TYPE_PAGE_POOL, \22PAGE_POOL\22 }, { MEM_TYPE_XSK_BUFF_POOL, \22XSK_BUFF_POOL\22 }, { -1, 0 }), REC->allocator, REC->ifindex\00", align 1
@event_mem_connect = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mem_connect, %union.anon.199 { ptr @__tracepoint_mem_connect }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mem_connect }, ptr @print_fmt_mem_connect, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mem_connect = internal global ptr @event_mem_connect, section "_ftrace_events", align 4
@trace_event_fields_mem_return_failed = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.62, %union.anon.197 { %struct.anon.198 { ptr @.str.63, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.197 { %struct.anon.198 { ptr @.str.50, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.19, %union.anon.197 { %struct.anon.198 { ptr @.str.51, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_mem_return_failed = internal global %struct.trace_event_class { ptr @str__xdp__trace_system_name, ptr @trace_event_raw_event_mem_return_failed, ptr @perf_trace_mem_return_failed, ptr @trace_event_reg, ptr @trace_event_fields_mem_return_failed, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_mem_return_failed, i64 24), ptr getelementptr (i8, ptr @event_class_mem_return_failed, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_mem_return_failed = internal global %struct.trace_event_functions { ptr @trace_raw_output_mem_return_failed, ptr null, ptr null, ptr null }, align 4
@print_fmt_mem_return_failed = internal global [264 x i8] c"\22mem_id=%d mem_type=%s page=%p\22, REC->mem_id, __print_symbolic(REC->mem_type, { MEM_TYPE_PAGE_SHARED, \22PAGE_SHARED\22 }, { MEM_TYPE_PAGE_ORDER0, \22PAGE_ORDER0\22 }, { MEM_TYPE_PAGE_POOL, \22PAGE_POOL\22 }, { MEM_TYPE_XSK_BUFF_POOL, \22XSK_BUFF_POOL\22 }, { -1, 0 }), REC->page\00", align 1
@event_mem_return_failed = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_mem_return_failed, %union.anon.199 { ptr @__tracepoint_mem_return_failed }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_mem_return_failed }, ptr @print_fmt_mem_return_failed, ptr null, %union.anon.200 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mem_return_failed = internal global ptr @event_mem_return_failed, section "_ftrace_events", align 4
@__kstrtab___tracepoint_xdp_exception = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_xdp_exception = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_xdp_exception = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_xdp_exception to i32), ptr @__kstrtab___tracepoint_xdp_exception, ptr @__kstrtabns___tracepoint_xdp_exception }, section "___ksymtab_gpl+__tracepoint_xdp_exception", align 4
@__kstrtab___traceiter_xdp_exception = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_xdp_exception = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_xdp_exception = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_xdp_exception to i32), ptr @__kstrtab___traceiter_xdp_exception, ptr @__kstrtabns___traceiter_xdp_exception }, section "___ksymtab_gpl+__traceiter_xdp_exception", align 4
@__kstrtab___SCK__tp_func_xdp_exception = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_xdp_exception = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_xdp_exception = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_xdp_exception to i32), ptr @__kstrtab___SCK__tp_func_xdp_exception, ptr @__kstrtabns___SCK__tp_func_xdp_exception }, section "___ksymtab_gpl+__SCK__tp_func_xdp_exception", align 4
@__kstrtab___tracepoint_xdp_bulk_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns___tracepoint_xdp_bulk_tx = external dso_local constant [0 x i8], align 1
@__ksymtab___tracepoint_xdp_bulk_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__tracepoint_xdp_bulk_tx to i32), ptr @__kstrtab___tracepoint_xdp_bulk_tx, ptr @__kstrtabns___tracepoint_xdp_bulk_tx }, section "___ksymtab_gpl+__tracepoint_xdp_bulk_tx", align 4
@__kstrtab___traceiter_xdp_bulk_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns___traceiter_xdp_bulk_tx = external dso_local constant [0 x i8], align 1
@__ksymtab___traceiter_xdp_bulk_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__traceiter_xdp_bulk_tx to i32), ptr @__kstrtab___traceiter_xdp_bulk_tx, ptr @__kstrtabns___traceiter_xdp_bulk_tx }, section "___ksymtab_gpl+__traceiter_xdp_bulk_tx", align 4
@__kstrtab___SCK__tp_func_xdp_bulk_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns___SCK__tp_func_xdp_bulk_tx = external dso_local constant [0 x i8], align 1
@__ksymtab___SCK__tp_func_xdp_bulk_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__SCK__tp_func_xdp_bulk_tx to i32), ptr @__kstrtab___SCK__tp_func_xdp_bulk_tx, ptr @__kstrtabns___SCK__tp_func_xdp_bulk_tx }, section "___ksymtab_gpl+__SCK__tp_func_xdp_bulk_tx", align 4
@bpf_map_lookup_elem_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_update_elem_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_delete_elem_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_push_elem_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_pop_elem_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_map_peek_elem_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_spin_lock_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_spin_unlock_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_jiffies64_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_prandom_u32_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_smp_processor_id_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_numa_node_id_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_ktime_get_ns_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_ktime_get_boot_ns_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_ktime_get_coarse_ns_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_current_pid_tgid_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_current_uid_gid_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_current_comm_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_current_cgroup_id_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_current_ancestor_cgroup_id_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_local_storage_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_get_ns_current_pid_tgid_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_snprintf_btf_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@bpf_seq_printf_btf_proto = weak_odr dso_local local_unnamed_addr constant %struct.bpf_func_proto zeroinitializer, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@___bpf_prog_run.jumptable = internal unnamed_addr constant [256 x ptr] [ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %60), ptr blockaddress(@___bpf_prog_run, %837), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %48), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %32), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %16), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %114), ptr blockaddress(@___bpf_prog_run, %887), ptr blockaddress(@___bpf_prog_run, %906), ptr blockaddress(@___bpf_prog_run, %102), ptr blockaddress(@___bpf_prog_run, %512), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %86), ptr blockaddress(@___bpf_prog_run, %845), ptr blockaddress(@___bpf_prog_run, %865), ptr blockaddress(@___bpf_prog_run, %73), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %1983), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %324), ptr blockaddress(@___bpf_prog_run, %1047), ptr blockaddress(@___bpf_prog_run, %1066), ptr blockaddress(@___bpf_prog_run, %312), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %1965), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %296), ptr blockaddress(@___bpf_prog_run, %1005), ptr blockaddress(@___bpf_prog_run, %1025), ptr blockaddress(@___bpf_prog_run, %283), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %1947), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %723), ptr blockaddress(@___bpf_prog_run, %1207), ptr blockaddress(@___bpf_prog_run, %1226), ptr blockaddress(@___bpf_prog_run, %707), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2001), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %685), ptr blockaddress(@___bpf_prog_run, %1165), ptr blockaddress(@___bpf_prog_run, %1185), ptr blockaddress(@___bpf_prog_run, %668), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %218), ptr blockaddress(@___bpf_prog_run, %1368), ptr blockaddress(@___bpf_prog_run, %1388), ptr blockaddress(@___bpf_prog_run, %206), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %192), ptr blockaddress(@___bpf_prog_run, %1325), ptr blockaddress(@___bpf_prog_run, %1346), ptr blockaddress(@___bpf_prog_run, %179), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %166), ptr blockaddress(@___bpf_prog_run, %967), ptr blockaddress(@___bpf_prog_run, %986), ptr blockaddress(@___bpf_prog_run, %154), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %140), ptr blockaddress(@___bpf_prog_run, %925), ptr blockaddress(@___bpf_prog_run, %945), ptr blockaddress(@___bpf_prog_run, %127), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %1875), ptr blockaddress(@___bpf_prog_run, %1859), ptr blockaddress(@___bpf_prog_run, %1840), ptr blockaddress(@___bpf_prog_run, %380), ptr blockaddress(@___bpf_prog_run, %1450), ptr blockaddress(@___bpf_prog_run, %1469), ptr blockaddress(@___bpf_prog_run, %368), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %1821), ptr blockaddress(@___bpf_prog_run, %1804), ptr blockaddress(@___bpf_prog_run, %1785), ptr blockaddress(@___bpf_prog_run, %351), ptr blockaddress(@___bpf_prog_run, %1408), ptr blockaddress(@___bpf_prog_run, %1428), ptr blockaddress(@___bpf_prog_run, %337), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %1766), ptr blockaddress(@___bpf_prog_run, %1749), ptr blockaddress(@___bpf_prog_run, %1730), ptr blockaddress(@___bpf_prog_run, %436), ptr blockaddress(@___bpf_prog_run, %1610), ptr blockaddress(@___bpf_prog_run, %1629), ptr blockaddress(@___bpf_prog_run, %424), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %1929), ptr blockaddress(@___bpf_prog_run, %1912), ptr blockaddress(@___bpf_prog_run, %1894), ptr blockaddress(@___bpf_prog_run, %407), ptr blockaddress(@___bpf_prog_run, %1568), ptr blockaddress(@___bpf_prog_run, %1588), ptr blockaddress(@___bpf_prog_run, %393), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %449), ptr blockaddress(@___bpf_prog_run, %789), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %460), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %645), ptr blockaddress(@___bpf_prog_run, %843), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %628), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %601), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %583), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %270), ptr blockaddress(@___bpf_prog_run, %1127), ptr blockaddress(@___bpf_prog_run, %1146), ptr blockaddress(@___bpf_prog_run, %258), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %244), ptr blockaddress(@___bpf_prog_run, %1085), ptr blockaddress(@___bpf_prog_run, %1105), ptr blockaddress(@___bpf_prog_run, %231), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %481), ptr blockaddress(@___bpf_prog_run, %1287), ptr blockaddress(@___bpf_prog_run, %1306), ptr blockaddress(@___bpf_prog_run, %502), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %469), ptr blockaddress(@___bpf_prog_run, %1245), ptr blockaddress(@___bpf_prog_run, %1265), ptr blockaddress(@___bpf_prog_run, %491), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %1728), ptr blockaddress(@___bpf_prog_run, %2019), ptr blockaddress(@___bpf_prog_run, %544), ptr blockaddress(@___bpf_prog_run, %1530), ptr blockaddress(@___bpf_prog_run, %1549), ptr blockaddress(@___bpf_prog_run, %571), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %527), ptr blockaddress(@___bpf_prog_run, %1488), ptr blockaddress(@___bpf_prog_run, %1508), ptr blockaddress(@___bpf_prog_run, %557), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %774), ptr blockaddress(@___bpf_prog_run, %1690), ptr blockaddress(@___bpf_prog_run, %1709), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2019), ptr blockaddress(@___bpf_prog_run, %741), ptr blockaddress(@___bpf_prog_run, %1648), ptr blockaddress(@___bpf_prog_run, %1668), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %800), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %815), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416), ptr blockaddress(@___bpf_prog_run, %2416)], align 4
@.str.13 = private unnamed_addr constant [52 x i8] c"\014BPF interpreter: unknown opcode %02x (imm: 0x%x)\0A\00", align 1
@interpreters = internal unnamed_addr constant [16 x ptr] [ptr @__bpf_prog_run32, ptr @__bpf_prog_run64, ptr @__bpf_prog_run96, ptr @__bpf_prog_run128, ptr @__bpf_prog_run160, ptr @__bpf_prog_run192, ptr @__bpf_prog_run224, ptr @__bpf_prog_run256, ptr @__bpf_prog_run288, ptr @__bpf_prog_run320, ptr @__bpf_prog_run352, ptr @__bpf_prog_run384, ptr @__bpf_prog_run416, ptr @__bpf_prog_run448, ptr @__bpf_prog_run480, ptr @__bpf_prog_run512], align 4
@dummy_bpf_prog = internal global { { i16, i8, i8, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.99 } } { { i16, i8, i8, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.99 } { i16 0, i8 0, i8 0, i32 0, i32 0, i32 0, i32 0, [8 x i8] zeroinitializer, ptr null, ptr null, ptr @__bpf_prog_ret1, ptr null, ptr null, %union.anon.99 zeroinitializer } }, align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"prog_id\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"u32\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"act\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"ifindex\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"prog_id=%d action=%s ifindex=%d\0A\00", align 1
@trace_raw_output_xdp_exception.symbols = internal constant [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.23 }, %struct.trace_print_flags { i32 1, ptr @.str.24 }, %struct.trace_print_flags { i32 2, ptr @.str.25 }, %struct.trace_print_flags { i32 3, ptr @.str.26 }, %struct.trace_print_flags { i32 4, ptr @.str.27 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.23 = private unnamed_addr constant [8 x i8] c"ABORTED\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"DROP\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"REDIRECT\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"drops\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"sent\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"ifindex=%d action=%s sent=%d drops=%d err=%d\0A\00", align 1
@trace_raw_output_xdp_bulk_tx.symbols = internal constant [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.23 }, %struct.trace_print_flags { i32 1, ptr @.str.24 }, %struct.trace_print_flags { i32 2, ptr @.str.25 }, %struct.trace_print_flags { i32 3, ptr @.str.26 }, %struct.trace_print_flags { i32 4, ptr @.str.27 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.32 = private unnamed_addr constant [11 x i8] c"to_ifindex\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"map_id\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"map_index\00", align 1
@.str.35 = private unnamed_addr constant [77 x i8] c"prog_id=%d action=%s ifindex=%d to_ifindex=%d err=%d map_id=%d map_index=%d\0A\00", align 1
@trace_raw_output_xdp_redirect_template.symbols = internal constant [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.23 }, %struct.trace_print_flags { i32 1, ptr @.str.24 }, %struct.trace_print_flags { i32 2, ptr @.str.25 }, %struct.trace_print_flags { i32 3, ptr @.str.26 }, %struct.trace_print_flags { i32 4, ptr @.str.27 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.36 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"processed\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"sched\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"xdp_pass\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"xdp_drop\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"xdp_redirect\00", align 1
@.str.43 = private unnamed_addr constant [107 x i8] c"kthread cpu=%d map_id=%d action=%s processed=%u drops=%u sched=%d xdp_pass=%u xdp_drop=%u xdp_redirect=%u\0A\00", align 1
@trace_raw_output_xdp_cpumap_kthread.symbols = internal constant [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.23 }, %struct.trace_print_flags { i32 1, ptr @.str.24 }, %struct.trace_print_flags { i32 2, ptr @.str.25 }, %struct.trace_print_flags { i32 3, ptr @.str.26 }, %struct.trace_print_flags { i32 4, ptr @.str.27 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.44 = private unnamed_addr constant [7 x i8] c"to_cpu\00", align 1
@.str.45 = private unnamed_addr constant [68 x i8] c"enqueue cpu=%d map_id=%d action=%s processed=%u drops=%u to_cpu=%d\0A\00", align 1
@trace_raw_output_xdp_cpumap_enqueue.symbols = internal constant [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.23 }, %struct.trace_print_flags { i32 1, ptr @.str.24 }, %struct.trace_print_flags { i32 2, ptr @.str.25 }, %struct.trace_print_flags { i32 3, ptr @.str.26 }, %struct.trace_print_flags { i32 4, ptr @.str.27 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.46 = private unnamed_addr constant [13 x i8] c"from_ifindex\00", align 1
@.str.47 = private unnamed_addr constant [78 x i8] c"ndo_xdp_xmit from_ifindex=%d to_ifindex=%d action=%s sent=%d drops=%d err=%d\0A\00", align 1
@trace_raw_output_xdp_devmap_xmit.symbols = internal constant [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.23 }, %struct.trace_print_flags { i32 1, ptr @.str.24 }, %struct.trace_print_flags { i32 2, ptr @.str.25 }, %struct.trace_print_flags { i32 3, ptr @.str.26 }, %struct.trace_print_flags { i32 4, ptr @.str.27 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.48 = private unnamed_addr constant [33 x i8] c"const struct xdp_mem_allocator *\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"xa\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"mem_id\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"mem_type\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"const void *\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"allocator\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"mem_id=%d mem_type=%s allocator=%p\0A\00", align 1
@trace_raw_output_mem_disconnect.symbols = internal constant [6 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.55 }, %struct.trace_print_flags { i32 1, ptr @.str.56 }, %struct.trace_print_flags { i32 2, ptr @.str.57 }, %struct.trace_print_flags { i32 3, ptr @.str.58 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.55 = private unnamed_addr constant [12 x i8] c"PAGE_SHARED\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"PAGE_ORDER0\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"PAGE_POOL\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"XSK_BUFF_POOL\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c"const struct xdp_rxq_info *\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"rxq\00", align 1
@.str.61 = private unnamed_addr constant [47 x i8] c"mem_id=%d mem_type=%s allocator=%p ifindex=%d\0A\00", align 1
@trace_raw_output_mem_connect.symbols = internal constant [6 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.55 }, %struct.trace_print_flags { i32 1, ptr @.str.56 }, %struct.trace_print_flags { i32 2, ptr @.str.57 }, %struct.trace_print_flags { i32 3, ptr @.str.58 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@.str.62 = private unnamed_addr constant [20 x i8] c"const struct page *\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"mem_id=%d mem_type=%s page=%p\0A\00", align 1
@trace_raw_output_mem_return_failed.symbols = internal constant [6 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.55 }, %struct.trace_print_flags { i32 1, ptr @.str.56 }, %struct.trace_print_flags { i32 2, ptr @.str.57 }, %struct.trace_print_flags { i32 3, ptr @.str.58 }, %struct.trace_print_flags { i32 -1, ptr null }, %struct.trace_print_flags { i32 -1, ptr null }], align 4
@llvm.compiler.used = appending global [87 x ptr] [ptr @TRACE_SYSTEM_MEM_TYPE_PAGE_ORDER0, ptr @TRACE_SYSTEM_MEM_TYPE_PAGE_POOL, ptr @TRACE_SYSTEM_MEM_TYPE_PAGE_SHARED, ptr @TRACE_SYSTEM_MEM_TYPE_XSK_BUFF_POOL, ptr @TRACE_SYSTEM_XDP_ABORTED, ptr @TRACE_SYSTEM_XDP_DROP, ptr @TRACE_SYSTEM_XDP_PASS, ptr @TRACE_SYSTEM_XDP_REDIRECT, ptr @TRACE_SYSTEM_XDP_TX, ptr @__TRACE_SYSTEM_MEM_TYPE_PAGE_ORDER0, ptr @__TRACE_SYSTEM_MEM_TYPE_PAGE_POOL, ptr @__TRACE_SYSTEM_MEM_TYPE_PAGE_SHARED, ptr @__TRACE_SYSTEM_MEM_TYPE_XSK_BUFF_POOL, ptr @__TRACE_SYSTEM_XDP_ABORTED, ptr @__TRACE_SYSTEM_XDP_DROP, ptr @__TRACE_SYSTEM_XDP_PASS, ptr @__TRACE_SYSTEM_XDP_REDIRECT, ptr @__TRACE_SYSTEM_XDP_TX, ptr @__event_mem_connect, ptr @__event_mem_disconnect, ptr @__event_mem_return_failed, ptr @__event_xdp_bulk_tx, ptr @__event_xdp_cpumap_enqueue, ptr @__event_xdp_cpumap_kthread, ptr @__event_xdp_devmap_xmit, ptr @__event_xdp_exception, ptr @__event_xdp_redirect, ptr @__event_xdp_redirect_err, ptr @__event_xdp_redirect_map, ptr @__event_xdp_redirect_map_err, ptr @__ksymtab___SCK__tp_func_xdp_bulk_tx, ptr @__ksymtab___SCK__tp_func_xdp_exception, ptr @__ksymtab___bpf_call_base, ptr @__ksymtab___traceiter_xdp_bulk_tx, ptr @__ksymtab___traceiter_xdp_exception, ptr @__ksymtab___tracepoint_xdp_bulk_tx, ptr @__ksymtab___tracepoint_xdp_exception, ptr @__ksymtab_bpf_event_output, ptr @__ksymtab_bpf_prog_alloc, ptr @__ksymtab_bpf_prog_free, ptr @__ksymtab_bpf_prog_select_runtime, ptr @__ksymtab_bpf_stats_enabled_key, ptr @__tracepoint_mem_connect, ptr @__tracepoint_mem_disconnect, ptr @__tracepoint_mem_return_failed, ptr @__tracepoint_ptr_mem_connect, ptr @__tracepoint_ptr_mem_disconnect, ptr @__tracepoint_ptr_mem_return_failed, ptr @__tracepoint_ptr_xdp_bulk_tx, ptr @__tracepoint_ptr_xdp_cpumap_enqueue, ptr @__tracepoint_ptr_xdp_cpumap_kthread, ptr @__tracepoint_ptr_xdp_devmap_xmit, ptr @__tracepoint_ptr_xdp_exception, ptr @__tracepoint_ptr_xdp_redirect, ptr @__tracepoint_ptr_xdp_redirect_err, ptr @__tracepoint_ptr_xdp_redirect_map, ptr @__tracepoint_ptr_xdp_redirect_map_err, ptr @__tracepoint_xdp_bulk_tx, ptr @__tracepoint_xdp_cpumap_enqueue, ptr @__tracepoint_xdp_cpumap_kthread, ptr @__tracepoint_xdp_devmap_xmit, ptr @__tracepoint_xdp_exception, ptr @__tracepoint_xdp_redirect, ptr @__tracepoint_xdp_redirect_err, ptr @__tracepoint_xdp_redirect_map, ptr @__tracepoint_xdp_redirect_map_err, ptr @event_class_mem_connect, ptr @event_class_mem_disconnect, ptr @event_class_mem_return_failed, ptr @event_class_xdp_bulk_tx, ptr @event_class_xdp_cpumap_enqueue, ptr @event_class_xdp_cpumap_kthread, ptr @event_class_xdp_devmap_xmit, ptr @event_class_xdp_exception, ptr @event_class_xdp_redirect_template, ptr @event_mem_connect, ptr @event_mem_disconnect, ptr @event_mem_return_failed, ptr @event_xdp_bulk_tx, ptr @event_xdp_cpumap_enqueue, ptr @event_xdp_cpumap_kthread, ptr @event_xdp_devmap_xmit, ptr @event_xdp_exception, ptr @event_xdp_redirect, ptr @event_xdp_redirect_err, ptr @event_xdp_redirect_map, ptr @event_xdp_redirect_map_err], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @bpf_internal_load_pointer_neg_helper(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %1, -1048577
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 18
  %9 = load i16, ptr %8, align 4
  %10 = zext i16 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = getelementptr i8, ptr %11, i32 %1
  %13 = getelementptr i8, ptr %12, i32 1048576
  br label %25

14:                                               ; preds = %3
  %15 = icmp ugt i32 %1, -2097153
  %16 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 16
  %17 = load ptr, ptr %16, align 8
  br i1 %15, label %18, label %25

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 13, i32 0, i32 19
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %17, i32 %21
  %23 = getelementptr i8, ptr %22, i32 %1
  %24 = getelementptr i8, ptr %23, i32 2097152
  br label %25

25:                                               ; preds = %18, %14, %5
  %26 = phi ptr [ %7, %5 ], [ %17, %18 ], [ %17, %14 ]
  %27 = phi ptr [ %13, %5 ], [ %24, %18 ], [ null, %14 ]
  %28 = icmp ult ptr %27, %26
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %27, i32 %2
  %31 = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 14
  %32 = load ptr, ptr %31, align 8
  %33 = icmp ugt ptr %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %25
  br label %35

35:                                               ; preds = %34, %29
  %36 = phi ptr [ null, %34 ], [ %27, %29 ]
  ret ptr %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bpf_prog_alloc_no_stats(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = or i32 %1, 4197824
  %4 = add i32 %0, -1
  %5 = or i32 %4, 4095
  %6 = add i32 %5, 1
  %7 = tail call noalias ptr @__vmalloc(i32 noundef %6, i32 noundef %3) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %2
  %10 = or i32 %1, 4197568
  %11 = and i32 %1, 17
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13, !prof !9

13:                                               ; preds = %9
  %14 = and i32 %1, 1
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 1, i32 2
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i32 [ 0, %9 ], [ %16, %13 ]
  %19 = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %18, i32 9
  %20 = load ptr, ptr %19, align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef %3, i32 noundef 464) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  tail call void @vfree(ptr noundef nonnull %7) #22
  br label %42

24:                                               ; preds = %17
  %25 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 4, i32 noundef 4, i32 noundef %10) #20
  %26 = getelementptr inbounds %struct.bpf_prog, ptr %7, i32 0, i32 8
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void @vfree(ptr noundef nonnull %7) #22
  tail call void @kfree(ptr noundef nonnull %21) #22
  br label %42

29:                                               ; preds = %24
  %30 = lshr exact i32 %6, 12
  %31 = trunc i32 %30 to i16
  store i16 %31, ptr %7, align 4
  %32 = getelementptr inbounds %struct.bpf_prog, ptr %7, i32 0, i32 10
  store ptr %21, ptr %32, align 4
  %33 = getelementptr inbounds %struct.bpf_prog_aux, ptr %21, i32 0, i32 41
  store ptr %7, ptr %33, align 4
  %34 = getelementptr inbounds %struct.bpf_prog, ptr %7, i32 0, i32 1
  %35 = load i16, ptr %34, align 2
  %36 = and i16 %35, -3
  store i16 %36, ptr %34, align 2
  %37 = getelementptr inbounds %struct.bpf_prog_aux, ptr %21, i32 0, i32 36, i32 3
  store volatile ptr %37, ptr %37, align 8
  %38 = getelementptr inbounds %struct.bpf_prog_aux, ptr %21, i32 0, i32 36, i32 3, i32 1
  store volatile ptr %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.bpf_prog_aux, ptr %21, i32 0, i32 39
  tail call void @__mutex_init(ptr noundef %39, ptr noundef nonnull @.str, ptr noundef nonnull @bpf_prog_alloc_no_stats.__key) #22
  %40 = load ptr, ptr %32, align 4
  %41 = getelementptr inbounds %struct.bpf_prog_aux, ptr %40, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %41, ptr noundef nonnull @.str.2, ptr noundef nonnull @bpf_prog_alloc_no_stats.__key.1) #22
  br label %42

42:                                               ; preds = %29, %28, %23, %2
  %43 = phi ptr [ null, %23 ], [ %7, %29 ], [ null, %28 ], [ null, %2 ]
  ret ptr %43
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bpf_prog_alloc(i32 noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @bpf_prog_alloc_no_stats(i32 noundef %0, i32 noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %2
  %6 = or i32 %1, 4197824
  %7 = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 32, i32 noundef 16, i32 noundef %6) #20
  %8 = getelementptr inbounds %struct.bpf_prog, ptr %3, i32 0, i32 7
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %12 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #23
  %13 = icmp ult i32 %12, %11
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = ptrtoint ptr %7 to i32
  %16 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %15
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.bpf_prog_stats, ptr %19, i32 0, i32 3
  store i32 0, ptr %20, align 4
  %21 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef nonnull @__cpu_possible_mask) #23
  %22 = icmp ult i32 %21, %11
  br i1 %22, label %28, label %39

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.bpf_prog, ptr %3, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  tail call void @free_percpu(ptr noundef %25) #22
  %26 = getelementptr inbounds %struct.bpf_prog, ptr %3, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  tail call void @kfree(ptr noundef %27) #22
  tail call void @vfree(ptr noundef nonnull %3) #22
  br label %39

28:                                               ; preds = %28, %14
  %29 = phi i32 [ %37, %28 ], [ %21, %14 ]
  %30 = load ptr, ptr %8, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, %31
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr inbounds %struct.bpf_prog_stats, ptr %35, i32 0, i32 3
  store i32 0, ptr %36, align 4
  %37 = tail call i32 @cpumask_next(i32 noundef %29, ptr noundef nonnull @__cpu_possible_mask) #23
  %38 = icmp ult i32 %37, %11
  br i1 %38, label %28, label %39

39:                                               ; preds = %28, %23, %14, %10, %2
  %40 = phi ptr [ null, %23 ], [ null, %2 ], [ %3, %10 ], [ %3, %14 ], [ %3, %28 ]
  ret ptr %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_alloc_jited_linfo(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 54
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 2
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %7
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 4) #22
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %19, label %15, !prof !10

15:                                               ; preds = %12
  %16 = extractvalue { i32, i1 } %13, 0
  %17 = tail call noalias ptr @kvmalloc_node(i32 noundef %16, i32 noundef 4206016, i32 noundef -1) #20
  %18 = load ptr, ptr %2, align 4
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi ptr [ %18, %15 ], [ %3, %12 ]
  %21 = phi ptr [ %17, %15 ], [ null, %12 ]
  %22 = getelementptr inbounds %struct.bpf_prog_aux, ptr %20, i32 0, i32 52
  store ptr %21, ptr %22, align 8
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.bpf_prog_aux, ptr %23, i32 0, i32 52
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, i32 -12, i32 0
  br label %28

28:                                               ; preds = %19, %7, %1
  %29 = phi i32 [ 0, %7 ], [ 0, %1 ], [ %27, %19 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bpf_prog_jit_attempt_done(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 52
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %5, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12, %7
  tail call void @kvfree(ptr noundef nonnull %5) #22
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.bpf_prog_aux, ptr %16, i32 0, i32 52
  store ptr null, ptr %17, align 8
  %18 = load ptr, ptr %2, align 4
  br label %19

19:                                               ; preds = %15, %12, %1
  %20 = phi ptr [ %18, %15 ], [ %3, %12 ], [ %3, %1 ]
  %21 = getelementptr inbounds %struct.bpf_prog_aux, ptr %20, i32 0, i32 33
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #22
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.bpf_prog_aux, ptr %23, i32 0, i32 33
  store ptr null, ptr %24, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bpf_prog_fill_jited_linfo(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bpf_prog_aux, ptr %4, i32 0, i32 52
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %42, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.bpf_prog_aux, ptr %4, i32 0, i32 55
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.bpf_prog_aux, ptr %4, i32 0, i32 51
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.bpf_line_info, ptr %12, i32 %10
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = getelementptr ptr, ptr %6, i32 %10
  %19 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 9
  %20 = load ptr, ptr %19, align 4
  store ptr %20, ptr %18, align 4
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.bpf_prog_aux, ptr %21, i32 0, i32 54
  %23 = load i32, ptr %22, align 8
  %24 = sub i32 %23, %10
  %25 = icmp ugt i32 %24, 1
  br i1 %25, label %26, label %42

26:                                               ; preds = %8
  %27 = xor i32 %14, -1
  br label %28

28:                                               ; preds = %33, %26
  %29 = phi i32 [ 1, %26 ], [ %40, %33 ]
  %30 = getelementptr %struct.bpf_line_info, ptr %13, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, %17
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load ptr, ptr %19, align 4
  %35 = add i32 %31, %27
  %36 = getelementptr i32, ptr %1, i32 %35
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %34, i32 %37
  %39 = getelementptr ptr, ptr %18, i32 %29
  store ptr %38, ptr %39, align 4
  %40 = add nuw i32 %29, 1
  %41 = icmp eq i32 %40, %24
  br i1 %41, label %42, label %28

42:                                               ; preds = %33, %28, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bpf_prog_realloc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = add i32 %1, -1
  %5 = or i32 %4, 4095
  %6 = add i32 %5, 1
  %7 = lshr exact i32 %6, 12
  %8 = load i16, ptr %0, align 4
  %9 = zext i16 %8 to i32
  %10 = icmp ugt i32 %7, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = or i32 %2, 4197824
  %13 = tail call noalias ptr @__vmalloc(i32 noundef %6, i32 noundef %12) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = load i16, ptr %0, align 4
  %17 = zext i16 %16 to i32
  %18 = shl nuw nsw i32 %17, 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %13, ptr align 4 %0, i32 %18, i1 false)
  %19 = trunc i32 %7 to i16
  store i16 %19, ptr %13, align 4
  %20 = getelementptr inbounds %struct.bpf_prog, ptr %13, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.bpf_prog_aux, ptr %21, i32 0, i32 41
  store ptr %13, ptr %22, align 4
  %23 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 10
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 7
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 8
  store ptr null, ptr %25, align 4
  tail call void @free_percpu(ptr noundef null) #22
  %26 = load ptr, ptr %25, align 4
  tail call void @free_percpu(ptr noundef %26) #22
  tail call void @vfree(ptr noundef %0) #22
  br label %27

27:                                               ; preds = %15, %11, %3
  %28 = phi ptr [ %0, %3 ], [ %13, %15 ], [ null, %11 ]
  ret ptr %28
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__bpf_prog_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 32
  %7 = load ptr, ptr %6, align 8
  tail call void @kfree(ptr noundef %7) #22
  %8 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %8) #22
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  tail call void @free_percpu(ptr noundef %11) #22
  %12 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  tail call void @free_percpu(ptr noundef %13) #22
  tail call void @vfree(ptr noundef %0) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_calc_tag(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = alloca [5 x i32], align 8
  %3 = alloca [16 x i32], align 4
  %4 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 3
  %7 = add i32 %6, 8
  %8 = or i32 %7, 63
  %9 = add i32 %8, 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i32 20, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #22
  %10 = tail call noalias ptr @vmalloc(i32 noundef %9) #20
  %11 = icmp eq ptr %10, null
  br i1 %11, label %90, label %12

12:                                               ; preds = %1
  call void @sha1_init(ptr noundef nonnull %2) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false)
  %13 = load i32, ptr %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %49, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 1
  br label %17

17:                                               ; preds = %45, %15
  %18 = phi i1 [ false, %15 ], [ %46, %45 ]
  %19 = phi i32 [ 0, %15 ], [ %47, %45 ]
  %20 = getelementptr %struct.bpf_insn, ptr %10, i32 %19
  %21 = getelementptr [0 x %struct.bpf_insn], ptr %16, i32 0, i32 %19
  %22 = load i64, ptr %21, align 4
  store i64 %22, ptr %20, align 4
  %23 = trunc i64 %22 to i8
  br i1 %18, label %32, label %24

24:                                               ; preds = %17
  %25 = icmp eq i8 %23, 24
  br i1 %25, label %26, label %45

26:                                               ; preds = %24
  %27 = getelementptr %struct.bpf_insn, ptr %10, i32 %19, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = lshr i8 %28, 4
  %30 = add nsw i8 %29, -1
  %31 = icmp ult i8 %30, 2
  br i1 %31, label %42, label %45

32:                                               ; preds = %17
  %33 = icmp eq i8 %23, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %32
  %35 = getelementptr %struct.bpf_insn, ptr %10, i32 %19, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = getelementptr %struct.bpf_insn, ptr %10, i32 %19, i32 2
  %40 = load i16, ptr %39, align 2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %26
  %43 = xor i1 %18, true
  %44 = getelementptr %struct.bpf_insn, ptr %10, i32 %19, i32 3
  store i32 0, ptr %44, align 4
  br label %45

45:                                               ; preds = %42, %38, %34, %32, %26, %24
  %46 = phi i1 [ false, %24 ], [ false, %26 ], [ false, %38 ], [ false, %34 ], [ false, %32 ], [ %43, %42 ]
  %47 = add nuw i32 %19, 1
  %48 = icmp eq i32 %47, %13
  br i1 %48, label %49, label %17

49:                                               ; preds = %45, %12
  %50 = shl i32 %13, 3
  %51 = getelementptr i8, ptr %10, i32 %50
  %52 = sub i32 %9, %50
  call void @llvm.memset.p0.i32(ptr align 1 %51, i8 0, i32 %52, i1 false)
  store i8 -128, ptr %51, align 1
  %53 = or i32 %50, 63
  %54 = add i32 %53, 1
  %55 = lshr exact i32 %54, 6
  %56 = sub i32 %53, %50
  %57 = icmp eq i32 %56, 7
  %58 = getelementptr i8, ptr %10, i32 %54
  %59 = select i1 %57, i32 56, i32 -8
  %60 = getelementptr i8, ptr %58, i32 %59
  %61 = shl i32 %13, 6
  %62 = zext i32 %61 to i64
  %63 = call i64 @llvm.bswap.i64(i64 %62)
  store i64 %63, ptr %60, align 8
  %64 = zext i1 %57 to i32
  %65 = add nuw nsw i32 %55, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %84, %49
  %68 = load i32, ptr %2, align 8
  %69 = call i32 @llvm.bswap.i32(i32 %68)
  store i32 %69, ptr %2, align 8
  %70 = getelementptr inbounds [5 x i32], ptr %2, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71)
  store i32 %72, ptr %70, align 4
  %73 = getelementptr inbounds [5 x i32], ptr %2, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = call i32 @llvm.bswap.i32(i32 %74)
  store i32 %75, ptr %73, align 8
  %76 = getelementptr inbounds [5 x i32], ptr %2, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = call i32 @llvm.bswap.i32(i32 %77)
  store i32 %78, ptr %76, align 4
  %79 = getelementptr inbounds [5 x i32], ptr %2, i32 0, i32 4
  %80 = load i32, ptr %79, align 8
  %81 = call i32 @llvm.bswap.i32(i32 %80)
  store i32 %81, ptr %79, align 8
  %82 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 6
  %83 = load i64, ptr %2, align 8
  store i64 %83, ptr %82, align 4
  call void @vfree(ptr noundef nonnull %10) #22
  br label %90

84:                                               ; preds = %84, %49
  %85 = phi ptr [ %88, %84 ], [ %10, %49 ]
  %86 = phi i32 [ %87, %84 ], [ %65, %49 ]
  %87 = add nsw i32 %86, -1
  call void @sha1_transform(ptr noundef nonnull %2, ptr noundef %85, ptr noundef nonnull %3) #22
  %88 = getelementptr i8, ptr %85, i32 64
  %89 = icmp eq i32 %87, 0
  br i1 %89, label %67, label %84

90:                                               ; preds = %67, %1
  %91 = phi i32 [ 0, %67 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #22
  ret i32 %91
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha1_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha1_transform(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bpf_patch_insn_single(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = add i32 %3, -1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 1
  %9 = getelementptr %struct.bpf_insn, ptr %8, i32 %1
  %10 = load i64, ptr %2, align 4
  store i64 %10, ptr %9, align 4
  br label %98

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %5
  %15 = icmp ugt i32 %14, 32767
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = add i32 %1, 1
  %18 = add i32 %3, %1
  %19 = tail call fastcc i32 @bpf_adj_branches(ptr noundef %0, i32 noundef %1, i32 noundef %17, i32 noundef %18, i1 noundef zeroext true)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = inttoptr i32 %19 to ptr
  br label %98

23:                                               ; preds = %16, %11
  %24 = shl i32 %14, 3
  %25 = add i32 %24, 48
  %26 = tail call i32 @llvm.umax.i32(i32 %25, i32 48) #22
  %27 = add i32 %26, -1
  %28 = or i32 %27, 4095
  %29 = add i32 %28, 1
  %30 = lshr exact i32 %29, 12
  %31 = load i16, ptr %0, align 4
  %32 = zext i16 %31 to i32
  %33 = icmp ugt i32 %30, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %23
  %35 = tail call noalias ptr @__vmalloc(i32 noundef %29, i32 noundef 5246400) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %98, label %37

37:                                               ; preds = %34
  %38 = load i16, ptr %0, align 4
  %39 = zext i16 %38 to i32
  %40 = shl nuw nsw i32 %39, 12
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %35, ptr align 4 %0, i32 %40, i1 false) #22
  %41 = trunc i32 %30 to i16
  store i16 %41, ptr %35, align 4
  %42 = getelementptr inbounds %struct.bpf_prog, ptr %35, i32 0, i32 10
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.bpf_prog_aux, ptr %43, i32 0, i32 41
  store ptr %35, ptr %44, align 4
  %45 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 10
  store ptr null, ptr %45, align 4
  %46 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 7
  store ptr null, ptr %46, align 4
  %47 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 8
  store ptr null, ptr %47, align 4
  tail call void @free_percpu(ptr noundef null) #22
  %48 = load ptr, ptr %47, align 4
  tail call void @free_percpu(ptr noundef %48) #22
  tail call void @vfree(ptr noundef %0) #22
  br label %51

49:                                               ; preds = %23
  %50 = icmp eq ptr %0, null
  br i1 %50, label %98, label %51

51:                                               ; preds = %49, %37
  %52 = phi ptr [ %35, %37 ], [ %0, %49 ]
  %53 = getelementptr inbounds %struct.bpf_prog, ptr %52, i32 0, i32 4
  store i32 %14, ptr %53, align 4
  %54 = add i32 %3, %1
  %55 = sub i32 %14, %54
  %56 = getelementptr inbounds %struct.bpf_prog, ptr %52, i32 1
  %57 = getelementptr %struct.bpf_insn, ptr %56, i32 %1
  %58 = getelementptr %struct.bpf_insn, ptr %57, i32 %3
  %59 = getelementptr %struct.bpf_insn, ptr %57, i32 1
  %60 = shl i32 %55, 3
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %58, ptr align 4 %59, i32 %60, i1 false)
  %61 = shl i32 %3, 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %57, ptr align 4 %2, i32 %61, i1 false)
  %62 = add i32 %1, 1
  %63 = tail call fastcc i32 @bpf_adj_branches(ptr noundef nonnull %52, i32 noundef %1, i32 noundef %62, i32 noundef %54, i1 noundef zeroext false)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65, !prof !9

65:                                               ; preds = %51
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/bpf/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 496, 0\0A.popsection", ""() #22, !srcloc !12
  unreachable

66:                                               ; preds = %51
  %67 = getelementptr inbounds %struct.bpf_prog, ptr %52, i32 0, i32 10
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.bpf_prog_aux, ptr %68, i32 0, i32 54
  %70 = load i32, ptr %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %98, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.bpf_prog_aux, ptr %68, i32 0, i32 51
  %74 = load ptr, ptr %73, align 4
  br label %75

75:                                               ; preds = %80, %72
  %76 = phi i32 [ %81, %80 ], [ 0, %72 ]
  %77 = getelementptr %struct.bpf_line_info, ptr %74, i32 %76
  %78 = load i32, ptr %77, align 4
  %79 = icmp ugt i32 %78, %1
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = add nuw i32 %76, 1
  %82 = icmp eq i32 %81, %70
  br i1 %82, label %98, label %75

83:                                               ; preds = %75
  %84 = icmp ult i32 %76, %70
  br i1 %84, label %85, label %98

85:                                               ; preds = %83
  %86 = getelementptr %struct.bpf_line_info, ptr %74, i32 %76
  %87 = add i32 %78, %5
  store i32 %87, ptr %86, align 4
  %88 = add nuw i32 %76, 1
  %89 = icmp eq i32 %88, %70
  br i1 %89, label %98, label %90

90:                                               ; preds = %90, %85
  %91 = phi i32 [ %96, %90 ], [ %88, %85 ]
  %92 = getelementptr %struct.bpf_line_info, ptr %74, i32 %91
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr %struct.bpf_line_info, ptr %74, i32 %91
  %95 = add i32 %93, %5
  store i32 %95, ptr %94, align 4
  %96 = add nuw i32 %91, 1
  %97 = icmp eq i32 %96, %70
  br i1 %97, label %98, label %90

98:                                               ; preds = %90, %85, %83, %80, %66, %49, %34, %21, %7
  %99 = phi ptr [ %0, %7 ], [ %22, %21 ], [ inttoptr (i32 -12 to ptr), %49 ], [ %52, %66 ], [ %52, %83 ], [ inttoptr (i32 -12 to ptr), %34 ], [ %52, %85 ], [ %52, %90 ], [ %52, %80 ]
  ret ptr %99
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @bpf_adj_branches(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #6 {
  %6 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %3, %2
  %9 = select i1 %4, i32 %8, i32 0
  %10 = add i32 %7, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %136, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 1
  %14 = getelementptr %struct.bpf_insn, ptr %13, i32 %2
  %15 = sext i32 %2 to i64
  %16 = sext i32 %8 to i64
  %17 = sext i32 %3 to i64
  br label %18

18:                                               ; preds = %132, %12
  %19 = phi ptr [ %13, %12 ], [ %134, %132 ]
  %20 = phi i32 [ 0, %12 ], [ %133, %132 ]
  %21 = icmp eq i32 %20, %1
  %22 = select i1 %4, i1 %21, i1 false
  %23 = select i1 %22, i32 %3, i32 %20
  %24 = select i1 %22, ptr %14, ptr %19
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 24
  br i1 %26, label %27, label %61

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.bpf_insn, ptr %24, i32 0, i32 1
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, -16
  %31 = icmp eq i8 %30, 64
  br i1 %31, label %32, label %132

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.bpf_insn, ptr %24, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i32 %23, %1
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = sext i32 %23 to i64
  %39 = add nsw i64 %35, 1
  %40 = add nsw i64 %39, %38
  %41 = icmp slt i64 %40, %15
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = add nsw i64 %35, %16
  br label %53

44:                                               ; preds = %37, %32
  %45 = icmp slt i32 %23, %3
  br i1 %45, label %53, label %46

46:                                               ; preds = %44
  %47 = sext i32 %23 to i64
  %48 = add nsw i64 %35, 1
  %49 = add nsw i64 %48, %47
  %50 = icmp slt i64 %49, %17
  %51 = select i1 %50, i64 %16, i64 0
  %52 = sub nsw i64 %35, %51
  br label %53

53:                                               ; preds = %46, %44, %42
  %54 = phi i64 [ %43, %42 ], [ %35, %44 ], [ %52, %46 ]
  %55 = add nsw i64 %54, -2147483648
  %56 = icmp ult i64 %55, -4294967296
  %57 = or i1 %56, %4
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = trunc i64 %54 to i32
  store i32 %59, ptr %33, align 4
  br label %132

60:                                               ; preds = %53
  br i1 %56, label %136, label %132

61:                                               ; preds = %18
  %62 = and i8 %25, 7
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 %63, -5
  %65 = icmp ult i32 %64, 2
  br i1 %65, label %66, label %132

66:                                               ; preds = %61
  %67 = and i8 %25, -16
  switch i8 %67, label %102 [
    i8 -112, label %132
    i8 -128, label %68
  ]

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.bpf_insn, ptr %24, i32 0, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = and i8 %70, -16
  %72 = icmp eq i8 %71, 16
  br i1 %72, label %73, label %132

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.bpf_insn, ptr %24, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp ult i32 %23, %1
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = sext i32 %23 to i64
  %80 = add nsw i64 %76, 1
  %81 = add nsw i64 %80, %79
  %82 = icmp slt i64 %81, %15
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  %84 = add nsw i64 %76, %16
  br label %94

85:                                               ; preds = %78, %73
  %86 = icmp slt i32 %23, %3
  br i1 %86, label %94, label %87

87:                                               ; preds = %85
  %88 = sext i32 %23 to i64
  %89 = add nsw i64 %76, 1
  %90 = add nsw i64 %89, %88
  %91 = icmp slt i64 %90, %17
  %92 = select i1 %91, i64 %16, i64 0
  %93 = sub nsw i64 %76, %92
  br label %94

94:                                               ; preds = %87, %85, %83
  %95 = phi i64 [ %84, %83 ], [ %76, %85 ], [ %93, %87 ]
  %96 = add nsw i64 %95, -2147483648
  %97 = icmp ult i64 %96, -4294967296
  %98 = or i1 %97, %4
  %99 = select i1 %97, i32 -34, i32 0
  br i1 %98, label %129, label %100

100:                                              ; preds = %94
  %101 = trunc i64 %95 to i32
  store i32 %101, ptr %74, align 4
  br label %132

102:                                              ; preds = %66
  %103 = getelementptr inbounds %struct.bpf_insn, ptr %24, i32 0, i32 2
  %104 = load i16, ptr %103, align 2
  %105 = sext i16 %104 to i32
  %106 = icmp ult i32 %23, %1
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = add nuw i32 %23, 1
  %109 = add i32 %108, %105
  %110 = icmp slt i32 %109, %2
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = add i32 %8, %105
  br label %121

113:                                              ; preds = %107, %102
  %114 = icmp slt i32 %23, %3
  br i1 %114, label %121, label %115

115:                                              ; preds = %113
  %116 = add i32 %23, 1
  %117 = add i32 %116, %105
  %118 = icmp slt i32 %117, %3
  %119 = select i1 %118, i32 %8, i32 0
  %120 = sub i32 %105, %119
  br label %121

121:                                              ; preds = %115, %113, %111
  %122 = phi i32 [ %112, %111 ], [ %105, %113 ], [ %120, %115 ]
  %123 = add i32 %122, -32768
  %124 = icmp ult i32 %123, -65536
  %125 = or i1 %124, %4
  %126 = select i1 %124, i32 -34, i32 0
  br i1 %125, label %129, label %127

127:                                              ; preds = %121
  %128 = trunc i32 %122 to i16
  store i16 %128, ptr %103, align 2
  br label %132

129:                                              ; preds = %121, %94
  %130 = phi i32 [ %99, %94 ], [ %126, %121 ]
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129, %127, %100, %68, %66, %61, %60, %58, %27
  %133 = add i32 %23, 1
  %134 = getelementptr %struct.bpf_insn, ptr %24, i32 1
  %135 = icmp ult i32 %133, %10
  br i1 %135, label %18, label %136

136:                                              ; preds = %132, %129, %60, %5
  %137 = phi i32 [ 0, %5 ], [ 0, %132 ], [ %130, %129 ], [ -34, %60 ]
  ret i32 %137
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bpf_remove_insns(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 1
  %5 = getelementptr %struct.bpf_insn, ptr %4, i32 %1
  %6 = getelementptr %struct.bpf_insn, ptr %5, i32 %2
  %7 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %2, %1
  %10 = sub i32 %8, %9
  %11 = shl i32 %10, 3
  tail call void @llvm.memmove.p0.p0.i32(ptr align 4 %5, ptr align 4 %6, i32 %11, i1 false)
  %12 = load i32, ptr %7, align 4
  %13 = sub i32 %12, %2
  store i32 %13, ptr %7, align 4
  %14 = tail call fastcc i32 @bpf_adj_branches(ptr noundef %0, i32 noundef %1, i32 noundef %9, i32 noundef %1, i1 noundef zeroext false)
  %15 = icmp ne i32 %14, 0
  %16 = load i1, ptr @bpf_remove_insns.__already_done, align 1
  %17 = xor i1 %16, true
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %19, label %20, !prof !10

19:                                               ; preds = %3
  store i1 true, ptr @bpf_remove_insns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 512, i32 noundef 9, ptr noundef null) #22
  br label %20

20:                                               ; preds = %19, %3
  %21 = zext i1 %15 to i32
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @bpf_prog_kallsyms_del_all(ptr nocapture noundef %0) local_unnamed_addr #10 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i64 @__bpf_call_base(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #11 {
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @bpf_opcode_in_insntable(i8 noundef zeroext %0) local_unnamed_addr #10 {
  %2 = zext i8 %0 to i32
  %3 = getelementptr [256 x i8], ptr @bpf_opcode_in_insntable.public_insntable, i32 0, i32 %2
  %4 = load i8, ptr %3, align 1, !range !13
  %5 = icmp ne i8 %4, 0
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i64 @bpf_probe_read_kernel(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  tail call void @llvm.memset.p0.i32(ptr align 1 %0, i8 0, i32 %1, i1 false)
  ret i64 -14
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @bpf_patch_call_args(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #12 {
  %3 = tail call i32 @llvm.umax.i32(i32 %1, i32 1)
  %4 = getelementptr inbounds %struct.bpf_insn, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = trunc i32 %5 to i16
  %7 = getelementptr inbounds %struct.bpf_insn, ptr %0, i32 0, i32 2
  store i16 %6, ptr %7, align 2
  %8 = add i32 %3, -1
  %9 = or i32 %8, 31
  %10 = add i32 %9, 1
  %11 = lshr exact i32 %10, 5
  %12 = add nsw i32 %11, -1
  %13 = getelementptr [16 x ptr], ptr @interpreters_args, i32 0, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = sub i32 %15, ptrtoint (ptr @__bpf_call_base to i32)
  store i32 %16, ptr %4, align 4
  store i8 -27, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @bpf_prog_array_compatible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 1
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 128
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %37

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bpf_array, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  tail call void @_raw_spin_lock(ptr noundef %9) #22
  %10 = load ptr, ptr %8, align 8
  %11 = getelementptr inbounds %struct.anon.193, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.bpf_prog, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  br i1 %13, label %16, label %23

16:                                               ; preds = %7
  store i32 %15, ptr %11, align 4
  %17 = load i16, ptr %3, align 2
  %18 = load ptr, ptr %8, align 8
  %19 = getelementptr inbounds %struct.anon.193, ptr %18, i32 0, i32 2
  %20 = trunc i16 %17 to i8
  %21 = and i8 %20, 1
  store i8 %21, ptr %19, align 4
  %22 = load ptr, ptr %8, align 8
  br label %32

23:                                               ; preds = %7
  %24 = icmp eq i32 %12, %15
  br i1 %24, label %25, label %32

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.anon.193, ptr %10, i32 0, i32 2
  %27 = load i8, ptr %26, align 4, !range !13
  %28 = load i16, ptr %3, align 2
  %29 = and i16 %28, 1
  %30 = zext i8 %27 to i16
  %31 = icmp eq i16 %29, %30
  br label %32

32:                                               ; preds = %25, %23, %16
  %33 = phi ptr [ %22, %16 ], [ %10, %23 ], [ %10, %25 ]
  %34 = phi i1 [ true, %16 ], [ false, %23 ], [ %31, %25 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  %35 = load i16, ptr %33, align 4
  %36 = add i16 %35, 1
  store i16 %36, ptr %33, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %37

37:                                               ; preds = %32, %2
  %38 = phi i1 [ %34, %32 ], [ false, %2 ]
  ret i1 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bpf_prog_select_runtime(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %67

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.bpf_prog_aux, ptr %8, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @llvm.umax.i32(i32 %10, i32 1) #22
  %12 = add i32 %11, -1
  %13 = or i32 %12, 31
  %14 = add i32 %13, 1
  %15 = lshr exact i32 %14, 5
  %16 = add nsw i32 %15, -1
  %17 = getelementptr [16 x ptr], ptr @interpreters, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %3, align 4
  %19 = getelementptr inbounds %struct.bpf_prog_aux, ptr %8, i32 0, i32 54
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 1
  %24 = load i16, ptr %23, align 2
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 4) #22
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %34, label %30, !prof !10

30:                                               ; preds = %27
  %31 = extractvalue { i32, i1 } %28, 0
  %32 = tail call noalias ptr @kvmalloc_node(i32 noundef %31, i32 noundef 4206016, i32 noundef -1) #20
  %33 = load ptr, ptr %7, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi ptr [ %33, %30 ], [ %8, %27 ]
  %36 = phi ptr [ %32, %30 ], [ null, %27 ]
  %37 = getelementptr inbounds %struct.bpf_prog_aux, ptr %35, i32 0, i32 52
  store ptr %36, ptr %37, align 8
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.bpf_prog_aux, ptr %38, i32 0, i32 52
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %144, label %42

42:                                               ; preds = %34, %22, %6
  store i32 0, ptr %1, align 4
  %43 = tail call ptr @bpf_int_jit_compile(ptr noundef %0)
  %44 = getelementptr inbounds %struct.bpf_prog, ptr %43, i32 0, i32 10
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.bpf_prog_aux, ptr %45, i32 0, i32 52
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.bpf_prog, ptr %43, i32 0, i32 1
  %51 = load i16, ptr %50, align 2
  %52 = and i16 %51, 1
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load ptr, ptr %47, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54, %49
  tail call void @kvfree(ptr noundef nonnull %47) #22
  %58 = load ptr, ptr %44, align 4
  %59 = getelementptr inbounds %struct.bpf_prog_aux, ptr %58, i32 0, i32 52
  store ptr null, ptr %59, align 8
  %60 = load ptr, ptr %44, align 4
  br label %61

61:                                               ; preds = %57, %54, %42
  %62 = phi ptr [ %60, %57 ], [ %45, %54 ], [ %45, %42 ]
  %63 = getelementptr inbounds %struct.bpf_prog_aux, ptr %62, i32 0, i32 33
  %64 = load ptr, ptr %63, align 4
  tail call void @kfree(ptr noundef %64) #22
  %65 = load ptr, ptr %44, align 4
  %66 = getelementptr inbounds %struct.bpf_prog_aux, ptr %65, i32 0, i32 33
  store ptr null, ptr %66, align 4
  br label %67

67:                                               ; preds = %61, %2
  %68 = phi ptr [ %0, %2 ], [ %43, %61 ]
  %69 = getelementptr inbounds %struct.bpf_prog, ptr %68, i32 0, i32 1
  %70 = load i16, ptr %69, align 2
  %71 = and i16 %70, 1
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = tail call ptr @find_vm_area(ptr noundef %68) #22
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.vm_struct, ptr %74, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = or i32 %78, 256
  store i32 %79, ptr %77, align 4
  br label %80

80:                                               ; preds = %76, %73
  %81 = ptrtoint ptr %68 to i32
  %82 = load i16, ptr %68, align 4
  %83 = zext i16 %82 to i32
  %84 = tail call i32 @set_memory_ro(i32 noundef %81, i32 noundef %83) #22
  br label %85

85:                                               ; preds = %80, %67
  %86 = getelementptr inbounds %struct.bpf_prog, ptr %68, i32 0, i32 10
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.bpf_prog_aux, ptr %87, i32 0, i32 39
  tail call void @mutex_lock(ptr noundef %88) #22
  %89 = getelementptr inbounds %struct.bpf_prog_aux, ptr %87, i32 0, i32 1
  %90 = load i32, ptr %89, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %142, label %92

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.bpf_prog_aux, ptr %87, i32 0, i32 38
  %94 = getelementptr inbounds %struct.bpf_prog, ptr %68, i32 0, i32 2
  br label %95

95:                                               ; preds = %135, %92
  %96 = phi i32 [ 0, %92 ], [ %136, %135 ]
  %97 = load ptr, ptr %93, align 8
  %98 = getelementptr ptr, ptr %97, i32 %96
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr inbounds %struct.bpf_map, ptr %99, i32 0, i32 2
  %101 = load i32, ptr %100, align 8
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %135

103:                                              ; preds = %95
  %104 = load i16, ptr %69, align 2
  %105 = and i16 %104, 128
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %142

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.bpf_array, ptr %99, i32 0, i32 3
  %109 = load ptr, ptr %108, align 8
  tail call void @_raw_spin_lock(ptr noundef %109) #22
  %110 = load ptr, ptr %108, align 8
  %111 = getelementptr inbounds %struct.anon.193, ptr %110, i32 0, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  %114 = load i32, ptr %94, align 4
  br i1 %113, label %115, label %124

115:                                              ; preds = %107
  store i32 %114, ptr %111, align 4
  %116 = load i16, ptr %69, align 2
  %117 = load ptr, ptr %108, align 8
  %118 = getelementptr inbounds %struct.anon.193, ptr %117, i32 0, i32 2
  %119 = trunc i16 %116 to i8
  %120 = and i8 %119, 1
  store i8 %120, ptr %118, align 4
  %121 = load ptr, ptr %108, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  %122 = load i16, ptr %121, align 4
  %123 = add i16 %122, 1
  store i16 %123, ptr %121, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %135

124:                                              ; preds = %107
  %125 = icmp eq i32 %112, %114
  br i1 %125, label %126, label %139

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.anon.193, ptr %110, i32 0, i32 2
  %128 = load i8, ptr %127, align 4, !range !13
  %129 = load i16, ptr %69, align 2
  %130 = and i16 %129, 1
  %131 = zext i8 %128 to i16
  %132 = icmp eq i16 %130, %131
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  %133 = load i16, ptr %110, align 4
  %134 = add i16 %133, 1
  store i16 %134, ptr %110, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br i1 %132, label %135, label %142

135:                                              ; preds = %126, %115, %95
  %136 = add nuw i32 %96, 1
  %137 = load i32, ptr %89, align 8
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %95, label %142

139:                                              ; preds = %124
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  %140 = load i16, ptr %110, align 4
  %141 = add i16 %140, 1
  store i16 %141, ptr %110, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !17
  br label %142

142:                                              ; preds = %139, %135, %126, %103, %85
  %143 = phi i32 [ -22, %139 ], [ 0, %85 ], [ -22, %103 ], [ 0, %135 ], [ -22, %126 ]
  tail call void @mutex_unlock(ptr noundef %88) #22
  br label %144

144:                                              ; preds = %142, %34
  %145 = phi i32 [ %143, %142 ], [ -12, %34 ]
  %146 = phi ptr [ %68, %142 ], [ %0, %34 ]
  store i32 %145, ptr %1, align 4
  ret ptr %146
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local ptr @bpf_int_jit_compile(ptr noundef %0) local_unnamed_addr #2 {
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @bpf_prog_array_alloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = or i32 %1, 256
  %6 = shl i32 %0, 4
  %7 = add i32 %6, 24
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef %5) #20
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi ptr [ @empty_prog_array, %2 ], [ %8, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bpf_prog_array_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  %3 = icmp eq ptr %0, @empty_prog_array
  %4 = or i1 %2, %3
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @kvfree_call_rcu(ptr noundef nonnull %0, ptr noundef null) #22
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_array_length(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.bpf_prog_array, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %13, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %11, %5 ], [ 0, %1 ]
  %8 = phi ptr [ %12, %5 ], [ %2, %1 ]
  %9 = icmp ne ptr %6, @dummy_bpf_prog
  %10 = zext i1 %9 to i32
  %11 = add i32 %7, %10
  %12 = getelementptr %struct.bpf_prog_array_item, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5

15:                                               ; preds = %5, %1
  %16 = phi i32 [ 0, %1 ], [ %11, %5 ]
  ret i32 %16
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @bpf_prog_array_is_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.bpf_prog_array, ptr %0, i32 0, i32 1
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ %2, %1 ], [ %7, %3 ]
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, @dummy_bpf_prog
  %7 = getelementptr %struct.bpf_prog_array_item, ptr %4, i32 1
  br i1 %6, label %3, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %5, null
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_array_copy_to_user(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #22
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %62, label %6, !prof !10

6:                                                ; preds = %3
  %7 = extractvalue { i32, i1 } %4, 0
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 1060288) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %62, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bpf_prog_array, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %37, label %14

14:                                               ; preds = %32, %10
  %15 = phi ptr [ %35, %32 ], [ %12, %10 ]
  %16 = phi i32 [ %33, %32 ], [ 0, %10 ]
  %17 = phi ptr [ %34, %32 ], [ %11, %10 ]
  %18 = icmp eq ptr %15, @dummy_bpf_prog
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.bpf_prog, ptr %15, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.bpf_prog_aux, ptr %21, i32 0, i32 7
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr i32, ptr %8, i32 %16
  store i32 %23, ptr %24, align 4
  %25 = add i32 %16, 1
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = getelementptr %struct.bpf_prog_array_item, ptr %17, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, i32 0, i32 -28
  br label %37

32:                                               ; preds = %19, %14
  %33 = phi i32 [ %16, %14 ], [ %25, %19 ]
  %34 = getelementptr %struct.bpf_prog_array_item, ptr %17, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %14

37:                                               ; preds = %32, %27, %10
  %38 = phi i32 [ %31, %27 ], [ 0, %10 ], [ 0, %32 ]
  %39 = shl i32 %2, 2
  %40 = icmp slt i32 %39, 0
  %41 = load i1, ptr @check_copy_size.__already_done, align 1
  %42 = xor i1 %41, true
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %45, !prof !10

44:                                               ; preds = %37
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 230, i32 noundef 9, ptr noundef null) #22
  br label %45

45:                                               ; preds = %44, %37
  br i1 %40, label %57, label %46, !prof !10

46:                                               ; preds = %45
  %47 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %39, i32 -1090519040) #24, !srcloc !18
  %48 = extractvalue { i32, i32 } %47, 0
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = tail call ptr @llvm.thread.pointer() #22
  %52 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %53 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %52) #19, !srcloc !19
  %54 = and i32 %53, -13
  %55 = or i32 %54, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %55) #22, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !21
  %56 = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef nonnull %8, i32 noundef %39) #22
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %53) #22, !srcloc !20
  tail call void asm sideeffect "isb ", "~{memory}"() #22, !srcloc !21
  br label %58

57:                                               ; preds = %45
  tail call void @kfree(ptr noundef nonnull %8) #22
  br label %62

58:                                               ; preds = %50, %46
  %59 = phi i32 [ %56, %50 ], [ %39, %46 ]
  tail call void @kfree(ptr noundef nonnull %8) #22
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 %38, i32 -14
  br label %62

62:                                               ; preds = %58, %57, %6, %3
  %63 = phi i32 [ -12, %6 ], [ -12, %3 ], [ -14, %57 ], [ %61, %58 ]
  ret i32 %63
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bpf_prog_array_delete_safe(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.bpf_prog_array, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %11, %2
  %7 = phi ptr [ %13, %11 ], [ %4, %2 ]
  %8 = phi ptr [ %12, %11 ], [ %3, %2 ]
  %9 = icmp eq ptr %7, %1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store volatile ptr @dummy_bpf_prog, ptr %8, align 8
  br label %15

11:                                               ; preds = %6
  %12 = getelementptr %struct.bpf_prog_array_item, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6

15:                                               ; preds = %11, %10, %2
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_array_delete_safe_at(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %23, label %4, !prof !10

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bpf_prog_array, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %23, label %8

8:                                                ; preds = %18, %4
  %9 = phi ptr [ %21, %18 ], [ %6, %4 ]
  %10 = phi ptr [ %20, %18 ], [ %5, %4 ]
  %11 = phi i32 [ %19, %18 ], [ %1, %4 ]
  %12 = icmp eq ptr %9, @dummy_bpf_prog
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  store volatile ptr @dummy_bpf_prog, ptr %10, align 8
  br label %23

16:                                               ; preds = %13
  %17 = add i32 %11, -1
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi i32 [ %11, %8 ], [ %17, %16 ]
  %20 = getelementptr %struct.bpf_prog_array_item, ptr %10, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %8

23:                                               ; preds = %18, %15, %4, %2
  %24 = phi i32 [ 0, %15 ], [ -22, %2 ], [ -2, %4 ], [ -2, %18 ]
  ret i32 %24
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_array_update_at(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #14 {
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %24, label %5, !prof !10

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bpf_prog_array, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %19, %5
  %10 = phi ptr [ %22, %19 ], [ %7, %5 ]
  %11 = phi ptr [ %21, %19 ], [ %6, %5 ]
  %12 = phi i32 [ %20, %19 ], [ %1, %5 ]
  %13 = icmp eq ptr %10, @dummy_bpf_prog
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = icmp eq i32 %12, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  store volatile ptr %2, ptr %11, align 8
  br label %24

17:                                               ; preds = %14
  %18 = add i32 %12, -1
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi i32 [ %12, %9 ], [ %18, %17 ]
  %21 = getelementptr %struct.bpf_prog_array_item, ptr %11, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %9

24:                                               ; preds = %19, %16, %5, %3
  %25 = phi i32 [ 0, %16 ], [ -22, %3 ], [ -2, %5 ], [ -2, %19 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_array_copy(ptr noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, i64 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #2 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.bpf_prog_array, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %22, %7
  %12 = phi ptr [ %26, %22 ], [ %9, %7 ]
  %13 = phi i8 [ %24, %22 ], [ 0, %7 ]
  %14 = phi ptr [ %25, %22 ], [ %8, %7 ]
  %15 = phi i32 [ %23, %22 ], [ 0, %7 ]
  %16 = icmp eq ptr %12, %1
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = icmp ne ptr %12, @dummy_bpf_prog
  %19 = zext i1 %18 to i32
  %20 = add i32 %15, %19
  %21 = icmp eq ptr %12, %2
  br i1 %21, label %86, label %22

22:                                               ; preds = %17, %11
  %23 = phi i32 [ %20, %17 ], [ %15, %11 ]
  %24 = phi i8 [ %13, %17 ], [ 1, %11 ]
  %25 = getelementptr %struct.bpf_prog_array_item, ptr %14, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %11

28:                                               ; preds = %22, %7
  %29 = phi i8 [ 0, %7 ], [ %24, %22 ]
  %30 = phi i32 [ 0, %7 ], [ %23, %22 ]
  %31 = and i8 %29, 1
  %32 = icmp ne i8 %31, 0
  br label %33

33:                                               ; preds = %28, %5
  %34 = phi i32 [ 0, %5 ], [ %30, %28 ]
  %35 = phi i1 [ false, %5 ], [ %32, %28 ]
  %36 = icmp eq ptr %1, null
  %37 = select i1 %36, i1 true, i1 %35
  br i1 %37, label %38, label %86

38:                                               ; preds = %33
  %39 = icmp eq ptr %2, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = add i32 %34, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %84, label %44

44:                                               ; preds = %38
  %45 = add i32 %42, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = shl i32 %45, 4
  %49 = add i32 %48, 24
  %50 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %49, i32 noundef 3520) #20
  %51 = icmp eq ptr %50, null
  br i1 %51, label %86, label %52

52:                                               ; preds = %47, %44
  %53 = phi ptr [ %50, %47 ], [ @empty_prog_array, %44 ]
  %54 = getelementptr inbounds %struct.bpf_prog_array, ptr %53, i32 0, i32 1
  %55 = icmp eq i32 %34, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.bpf_prog_array, ptr %0, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %77, label %60

60:                                               ; preds = %72, %56
  %61 = phi ptr [ %75, %72 ], [ %58, %56 ]
  %62 = phi ptr [ %73, %72 ], [ %54, %56 ]
  %63 = phi ptr [ %74, %72 ], [ %57, %56 ]
  %64 = icmp eq ptr %61, %1
  %65 = icmp eq ptr %61, @dummy_bpf_prog
  %66 = or i1 %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %60
  store ptr %61, ptr %62, align 8
  %68 = getelementptr inbounds %struct.bpf_prog_array_item, ptr %63, i32 0, i32 1
  %69 = load i64, ptr %68, align 8
  %70 = getelementptr inbounds %struct.bpf_prog_array_item, ptr %62, i32 0, i32 1
  store i64 %69, ptr %70, align 8
  %71 = getelementptr %struct.bpf_prog_array_item, ptr %62, i32 1
  br label %72

72:                                               ; preds = %67, %60
  %73 = phi ptr [ %62, %60 ], [ %71, %67 ]
  %74 = getelementptr %struct.bpf_prog_array_item, ptr %63, i32 1
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %60

77:                                               ; preds = %72, %56, %52
  %78 = phi ptr [ %54, %52 ], [ %54, %56 ], [ %73, %72 ]
  br i1 %39, label %82, label %79

79:                                               ; preds = %77
  store ptr %2, ptr %78, align 8
  %80 = getelementptr inbounds %struct.bpf_prog_array_item, ptr %78, i32 0, i32 1
  store i64 %3, ptr %80, align 8
  %81 = getelementptr %struct.bpf_prog_array_item, ptr %78, i32 1
  br label %82

82:                                               ; preds = %79, %77
  %83 = phi ptr [ %81, %79 ], [ %78, %77 ]
  store ptr null, ptr %83, align 8
  br label %84

84:                                               ; preds = %82, %38
  %85 = phi ptr [ %53, %82 ], [ null, %38 ]
  store ptr %85, ptr %4, align 4
  br label %86

86:                                               ; preds = %84, %47, %33, %17
  %87 = phi i32 [ -2, %33 ], [ -12, %47 ], [ 0, %84 ], [ -17, %17 ]
  ret i32 %87
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @bpf_prog_array_copy_info(ptr noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #6 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.bpf_prog_array, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %10, %6
  %11 = phi ptr [ %18, %10 ], [ %8, %6 ]
  %12 = phi i32 [ %16, %10 ], [ 0, %6 ]
  %13 = phi ptr [ %17, %10 ], [ %7, %6 ]
  %14 = icmp ne ptr %11, @dummy_bpf_prog
  %15 = zext i1 %14 to i32
  %16 = add i32 %12, %15
  %17 = getelementptr %struct.bpf_prog_array_item, ptr %13, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %10

20:                                               ; preds = %6, %4
  store i32 0, ptr %3, align 4
  br label %51

21:                                               ; preds = %10
  store i32 %16, ptr %3, align 4
  %22 = icmp ne i32 %2, 0
  %23 = icmp ne i32 %16, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %41, %25
  %29 = phi ptr [ %44, %41 ], [ %26, %25 ]
  %30 = phi i32 [ %42, %41 ], [ 0, %25 ]
  %31 = phi ptr [ %43, %41 ], [ %7, %25 ]
  %32 = icmp eq ptr %29, @dummy_bpf_prog
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.bpf_prog, ptr %29, i32 0, i32 10
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.bpf_prog_aux, ptr %35, i32 0, i32 7
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr i32, ptr %1, i32 %30
  store i32 %37, ptr %38, align 4
  %39 = add i32 %30, 1
  %40 = icmp eq i32 %39, %2
  br i1 %40, label %46, label %41

41:                                               ; preds = %33, %28
  %42 = phi i32 [ %30, %28 ], [ %39, %33 ]
  %43 = getelementptr %struct.bpf_prog_array_item, ptr %31, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %28

46:                                               ; preds = %33
  %47 = getelementptr %struct.bpf_prog_array_item, ptr %31, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, i32 0, i32 -28
  br label %51

51:                                               ; preds = %46, %41, %25, %21, %20
  %52 = phi i32 [ 0, %21 ], [ 0, %20 ], [ 0, %25 ], [ %50, %46 ], [ 0, %41 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__bpf_free_used_maps(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %14, %3
  %6 = phi i32 [ %15, %14 ], [ 0, %3 ]
  %7 = getelementptr ptr, ptr %1, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 64
  %10 = getelementptr inbounds %struct.bpf_map_ops, ptr %9, i32 0, i32 25
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  tail call void %11(ptr noundef %8, ptr noundef %0) #22
  br label %14

14:                                               ; preds = %13, %5
  %15 = add nuw i32 %6, 1
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %5

17:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @__bpf_free_used_btfs(ptr nocapture %0, ptr nocapture %1, i32 %2) local_unnamed_addr #10 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bpf_prog_free(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.bpf_prog, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 58
  store i32 -32, ptr %4, align 8
  %5 = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 58, i32 0, i32 1
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 58, i32 0, i32 1, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.bpf_prog_aux, ptr %3, i32 0, i32 58, i32 0, i32 2
  store ptr @bpf_prog_free_deferred, ptr %7, align 4
  %8 = load ptr, ptr @system_wq, align 4
  %9 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %8, ptr noundef %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bpf_prog_free_deferred(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -448
  %3 = getelementptr i8, ptr %0, i32 -120
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 -440
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %17, %1
  %9 = phi i32 [ %18, %17 ], [ 0, %1 ]
  %10 = getelementptr ptr, ptr %4, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 64
  %13 = getelementptr inbounds %struct.bpf_map_ops, ptr %12, i32 0, i32 25
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  tail call void %14(ptr noundef %11, ptr noundef %2) #22
  br label %17

17:                                               ; preds = %16, %8
  %18 = add nuw i32 %9, 1
  %19 = icmp eq i32 %18, %6
  br i1 %19, label %20, label %8

20:                                               ; preds = %17
  %21 = load ptr, ptr %3, align 8
  br label %22

22:                                               ; preds = %20, %1
  %23 = phi ptr [ %21, %20 ], [ %4, %1 ]
  tail call void @kfree(ptr noundef %23) #22
  %24 = getelementptr i8, ptr %0, i32 -96
  %25 = load ptr, ptr %24, align 8
  tail call void @kfree(ptr noundef %25) #22
  %26 = getelementptr i8, ptr %0, i32 -92
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.bpf_prog, ptr %27, i32 0, i32 1
  %29 = load i16, ptr %28, align 2
  %30 = and i16 %29, 256
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  tail call void @put_callchain_buffers() #22
  br label %33

33:                                               ; preds = %32, %22
  %34 = getelementptr i8, ptr %0, i32 -412
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %74, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %0, i32 -320
  br label %39

39:                                               ; preds = %57, %37
  %40 = phi i32 [ 0, %37 ], [ %62, %57 ]
  %41 = load ptr, ptr %38, align 8
  %42 = getelementptr ptr, ptr %41, i32 %40
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.bpf_prog, ptr %43, i32 0, i32 10
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.bpf_prog_aux, ptr %45, i32 0, i32 32
  store ptr null, ptr %46, align 8
  %47 = load ptr, ptr %38, align 8
  %48 = getelementptr ptr, ptr %47, i32 %40
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.bpf_prog, ptr %49, i32 0, i32 10
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.bpf_prog_aux, ptr %51, i32 0, i32 32
  %55 = load ptr, ptr %54, align 8
  tail call void @kfree(ptr noundef %55) #22
  %56 = load ptr, ptr %50, align 4
  tail call void @kfree(ptr noundef %56) #22
  br label %57

57:                                               ; preds = %53, %39
  %58 = getelementptr inbounds %struct.bpf_prog, ptr %49, i32 0, i32 7
  %59 = load ptr, ptr %58, align 4
  tail call void @free_percpu(ptr noundef %59) #22
  %60 = getelementptr inbounds %struct.bpf_prog, ptr %49, i32 0, i32 8
  %61 = load ptr, ptr %60, align 4
  tail call void @free_percpu(ptr noundef %61) #22
  tail call void @vfree(ptr noundef %49) #22
  %62 = add nuw i32 %40, 1
  %63 = load i32, ptr %34, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %39, label %65

65:                                               ; preds = %57
  %66 = icmp eq i32 %63, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %65
  %68 = getelementptr i8, ptr %0, i32 -320
  %69 = load ptr, ptr %68, align 8
  tail call void @kfree(ptr noundef %69) #22
  %70 = load ptr, ptr %26, align 4
  %71 = getelementptr inbounds %struct.bpf_prog, ptr %70, i32 0, i32 10
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %86, label %79

74:                                               ; preds = %65, %33
  %75 = load ptr, ptr %26, align 4
  %76 = getelementptr inbounds %struct.bpf_prog, ptr %75, i32 0, i32 10
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %74, %67
  %80 = phi ptr [ %72, %67 ], [ %77, %74 ]
  %81 = phi ptr [ %71, %67 ], [ %76, %74 ]
  %82 = phi ptr [ %70, %67 ], [ %75, %74 ]
  %83 = getelementptr inbounds %struct.bpf_prog_aux, ptr %80, i32 0, i32 32
  %84 = load ptr, ptr %83, align 8
  tail call void @kfree(ptr noundef %84) #22
  %85 = load ptr, ptr %81, align 4
  tail call void @kfree(ptr noundef %85) #22
  br label %86

86:                                               ; preds = %79, %74, %67
  %87 = phi ptr [ %70, %67 ], [ %75, %74 ], [ %82, %79 ]
  %88 = getelementptr inbounds %struct.bpf_prog, ptr %87, i32 0, i32 7
  %89 = load ptr, ptr %88, align 4
  tail call void @free_percpu(ptr noundef %89) #22
  %90 = getelementptr inbounds %struct.bpf_prog, ptr %87, i32 0, i32 8
  %91 = load ptr, ptr %90, align 4
  tail call void @free_percpu(ptr noundef %91) #22
  tail call void @vfree(ptr noundef %87) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @bpf_user_rnd_init_once() local_unnamed_addr #2 {
  %1 = alloca i32, align 4
  %2 = load volatile i32, ptr @bpf_user_rnd_init_once.___once_key, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %8, !prof !10

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #22
  store i32 0, ptr %1, align 4, !annotation !11
  %5 = call zeroext i1 @__do_once_start(ptr noundef nonnull @bpf_user_rnd_init_once.___done, ptr noundef nonnull %1) #22
  br i1 %5, label %6, label %7, !prof !10

6:                                                ; preds = %4
  call void @prandom_seed_full_state(ptr noundef nonnull @bpf_user_rnd_state) #22
  call void @__do_once_done(ptr noundef nonnull @bpf_user_rnd_init_once.___done, ptr noundef nonnull @bpf_user_rnd_init_once.___once_key, ptr noundef nonnull %1, ptr noundef null) #22
  br label %7

7:                                                ; preds = %6, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #22
  br label %8

8:                                                ; preds = %7, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_seed_full_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @bpf_user_rnd_u32(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 {
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !22
  %6 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %7 = inttoptr i32 %6 to ptr
  %8 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %7) #19, !srcloc !23
  %9 = add i32 %8, ptrtoint (ptr @bpf_user_rnd_state to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 @prandom_u32_state(ptr noundef %10) #22
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !24
  %12 = zext i32 %11 to i64
  ret i64 %12
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i64 @bpf_get_raw_cpu_id(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #15 {
  %6 = tail call ptr @llvm.thread.pointer() #22
  %7 = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = zext i32 %8 to i64
  ret i64 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local ptr @bpf_get_trace_printk_proto() local_unnamed_addr #2 {
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local ptr @bpf_get_trace_vprintk_proto() local_unnamed_addr #2 {
  ret ptr null
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i64 @bpf_event_output(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6) #2 {
  ret i64 -524
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @bpf_jit_compile(ptr noundef %0) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local zeroext i1 @bpf_helper_changes_pkt_data(ptr noundef %0) local_unnamed_addr #2 {
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local zeroext i1 @bpf_jit_needs_zext() local_unnamed_addr #2 {
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local zeroext i1 @bpf_jit_supports_kfunc_call() local_unnamed_addr #2 {
  ret i1 false
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @skb_copy_bits(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  ret i32 -14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @bpf_arch_text_poke(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_exception(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #22
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_bulk_tx(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_bulk_tx, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #22
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_redirect(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 {
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_redirect, i32 0, i32 7), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %16, %11 ], [ %9, %8 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tracepoint_func, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %13(ptr noundef %15, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #22
  %16 = getelementptr %struct.tracepoint_func, ptr %12, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11

19:                                               ; preds = %11, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_redirect_err(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 {
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_redirect_err, i32 0, i32 7), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %16, %11 ], [ %9, %8 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tracepoint_func, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %13(ptr noundef %15, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #22
  %16 = getelementptr %struct.tracepoint_func, ptr %12, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11

19:                                               ; preds = %11, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_redirect_map(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 {
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_redirect_map, i32 0, i32 7), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %16, %11 ], [ %9, %8 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tracepoint_func, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %13(ptr noundef %15, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #22
  %16 = getelementptr %struct.tracepoint_func, ptr %12, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11

19:                                               ; preds = %11, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_redirect_map_err(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 {
  %9 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_redirect_map_err, i32 0, i32 7), align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %8
  %12 = phi ptr [ %16, %11 ], [ %9, %8 ]
  %13 = load volatile ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tracepoint_func, ptr %12, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %13(ptr noundef %15, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #22
  %16 = getelementptr %struct.tracepoint_func, ptr %12, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11

19:                                               ; preds = %11, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_cpumap_kthread(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #2 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_cpumap_kthread, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #22
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_cpumap_enqueue(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_cpumap_enqueue, i32 0, i32 7), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %13, %8 ], [ %6, %5 ]
  %10 = load volatile ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tracepoint_func, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void %10(ptr noundef %12, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #22
  %13 = getelementptr %struct.tracepoint_func, ptr %9, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8

16:                                               ; preds = %8, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_xdp_devmap_xmit(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_devmap_xmit, i32 0, i32 7), align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %14, %9 ], [ %7, %6 ]
  %11 = load volatile ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tracepoint_func, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void %11(ptr noundef %13, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #22
  %14 = getelementptr %struct.tracepoint_func, ptr %10, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mem_disconnect(ptr nocapture readnone %0, ptr noundef %1) #2 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mem_disconnect, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #22
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mem_connect(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mem_connect, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #22
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mem_return_failed(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mem_return_failed, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, ptr noundef %2) #22
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xdp_exception(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !11
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !9

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !10

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %14, label %28, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.bpf_prog, ptr %2, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.bpf_prog_aux, ptr %20, i32 0, i32 7
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %16, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %16, i32 0, i32 2
  store i32 %3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %16, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #22
  br label %28

28:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xdp_exception(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store ptr null, ptr %5, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store i32 0, ptr %6, align 4, !annotation !11
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #19, !srcloc !23
  %13 = add i32 %12, %9
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %16 = load volatile ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load volatile ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %18, %4
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #22
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #22
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.bpf_prog, ptr %2, i32 0, i32 10
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.bpf_prog_aux, ptr %36, i32 0, i32 7
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %22, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %22, i32 0, i32 2
  store i32 %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %22, i32 0, i32 3
  store i32 %42, ptr %43, align 4
  %44 = load i32, ptr %6, align 4
  %45 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %14, ptr noundef null) #22
  br label %46

46:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xdp_bulk_tx(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !11
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !9

11:                                               ; preds = %5
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !10

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %15, label %27, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 28) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %17, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %17, i32 0, i32 2
  store i32 3, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %17, i32 0, i32 3
  store i32 %3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %17, i32 0, i32 4
  store i32 %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %17, i32 0, i32 5
  store i32 %4, ptr %26, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #22
  br label %27

27:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xdp_bulk_tx(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store ptr null, ptr %6, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 0, ptr %7, align 4, !annotation !11
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #19, !srcloc !23
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %19, %5
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %6, ptr noundef nonnull %7) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #22
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #22
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %23, i32 0, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %23, i32 0, i32 2
  store i32 3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %23, i32 0, i32 3
  store i32 %3, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %23, i32 0, i32 4
  store i32 %2, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %23, i32 0, i32 5
  store i32 %4, ptr %42, align 4
  %43 = load i32, ptr %7, align 4
  %44 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 28, i32 noundef %43, ptr noundef %0, i64 noundef 1, ptr noundef %44, ptr noundef %15, ptr noundef null) #22
  br label %45

45:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xdp_redirect_template(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 {
  %9 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 24, i1 false), !annotation !11
  %10 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 704
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14, !prof !9

14:                                               ; preds = %8
  %15 = and i32 %11, 256
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19, !prof !10

17:                                               ; preds = %14
  %18 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %18, label %51, label %19

19:                                               ; preds = %17, %14, %8
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %9, ptr noundef %0, i32 noundef 36) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %51, label %22

22:                                               ; preds = %19
  switch i32 %5, label %29 [
    i32 25, label %23
    i32 14, label %23
  ]

23:                                               ; preds = %22, %22
  %24 = icmp eq ptr %3, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 17
  %28 = load i32, ptr %27, align 4
  br label %35

29:                                               ; preds = %22
  %30 = icmp eq i32 %5, 0
  %31 = icmp eq i32 %6, 2147483647
  %32 = and i1 %30, %31
  %33 = select i1 %32, i32 %7, i32 0
  %34 = select i1 %32, i32 0, i32 %7
  br label %35

35:                                               ; preds = %29, %25, %23
  %36 = phi i32 [ %28, %25 ], [ 0, %23 ], [ %33, %29 ]
  %37 = phi i32 [ %7, %25 ], [ %7, %23 ], [ %34, %29 ]
  %38 = getelementptr inbounds %struct.bpf_prog, ptr %2, i32 0, i32 10
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.bpf_prog_aux, ptr %39, i32 0, i32 7
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %20, i32 0, i32 1
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %20, i32 0, i32 2
  store i32 4, ptr %43, align 4
  %44 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %20, i32 0, i32 3
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %20, i32 0, i32 4
  store i32 %4, ptr %47, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %20, i32 0, i32 5
  store i32 %36, ptr %48, align 4
  %49 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %20, i32 0, i32 6
  store i32 %6, ptr %49, align 4
  %50 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %20, i32 0, i32 7
  store i32 %37, ptr %50, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %9) #22
  br label %51

51:                                               ; preds = %35, %19, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xdp_redirect_template(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #2 {
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  store ptr null, ptr %9, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #22
  store i32 0, ptr %10, align 4, !annotation !11
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #19, !srcloc !23
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %69, label %25

25:                                               ; preds = %22, %8
  %26 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %9, ptr noundef nonnull %10) #22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %69, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %9, align 4
  %30 = call ptr @llvm.returnaddress(i32 0) #22
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %29, i32 0, i32 15
  store i32 %31, ptr %32, align 4
  %33 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %29, i32 0, i32 11
  store i32 %34, ptr %35, align 4
  %36 = call i32 @llvm.read_register.i32(metadata !0) #22
  %37 = getelementptr [18 x i32], ptr %29, i32 0, i32 13
  store i32 %36, ptr %37, align 4
  %38 = getelementptr [18 x i32], ptr %29, i32 0, i32 16
  store i32 19, ptr %38, align 4
  switch i32 %5, label %45 [
    i32 25, label %39
    i32 14, label %39
  ]

39:                                               ; preds = %28, %28
  %40 = icmp eq ptr %3, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 17
  %44 = load i32, ptr %43, align 4
  br label %51

45:                                               ; preds = %28
  %46 = icmp eq i32 %5, 0
  %47 = icmp eq i32 %6, 2147483647
  %48 = and i1 %46, %47
  %49 = select i1 %48, i32 %7, i32 0
  %50 = select i1 %48, i32 0, i32 %7
  br label %51

51:                                               ; preds = %45, %41, %39
  %52 = phi i32 [ %44, %41 ], [ 0, %39 ], [ %49, %45 ]
  %53 = phi i32 [ %7, %41 ], [ %7, %39 ], [ %50, %45 ]
  %54 = getelementptr inbounds %struct.bpf_prog, ptr %2, i32 0, i32 10
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.bpf_prog_aux, ptr %55, i32 0, i32 7
  %57 = load i32, ptr %56, align 8
  %58 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %26, i32 0, i32 1
  store i32 %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %26, i32 0, i32 2
  store i32 4, ptr %59, align 4
  %60 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %26, i32 0, i32 3
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %26, i32 0, i32 4
  store i32 %4, ptr %63, align 4
  %64 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %26, i32 0, i32 5
  store i32 %52, ptr %64, align 4
  %65 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %26, i32 0, i32 6
  store i32 %6, ptr %65, align 4
  %66 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %26, i32 0, i32 7
  store i32 %53, ptr %66, align 4
  %67 = load i32, ptr %10, align 4
  %68 = load ptr, ptr %9, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %26, i32 noundef 36, i32 noundef %67, ptr noundef %0, i64 noundef 1, ptr noundef %68, ptr noundef %18, ptr noundef null) #22
  br label %69

69:                                               ; preds = %51, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xdp_cpumap_kthread(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #2 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !11
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !9

12:                                               ; preds = %6
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !10

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %16, label %38, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 44) #22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %18, i32 0, i32 1
  store i32 %1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %18, i32 0, i32 2
  store i32 4, ptr %22, align 4
  %23 = tail call ptr @llvm.thread.pointer() #22
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %18, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %18, i32 0, i32 4
  store i32 %3, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %18, i32 0, i32 5
  store i32 %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %18, i32 0, i32 6
  store i32 %4, ptr %29, align 4
  %30 = getelementptr inbounds %struct.xdp_cpumap_stats, ptr %5, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %18, i32 0, i32 7
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.xdp_cpumap_stats, ptr %5, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %18, i32 0, i32 8
  store i32 %34, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %18, i32 0, i32 9
  store i32 %36, ptr %37, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #22
  br label %38

38:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xdp_cpumap_kthread(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #2 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store ptr null, ptr %7, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  store i32 0, ptr %8, align 4, !annotation !11
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #19, !srcloc !23
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %56, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %7, ptr noundef nonnull %8) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %56, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #22
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #22
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %24, i32 0, i32 1
  store i32 %1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %24, i32 0, i32 2
  store i32 4, ptr %38, align 4
  %39 = tail call ptr @llvm.thread.pointer() #22
  %40 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %24, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %24, i32 0, i32 4
  store i32 %3, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %24, i32 0, i32 5
  store i32 %2, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %24, i32 0, i32 6
  store i32 %4, ptr %45, align 4
  %46 = getelementptr inbounds %struct.xdp_cpumap_stats, ptr %5, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %24, i32 0, i32 7
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.xdp_cpumap_stats, ptr %5, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %24, i32 0, i32 8
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %5, align 4
  %53 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %24, i32 0, i32 9
  store i32 %52, ptr %53, align 4
  %54 = load i32, ptr %8, align 4
  %55 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 44, i32 noundef %54, ptr noundef %0, i64 noundef 1, ptr noundef %55, ptr noundef %16, ptr noundef null) #22
  br label %56

56:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xdp_cpumap_enqueue(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %6, i8 0, i32 24, i1 false), !annotation !11
  %7 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 704
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !9

11:                                               ; preds = %5
  %12 = and i32 %8, 256
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16, !prof !10

14:                                               ; preds = %11
  %15 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %15, label %29, label %16

16:                                               ; preds = %14, %11, %5
  %17 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %6, ptr noundef %0, i32 noundef 32) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %17, i32 0, i32 1
  store i32 %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %17, i32 0, i32 2
  store i32 4, ptr %21, align 4
  %22 = tail call ptr @llvm.thread.pointer() #22
  %23 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %17, i32 0, i32 3
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %17, i32 0, i32 4
  store i32 %3, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %17, i32 0, i32 5
  store i32 %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %17, i32 0, i32 6
  store i32 %4, ptr %28, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %6) #22
  br label %29

29:                                               ; preds = %19, %16, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xdp_cpumap_enqueue(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store ptr null, ptr %6, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 0, ptr %7, align 4, !annotation !11
  %8 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #19, !srcloc !23
  %14 = add i32 %13, %10
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load volatile ptr, ptr %15, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %19, %5
  %23 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %6, ptr noundef nonnull %7) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %47, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = call ptr @llvm.returnaddress(i32 0) #22
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %26, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  %30 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %31 = ptrtoint ptr %30 to i32
  %32 = getelementptr [18 x i32], ptr %26, i32 0, i32 11
  store i32 %31, ptr %32, align 4
  %33 = call i32 @llvm.read_register.i32(metadata !0) #22
  %34 = getelementptr [18 x i32], ptr %26, i32 0, i32 13
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [18 x i32], ptr %26, i32 0, i32 16
  store i32 19, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %23, i32 0, i32 1
  store i32 %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %23, i32 0, i32 2
  store i32 4, ptr %37, align 4
  %38 = tail call ptr @llvm.thread.pointer() #22
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %23, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %23, i32 0, i32 4
  store i32 %3, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %23, i32 0, i32 5
  store i32 %2, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %23, i32 0, i32 6
  store i32 %4, ptr %44, align 4
  %45 = load i32, ptr %7, align 4
  %46 = load ptr, ptr %6, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %23, i32 noundef 36, i32 noundef %45, ptr noundef %0, i64 noundef 1, ptr noundef %46, ptr noundef %15, ptr noundef null) #22
  br label %47

47:                                               ; preds = %25, %22, %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_xdp_devmap_xmit(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %7, i8 0, i32 24, i1 false), !annotation !11
  %8 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 704
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !9

12:                                               ; preds = %6
  %13 = and i32 %9, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !10

15:                                               ; preds = %12
  %16 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %16, label %31, label %17

17:                                               ; preds = %15, %12, %6
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %7, ptr noundef %0, i32 noundef 32) #22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %18, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %18, i32 0, i32 2
  store i32 4, ptr %24, align 4
  %25 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 17
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %18, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %18, i32 0, i32 4
  store i32 %4, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %18, i32 0, i32 5
  store i32 %3, ptr %29, align 4
  %30 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %18, i32 0, i32 6
  store i32 %5, ptr %30, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %7) #22
  br label %31

31:                                               ; preds = %20, %17, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_xdp_devmap_xmit(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store ptr null, ptr %7, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  store i32 0, ptr %8, align 4, !annotation !11
  %9 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %13 = inttoptr i32 %12 to ptr
  %14 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %13) #19, !srcloc !23
  %15 = add i32 %14, %11
  %16 = inttoptr i32 %15 to ptr
  %17 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %18 = load volatile ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load volatile ptr, ptr %16, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %49, label %23

23:                                               ; preds = %20, %6
  %24 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %7, ptr noundef nonnull %8) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %7, align 4
  %28 = call ptr @llvm.returnaddress(i32 0) #22
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %27, i32 0, i32 15
  store i32 %29, ptr %30, align 4
  %31 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [18 x i32], ptr %27, i32 0, i32 11
  store i32 %32, ptr %33, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !0) #22
  %35 = getelementptr [18 x i32], ptr %27, i32 0, i32 13
  store i32 %34, ptr %35, align 4
  %36 = getelementptr [18 x i32], ptr %27, i32 0, i32 16
  store i32 19, ptr %36, align 4
  %37 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %24, i32 0, i32 1
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %24, i32 0, i32 2
  store i32 4, ptr %40, align 4
  %41 = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 17
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %24, i32 0, i32 3
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %24, i32 0, i32 4
  store i32 %4, ptr %44, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %24, i32 0, i32 5
  store i32 %3, ptr %45, align 4
  %46 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %24, i32 0, i32 6
  store i32 %5, ptr %46, align 4
  %47 = load i32, ptr %8, align 4
  %48 = load ptr, ptr %7, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %24, i32 noundef 36, i32 noundef %47, ptr noundef %0, i64 noundef 1, ptr noundef %48, ptr noundef %16, ptr noundef null) #22
  br label %49

49:                                               ; preds = %26, %23, %20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mem_disconnect(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !11
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !9

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !10

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %12, label %26, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 24) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %14, i32 0, i32 1
  store ptr %1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.xdp_mem_info, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %14, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = load i32, ptr %1, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %14, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %14, i32 0, i32 4
  store ptr %24, ptr %25, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #22
  br label %26

26:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mem_disconnect(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store ptr null, ptr %3, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !11
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #19, !srcloc !23
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load volatile ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %3, ptr noundef nonnull %4) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #22
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #22
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %20, i32 0, i32 1
  store ptr %1, ptr %33, align 4
  %34 = getelementptr inbounds %struct.xdp_mem_info, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %20, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  %37 = load i32, ptr %1, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %20, i32 0, i32 3
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %20, i32 0, i32 4
  store ptr %40, ptr %41, align 4
  %42 = load i32, ptr %4, align 4
  %43 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 28, i32 noundef %42, ptr noundef %0, i64 noundef 1, ptr noundef %43, ptr noundef %12, ptr noundef null) #22
  br label %44

44:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mem_connect(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !11
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !9

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !10

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %13, label %32, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 32) #22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %15, i32 0, i32 1
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.xdp_mem_info, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %15, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %1, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %15, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %15, i32 0, i32 4
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %15, i32 0, i32 5
  store ptr %2, ptr %27, align 4
  %28 = load ptr, ptr %2, align 64
  %29 = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 17
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %15, i32 0, i32 6
  store i32 %30, ptr %31, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #22
  br label %32

32:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mem_connect(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store ptr null, ptr %4, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 0, ptr %5, align 4, !annotation !11
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #19, !srcloc !23
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %50, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #22
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #22
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %21, i32 0, i32 1
  store ptr %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.xdp_mem_info, ptr %1, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %21, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr %1, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %21, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %21, i32 0, i32 4
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %21, i32 0, i32 5
  store ptr %2, ptr %43, align 4
  %44 = load ptr, ptr %2, align 64
  %45 = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 17
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %21, i32 0, i32 6
  store i32 %46, ptr %47, align 4
  %48 = load i32, ptr %5, align 4
  %49 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 36, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %13, ptr noundef null) #22
  br label %50

50:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_mem_return_failed(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !11
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !9

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !10

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #22
  br i1 %13, label %24, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 20) #22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %15, i32 0, i32 1
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.xdp_mem_info, ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %15, i32 0, i32 2
  store i32 %20, ptr %21, align 4
  %22 = load i32, ptr %1, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %15, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #22
  br label %24

24:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_mem_return_failed(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #2 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store ptr null, ptr %4, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 0, ptr %5, align 4, !annotation !11
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #22
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #19, !srcloc !23
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #22
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #22
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %21, i32 0, i32 1
  store ptr %2, ptr %34, align 4
  %35 = getelementptr inbounds %struct.xdp_mem_info, ptr %1, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %21, i32 0, i32 2
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr %1, align 4
  %39 = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %21, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  %40 = load i32, ptr %5, align 4
  %41 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %40, ptr noundef %0, i64 noundef 1, ptr noundef %41, ptr noundef %13, ptr noundef null) #22
  br label %42

42:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__bpf_prog_run_args32(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #2 {
  %7 = alloca [4 x i64], align 8
  %8 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i32 32, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i32 96, i1 false), !annotation !11
  %9 = getelementptr inbounds [4 x i64], ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 10
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 1
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 2
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 3
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 4
  store i64 %3, ptr %16, align 8
  %17 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 5
  store i64 %4, ptr %17, align 8
  %18 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #22
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__bpf_prog_run_args64(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #2 {
  %7 = alloca [8 x i64], align 8
  %8 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i32 64, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i32 96, i1 false), !annotation !11
  %9 = getelementptr inbounds [8 x i64], ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %9 to i32
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 10
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 1
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 2
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 3
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 4
  store i64 %3, ptr %16, align 8
  %17 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 5
  store i64 %4, ptr %17, align 8
  %18 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #22
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__bpf_prog_run_args96(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #2 {
  %7 = alloca [12 x i64], align 8
  %8 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %7, i8 0, i32 96, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i32 96, i1 false), !annotation !11
  %9 = getelementptr inbounds [12 x i64], ptr %7, i32 0, i32 12
  %10 = ptrtoint ptr %9 to i32
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 10
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 1
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 2
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 3
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 4
  store i64 %3, ptr %16, align 8
  %17 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 5
  store i64 %4, ptr %17, align 8
  %18 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #22
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__bpf_prog_run_args128(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #2 {
  %7 = alloca [16 x i64], align 8
  %8 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %7, i8 0, i32 128, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i32 96, i1 false), !annotation !11
  %9 = getelementptr inbounds [16 x i64], ptr %7, i32 0, i32 16
  %10 = ptrtoint ptr %9 to i32
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 10
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 1
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 2
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 3
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 4
  store i64 %3, ptr %16, align 8
  %17 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 5
  store i64 %4, ptr %17, align 8
  %18 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #22
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__bpf_prog_run_args160(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #2 {
  %7 = alloca [20 x i64], align 8
  %8 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(160) %7, i8 0, i32 160, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i32 96, i1 false), !annotation !11
  %9 = getelementptr inbounds [20 x i64], ptr %7, i32 0, i32 20
  %10 = ptrtoint ptr %9 to i32
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 10
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 1
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 2
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 3
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 4
  store i64 %3, ptr %16, align 8
  %17 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 5
  store i64 %4, ptr %17, align 8
  %18 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %7) #22
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__bpf_prog_run_args192(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #2 {
  %7 = alloca [24 x i64], align 8
  %8 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %7, i8 0, i32 192, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i32 96, i1 false), !annotation !11
  %9 = getelementptr inbounds [24 x i64], ptr %7, i32 0, i32 24
  %10 = ptrtoint ptr %9 to i32
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 10
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 1
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 2
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 3
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 4
  store i64 %3, ptr %16, align 8
  %17 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 5
  store i64 %4, ptr %17, align 8
  %18 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %7) #22
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__bpf_prog_run_args224(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #2 {
  %7 = alloca [28 x i64], align 8
  %8 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(224) %7, i8 0, i32 224, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i32 96, i1 false), !annotation !11
  %9 = getelementptr inbounds [28 x i64], ptr %7, i32 0, i32 28
  %10 = ptrtoint ptr %9 to i32
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 10
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 1
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 2
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 3
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 4
  store i64 %3, ptr %16, align 8
  %17 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 5
  store i64 %4, ptr %17, align 8
  %18 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %7) #22
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__bpf_prog_run_args256(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #2 {
  %7 = alloca [32 x i64], align 8
  %8 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(256) %7, i8 0, i32 256, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i32 96, i1 false), !annotation !11
  %9 = getelementptr inbounds [32 x i64], ptr %7, i32 0, i32 32
  %10 = ptrtoint ptr %9 to i32
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 10
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 1
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 2
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 3
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 4
  store i64 %3, ptr %16, align 8
  %17 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 5
  store i64 %4, ptr %17, align 8
  %18 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #22
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__bpf_prog_run_args288(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #2 {
  %7 = alloca [36 x i64], align 8
  %8 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(288) %7, i8 0, i32 288, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i32 96, i1 false), !annotation !11
  %9 = getelementptr inbounds [36 x i64], ptr %7, i32 0, i32 36
  %10 = ptrtoint ptr %9 to i32
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 10
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 1
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 2
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 3
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 4
  store i64 %3, ptr %16, align 8
  %17 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 5
  store i64 %4, ptr %17, align 8
  %18 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %7) #22
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__bpf_prog_run_args320(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #2 {
  %7 = alloca [40 x i64], align 8
  %8 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(320) %7, i8 0, i32 320, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i32 96, i1 false), !annotation !11
  %9 = getelementptr inbounds [40 x i64], ptr %7, i32 0, i32 40
  %10 = ptrtoint ptr %9 to i32
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 10
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 1
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 2
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 3
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 4
  store i64 %3, ptr %16, align 8
  %17 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 5
  store i64 %4, ptr %17, align 8
  %18 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %7) #22
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__bpf_prog_run_args352(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #2 {
  %7 = alloca [44 x i64], align 8
  %8 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 352, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(352) %7, i8 0, i32 352, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i32 96, i1 false), !annotation !11
  %9 = getelementptr inbounds [44 x i64], ptr %7, i32 0, i32 44
  %10 = ptrtoint ptr %9 to i32
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 10
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 1
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 2
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 3
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 4
  store i64 %3, ptr %16, align 8
  %17 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 5
  store i64 %4, ptr %17, align 8
  %18 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 352, ptr nonnull %7) #22
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__bpf_prog_run_args384(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #2 {
  %7 = alloca [48 x i64], align 8
  %8 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(384) %7, i8 0, i32 384, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i32 96, i1 false), !annotation !11
  %9 = getelementptr inbounds [48 x i64], ptr %7, i32 0, i32 48
  %10 = ptrtoint ptr %9 to i32
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 10
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 1
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 2
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 3
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 4
  store i64 %3, ptr %16, align 8
  %17 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 5
  store i64 %4, ptr %17, align 8
  %18 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %7) #22
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__bpf_prog_run_args416(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #2 {
  %7 = alloca [52 x i64], align 8
  %8 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(416) %7, i8 0, i32 416, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i32 96, i1 false), !annotation !11
  %9 = getelementptr inbounds [52 x i64], ptr %7, i32 0, i32 52
  %10 = ptrtoint ptr %9 to i32
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 10
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 1
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 2
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 3
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 4
  store i64 %3, ptr %16, align 8
  %17 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 5
  store i64 %4, ptr %17, align 8
  %18 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %7) #22
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__bpf_prog_run_args448(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #2 {
  %7 = alloca [56 x i64], align 8
  %8 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(448) %7, i8 0, i32 448, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i32 96, i1 false), !annotation !11
  %9 = getelementptr inbounds [56 x i64], ptr %7, i32 0, i32 56
  %10 = ptrtoint ptr %9 to i32
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 10
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 1
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 2
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 3
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 4
  store i64 %3, ptr %16, align 8
  %17 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 5
  store i64 %4, ptr %17, align 8
  %18 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %7) #22
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__bpf_prog_run_args480(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #2 {
  %7 = alloca [60 x i64], align 8
  %8 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(480) %7, i8 0, i32 480, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i32 96, i1 false), !annotation !11
  %9 = getelementptr inbounds [60 x i64], ptr %7, i32 0, i32 60
  %10 = ptrtoint ptr %9 to i32
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 10
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 1
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 2
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 3
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 4
  store i64 %3, ptr %16, align 8
  %17 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 5
  store i64 %4, ptr %17, align 8
  %18 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %7) #22
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i64 @__bpf_prog_run_args512(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #2 {
  %7 = alloca [64 x i64], align 8
  %8 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(512) %7, i8 0, i32 512, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i32 96, i1 false), !annotation !11
  %9 = getelementptr inbounds [64 x i64], ptr %7, i32 0, i32 64
  %10 = ptrtoint ptr %9 to i32
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 10
  store i64 %11, ptr %12, align 8
  %13 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 1
  store i64 %0, ptr %13, align 8
  %14 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 2
  store i64 %1, ptr %14, align 8
  %15 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 3
  store i64 %2, ptr %15, align 8
  %16 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 4
  store i64 %3, ptr %16, align 8
  %17 = getelementptr inbounds [12 x i64], ptr %8, i32 0, i32 5
  store i64 %4, ptr %17, align 8
  %18 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %8, ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #22
  ret i64 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i64 @___bpf_prog_run(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr i64, ptr %0, i32 1
  %4 = getelementptr i64, ptr %0, i32 2
  %5 = getelementptr i64, ptr %0, i32 3
  %6 = getelementptr i64, ptr %0, i32 4
  %7 = getelementptr i64, ptr %0, i32 5
  %8 = getelementptr i64, ptr %0, i32 11
  br label %9

9:                                                ; preds = %29, %2
  %10 = phi i32 [ 0, %2 ], [ %30, %29 ]
  %11 = phi ptr [ %1, %2 ], [ %31, %29 ]
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = getelementptr [256 x ptr], ptr @___bpf_prog_run.jumptable, i32 0, i32 %13
  %15 = load ptr, ptr %14, align 4
  indirectbr ptr %15, [label %2416, label %815, label %800, label %1668, label %60, label %837, label %1648, label %48, label %741, label %2019, label %1709, label %1690, label %32, label %774, label %557, label %16, label %1508, label %1488, label %527, label %571, label %114, label %887, label %906, label %102, label %512, label %1549, label %1530, label %544, label %86, label %845, label %865, label %73, label %1728, label %1983, label %491, label %1265, label %324, label %1047, label %1066, label %312, label %1245, label %1965, label %469, label %502, label %296, label %1005, label %1025, label %283, label %1306, label %1947, label %1287, label %481, label %723, label %1207, label %1226, label %707, label %231, label %2001, label %1105, label %1085, label %685, label %1165, label %1185, label %668, label %244, label %258, label %1146, label %1127, label %218, label %1368, label %1388, label %206, label %270, label %583, label %601, label %628, label %192, label %1325, label %1346, label %179, label %843, label %645, label %460, label %789, label %166, label %967, label %986, label %154, label %449, label %393, label %1588, label %1568, label %140, label %925, label %945, label %127, label %407, label %1875, label %1859, label %1840, label %380, label %1450, label %1469, label %368, label %1894, label %1821, label %1804, label %1785, label %351, label %1408, label %1428, label %337, label %1912, label %1766, label %1749, label %1730, label %436, label %1610, label %1629, label %424, label %1929]

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 15
  %20 = zext i8 %19 to i32
  %21 = getelementptr i64, ptr %0, i32 %20
  %22 = load i64, ptr %21, align 8
  %23 = lshr i8 %18, 4
  %24 = zext i8 %23 to i32
  %25 = getelementptr i64, ptr %0, i32 %24
  %26 = load i64, ptr %25, align 8
  %27 = add i64 %26, %22
  store i64 %27, ptr %21, align 8
  %28 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

29:                                               ; preds = %2414, %2001, %1983, %1965, %1947, %1929, %1912, %1894, %1875, %1859, %1840, %1821, %1804, %1785, %1766, %1749, %1730, %1728, %1726, %1720, %1707, %1701, %1688, %1682, %1666, %1660, %1646, %1640, %1627, %1621, %1608, %1602, %1586, %1580, %1566, %1560, %1547, %1541, %1528, %1522, %1506, %1500, %1486, %1480, %1467, %1461, %1448, %1442, %1426, %1420, %1406, %1400, %1386, %1380, %1366, %1360, %1344, %1338, %1323, %1317, %1304, %1298, %1285, %1279, %1263, %1257, %1243, %1237, %1224, %1218, %1205, %1199, %1183, %1177, %1163, %1157, %1144, %1138, %1125, %1119, %1103, %1097, %1083, %1077, %1064, %1058, %1045, %1039, %1023, %1017, %1003, %997, %984, %978, %965, %959, %943, %937, %923, %917, %904, %898, %885, %879, %863, %857, %837, %834, %832, %800, %789, %787, %772, %723, %707, %685, %668, %645, %628, %601, %583, %571, %557, %544, %527, %512, %502, %491, %481, %469, %460, %449, %436, %424, %407, %393, %380, %368, %351, %337, %324, %312, %296, %283, %270, %258, %244, %231, %218, %206, %192, %179, %166, %154, %140, %127, %114, %102, %86, %73, %60, %48, %32, %16
  %30 = phi i32 [ %10, %1929 ], [ %10, %424 ], [ %10, %1640 ], [ %10, %1646 ], [ %10, %1621 ], [ %10, %1627 ], [ %10, %436 ], [ %10, %1730 ], [ %10, %1749 ], [ %10, %1766 ], [ %10, %1912 ], [ %10, %337 ], [ %10, %1442 ], [ %10, %1448 ], [ %10, %1420 ], [ %10, %1426 ], [ %10, %351 ], [ %10, %1785 ], [ %10, %1804 ], [ %10, %1821 ], [ %10, %1894 ], [ %10, %368 ], [ %10, %1480 ], [ %10, %1486 ], [ %10, %1461 ], [ %10, %1467 ], [ %10, %380 ], [ %10, %1840 ], [ %10, %1859 ], [ %10, %1875 ], [ %10, %407 ], [ %10, %127 ], [ %10, %959 ], [ %10, %965 ], [ %10, %937 ], [ %10, %943 ], [ %10, %140 ], [ %10, %1580 ], [ %10, %1586 ], [ %10, %1602 ], [ %10, %1608 ], [ %10, %393 ], [ %10, %449 ], [ %10, %154 ], [ %10, %997 ], [ %10, %1003 ], [ %10, %978 ], [ %10, %984 ], [ %10, %166 ], [ %10, %789 ], [ %10, %460 ], [ %10, %645 ], [ %10, %179 ], [ %10, %1360 ], [ %10, %1366 ], [ %10, %1338 ], [ %10, %1344 ], [ %10, %192 ], [ %10, %628 ], [ %10, %601 ], [ %10, %583 ], [ %10, %270 ], [ %10, %206 ], [ %10, %1400 ], [ %10, %1406 ], [ %10, %1380 ], [ %10, %1386 ], [ %10, %218 ], [ %10, %1138 ], [ %10, %1144 ], [ %10, %1157 ], [ %10, %1163 ], [ %10, %258 ], [ %10, %244 ], [ %10, %668 ], [ %10, %1199 ], [ %10, %1205 ], [ %10, %1177 ], [ %10, %1183 ], [ %10, %685 ], [ %10, %1097 ], [ %10, %1103 ], [ %10, %1119 ], [ %10, %1125 ], [ %10, %2001 ], [ %10, %231 ], [ %10, %707 ], [ %10, %1237 ], [ %10, %1243 ], [ %10, %1218 ], [ %10, %1224 ], [ %10, %723 ], [ %10, %481 ], [ %10, %1298 ], [ %10, %1304 ], [ %10, %1947 ], [ %10, %1317 ], [ %10, %1323 ], [ %10, %283 ], [ %10, %1039 ], [ %10, %1045 ], [ %10, %1017 ], [ %10, %1023 ], [ %10, %296 ], [ %10, %502 ], [ %10, %469 ], [ %10, %1965 ], [ %10, %1257 ], [ %10, %1263 ], [ %10, %312 ], [ %10, %1077 ], [ %10, %1083 ], [ %10, %1058 ], [ %10, %1064 ], [ %10, %324 ], [ %10, %1279 ], [ %10, %1285 ], [ %10, %491 ], [ %10, %1983 ], [ %10, %1728 ], [ %10, %73 ], [ %10, %879 ], [ %10, %885 ], [ %10, %857 ], [ %10, %863 ], [ %10, %86 ], [ %10, %544 ], [ %10, %1541 ], [ %10, %1547 ], [ %10, %1560 ], [ %10, %1566 ], [ %10, %512 ], [ %10, %102 ], [ %10, %917 ], [ %10, %923 ], [ %10, %898 ], [ %10, %904 ], [ %10, %114 ], [ %10, %571 ], [ %10, %527 ], [ %10, %1500 ], [ %10, %1506 ], [ %10, %1522 ], [ %10, %1528 ], [ %10, %16 ], [ %10, %557 ], [ %10, %787 ], [ %10, %32 ], [ %10, %1701 ], [ %10, %1707 ], [ %10, %1720 ], [ %10, %1726 ], [ %10, %2414 ], [ %10, %772 ], [ %10, %48 ], [ %10, %1660 ], [ %10, %1666 ], [ %10, %837 ], [ %10, %60 ], [ %10, %1682 ], [ %10, %1688 ], [ %10, %800 ], [ %835, %834 ], [ %827, %832 ]
  %31 = phi ptr [ %1946, %1929 ], [ %435, %424 ], [ %1645, %1640 ], [ %1647, %1646 ], [ %1626, %1621 ], [ %1628, %1627 ], [ %448, %436 ], [ %1748, %1730 ], [ %1765, %1749 ], [ %1784, %1766 ], [ %1928, %1912 ], [ %350, %337 ], [ %1447, %1442 ], [ %1449, %1448 ], [ %1425, %1420 ], [ %1427, %1426 ], [ %367, %351 ], [ %1803, %1785 ], [ %1820, %1804 ], [ %1839, %1821 ], [ %1911, %1894 ], [ %379, %368 ], [ %1485, %1480 ], [ %1487, %1486 ], [ %1466, %1461 ], [ %1468, %1467 ], [ %392, %380 ], [ %1858, %1840 ], [ %1874, %1859 ], [ %1893, %1875 ], [ %423, %407 ], [ %139, %127 ], [ %964, %959 ], [ %966, %965 ], [ %942, %937 ], [ %944, %943 ], [ %153, %140 ], [ %1585, %1580 ], [ %1587, %1586 ], [ %1607, %1602 ], [ %1609, %1608 ], [ %406, %393 ], [ %459, %449 ], [ %165, %154 ], [ %1002, %997 ], [ %1004, %1003 ], [ %983, %978 ], [ %985, %984 ], [ %178, %166 ], [ %799, %789 ], [ %468, %460 ], [ %667, %645 ], [ %191, %179 ], [ %1365, %1360 ], [ %1367, %1366 ], [ %1343, %1338 ], [ %1345, %1344 ], [ %205, %192 ], [ %644, %628 ], [ %627, %601 ], [ %600, %583 ], [ %282, %270 ], [ %217, %206 ], [ %1405, %1400 ], [ %1407, %1406 ], [ %1385, %1380 ], [ %1387, %1386 ], [ %230, %218 ], [ %1143, %1138 ], [ %1145, %1144 ], [ %1162, %1157 ], [ %1164, %1163 ], [ %269, %258 ], [ %257, %244 ], [ %684, %668 ], [ %1204, %1199 ], [ %1206, %1205 ], [ %1182, %1177 ], [ %1184, %1183 ], [ %706, %685 ], [ %1102, %1097 ], [ %1104, %1103 ], [ %1124, %1119 ], [ %1126, %1125 ], [ %2018, %2001 ], [ %243, %231 ], [ %722, %707 ], [ %1242, %1237 ], [ %1244, %1243 ], [ %1223, %1218 ], [ %1225, %1224 ], [ %740, %723 ], [ %490, %481 ], [ %1303, %1298 ], [ %1305, %1304 ], [ %1964, %1947 ], [ %1322, %1317 ], [ %1324, %1323 ], [ %295, %283 ], [ %1044, %1039 ], [ %1046, %1045 ], [ %1022, %1017 ], [ %1024, %1023 ], [ %311, %296 ], [ %511, %502 ], [ %480, %469 ], [ %1982, %1965 ], [ %1262, %1257 ], [ %1264, %1263 ], [ %323, %312 ], [ %1082, %1077 ], [ %1084, %1083 ], [ %1063, %1058 ], [ %1065, %1064 ], [ %336, %324 ], [ %1284, %1279 ], [ %1286, %1285 ], [ %501, %491 ], [ %2000, %1983 ], [ %1729, %1728 ], [ %85, %73 ], [ %884, %879 ], [ %886, %885 ], [ %862, %857 ], [ %864, %863 ], [ %101, %86 ], [ %556, %544 ], [ %1546, %1541 ], [ %1548, %1547 ], [ %1565, %1560 ], [ %1567, %1566 ], [ %526, %512 ], [ %113, %102 ], [ %922, %917 ], [ %924, %923 ], [ %903, %898 ], [ %905, %904 ], [ %126, %114 ], [ %582, %571 ], [ %543, %527 ], [ %1505, %1500 ], [ %1507, %1506 ], [ %1527, %1522 ], [ %1529, %1528 ], [ %28, %16 ], [ %570, %557 ], [ %788, %787 ], [ %47, %32 ], [ %1706, %1701 ], [ %1708, %1707 ], [ %1725, %1720 ], [ %1727, %1726 ], [ %2415, %2414 ], [ %773, %772 ], [ %59, %48 ], [ %1665, %1660 ], [ %1667, %1666 ], [ %842, %837 ], [ %72, %60 ], [ %1687, %1682 ], [ %1689, %1688 ], [ %812, %800 ], [ %836, %834 ], [ %833, %832 ]
  br label %9

32:                                               ; preds = %9
  %33 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 15
  %36 = zext i8 %35 to i32
  %37 = getelementptr i64, ptr %0, i32 %36
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = lshr i8 %34, 4
  %41 = zext i8 %40 to i32
  %42 = getelementptr i64, ptr %0, i32 %41
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = add i32 %44, %39
  %46 = zext i32 %45 to i64
  store i64 %46, ptr %37, align 8
  %47 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

48:                                               ; preds = %9
  %49 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = and i8 %50, 15
  %52 = zext i8 %51 to i32
  %53 = getelementptr i64, ptr %0, i32 %52
  %54 = load i64, ptr %53, align 8
  %55 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %54, %57
  store i64 %58, ptr %53, align 8
  %59 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

60:                                               ; preds = %9
  %61 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %62 = load i8, ptr %61, align 1
  %63 = and i8 %62, 15
  %64 = zext i8 %63 to i32
  %65 = getelementptr i64, ptr %0, i32 %64
  %66 = load i64, ptr %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, %67
  %71 = zext i32 %70 to i64
  store i64 %71, ptr %65, align 8
  %72 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

73:                                               ; preds = %9
  %74 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %75 = load i8, ptr %74, align 1
  %76 = and i8 %75, 15
  %77 = zext i8 %76 to i32
  %78 = getelementptr i64, ptr %0, i32 %77
  %79 = load i64, ptr %78, align 8
  %80 = lshr i8 %75, 4
  %81 = zext i8 %80 to i32
  %82 = getelementptr i64, ptr %0, i32 %81
  %83 = load i64, ptr %82, align 8
  %84 = sub i64 %79, %83
  store i64 %84, ptr %78, align 8
  %85 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

86:                                               ; preds = %9
  %87 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %88 = load i8, ptr %87, align 1
  %89 = and i8 %88, 15
  %90 = zext i8 %89 to i32
  %91 = getelementptr i64, ptr %0, i32 %90
  %92 = load i64, ptr %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = lshr i8 %88, 4
  %95 = zext i8 %94 to i32
  %96 = getelementptr i64, ptr %0, i32 %95
  %97 = load i64, ptr %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = sub i32 %93, %98
  %100 = zext i32 %99 to i64
  store i64 %100, ptr %91, align 8
  %101 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

102:                                              ; preds = %9
  %103 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %104 = load i8, ptr %103, align 1
  %105 = and i8 %104, 15
  %106 = zext i8 %105 to i32
  %107 = getelementptr i64, ptr %0, i32 %106
  %108 = load i64, ptr %107, align 8
  %109 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = sext i32 %110 to i64
  %112 = sub i64 %108, %111
  store i64 %112, ptr %107, align 8
  %113 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

114:                                              ; preds = %9
  %115 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %116 = load i8, ptr %115, align 1
  %117 = and i8 %116, 15
  %118 = zext i8 %117 to i32
  %119 = getelementptr i64, ptr %0, i32 %118
  %120 = load i64, ptr %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = sub i32 %121, %123
  %125 = zext i32 %124 to i64
  store i64 %125, ptr %119, align 8
  %126 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

127:                                              ; preds = %9
  %128 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %129 = load i8, ptr %128, align 1
  %130 = and i8 %129, 15
  %131 = zext i8 %130 to i32
  %132 = getelementptr i64, ptr %0, i32 %131
  %133 = load i64, ptr %132, align 8
  %134 = lshr i8 %129, 4
  %135 = zext i8 %134 to i32
  %136 = getelementptr i64, ptr %0, i32 %135
  %137 = load i64, ptr %136, align 8
  %138 = and i64 %137, %133
  store i64 %138, ptr %132, align 8
  %139 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

140:                                              ; preds = %9
  %141 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %142 = load i8, ptr %141, align 1
  %143 = and i8 %142, 15
  %144 = zext i8 %143 to i32
  %145 = getelementptr i64, ptr %0, i32 %144
  %146 = load i64, ptr %145, align 8
  %147 = lshr i8 %142, 4
  %148 = zext i8 %147 to i32
  %149 = getelementptr i64, ptr %0, i32 %148
  %150 = load i64, ptr %149, align 8
  %151 = and i64 %146, 4294967295
  %152 = and i64 %151, %150
  store i64 %152, ptr %145, align 8
  %153 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

154:                                              ; preds = %9
  %155 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %156 = load i8, ptr %155, align 1
  %157 = and i8 %156, 15
  %158 = zext i8 %157 to i32
  %159 = getelementptr i64, ptr %0, i32 %158
  %160 = load i64, ptr %159, align 8
  %161 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %162 = load i32, ptr %161, align 4
  %163 = sext i32 %162 to i64
  %164 = and i64 %160, %163
  store i64 %164, ptr %159, align 8
  %165 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

166:                                              ; preds = %9
  %167 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %168 = load i8, ptr %167, align 1
  %169 = and i8 %168, 15
  %170 = zext i8 %169 to i32
  %171 = getelementptr i64, ptr %0, i32 %170
  %172 = load i64, ptr %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %175 = load i32, ptr %174, align 4
  %176 = and i32 %175, %173
  %177 = zext i32 %176 to i64
  store i64 %177, ptr %171, align 8
  %178 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

179:                                              ; preds = %9
  %180 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %181 = load i8, ptr %180, align 1
  %182 = and i8 %181, 15
  %183 = zext i8 %182 to i32
  %184 = getelementptr i64, ptr %0, i32 %183
  %185 = load i64, ptr %184, align 8
  %186 = lshr i8 %181, 4
  %187 = zext i8 %186 to i32
  %188 = getelementptr i64, ptr %0, i32 %187
  %189 = load i64, ptr %188, align 8
  %190 = or i64 %189, %185
  store i64 %190, ptr %184, align 8
  %191 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

192:                                              ; preds = %9
  %193 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %194 = load i8, ptr %193, align 1
  %195 = and i8 %194, 15
  %196 = zext i8 %195 to i32
  %197 = getelementptr i64, ptr %0, i32 %196
  %198 = load i64, ptr %197, align 8
  %199 = lshr i8 %194, 4
  %200 = zext i8 %199 to i32
  %201 = getelementptr i64, ptr %0, i32 %200
  %202 = load i64, ptr %201, align 8
  %203 = or i64 %202, %198
  %204 = and i64 %203, 4294967295
  store i64 %204, ptr %197, align 8
  %205 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

206:                                              ; preds = %9
  %207 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %208 = load i8, ptr %207, align 1
  %209 = and i8 %208, 15
  %210 = zext i8 %209 to i32
  %211 = getelementptr i64, ptr %0, i32 %210
  %212 = load i64, ptr %211, align 8
  %213 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %214 = load i32, ptr %213, align 4
  %215 = sext i32 %214 to i64
  %216 = or i64 %212, %215
  store i64 %216, ptr %211, align 8
  %217 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

218:                                              ; preds = %9
  %219 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %220 = load i8, ptr %219, align 1
  %221 = and i8 %220, 15
  %222 = zext i8 %221 to i32
  %223 = getelementptr i64, ptr %0, i32 %222
  %224 = load i64, ptr %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %227 = load i32, ptr %226, align 4
  %228 = or i32 %227, %225
  %229 = zext i32 %228 to i64
  store i64 %229, ptr %223, align 8
  %230 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

231:                                              ; preds = %9
  %232 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %233 = load i8, ptr %232, align 1
  %234 = and i8 %233, 15
  %235 = zext i8 %234 to i32
  %236 = getelementptr i64, ptr %0, i32 %235
  %237 = load i64, ptr %236, align 8
  %238 = lshr i8 %233, 4
  %239 = zext i8 %238 to i32
  %240 = getelementptr i64, ptr %0, i32 %239
  %241 = load i64, ptr %240, align 8
  %242 = xor i64 %241, %237
  store i64 %242, ptr %236, align 8
  %243 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

244:                                              ; preds = %9
  %245 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %246 = load i8, ptr %245, align 1
  %247 = and i8 %246, 15
  %248 = zext i8 %247 to i32
  %249 = getelementptr i64, ptr %0, i32 %248
  %250 = load i64, ptr %249, align 8
  %251 = lshr i8 %246, 4
  %252 = zext i8 %251 to i32
  %253 = getelementptr i64, ptr %0, i32 %252
  %254 = load i64, ptr %253, align 8
  %255 = xor i64 %254, %250
  %256 = and i64 %255, 4294967295
  store i64 %256, ptr %249, align 8
  %257 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

258:                                              ; preds = %9
  %259 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %260 = load i8, ptr %259, align 1
  %261 = and i8 %260, 15
  %262 = zext i8 %261 to i32
  %263 = getelementptr i64, ptr %0, i32 %262
  %264 = load i64, ptr %263, align 8
  %265 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %266 = load i32, ptr %265, align 4
  %267 = sext i32 %266 to i64
  %268 = xor i64 %264, %267
  store i64 %268, ptr %263, align 8
  %269 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

270:                                              ; preds = %9
  %271 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %272 = load i8, ptr %271, align 1
  %273 = and i8 %272, 15
  %274 = zext i8 %273 to i32
  %275 = getelementptr i64, ptr %0, i32 %274
  %276 = load i64, ptr %275, align 8
  %277 = trunc i64 %276 to i32
  %278 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %279 = load i32, ptr %278, align 4
  %280 = xor i32 %279, %277
  %281 = zext i32 %280 to i64
  store i64 %281, ptr %275, align 8
  %282 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

283:                                              ; preds = %9
  %284 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %285 = load i8, ptr %284, align 1
  %286 = and i8 %285, 15
  %287 = zext i8 %286 to i32
  %288 = getelementptr i64, ptr %0, i32 %287
  %289 = load i64, ptr %288, align 8
  %290 = lshr i8 %285, 4
  %291 = zext i8 %290 to i32
  %292 = getelementptr i64, ptr %0, i32 %291
  %293 = load i64, ptr %292, align 8
  %294 = mul i64 %293, %289
  store i64 %294, ptr %288, align 8
  %295 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

296:                                              ; preds = %9
  %297 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %298 = load i8, ptr %297, align 1
  %299 = and i8 %298, 15
  %300 = zext i8 %299 to i32
  %301 = getelementptr i64, ptr %0, i32 %300
  %302 = load i64, ptr %301, align 8
  %303 = trunc i64 %302 to i32
  %304 = lshr i8 %298, 4
  %305 = zext i8 %304 to i32
  %306 = getelementptr i64, ptr %0, i32 %305
  %307 = load i64, ptr %306, align 8
  %308 = trunc i64 %307 to i32
  %309 = mul i32 %308, %303
  %310 = zext i32 %309 to i64
  store i64 %310, ptr %301, align 8
  %311 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

312:                                              ; preds = %9
  %313 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %314 = load i8, ptr %313, align 1
  %315 = and i8 %314, 15
  %316 = zext i8 %315 to i32
  %317 = getelementptr i64, ptr %0, i32 %316
  %318 = load i64, ptr %317, align 8
  %319 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %320 = load i32, ptr %319, align 4
  %321 = sext i32 %320 to i64
  %322 = mul i64 %318, %321
  store i64 %322, ptr %317, align 8
  %323 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

324:                                              ; preds = %9
  %325 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %326 = load i8, ptr %325, align 1
  %327 = and i8 %326, 15
  %328 = zext i8 %327 to i32
  %329 = getelementptr i64, ptr %0, i32 %328
  %330 = load i64, ptr %329, align 8
  %331 = trunc i64 %330 to i32
  %332 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %333 = load i32, ptr %332, align 4
  %334 = mul i32 %333, %331
  %335 = zext i32 %334 to i64
  store i64 %335, ptr %329, align 8
  %336 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

337:                                              ; preds = %9
  %338 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %339 = load i8, ptr %338, align 1
  %340 = and i8 %339, 15
  %341 = zext i8 %340 to i32
  %342 = getelementptr i64, ptr %0, i32 %341
  %343 = load i64, ptr %342, align 8
  %344 = lshr i8 %339, 4
  %345 = zext i8 %344 to i32
  %346 = getelementptr i64, ptr %0, i32 %345
  %347 = load i64, ptr %346, align 8
  %348 = and i64 %347, 63
  %349 = shl i64 %343, %348
  store i64 %349, ptr %342, align 8
  %350 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

351:                                              ; preds = %9
  %352 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %353 = load i8, ptr %352, align 1
  %354 = and i8 %353, 15
  %355 = zext i8 %354 to i32
  %356 = getelementptr i64, ptr %0, i32 %355
  %357 = load i64, ptr %356, align 8
  %358 = trunc i64 %357 to i32
  %359 = lshr i8 %353, 4
  %360 = zext i8 %359 to i32
  %361 = getelementptr i64, ptr %0, i32 %360
  %362 = load i64, ptr %361, align 8
  %363 = trunc i64 %362 to i32
  %364 = and i32 %363, 31
  %365 = shl i32 %358, %364
  %366 = zext i32 %365 to i64
  store i64 %366, ptr %356, align 8
  %367 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

368:                                              ; preds = %9
  %369 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %370 = load i8, ptr %369, align 1
  %371 = and i8 %370, 15
  %372 = zext i8 %371 to i32
  %373 = getelementptr i64, ptr %0, i32 %372
  %374 = load i64, ptr %373, align 8
  %375 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %376 = load i32, ptr %375, align 4
  %377 = zext i32 %376 to i64
  %378 = shl i64 %374, %377
  store i64 %378, ptr %373, align 8
  %379 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

380:                                              ; preds = %9
  %381 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %382 = load i8, ptr %381, align 1
  %383 = and i8 %382, 15
  %384 = zext i8 %383 to i32
  %385 = getelementptr i64, ptr %0, i32 %384
  %386 = load i64, ptr %385, align 8
  %387 = trunc i64 %386 to i32
  %388 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %389 = load i32, ptr %388, align 4
  %390 = shl i32 %387, %389
  %391 = zext i32 %390 to i64
  store i64 %391, ptr %385, align 8
  %392 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

393:                                              ; preds = %9
  %394 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %395 = load i8, ptr %394, align 1
  %396 = and i8 %395, 15
  %397 = zext i8 %396 to i32
  %398 = getelementptr i64, ptr %0, i32 %397
  %399 = load i64, ptr %398, align 8
  %400 = lshr i8 %395, 4
  %401 = zext i8 %400 to i32
  %402 = getelementptr i64, ptr %0, i32 %401
  %403 = load i64, ptr %402, align 8
  %404 = and i64 %403, 63
  %405 = lshr i64 %399, %404
  store i64 %405, ptr %398, align 8
  %406 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

407:                                              ; preds = %9
  %408 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %409 = load i8, ptr %408, align 1
  %410 = and i8 %409, 15
  %411 = zext i8 %410 to i32
  %412 = getelementptr i64, ptr %0, i32 %411
  %413 = load i64, ptr %412, align 8
  %414 = trunc i64 %413 to i32
  %415 = lshr i8 %409, 4
  %416 = zext i8 %415 to i32
  %417 = getelementptr i64, ptr %0, i32 %416
  %418 = load i64, ptr %417, align 8
  %419 = trunc i64 %418 to i32
  %420 = and i32 %419, 31
  %421 = lshr i32 %414, %420
  %422 = zext i32 %421 to i64
  store i64 %422, ptr %412, align 8
  %423 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

424:                                              ; preds = %9
  %425 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %426 = load i8, ptr %425, align 1
  %427 = and i8 %426, 15
  %428 = zext i8 %427 to i32
  %429 = getelementptr i64, ptr %0, i32 %428
  %430 = load i64, ptr %429, align 8
  %431 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %432 = load i32, ptr %431, align 4
  %433 = zext i32 %432 to i64
  %434 = lshr i64 %430, %433
  store i64 %434, ptr %429, align 8
  %435 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

436:                                              ; preds = %9
  %437 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %438 = load i8, ptr %437, align 1
  %439 = and i8 %438, 15
  %440 = zext i8 %439 to i32
  %441 = getelementptr i64, ptr %0, i32 %440
  %442 = load i64, ptr %441, align 8
  %443 = trunc i64 %442 to i32
  %444 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %445 = load i32, ptr %444, align 4
  %446 = lshr i32 %443, %445
  %447 = zext i32 %446 to i64
  store i64 %447, ptr %441, align 8
  %448 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

449:                                              ; preds = %9
  %450 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %451 = load i8, ptr %450, align 1
  %452 = and i8 %451, 15
  %453 = zext i8 %452 to i32
  %454 = getelementptr i64, ptr %0, i32 %453
  %455 = load i64, ptr %454, align 8
  %456 = trunc i64 %455 to i32
  %457 = sub i32 0, %456
  %458 = zext i32 %457 to i64
  store i64 %458, ptr %454, align 8
  %459 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

460:                                              ; preds = %9
  %461 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %462 = load i8, ptr %461, align 1
  %463 = and i8 %462, 15
  %464 = zext i8 %463 to i32
  %465 = getelementptr i64, ptr %0, i32 %464
  %466 = load i64, ptr %465, align 8
  %467 = sub i64 0, %466
  store i64 %467, ptr %465, align 8
  %468 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

469:                                              ; preds = %9
  %470 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %471 = load i8, ptr %470, align 1
  %472 = lshr i8 %471, 4
  %473 = zext i8 %472 to i32
  %474 = getelementptr i64, ptr %0, i32 %473
  %475 = load i64, ptr %474, align 8
  %476 = and i64 %475, 4294967295
  %477 = and i8 %471, 15
  %478 = zext i8 %477 to i32
  %479 = getelementptr i64, ptr %0, i32 %478
  store i64 %476, ptr %479, align 8
  %480 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

481:                                              ; preds = %9
  %482 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %483 = load i32, ptr %482, align 4
  %484 = zext i32 %483 to i64
  %485 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %486 = load i8, ptr %485, align 1
  %487 = and i8 %486, 15
  %488 = zext i8 %487 to i32
  %489 = getelementptr i64, ptr %0, i32 %488
  store i64 %484, ptr %489, align 8
  %490 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

491:                                              ; preds = %9
  %492 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %493 = load i8, ptr %492, align 1
  %494 = lshr i8 %493, 4
  %495 = zext i8 %494 to i32
  %496 = getelementptr i64, ptr %0, i32 %495
  %497 = load i64, ptr %496, align 8
  %498 = and i8 %493, 15
  %499 = zext i8 %498 to i32
  %500 = getelementptr i64, ptr %0, i32 %499
  store i64 %497, ptr %500, align 8
  %501 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

502:                                              ; preds = %9
  %503 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %504 = load i32, ptr %503, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %507 = load i8, ptr %506, align 1
  %508 = and i8 %507, 15
  %509 = zext i8 %508 to i32
  %510 = getelementptr i64, ptr %0, i32 %509
  store i64 %505, ptr %510, align 8
  %511 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

512:                                              ; preds = %9
  %513 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %514 = load i32, ptr %513, align 4
  %515 = zext i32 %514 to i64
  %516 = getelementptr %struct.bpf_insn, ptr %11, i32 1, i32 3
  %517 = load i32, ptr %516, align 4
  %518 = zext i32 %517 to i64
  %519 = shl nuw i64 %518, 32
  %520 = or i64 %519, %515
  %521 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %522 = load i8, ptr %521, align 1
  %523 = and i8 %522, 15
  %524 = zext i8 %523 to i32
  %525 = getelementptr i64, ptr %0, i32 %524
  store i64 %520, ptr %525, align 8
  %526 = getelementptr %struct.bpf_insn, ptr %11, i32 2
  br label %29

527:                                              ; preds = %9
  %528 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %529 = load i8, ptr %528, align 1
  %530 = and i8 %529, 15
  %531 = zext i8 %530 to i32
  %532 = getelementptr i64, ptr %0, i32 %531
  %533 = load i64, ptr %532, align 8
  %534 = trunc i64 %533 to i32
  %535 = lshr i8 %529, 4
  %536 = zext i8 %535 to i32
  %537 = getelementptr i64, ptr %0, i32 %536
  %538 = load i64, ptr %537, align 8
  %539 = trunc i64 %538 to i32
  %540 = and i32 %539, 31
  %541 = ashr i32 %534, %540
  %542 = zext i32 %541 to i64
  store i64 %542, ptr %532, align 8
  %543 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

544:                                              ; preds = %9
  %545 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %546 = load i8, ptr %545, align 1
  %547 = and i8 %546, 15
  %548 = zext i8 %547 to i32
  %549 = getelementptr i64, ptr %0, i32 %548
  %550 = load i64, ptr %549, align 8
  %551 = trunc i64 %550 to i32
  %552 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %553 = load i32, ptr %552, align 4
  %554 = ashr i32 %551, %553
  %555 = zext i32 %554 to i64
  store i64 %555, ptr %549, align 8
  %556 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

557:                                              ; preds = %9
  %558 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %559 = load i8, ptr %558, align 1
  %560 = lshr i8 %559, 4
  %561 = zext i8 %560 to i32
  %562 = getelementptr i64, ptr %0, i32 %561
  %563 = load i64, ptr %562, align 8
  %564 = and i64 %563, 63
  %565 = and i8 %559, 15
  %566 = zext i8 %565 to i32
  %567 = getelementptr i64, ptr %0, i32 %566
  %568 = load i64, ptr %567, align 8
  %569 = ashr i64 %568, %564
  store i64 %569, ptr %567, align 8
  %570 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

571:                                              ; preds = %9
  %572 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %573 = load i32, ptr %572, align 4
  %574 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %575 = load i8, ptr %574, align 1
  %576 = and i8 %575, 15
  %577 = zext i8 %576 to i32
  %578 = getelementptr i64, ptr %0, i32 %577
  %579 = load i64, ptr %578, align 8
  %580 = zext i32 %573 to i64
  %581 = ashr i64 %579, %580
  store i64 %581, ptr %578, align 8
  %582 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

583:                                              ; preds = %9
  %584 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %585 = load i8, ptr %584, align 1
  %586 = and i8 %585, 15
  %587 = zext i8 %586 to i32
  %588 = getelementptr i64, ptr %0, i32 %587
  %589 = load i64, ptr %588, align 8
  %590 = lshr i8 %585, 4
  %591 = zext i8 %590 to i32
  %592 = getelementptr i64, ptr %0, i32 %591
  %593 = load i64, ptr %592, align 8
  %594 = tail call i64 @div64_u64_rem(i64 noundef %589, i64 noundef %593, ptr noundef %8) #22
  %595 = load i64, ptr %8, align 8
  %596 = load i8, ptr %584, align 1
  %597 = and i8 %596, 15
  %598 = zext i8 %597 to i32
  %599 = getelementptr i64, ptr %0, i32 %598
  store i64 %595, ptr %599, align 8
  %600 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

601:                                              ; preds = %9
  %602 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %603 = load i8, ptr %602, align 1
  %604 = and i8 %603, 15
  %605 = zext i8 %604 to i32
  %606 = getelementptr i64, ptr %0, i32 %605
  %607 = load i64, ptr %606, align 8
  %608 = and i64 %607, 4294967295
  store i64 %608, ptr %8, align 8
  %609 = load i8, ptr %602, align 1
  %610 = lshr i8 %609, 4
  %611 = zext i8 %610 to i32
  %612 = getelementptr i64, ptr %0, i32 %611
  %613 = load i64, ptr %612, align 8
  %614 = trunc i64 %613 to i32
  %615 = trunc i64 %607 to i32
  %616 = freeze i32 %615
  %617 = freeze i32 %614
  %618 = udiv i32 %616, %617
  %619 = zext i32 %618 to i64
  store i64 %619, ptr %8, align 8
  %620 = mul i32 %618, %617
  %621 = sub i32 %616, %620
  %622 = zext i32 %621 to i64
  %623 = load i8, ptr %602, align 1
  %624 = and i8 %623, 15
  %625 = zext i8 %624 to i32
  %626 = getelementptr i64, ptr %0, i32 %625
  store i64 %622, ptr %626, align 8
  %627 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

628:                                              ; preds = %9
  %629 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %630 = load i8, ptr %629, align 1
  %631 = and i8 %630, 15
  %632 = zext i8 %631 to i32
  %633 = getelementptr i64, ptr %0, i32 %632
  %634 = load i64, ptr %633, align 8
  %635 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %636 = load i32, ptr %635, align 4
  %637 = sext i32 %636 to i64
  %638 = tail call i64 @div64_u64_rem(i64 noundef %634, i64 noundef %637, ptr noundef %8) #22
  %639 = load i64, ptr %8, align 8
  %640 = load i8, ptr %629, align 1
  %641 = and i8 %640, 15
  %642 = zext i8 %641 to i32
  %643 = getelementptr i64, ptr %0, i32 %642
  store i64 %639, ptr %643, align 8
  %644 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

645:                                              ; preds = %9
  %646 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %647 = load i8, ptr %646, align 1
  %648 = and i8 %647, 15
  %649 = zext i8 %648 to i32
  %650 = getelementptr i64, ptr %0, i32 %649
  %651 = load i64, ptr %650, align 8
  %652 = and i64 %651, 4294967295
  store i64 %652, ptr %8, align 8
  %653 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %654 = load i32, ptr %653, align 4
  %655 = trunc i64 %651 to i32
  %656 = freeze i32 %655
  %657 = freeze i32 %654
  %658 = udiv i32 %656, %657
  %659 = zext i32 %658 to i64
  store i64 %659, ptr %8, align 8
  %660 = mul i32 %658, %657
  %661 = sub i32 %656, %660
  %662 = zext i32 %661 to i64
  %663 = load i8, ptr %646, align 1
  %664 = and i8 %663, 15
  %665 = zext i8 %664 to i32
  %666 = getelementptr i64, ptr %0, i32 %665
  store i64 %662, ptr %666, align 8
  %667 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

668:                                              ; preds = %9
  %669 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %670 = load i8, ptr %669, align 1
  %671 = and i8 %670, 15
  %672 = zext i8 %671 to i32
  %673 = getelementptr i64, ptr %0, i32 %672
  %674 = load i64, ptr %673, align 8
  %675 = lshr i8 %670, 4
  %676 = zext i8 %675 to i32
  %677 = getelementptr i64, ptr %0, i32 %676
  %678 = load i64, ptr %677, align 8
  %679 = tail call i64 @div64_u64(i64 noundef %674, i64 noundef %678) #22
  %680 = load i8, ptr %669, align 1
  %681 = and i8 %680, 15
  %682 = zext i8 %681 to i32
  %683 = getelementptr i64, ptr %0, i32 %682
  store i64 %679, ptr %683, align 8
  %684 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

685:                                              ; preds = %9
  %686 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %687 = load i8, ptr %686, align 1
  %688 = and i8 %687, 15
  %689 = zext i8 %688 to i32
  %690 = getelementptr i64, ptr %0, i32 %689
  %691 = load i64, ptr %690, align 8
  %692 = and i64 %691, 4294967295
  store i64 %692, ptr %8, align 8
  %693 = trunc i64 %691 to i32
  %694 = load i8, ptr %686, align 1
  %695 = lshr i8 %694, 4
  %696 = zext i8 %695 to i32
  %697 = getelementptr i64, ptr %0, i32 %696
  %698 = load i64, ptr %697, align 8
  %699 = trunc i64 %698 to i32
  %700 = udiv i32 %693, %699
  %701 = zext i32 %700 to i64
  store i64 %701, ptr %8, align 8
  %702 = load i8, ptr %686, align 1
  %703 = and i8 %702, 15
  %704 = zext i8 %703 to i32
  %705 = getelementptr i64, ptr %0, i32 %704
  store i64 %701, ptr %705, align 8
  %706 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

707:                                              ; preds = %9
  %708 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %709 = load i8, ptr %708, align 1
  %710 = and i8 %709, 15
  %711 = zext i8 %710 to i32
  %712 = getelementptr i64, ptr %0, i32 %711
  %713 = load i64, ptr %712, align 8
  %714 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %715 = load i32, ptr %714, align 4
  %716 = sext i32 %715 to i64
  %717 = tail call i64 @div64_u64(i64 noundef %713, i64 noundef %716) #22
  %718 = load i8, ptr %708, align 1
  %719 = and i8 %718, 15
  %720 = zext i8 %719 to i32
  %721 = getelementptr i64, ptr %0, i32 %720
  store i64 %717, ptr %721, align 8
  %722 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

723:                                              ; preds = %9
  %724 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %725 = load i8, ptr %724, align 1
  %726 = and i8 %725, 15
  %727 = zext i8 %726 to i32
  %728 = getelementptr i64, ptr %0, i32 %727
  %729 = load i64, ptr %728, align 8
  %730 = and i64 %729, 4294967295
  store i64 %730, ptr %8, align 8
  %731 = trunc i64 %729 to i32
  %732 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %733 = load i32, ptr %732, align 4
  %734 = udiv i32 %731, %733
  %735 = zext i32 %734 to i64
  store i64 %735, ptr %8, align 8
  %736 = load i8, ptr %724, align 1
  %737 = and i8 %736, 15
  %738 = zext i8 %737 to i32
  %739 = getelementptr i64, ptr %0, i32 %738
  store i64 %735, ptr %739, align 8
  %740 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

741:                                              ; preds = %9
  %742 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %743 = load i32, ptr %742, align 4
  switch i32 %743, label %772 [
    i32 16, label %744
    i32 32, label %754
    i32 64, label %764
  ]

744:                                              ; preds = %741
  %745 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %746 = load i8, ptr %745, align 1
  %747 = and i8 %746, 15
  %748 = zext i8 %747 to i32
  %749 = getelementptr i64, ptr %0, i32 %748
  %750 = load i64, ptr %749, align 8
  %751 = trunc i64 %750 to i16
  %752 = tail call i16 @llvm.bswap.i16(i16 %751)
  %753 = zext i16 %752 to i64
  store i64 %753, ptr %749, align 8
  br label %772

754:                                              ; preds = %741
  %755 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %756 = load i8, ptr %755, align 1
  %757 = and i8 %756, 15
  %758 = zext i8 %757 to i32
  %759 = getelementptr i64, ptr %0, i32 %758
  %760 = load i64, ptr %759, align 8
  %761 = trunc i64 %760 to i32
  %762 = tail call i32 @llvm.bswap.i32(i32 %761)
  %763 = zext i32 %762 to i64
  store i64 %763, ptr %759, align 8
  br label %772

764:                                              ; preds = %741
  %765 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %766 = load i8, ptr %765, align 1
  %767 = and i8 %766, 15
  %768 = zext i8 %767 to i32
  %769 = getelementptr i64, ptr %0, i32 %768
  %770 = load i64, ptr %769, align 8
  %771 = tail call i64 @llvm.bswap.i64(i64 %770)
  store i64 %771, ptr %769, align 8
  br label %772

772:                                              ; preds = %764, %754, %744, %741
  %773 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

774:                                              ; preds = %9
  %775 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %776 = load i32, ptr %775, align 4
  switch i32 %776, label %787 [
    i32 16, label %778
    i32 32, label %777
  ]

777:                                              ; preds = %774
  br label %778

778:                                              ; preds = %777, %774
  %779 = phi i64 [ 4294967295, %777 ], [ 65535, %774 ]
  %780 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %781 = load i8, ptr %780, align 1
  %782 = and i8 %781, 15
  %783 = zext i8 %782 to i32
  %784 = getelementptr i64, ptr %0, i32 %783
  %785 = load i64, ptr %784, align 8
  %786 = and i64 %785, %779
  store i64 %786, ptr %784, align 8
  br label %787

787:                                              ; preds = %778, %774
  %788 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

789:                                              ; preds = %9
  %790 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %791 = load i32, ptr %790, align 4
  %792 = getelementptr i8, ptr @__bpf_call_base, i32 %791
  %793 = load i64, ptr %3, align 8
  %794 = load i64, ptr %4, align 8
  %795 = load i64, ptr %5, align 8
  %796 = load i64, ptr %6, align 8
  %797 = load i64, ptr %7, align 8
  %798 = tail call i64 %792(i64 noundef %793, i64 noundef %794, i64 noundef %795, i64 noundef %796, i64 noundef %797) #22
  store i64 %798, ptr %0, align 8
  %799 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

800:                                              ; preds = %9
  %801 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %802 = load i32, ptr %801, align 4
  %803 = getelementptr i8, ptr @__bpf_call_base, i32 %802
  %804 = load i64, ptr %3, align 8
  %805 = load i64, ptr %4, align 8
  %806 = load i64, ptr %5, align 8
  %807 = load i64, ptr %6, align 8
  %808 = load i64, ptr %7, align 8
  %809 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %810 = load i16, ptr %809, align 2
  %811 = sext i16 %810 to i32
  %812 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %813 = getelementptr %struct.bpf_insn, ptr %812, i32 %811
  %814 = tail call i64 %803(i64 noundef %804, i64 noundef %805, i64 noundef %806, i64 noundef %807, i64 noundef %808, ptr noundef %813) #22
  store i64 %814, ptr %0, align 8
  br label %29

815:                                              ; preds = %9
  %816 = load i64, ptr %4, align 8
  %817 = trunc i64 %816 to i32
  %818 = inttoptr i32 %817 to ptr
  %819 = load i64, ptr %5, align 8
  %820 = trunc i64 %819 to i32
  %821 = getelementptr inbounds %struct.bpf_map, ptr %818, i32 0, i32 5
  %822 = load i32, ptr %821, align 4
  %823 = icmp ule i32 %822, %820
  %824 = icmp ugt i32 %10, 32
  %825 = select i1 %823, i1 true, i1 %824
  br i1 %825, label %834, label %826, !prof !25

826:                                              ; preds = %815
  %827 = add nuw nsw i32 %10, 1
  %828 = getelementptr inbounds %struct.bpf_array, ptr %818, i32 0, i32 5
  %829 = getelementptr [0 x ptr], ptr %828, i32 0, i32 %820
  %830 = load volatile ptr, ptr %829, align 4
  %831 = icmp eq ptr %830, null
  br i1 %831, label %834, label %832

832:                                              ; preds = %826
  %833 = getelementptr inbounds %struct.bpf_prog, ptr %830, i32 1
  br label %29

834:                                              ; preds = %826, %815
  %835 = phi i32 [ %10, %815 ], [ %827, %826 ]
  %836 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

837:                                              ; preds = %9
  %838 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %839 = load i16, ptr %838, align 2
  %840 = sext i16 %839 to i32
  %841 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %842 = getelementptr %struct.bpf_insn, ptr %841, i32 %840
  br label %29

843:                                              ; preds = %9
  %844 = load i64, ptr %0, align 8
  ret i64 %844

845:                                              ; preds = %9
  %846 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %847 = load i8, ptr %846, align 1
  %848 = and i8 %847, 15
  %849 = zext i8 %848 to i32
  %850 = getelementptr i64, ptr %0, i32 %849
  %851 = load i64, ptr %850, align 8
  %852 = lshr i8 %847, 4
  %853 = zext i8 %852 to i32
  %854 = getelementptr i64, ptr %0, i32 %853
  %855 = load i64, ptr %854, align 8
  %856 = icmp eq i64 %851, %855
  br i1 %856, label %857, label %863

857:                                              ; preds = %845
  %858 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %859 = load i16, ptr %858, align 2
  %860 = sext i16 %859 to i32
  %861 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %862 = getelementptr %struct.bpf_insn, ptr %861, i32 %860
  br label %29

863:                                              ; preds = %845
  %864 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

865:                                              ; preds = %9
  %866 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %867 = load i8, ptr %866, align 1
  %868 = and i8 %867, 15
  %869 = zext i8 %868 to i32
  %870 = getelementptr i64, ptr %0, i32 %869
  %871 = load i64, ptr %870, align 8
  %872 = trunc i64 %871 to i32
  %873 = lshr i8 %867, 4
  %874 = zext i8 %873 to i32
  %875 = getelementptr i64, ptr %0, i32 %874
  %876 = load i64, ptr %875, align 8
  %877 = trunc i64 %876 to i32
  %878 = icmp eq i32 %872, %877
  br i1 %878, label %879, label %885

879:                                              ; preds = %865
  %880 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %881 = load i16, ptr %880, align 2
  %882 = sext i16 %881 to i32
  %883 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %884 = getelementptr %struct.bpf_insn, ptr %883, i32 %882
  br label %29

885:                                              ; preds = %865
  %886 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

887:                                              ; preds = %9
  %888 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %889 = load i8, ptr %888, align 1
  %890 = and i8 %889, 15
  %891 = zext i8 %890 to i32
  %892 = getelementptr i64, ptr %0, i32 %891
  %893 = load i64, ptr %892, align 8
  %894 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %895 = load i32, ptr %894, align 4
  %896 = sext i32 %895 to i64
  %897 = icmp eq i64 %893, %896
  br i1 %897, label %898, label %904

898:                                              ; preds = %887
  %899 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %900 = load i16, ptr %899, align 2
  %901 = sext i16 %900 to i32
  %902 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %903 = getelementptr %struct.bpf_insn, ptr %902, i32 %901
  br label %29

904:                                              ; preds = %887
  %905 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

906:                                              ; preds = %9
  %907 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %908 = load i8, ptr %907, align 1
  %909 = and i8 %908, 15
  %910 = zext i8 %909 to i32
  %911 = getelementptr i64, ptr %0, i32 %910
  %912 = load i64, ptr %911, align 8
  %913 = trunc i64 %912 to i32
  %914 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %915 = load i32, ptr %914, align 4
  %916 = icmp eq i32 %915, %913
  br i1 %916, label %917, label %923

917:                                              ; preds = %906
  %918 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %919 = load i16, ptr %918, align 2
  %920 = sext i16 %919 to i32
  %921 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %922 = getelementptr %struct.bpf_insn, ptr %921, i32 %920
  br label %29

923:                                              ; preds = %906
  %924 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

925:                                              ; preds = %9
  %926 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %927 = load i8, ptr %926, align 1
  %928 = and i8 %927, 15
  %929 = zext i8 %928 to i32
  %930 = getelementptr i64, ptr %0, i32 %929
  %931 = load i64, ptr %930, align 8
  %932 = lshr i8 %927, 4
  %933 = zext i8 %932 to i32
  %934 = getelementptr i64, ptr %0, i32 %933
  %935 = load i64, ptr %934, align 8
  %936 = icmp eq i64 %931, %935
  br i1 %936, label %943, label %937

937:                                              ; preds = %925
  %938 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %939 = load i16, ptr %938, align 2
  %940 = sext i16 %939 to i32
  %941 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %942 = getelementptr %struct.bpf_insn, ptr %941, i32 %940
  br label %29

943:                                              ; preds = %925
  %944 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

945:                                              ; preds = %9
  %946 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %947 = load i8, ptr %946, align 1
  %948 = and i8 %947, 15
  %949 = zext i8 %948 to i32
  %950 = getelementptr i64, ptr %0, i32 %949
  %951 = load i64, ptr %950, align 8
  %952 = trunc i64 %951 to i32
  %953 = lshr i8 %947, 4
  %954 = zext i8 %953 to i32
  %955 = getelementptr i64, ptr %0, i32 %954
  %956 = load i64, ptr %955, align 8
  %957 = trunc i64 %956 to i32
  %958 = icmp eq i32 %952, %957
  br i1 %958, label %965, label %959

959:                                              ; preds = %945
  %960 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %961 = load i16, ptr %960, align 2
  %962 = sext i16 %961 to i32
  %963 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %964 = getelementptr %struct.bpf_insn, ptr %963, i32 %962
  br label %29

965:                                              ; preds = %945
  %966 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

967:                                              ; preds = %9
  %968 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %969 = load i8, ptr %968, align 1
  %970 = and i8 %969, 15
  %971 = zext i8 %970 to i32
  %972 = getelementptr i64, ptr %0, i32 %971
  %973 = load i64, ptr %972, align 8
  %974 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %975 = load i32, ptr %974, align 4
  %976 = sext i32 %975 to i64
  %977 = icmp eq i64 %973, %976
  br i1 %977, label %984, label %978

978:                                              ; preds = %967
  %979 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %980 = load i16, ptr %979, align 2
  %981 = sext i16 %980 to i32
  %982 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %983 = getelementptr %struct.bpf_insn, ptr %982, i32 %981
  br label %29

984:                                              ; preds = %967
  %985 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

986:                                              ; preds = %9
  %987 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %988 = load i8, ptr %987, align 1
  %989 = and i8 %988, 15
  %990 = zext i8 %989 to i32
  %991 = getelementptr i64, ptr %0, i32 %990
  %992 = load i64, ptr %991, align 8
  %993 = trunc i64 %992 to i32
  %994 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %995 = load i32, ptr %994, align 4
  %996 = icmp eq i32 %995, %993
  br i1 %996, label %1003, label %997

997:                                              ; preds = %986
  %998 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %999 = load i16, ptr %998, align 2
  %1000 = sext i16 %999 to i32
  %1001 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1002 = getelementptr %struct.bpf_insn, ptr %1001, i32 %1000
  br label %29

1003:                                             ; preds = %986
  %1004 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1005:                                             ; preds = %9
  %1006 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1007 = load i8, ptr %1006, align 1
  %1008 = and i8 %1007, 15
  %1009 = zext i8 %1008 to i32
  %1010 = getelementptr i64, ptr %0, i32 %1009
  %1011 = load i64, ptr %1010, align 8
  %1012 = lshr i8 %1007, 4
  %1013 = zext i8 %1012 to i32
  %1014 = getelementptr i64, ptr %0, i32 %1013
  %1015 = load i64, ptr %1014, align 8
  %1016 = icmp ugt i64 %1011, %1015
  br i1 %1016, label %1017, label %1023

1017:                                             ; preds = %1005
  %1018 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1019 = load i16, ptr %1018, align 2
  %1020 = sext i16 %1019 to i32
  %1021 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1022 = getelementptr %struct.bpf_insn, ptr %1021, i32 %1020
  br label %29

1023:                                             ; preds = %1005
  %1024 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1025:                                             ; preds = %9
  %1026 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1027 = load i8, ptr %1026, align 1
  %1028 = and i8 %1027, 15
  %1029 = zext i8 %1028 to i32
  %1030 = getelementptr i64, ptr %0, i32 %1029
  %1031 = load i64, ptr %1030, align 8
  %1032 = trunc i64 %1031 to i32
  %1033 = lshr i8 %1027, 4
  %1034 = zext i8 %1033 to i32
  %1035 = getelementptr i64, ptr %0, i32 %1034
  %1036 = load i64, ptr %1035, align 8
  %1037 = trunc i64 %1036 to i32
  %1038 = icmp ugt i32 %1032, %1037
  br i1 %1038, label %1039, label %1045

1039:                                             ; preds = %1025
  %1040 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1041 = load i16, ptr %1040, align 2
  %1042 = sext i16 %1041 to i32
  %1043 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1044 = getelementptr %struct.bpf_insn, ptr %1043, i32 %1042
  br label %29

1045:                                             ; preds = %1025
  %1046 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1047:                                             ; preds = %9
  %1048 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1049 = load i8, ptr %1048, align 1
  %1050 = and i8 %1049, 15
  %1051 = zext i8 %1050 to i32
  %1052 = getelementptr i64, ptr %0, i32 %1051
  %1053 = load i64, ptr %1052, align 8
  %1054 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1055 = load i32, ptr %1054, align 4
  %1056 = sext i32 %1055 to i64
  %1057 = icmp ugt i64 %1053, %1056
  br i1 %1057, label %1058, label %1064

1058:                                             ; preds = %1047
  %1059 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1060 = load i16, ptr %1059, align 2
  %1061 = sext i16 %1060 to i32
  %1062 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1063 = getelementptr %struct.bpf_insn, ptr %1062, i32 %1061
  br label %29

1064:                                             ; preds = %1047
  %1065 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1066:                                             ; preds = %9
  %1067 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1068 = load i8, ptr %1067, align 1
  %1069 = and i8 %1068, 15
  %1070 = zext i8 %1069 to i32
  %1071 = getelementptr i64, ptr %0, i32 %1070
  %1072 = load i64, ptr %1071, align 8
  %1073 = trunc i64 %1072 to i32
  %1074 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1075 = load i32, ptr %1074, align 4
  %1076 = icmp ult i32 %1075, %1073
  br i1 %1076, label %1077, label %1083

1077:                                             ; preds = %1066
  %1078 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1079 = load i16, ptr %1078, align 2
  %1080 = sext i16 %1079 to i32
  %1081 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1082 = getelementptr %struct.bpf_insn, ptr %1081, i32 %1080
  br label %29

1083:                                             ; preds = %1066
  %1084 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1085:                                             ; preds = %9
  %1086 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1087 = load i8, ptr %1086, align 1
  %1088 = and i8 %1087, 15
  %1089 = zext i8 %1088 to i32
  %1090 = getelementptr i64, ptr %0, i32 %1089
  %1091 = load i64, ptr %1090, align 8
  %1092 = lshr i8 %1087, 4
  %1093 = zext i8 %1092 to i32
  %1094 = getelementptr i64, ptr %0, i32 %1093
  %1095 = load i64, ptr %1094, align 8
  %1096 = icmp ult i64 %1091, %1095
  br i1 %1096, label %1097, label %1103

1097:                                             ; preds = %1085
  %1098 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1099 = load i16, ptr %1098, align 2
  %1100 = sext i16 %1099 to i32
  %1101 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1102 = getelementptr %struct.bpf_insn, ptr %1101, i32 %1100
  br label %29

1103:                                             ; preds = %1085
  %1104 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1105:                                             ; preds = %9
  %1106 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1107 = load i8, ptr %1106, align 1
  %1108 = and i8 %1107, 15
  %1109 = zext i8 %1108 to i32
  %1110 = getelementptr i64, ptr %0, i32 %1109
  %1111 = load i64, ptr %1110, align 8
  %1112 = trunc i64 %1111 to i32
  %1113 = lshr i8 %1107, 4
  %1114 = zext i8 %1113 to i32
  %1115 = getelementptr i64, ptr %0, i32 %1114
  %1116 = load i64, ptr %1115, align 8
  %1117 = trunc i64 %1116 to i32
  %1118 = icmp ult i32 %1112, %1117
  br i1 %1118, label %1119, label %1125

1119:                                             ; preds = %1105
  %1120 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1121 = load i16, ptr %1120, align 2
  %1122 = sext i16 %1121 to i32
  %1123 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1124 = getelementptr %struct.bpf_insn, ptr %1123, i32 %1122
  br label %29

1125:                                             ; preds = %1105
  %1126 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1127:                                             ; preds = %9
  %1128 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1129 = load i8, ptr %1128, align 1
  %1130 = and i8 %1129, 15
  %1131 = zext i8 %1130 to i32
  %1132 = getelementptr i64, ptr %0, i32 %1131
  %1133 = load i64, ptr %1132, align 8
  %1134 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1135 = load i32, ptr %1134, align 4
  %1136 = sext i32 %1135 to i64
  %1137 = icmp ult i64 %1133, %1136
  br i1 %1137, label %1138, label %1144

1138:                                             ; preds = %1127
  %1139 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1140 = load i16, ptr %1139, align 2
  %1141 = sext i16 %1140 to i32
  %1142 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1143 = getelementptr %struct.bpf_insn, ptr %1142, i32 %1141
  br label %29

1144:                                             ; preds = %1127
  %1145 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1146:                                             ; preds = %9
  %1147 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1148 = load i8, ptr %1147, align 1
  %1149 = and i8 %1148, 15
  %1150 = zext i8 %1149 to i32
  %1151 = getelementptr i64, ptr %0, i32 %1150
  %1152 = load i64, ptr %1151, align 8
  %1153 = trunc i64 %1152 to i32
  %1154 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1155 = load i32, ptr %1154, align 4
  %1156 = icmp ugt i32 %1155, %1153
  br i1 %1156, label %1157, label %1163

1157:                                             ; preds = %1146
  %1158 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1159 = load i16, ptr %1158, align 2
  %1160 = sext i16 %1159 to i32
  %1161 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1162 = getelementptr %struct.bpf_insn, ptr %1161, i32 %1160
  br label %29

1163:                                             ; preds = %1146
  %1164 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1165:                                             ; preds = %9
  %1166 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1167 = load i8, ptr %1166, align 1
  %1168 = and i8 %1167, 15
  %1169 = zext i8 %1168 to i32
  %1170 = getelementptr i64, ptr %0, i32 %1169
  %1171 = load i64, ptr %1170, align 8
  %1172 = lshr i8 %1167, 4
  %1173 = zext i8 %1172 to i32
  %1174 = getelementptr i64, ptr %0, i32 %1173
  %1175 = load i64, ptr %1174, align 8
  %1176 = icmp ult i64 %1171, %1175
  br i1 %1176, label %1183, label %1177

1177:                                             ; preds = %1165
  %1178 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1179 = load i16, ptr %1178, align 2
  %1180 = sext i16 %1179 to i32
  %1181 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1182 = getelementptr %struct.bpf_insn, ptr %1181, i32 %1180
  br label %29

1183:                                             ; preds = %1165
  %1184 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1185:                                             ; preds = %9
  %1186 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1187 = load i8, ptr %1186, align 1
  %1188 = and i8 %1187, 15
  %1189 = zext i8 %1188 to i32
  %1190 = getelementptr i64, ptr %0, i32 %1189
  %1191 = load i64, ptr %1190, align 8
  %1192 = trunc i64 %1191 to i32
  %1193 = lshr i8 %1187, 4
  %1194 = zext i8 %1193 to i32
  %1195 = getelementptr i64, ptr %0, i32 %1194
  %1196 = load i64, ptr %1195, align 8
  %1197 = trunc i64 %1196 to i32
  %1198 = icmp ult i32 %1192, %1197
  br i1 %1198, label %1205, label %1199

1199:                                             ; preds = %1185
  %1200 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1201 = load i16, ptr %1200, align 2
  %1202 = sext i16 %1201 to i32
  %1203 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1204 = getelementptr %struct.bpf_insn, ptr %1203, i32 %1202
  br label %29

1205:                                             ; preds = %1185
  %1206 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1207:                                             ; preds = %9
  %1208 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1209 = load i8, ptr %1208, align 1
  %1210 = and i8 %1209, 15
  %1211 = zext i8 %1210 to i32
  %1212 = getelementptr i64, ptr %0, i32 %1211
  %1213 = load i64, ptr %1212, align 8
  %1214 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1215 = load i32, ptr %1214, align 4
  %1216 = sext i32 %1215 to i64
  %1217 = icmp ult i64 %1213, %1216
  br i1 %1217, label %1224, label %1218

1218:                                             ; preds = %1207
  %1219 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1220 = load i16, ptr %1219, align 2
  %1221 = sext i16 %1220 to i32
  %1222 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1223 = getelementptr %struct.bpf_insn, ptr %1222, i32 %1221
  br label %29

1224:                                             ; preds = %1207
  %1225 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1226:                                             ; preds = %9
  %1227 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1228 = load i8, ptr %1227, align 1
  %1229 = and i8 %1228, 15
  %1230 = zext i8 %1229 to i32
  %1231 = getelementptr i64, ptr %0, i32 %1230
  %1232 = load i64, ptr %1231, align 8
  %1233 = trunc i64 %1232 to i32
  %1234 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1235 = load i32, ptr %1234, align 4
  %1236 = icmp ugt i32 %1235, %1233
  br i1 %1236, label %1243, label %1237

1237:                                             ; preds = %1226
  %1238 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1239 = load i16, ptr %1238, align 2
  %1240 = sext i16 %1239 to i32
  %1241 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1242 = getelementptr %struct.bpf_insn, ptr %1241, i32 %1240
  br label %29

1243:                                             ; preds = %1226
  %1244 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1245:                                             ; preds = %9
  %1246 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1247 = load i8, ptr %1246, align 1
  %1248 = and i8 %1247, 15
  %1249 = zext i8 %1248 to i32
  %1250 = getelementptr i64, ptr %0, i32 %1249
  %1251 = load i64, ptr %1250, align 8
  %1252 = lshr i8 %1247, 4
  %1253 = zext i8 %1252 to i32
  %1254 = getelementptr i64, ptr %0, i32 %1253
  %1255 = load i64, ptr %1254, align 8
  %1256 = icmp ugt i64 %1251, %1255
  br i1 %1256, label %1263, label %1257

1257:                                             ; preds = %1245
  %1258 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1259 = load i16, ptr %1258, align 2
  %1260 = sext i16 %1259 to i32
  %1261 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1262 = getelementptr %struct.bpf_insn, ptr %1261, i32 %1260
  br label %29

1263:                                             ; preds = %1245
  %1264 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1265:                                             ; preds = %9
  %1266 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1267 = load i8, ptr %1266, align 1
  %1268 = and i8 %1267, 15
  %1269 = zext i8 %1268 to i32
  %1270 = getelementptr i64, ptr %0, i32 %1269
  %1271 = load i64, ptr %1270, align 8
  %1272 = trunc i64 %1271 to i32
  %1273 = lshr i8 %1267, 4
  %1274 = zext i8 %1273 to i32
  %1275 = getelementptr i64, ptr %0, i32 %1274
  %1276 = load i64, ptr %1275, align 8
  %1277 = trunc i64 %1276 to i32
  %1278 = icmp ugt i32 %1272, %1277
  br i1 %1278, label %1285, label %1279

1279:                                             ; preds = %1265
  %1280 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1281 = load i16, ptr %1280, align 2
  %1282 = sext i16 %1281 to i32
  %1283 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1284 = getelementptr %struct.bpf_insn, ptr %1283, i32 %1282
  br label %29

1285:                                             ; preds = %1265
  %1286 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1287:                                             ; preds = %9
  %1288 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1289 = load i8, ptr %1288, align 1
  %1290 = and i8 %1289, 15
  %1291 = zext i8 %1290 to i32
  %1292 = getelementptr i64, ptr %0, i32 %1291
  %1293 = load i64, ptr %1292, align 8
  %1294 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1295 = load i32, ptr %1294, align 4
  %1296 = sext i32 %1295 to i64
  %1297 = icmp ugt i64 %1293, %1296
  br i1 %1297, label %1304, label %1298

1298:                                             ; preds = %1287
  %1299 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1300 = load i16, ptr %1299, align 2
  %1301 = sext i16 %1300 to i32
  %1302 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1303 = getelementptr %struct.bpf_insn, ptr %1302, i32 %1301
  br label %29

1304:                                             ; preds = %1287
  %1305 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1306:                                             ; preds = %9
  %1307 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1308 = load i8, ptr %1307, align 1
  %1309 = and i8 %1308, 15
  %1310 = zext i8 %1309 to i32
  %1311 = getelementptr i64, ptr %0, i32 %1310
  %1312 = load i64, ptr %1311, align 8
  %1313 = trunc i64 %1312 to i32
  %1314 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1315 = load i32, ptr %1314, align 4
  %1316 = icmp ult i32 %1315, %1313
  br i1 %1316, label %1323, label %1317

1317:                                             ; preds = %1306
  %1318 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1319 = load i16, ptr %1318, align 2
  %1320 = sext i16 %1319 to i32
  %1321 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1322 = getelementptr %struct.bpf_insn, ptr %1321, i32 %1320
  br label %29

1323:                                             ; preds = %1306
  %1324 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1325:                                             ; preds = %9
  %1326 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1327 = load i8, ptr %1326, align 1
  %1328 = and i8 %1327, 15
  %1329 = zext i8 %1328 to i32
  %1330 = getelementptr i64, ptr %0, i32 %1329
  %1331 = load i64, ptr %1330, align 8
  %1332 = lshr i8 %1327, 4
  %1333 = zext i8 %1332 to i32
  %1334 = getelementptr i64, ptr %0, i32 %1333
  %1335 = load i64, ptr %1334, align 8
  %1336 = and i64 %1335, %1331
  %1337 = icmp eq i64 %1336, 0
  br i1 %1337, label %1344, label %1338

1338:                                             ; preds = %1325
  %1339 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1340 = load i16, ptr %1339, align 2
  %1341 = sext i16 %1340 to i32
  %1342 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1343 = getelementptr %struct.bpf_insn, ptr %1342, i32 %1341
  br label %29

1344:                                             ; preds = %1325
  %1345 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1346:                                             ; preds = %9
  %1347 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1348 = load i8, ptr %1347, align 1
  %1349 = and i8 %1348, 15
  %1350 = zext i8 %1349 to i32
  %1351 = getelementptr i64, ptr %0, i32 %1350
  %1352 = load i64, ptr %1351, align 8
  %1353 = lshr i8 %1348, 4
  %1354 = zext i8 %1353 to i32
  %1355 = getelementptr i64, ptr %0, i32 %1354
  %1356 = load i64, ptr %1355, align 8
  %1357 = and i64 %1356, %1352
  %1358 = trunc i64 %1357 to i32
  %1359 = icmp eq i32 %1358, 0
  br i1 %1359, label %1366, label %1360

1360:                                             ; preds = %1346
  %1361 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1362 = load i16, ptr %1361, align 2
  %1363 = sext i16 %1362 to i32
  %1364 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1365 = getelementptr %struct.bpf_insn, ptr %1364, i32 %1363
  br label %29

1366:                                             ; preds = %1346
  %1367 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1368:                                             ; preds = %9
  %1369 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1370 = load i8, ptr %1369, align 1
  %1371 = and i8 %1370, 15
  %1372 = zext i8 %1371 to i32
  %1373 = getelementptr i64, ptr %0, i32 %1372
  %1374 = load i64, ptr %1373, align 8
  %1375 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1376 = load i32, ptr %1375, align 4
  %1377 = sext i32 %1376 to i64
  %1378 = and i64 %1374, %1377
  %1379 = icmp eq i64 %1378, 0
  br i1 %1379, label %1386, label %1380

1380:                                             ; preds = %1368
  %1381 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1382 = load i16, ptr %1381, align 2
  %1383 = sext i16 %1382 to i32
  %1384 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1385 = getelementptr %struct.bpf_insn, ptr %1384, i32 %1383
  br label %29

1386:                                             ; preds = %1368
  %1387 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1388:                                             ; preds = %9
  %1389 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1390 = load i8, ptr %1389, align 1
  %1391 = and i8 %1390, 15
  %1392 = zext i8 %1391 to i32
  %1393 = getelementptr i64, ptr %0, i32 %1392
  %1394 = load i64, ptr %1393, align 8
  %1395 = trunc i64 %1394 to i32
  %1396 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1397 = load i32, ptr %1396, align 4
  %1398 = and i32 %1397, %1395
  %1399 = icmp eq i32 %1398, 0
  br i1 %1399, label %1406, label %1400

1400:                                             ; preds = %1388
  %1401 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1402 = load i16, ptr %1401, align 2
  %1403 = sext i16 %1402 to i32
  %1404 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1405 = getelementptr %struct.bpf_insn, ptr %1404, i32 %1403
  br label %29

1406:                                             ; preds = %1388
  %1407 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1408:                                             ; preds = %9
  %1409 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1410 = load i8, ptr %1409, align 1
  %1411 = and i8 %1410, 15
  %1412 = zext i8 %1411 to i32
  %1413 = getelementptr i64, ptr %0, i32 %1412
  %1414 = load i64, ptr %1413, align 8
  %1415 = lshr i8 %1410, 4
  %1416 = zext i8 %1415 to i32
  %1417 = getelementptr i64, ptr %0, i32 %1416
  %1418 = load i64, ptr %1417, align 8
  %1419 = icmp sgt i64 %1414, %1418
  br i1 %1419, label %1420, label %1426

1420:                                             ; preds = %1408
  %1421 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1422 = load i16, ptr %1421, align 2
  %1423 = sext i16 %1422 to i32
  %1424 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1425 = getelementptr %struct.bpf_insn, ptr %1424, i32 %1423
  br label %29

1426:                                             ; preds = %1408
  %1427 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1428:                                             ; preds = %9
  %1429 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1430 = load i8, ptr %1429, align 1
  %1431 = and i8 %1430, 15
  %1432 = zext i8 %1431 to i32
  %1433 = getelementptr i64, ptr %0, i32 %1432
  %1434 = load i64, ptr %1433, align 8
  %1435 = trunc i64 %1434 to i32
  %1436 = lshr i8 %1430, 4
  %1437 = zext i8 %1436 to i32
  %1438 = getelementptr i64, ptr %0, i32 %1437
  %1439 = load i64, ptr %1438, align 8
  %1440 = trunc i64 %1439 to i32
  %1441 = icmp sgt i32 %1435, %1440
  br i1 %1441, label %1442, label %1448

1442:                                             ; preds = %1428
  %1443 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1444 = load i16, ptr %1443, align 2
  %1445 = sext i16 %1444 to i32
  %1446 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1447 = getelementptr %struct.bpf_insn, ptr %1446, i32 %1445
  br label %29

1448:                                             ; preds = %1428
  %1449 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1450:                                             ; preds = %9
  %1451 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1452 = load i8, ptr %1451, align 1
  %1453 = and i8 %1452, 15
  %1454 = zext i8 %1453 to i32
  %1455 = getelementptr i64, ptr %0, i32 %1454
  %1456 = load i64, ptr %1455, align 8
  %1457 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1458 = load i32, ptr %1457, align 4
  %1459 = sext i32 %1458 to i64
  %1460 = icmp sgt i64 %1456, %1459
  br i1 %1460, label %1461, label %1467

1461:                                             ; preds = %1450
  %1462 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1463 = load i16, ptr %1462, align 2
  %1464 = sext i16 %1463 to i32
  %1465 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1466 = getelementptr %struct.bpf_insn, ptr %1465, i32 %1464
  br label %29

1467:                                             ; preds = %1450
  %1468 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1469:                                             ; preds = %9
  %1470 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1471 = load i8, ptr %1470, align 1
  %1472 = and i8 %1471, 15
  %1473 = zext i8 %1472 to i32
  %1474 = getelementptr i64, ptr %0, i32 %1473
  %1475 = load i64, ptr %1474, align 8
  %1476 = trunc i64 %1475 to i32
  %1477 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1478 = load i32, ptr %1477, align 4
  %1479 = icmp slt i32 %1478, %1476
  br i1 %1479, label %1480, label %1486

1480:                                             ; preds = %1469
  %1481 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1482 = load i16, ptr %1481, align 2
  %1483 = sext i16 %1482 to i32
  %1484 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1485 = getelementptr %struct.bpf_insn, ptr %1484, i32 %1483
  br label %29

1486:                                             ; preds = %1469
  %1487 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1488:                                             ; preds = %9
  %1489 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1490 = load i8, ptr %1489, align 1
  %1491 = and i8 %1490, 15
  %1492 = zext i8 %1491 to i32
  %1493 = getelementptr i64, ptr %0, i32 %1492
  %1494 = load i64, ptr %1493, align 8
  %1495 = lshr i8 %1490, 4
  %1496 = zext i8 %1495 to i32
  %1497 = getelementptr i64, ptr %0, i32 %1496
  %1498 = load i64, ptr %1497, align 8
  %1499 = icmp slt i64 %1494, %1498
  br i1 %1499, label %1500, label %1506

1500:                                             ; preds = %1488
  %1501 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1502 = load i16, ptr %1501, align 2
  %1503 = sext i16 %1502 to i32
  %1504 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1505 = getelementptr %struct.bpf_insn, ptr %1504, i32 %1503
  br label %29

1506:                                             ; preds = %1488
  %1507 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1508:                                             ; preds = %9
  %1509 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1510 = load i8, ptr %1509, align 1
  %1511 = and i8 %1510, 15
  %1512 = zext i8 %1511 to i32
  %1513 = getelementptr i64, ptr %0, i32 %1512
  %1514 = load i64, ptr %1513, align 8
  %1515 = trunc i64 %1514 to i32
  %1516 = lshr i8 %1510, 4
  %1517 = zext i8 %1516 to i32
  %1518 = getelementptr i64, ptr %0, i32 %1517
  %1519 = load i64, ptr %1518, align 8
  %1520 = trunc i64 %1519 to i32
  %1521 = icmp slt i32 %1515, %1520
  br i1 %1521, label %1522, label %1528

1522:                                             ; preds = %1508
  %1523 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1524 = load i16, ptr %1523, align 2
  %1525 = sext i16 %1524 to i32
  %1526 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1527 = getelementptr %struct.bpf_insn, ptr %1526, i32 %1525
  br label %29

1528:                                             ; preds = %1508
  %1529 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1530:                                             ; preds = %9
  %1531 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1532 = load i8, ptr %1531, align 1
  %1533 = and i8 %1532, 15
  %1534 = zext i8 %1533 to i32
  %1535 = getelementptr i64, ptr %0, i32 %1534
  %1536 = load i64, ptr %1535, align 8
  %1537 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1538 = load i32, ptr %1537, align 4
  %1539 = sext i32 %1538 to i64
  %1540 = icmp slt i64 %1536, %1539
  br i1 %1540, label %1541, label %1547

1541:                                             ; preds = %1530
  %1542 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1543 = load i16, ptr %1542, align 2
  %1544 = sext i16 %1543 to i32
  %1545 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1546 = getelementptr %struct.bpf_insn, ptr %1545, i32 %1544
  br label %29

1547:                                             ; preds = %1530
  %1548 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1549:                                             ; preds = %9
  %1550 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1551 = load i8, ptr %1550, align 1
  %1552 = and i8 %1551, 15
  %1553 = zext i8 %1552 to i32
  %1554 = getelementptr i64, ptr %0, i32 %1553
  %1555 = load i64, ptr %1554, align 8
  %1556 = trunc i64 %1555 to i32
  %1557 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1558 = load i32, ptr %1557, align 4
  %1559 = icmp sgt i32 %1558, %1556
  br i1 %1559, label %1560, label %1566

1560:                                             ; preds = %1549
  %1561 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1562 = load i16, ptr %1561, align 2
  %1563 = sext i16 %1562 to i32
  %1564 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1565 = getelementptr %struct.bpf_insn, ptr %1564, i32 %1563
  br label %29

1566:                                             ; preds = %1549
  %1567 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1568:                                             ; preds = %9
  %1569 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1570 = load i8, ptr %1569, align 1
  %1571 = and i8 %1570, 15
  %1572 = zext i8 %1571 to i32
  %1573 = getelementptr i64, ptr %0, i32 %1572
  %1574 = load i64, ptr %1573, align 8
  %1575 = lshr i8 %1570, 4
  %1576 = zext i8 %1575 to i32
  %1577 = getelementptr i64, ptr %0, i32 %1576
  %1578 = load i64, ptr %1577, align 8
  %1579 = icmp slt i64 %1574, %1578
  br i1 %1579, label %1586, label %1580

1580:                                             ; preds = %1568
  %1581 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1582 = load i16, ptr %1581, align 2
  %1583 = sext i16 %1582 to i32
  %1584 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1585 = getelementptr %struct.bpf_insn, ptr %1584, i32 %1583
  br label %29

1586:                                             ; preds = %1568
  %1587 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1588:                                             ; preds = %9
  %1589 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1590 = load i8, ptr %1589, align 1
  %1591 = and i8 %1590, 15
  %1592 = zext i8 %1591 to i32
  %1593 = getelementptr i64, ptr %0, i32 %1592
  %1594 = load i64, ptr %1593, align 8
  %1595 = trunc i64 %1594 to i32
  %1596 = lshr i8 %1590, 4
  %1597 = zext i8 %1596 to i32
  %1598 = getelementptr i64, ptr %0, i32 %1597
  %1599 = load i64, ptr %1598, align 8
  %1600 = trunc i64 %1599 to i32
  %1601 = icmp slt i32 %1595, %1600
  br i1 %1601, label %1608, label %1602

1602:                                             ; preds = %1588
  %1603 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1604 = load i16, ptr %1603, align 2
  %1605 = sext i16 %1604 to i32
  %1606 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1607 = getelementptr %struct.bpf_insn, ptr %1606, i32 %1605
  br label %29

1608:                                             ; preds = %1588
  %1609 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1610:                                             ; preds = %9
  %1611 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1612 = load i8, ptr %1611, align 1
  %1613 = and i8 %1612, 15
  %1614 = zext i8 %1613 to i32
  %1615 = getelementptr i64, ptr %0, i32 %1614
  %1616 = load i64, ptr %1615, align 8
  %1617 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1618 = load i32, ptr %1617, align 4
  %1619 = sext i32 %1618 to i64
  %1620 = icmp slt i64 %1616, %1619
  br i1 %1620, label %1627, label %1621

1621:                                             ; preds = %1610
  %1622 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1623 = load i16, ptr %1622, align 2
  %1624 = sext i16 %1623 to i32
  %1625 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1626 = getelementptr %struct.bpf_insn, ptr %1625, i32 %1624
  br label %29

1627:                                             ; preds = %1610
  %1628 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1629:                                             ; preds = %9
  %1630 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1631 = load i8, ptr %1630, align 1
  %1632 = and i8 %1631, 15
  %1633 = zext i8 %1632 to i32
  %1634 = getelementptr i64, ptr %0, i32 %1633
  %1635 = load i64, ptr %1634, align 8
  %1636 = trunc i64 %1635 to i32
  %1637 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1638 = load i32, ptr %1637, align 4
  %1639 = icmp sgt i32 %1638, %1636
  br i1 %1639, label %1646, label %1640

1640:                                             ; preds = %1629
  %1641 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1642 = load i16, ptr %1641, align 2
  %1643 = sext i16 %1642 to i32
  %1644 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1645 = getelementptr %struct.bpf_insn, ptr %1644, i32 %1643
  br label %29

1646:                                             ; preds = %1629
  %1647 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1648:                                             ; preds = %9
  %1649 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1650 = load i8, ptr %1649, align 1
  %1651 = and i8 %1650, 15
  %1652 = zext i8 %1651 to i32
  %1653 = getelementptr i64, ptr %0, i32 %1652
  %1654 = load i64, ptr %1653, align 8
  %1655 = lshr i8 %1650, 4
  %1656 = zext i8 %1655 to i32
  %1657 = getelementptr i64, ptr %0, i32 %1656
  %1658 = load i64, ptr %1657, align 8
  %1659 = icmp sgt i64 %1654, %1658
  br i1 %1659, label %1666, label %1660

1660:                                             ; preds = %1648
  %1661 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1662 = load i16, ptr %1661, align 2
  %1663 = sext i16 %1662 to i32
  %1664 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1665 = getelementptr %struct.bpf_insn, ptr %1664, i32 %1663
  br label %29

1666:                                             ; preds = %1648
  %1667 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1668:                                             ; preds = %9
  %1669 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1670 = load i8, ptr %1669, align 1
  %1671 = and i8 %1670, 15
  %1672 = zext i8 %1671 to i32
  %1673 = getelementptr i64, ptr %0, i32 %1672
  %1674 = load i64, ptr %1673, align 8
  %1675 = trunc i64 %1674 to i32
  %1676 = lshr i8 %1670, 4
  %1677 = zext i8 %1676 to i32
  %1678 = getelementptr i64, ptr %0, i32 %1677
  %1679 = load i64, ptr %1678, align 8
  %1680 = trunc i64 %1679 to i32
  %1681 = icmp sgt i32 %1675, %1680
  br i1 %1681, label %1688, label %1682

1682:                                             ; preds = %1668
  %1683 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1684 = load i16, ptr %1683, align 2
  %1685 = sext i16 %1684 to i32
  %1686 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1687 = getelementptr %struct.bpf_insn, ptr %1686, i32 %1685
  br label %29

1688:                                             ; preds = %1668
  %1689 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1690:                                             ; preds = %9
  %1691 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1692 = load i8, ptr %1691, align 1
  %1693 = and i8 %1692, 15
  %1694 = zext i8 %1693 to i32
  %1695 = getelementptr i64, ptr %0, i32 %1694
  %1696 = load i64, ptr %1695, align 8
  %1697 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1698 = load i32, ptr %1697, align 4
  %1699 = sext i32 %1698 to i64
  %1700 = icmp sgt i64 %1696, %1699
  br i1 %1700, label %1707, label %1701

1701:                                             ; preds = %1690
  %1702 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1703 = load i16, ptr %1702, align 2
  %1704 = sext i16 %1703 to i32
  %1705 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1706 = getelementptr %struct.bpf_insn, ptr %1705, i32 %1704
  br label %29

1707:                                             ; preds = %1690
  %1708 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1709:                                             ; preds = %9
  %1710 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1711 = load i8, ptr %1710, align 1
  %1712 = and i8 %1711, 15
  %1713 = zext i8 %1712 to i32
  %1714 = getelementptr i64, ptr %0, i32 %1713
  %1715 = load i64, ptr %1714, align 8
  %1716 = trunc i64 %1715 to i32
  %1717 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1718 = load i32, ptr %1717, align 4
  %1719 = icmp slt i32 %1718, %1716
  br i1 %1719, label %1726, label %1720

1720:                                             ; preds = %1709
  %1721 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1722 = load i16, ptr %1721, align 2
  %1723 = sext i16 %1722 to i32
  %1724 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  %1725 = getelementptr %struct.bpf_insn, ptr %1724, i32 %1723
  br label %29

1726:                                             ; preds = %1709
  %1727 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1728:                                             ; preds = %9
  %1729 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1730:                                             ; preds = %9
  %1731 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1732 = load i8, ptr %1731, align 1
  %1733 = lshr i8 %1732, 4
  %1734 = zext i8 %1733 to i32
  %1735 = getelementptr i64, ptr %0, i32 %1734
  %1736 = load i64, ptr %1735, align 8
  %1737 = trunc i64 %1736 to i8
  %1738 = and i8 %1732, 15
  %1739 = zext i8 %1738 to i32
  %1740 = getelementptr i64, ptr %0, i32 %1739
  %1741 = load i64, ptr %1740, align 8
  %1742 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1743 = load i16, ptr %1742, align 2
  %1744 = sext i16 %1743 to i64
  %1745 = add i64 %1741, %1744
  %1746 = trunc i64 %1745 to i32
  %1747 = inttoptr i32 %1746 to ptr
  store i8 %1737, ptr %1747, align 1
  %1748 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1749:                                             ; preds = %9
  %1750 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1751 = load i32, ptr %1750, align 4
  %1752 = trunc i32 %1751 to i8
  %1753 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1754 = load i8, ptr %1753, align 1
  %1755 = and i8 %1754, 15
  %1756 = zext i8 %1755 to i32
  %1757 = getelementptr i64, ptr %0, i32 %1756
  %1758 = load i64, ptr %1757, align 8
  %1759 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1760 = load i16, ptr %1759, align 2
  %1761 = sext i16 %1760 to i64
  %1762 = add i64 %1758, %1761
  %1763 = trunc i64 %1762 to i32
  %1764 = inttoptr i32 %1763 to ptr
  store i8 %1752, ptr %1764, align 1
  %1765 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1766:                                             ; preds = %9
  %1767 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1768 = load i8, ptr %1767, align 1
  %1769 = lshr i8 %1768, 4
  %1770 = zext i8 %1769 to i32
  %1771 = getelementptr i64, ptr %0, i32 %1770
  %1772 = load i64, ptr %1771, align 8
  %1773 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1774 = load i16, ptr %1773, align 2
  %1775 = sext i16 %1774 to i64
  %1776 = add i64 %1772, %1775
  %1777 = trunc i64 %1776 to i32
  %1778 = inttoptr i32 %1777 to ptr
  %1779 = load i8, ptr %1778, align 1
  %1780 = zext i8 %1779 to i64
  %1781 = and i8 %1768, 15
  %1782 = zext i8 %1781 to i32
  %1783 = getelementptr i64, ptr %0, i32 %1782
  store i64 %1780, ptr %1783, align 8
  %1784 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1785:                                             ; preds = %9
  %1786 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1787 = load i8, ptr %1786, align 1
  %1788 = lshr i8 %1787, 4
  %1789 = zext i8 %1788 to i32
  %1790 = getelementptr i64, ptr %0, i32 %1789
  %1791 = load i64, ptr %1790, align 8
  %1792 = trunc i64 %1791 to i16
  %1793 = and i8 %1787, 15
  %1794 = zext i8 %1793 to i32
  %1795 = getelementptr i64, ptr %0, i32 %1794
  %1796 = load i64, ptr %1795, align 8
  %1797 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1798 = load i16, ptr %1797, align 2
  %1799 = sext i16 %1798 to i64
  %1800 = add i64 %1796, %1799
  %1801 = trunc i64 %1800 to i32
  %1802 = inttoptr i32 %1801 to ptr
  store i16 %1792, ptr %1802, align 2
  %1803 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1804:                                             ; preds = %9
  %1805 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1806 = load i32, ptr %1805, align 4
  %1807 = trunc i32 %1806 to i16
  %1808 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1809 = load i8, ptr %1808, align 1
  %1810 = and i8 %1809, 15
  %1811 = zext i8 %1810 to i32
  %1812 = getelementptr i64, ptr %0, i32 %1811
  %1813 = load i64, ptr %1812, align 8
  %1814 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1815 = load i16, ptr %1814, align 2
  %1816 = sext i16 %1815 to i64
  %1817 = add i64 %1813, %1816
  %1818 = trunc i64 %1817 to i32
  %1819 = inttoptr i32 %1818 to ptr
  store i16 %1807, ptr %1819, align 2
  %1820 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1821:                                             ; preds = %9
  %1822 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1823 = load i8, ptr %1822, align 1
  %1824 = lshr i8 %1823, 4
  %1825 = zext i8 %1824 to i32
  %1826 = getelementptr i64, ptr %0, i32 %1825
  %1827 = load i64, ptr %1826, align 8
  %1828 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1829 = load i16, ptr %1828, align 2
  %1830 = sext i16 %1829 to i64
  %1831 = add i64 %1827, %1830
  %1832 = trunc i64 %1831 to i32
  %1833 = inttoptr i32 %1832 to ptr
  %1834 = load i16, ptr %1833, align 2
  %1835 = zext i16 %1834 to i64
  %1836 = and i8 %1823, 15
  %1837 = zext i8 %1836 to i32
  %1838 = getelementptr i64, ptr %0, i32 %1837
  store i64 %1835, ptr %1838, align 8
  %1839 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1840:                                             ; preds = %9
  %1841 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1842 = load i8, ptr %1841, align 1
  %1843 = lshr i8 %1842, 4
  %1844 = zext i8 %1843 to i32
  %1845 = getelementptr i64, ptr %0, i32 %1844
  %1846 = load i64, ptr %1845, align 8
  %1847 = trunc i64 %1846 to i32
  %1848 = and i8 %1842, 15
  %1849 = zext i8 %1848 to i32
  %1850 = getelementptr i64, ptr %0, i32 %1849
  %1851 = load i64, ptr %1850, align 8
  %1852 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1853 = load i16, ptr %1852, align 2
  %1854 = sext i16 %1853 to i64
  %1855 = add i64 %1851, %1854
  %1856 = trunc i64 %1855 to i32
  %1857 = inttoptr i32 %1856 to ptr
  store i32 %1847, ptr %1857, align 4
  %1858 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1859:                                             ; preds = %9
  %1860 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1861 = load i32, ptr %1860, align 4
  %1862 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1863 = load i8, ptr %1862, align 1
  %1864 = and i8 %1863, 15
  %1865 = zext i8 %1864 to i32
  %1866 = getelementptr i64, ptr %0, i32 %1865
  %1867 = load i64, ptr %1866, align 8
  %1868 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1869 = load i16, ptr %1868, align 2
  %1870 = sext i16 %1869 to i64
  %1871 = add i64 %1867, %1870
  %1872 = trunc i64 %1871 to i32
  %1873 = inttoptr i32 %1872 to ptr
  store i32 %1861, ptr %1873, align 4
  %1874 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1875:                                             ; preds = %9
  %1876 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1877 = load i8, ptr %1876, align 1
  %1878 = lshr i8 %1877, 4
  %1879 = zext i8 %1878 to i32
  %1880 = getelementptr i64, ptr %0, i32 %1879
  %1881 = load i64, ptr %1880, align 8
  %1882 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1883 = load i16, ptr %1882, align 2
  %1884 = sext i16 %1883 to i64
  %1885 = add i64 %1881, %1884
  %1886 = trunc i64 %1885 to i32
  %1887 = inttoptr i32 %1886 to ptr
  %1888 = load i32, ptr %1887, align 4
  %1889 = zext i32 %1888 to i64
  %1890 = and i8 %1877, 15
  %1891 = zext i8 %1890 to i32
  %1892 = getelementptr i64, ptr %0, i32 %1891
  store i64 %1889, ptr %1892, align 8
  %1893 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1894:                                             ; preds = %9
  %1895 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1896 = load i8, ptr %1895, align 1
  %1897 = lshr i8 %1896, 4
  %1898 = zext i8 %1897 to i32
  %1899 = getelementptr i64, ptr %0, i32 %1898
  %1900 = load i64, ptr %1899, align 8
  %1901 = and i8 %1896, 15
  %1902 = zext i8 %1901 to i32
  %1903 = getelementptr i64, ptr %0, i32 %1902
  %1904 = load i64, ptr %1903, align 8
  %1905 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1906 = load i16, ptr %1905, align 2
  %1907 = sext i16 %1906 to i64
  %1908 = add i64 %1904, %1907
  %1909 = trunc i64 %1908 to i32
  %1910 = inttoptr i32 %1909 to ptr
  store i64 %1900, ptr %1910, align 8
  %1911 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1912:                                             ; preds = %9
  %1913 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %1914 = load i32, ptr %1913, align 4
  %1915 = sext i32 %1914 to i64
  %1916 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1917 = load i8, ptr %1916, align 1
  %1918 = and i8 %1917, 15
  %1919 = zext i8 %1918 to i32
  %1920 = getelementptr i64, ptr %0, i32 %1919
  %1921 = load i64, ptr %1920, align 8
  %1922 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1923 = load i16, ptr %1922, align 2
  %1924 = sext i16 %1923 to i64
  %1925 = add i64 %1921, %1924
  %1926 = trunc i64 %1925 to i32
  %1927 = inttoptr i32 %1926 to ptr
  store i64 %1915, ptr %1927, align 8
  %1928 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1929:                                             ; preds = %9
  %1930 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1931 = load i8, ptr %1930, align 1
  %1932 = lshr i8 %1931, 4
  %1933 = zext i8 %1932 to i32
  %1934 = getelementptr i64, ptr %0, i32 %1933
  %1935 = load i64, ptr %1934, align 8
  %1936 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1937 = load i16, ptr %1936, align 2
  %1938 = sext i16 %1937 to i64
  %1939 = add i64 %1935, %1938
  %1940 = trunc i64 %1939 to i32
  %1941 = inttoptr i32 %1940 to ptr
  %1942 = load i64, ptr %1941, align 8
  %1943 = and i8 %1931, 15
  %1944 = zext i8 %1943 to i32
  %1945 = getelementptr i64, ptr %0, i32 %1944
  store i64 %1942, ptr %1945, align 8
  %1946 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1947:                                             ; preds = %9
  %1948 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1949 = load i8, ptr %1948, align 1
  %1950 = and i8 %1949, 15
  %1951 = zext i8 %1950 to i32
  %1952 = getelementptr i64, ptr %0, i32 %1951
  %1953 = lshr i8 %1949, 4
  %1954 = zext i8 %1953 to i32
  %1955 = getelementptr i64, ptr %0, i32 %1954
  %1956 = load i64, ptr %1955, align 8
  %1957 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1958 = load i16, ptr %1957, align 2
  %1959 = sext i16 %1958 to i64
  %1960 = add i64 %1956, %1959
  %1961 = trunc i64 %1960 to i32
  %1962 = inttoptr i32 %1961 to ptr
  %1963 = tail call i64 @bpf_probe_read_kernel(ptr noundef %1952, i32 noundef 1, ptr noundef %1962)
  %1964 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1965:                                             ; preds = %9
  %1966 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1967 = load i8, ptr %1966, align 1
  %1968 = and i8 %1967, 15
  %1969 = zext i8 %1968 to i32
  %1970 = getelementptr i64, ptr %0, i32 %1969
  %1971 = lshr i8 %1967, 4
  %1972 = zext i8 %1971 to i32
  %1973 = getelementptr i64, ptr %0, i32 %1972
  %1974 = load i64, ptr %1973, align 8
  %1975 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1976 = load i16, ptr %1975, align 2
  %1977 = sext i16 %1976 to i64
  %1978 = add i64 %1974, %1977
  %1979 = trunc i64 %1978 to i32
  %1980 = inttoptr i32 %1979 to ptr
  %1981 = tail call i64 @bpf_probe_read_kernel(ptr noundef %1970, i32 noundef 2, ptr noundef %1980)
  %1982 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

1983:                                             ; preds = %9
  %1984 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %1985 = load i8, ptr %1984, align 1
  %1986 = and i8 %1985, 15
  %1987 = zext i8 %1986 to i32
  %1988 = getelementptr i64, ptr %0, i32 %1987
  %1989 = lshr i8 %1985, 4
  %1990 = zext i8 %1989 to i32
  %1991 = getelementptr i64, ptr %0, i32 %1990
  %1992 = load i64, ptr %1991, align 8
  %1993 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %1994 = load i16, ptr %1993, align 2
  %1995 = sext i16 %1994 to i64
  %1996 = add i64 %1992, %1995
  %1997 = trunc i64 %1996 to i32
  %1998 = inttoptr i32 %1997 to ptr
  %1999 = tail call i64 @bpf_probe_read_kernel(ptr noundef %1988, i32 noundef 4, ptr noundef %1998)
  %2000 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

2001:                                             ; preds = %9
  %2002 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %2003 = load i8, ptr %2002, align 1
  %2004 = and i8 %2003, 15
  %2005 = zext i8 %2004 to i32
  %2006 = getelementptr i64, ptr %0, i32 %2005
  %2007 = lshr i8 %2003, 4
  %2008 = zext i8 %2007 to i32
  %2009 = getelementptr i64, ptr %0, i32 %2008
  %2010 = load i64, ptr %2009, align 8
  %2011 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2012 = load i16, ptr %2011, align 2
  %2013 = sext i16 %2012 to i64
  %2014 = add i64 %2010, %2013
  %2015 = trunc i64 %2014 to i32
  %2016 = inttoptr i32 %2015 to ptr
  %2017 = tail call i64 @bpf_probe_read_kernel(ptr noundef %2006, i32 noundef 8, ptr noundef %2016)
  %2018 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

2019:                                             ; preds = %9
  %2020 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %2021 = load i32, ptr %2020, align 4
  switch i32 %2021, label %2416 [
    i32 0, label %2022
    i32 1, label %2056
    i32 80, label %2101
    i32 81, label %2135
    i32 64, label %2180
    i32 65, label %2214
    i32 160, label %2259
    i32 161, label %2293
    i32 225, label %2338
    i32 241, label %2373
  ]

2022:                                             ; preds = %2019
  %2023 = and i32 %13, 24
  %2024 = icmp eq i32 %2023, 0
  %2025 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %2026 = load i8, ptr %2025, align 1
  %2027 = lshr i8 %2026, 4
  %2028 = zext i8 %2027 to i32
  %2029 = getelementptr i64, ptr %0, i32 %2028
  %2030 = load i64, ptr %2029, align 8
  br i1 %2024, label %2031, label %2044

2031:                                             ; preds = %2022
  %2032 = trunc i64 %2030 to i32
  %2033 = and i8 %2026, 15
  %2034 = zext i8 %2033 to i32
  %2035 = getelementptr i64, ptr %0, i32 %2034
  %2036 = load i64, ptr %2035, align 8
  %2037 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2038 = load i16, ptr %2037, align 2
  %2039 = sext i16 %2038 to i64
  %2040 = add i64 %2036, %2039
  %2041 = trunc i64 %2040 to i32
  %2042 = inttoptr i32 %2041 to ptr
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2042) #22, !srcloc !26
  %2043 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2042, ptr %2042, i32 %2032, ptr elementtype(i32) %2042) #22, !srcloc !27
  br label %2414

2044:                                             ; preds = %2022
  %2045 = and i8 %2026, 15
  %2046 = zext i8 %2045 to i32
  %2047 = getelementptr i64, ptr %0, i32 %2046
  %2048 = load i64, ptr %2047, align 8
  %2049 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2050 = load i16, ptr %2049, align 2
  %2051 = sext i16 %2050 to i64
  %2052 = add i64 %2048, %2051
  %2053 = trunc i64 %2052 to i32
  %2054 = inttoptr i32 %2053 to ptr
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2054) #22, !srcloc !26
  %2055 = tail call { i64, i32 } asm sideeffect "@ atomic64_add\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09adds ${0:Q}, ${0:Q}, ${4:Q}\0A\09adc ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %2054, ptr %2054, i64 %2030, ptr elementtype(i64) %2054) #22, !srcloc !28
  br label %2414

2056:                                             ; preds = %2019
  %2057 = and i32 %13, 24
  %2058 = icmp eq i32 %2057, 0
  %2059 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %2060 = load i8, ptr %2059, align 1
  %2061 = lshr i8 %2060, 4
  %2062 = zext i8 %2061 to i32
  %2063 = getelementptr i64, ptr %0, i32 %2062
  %2064 = load i64, ptr %2063, align 8
  br i1 %2058, label %2065, label %2084

2065:                                             ; preds = %2056
  %2066 = trunc i64 %2064 to i32
  %2067 = and i8 %2060, 15
  %2068 = zext i8 %2067 to i32
  %2069 = getelementptr i64, ptr %0, i32 %2068
  %2070 = load i64, ptr %2069, align 8
  %2071 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2072 = load i16, ptr %2071, align 2
  %2073 = sext i16 %2072 to i64
  %2074 = add i64 %2070, %2073
  %2075 = trunc i64 %2074 to i32
  %2076 = inttoptr i32 %2075 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2076) #22, !srcloc !26
  %2077 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2076, ptr %2076, i32 %2066, ptr elementtype(i32) %2076) #22, !srcloc !30
  %2078 = extractvalue { i32, i32, i32 } %2077, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !31
  %2079 = zext i32 %2078 to i64
  %2080 = load i8, ptr %2059, align 1
  %2081 = lshr i8 %2080, 4
  %2082 = zext i8 %2081 to i32
  %2083 = getelementptr i64, ptr %0, i32 %2082
  store i64 %2079, ptr %2083, align 8
  br label %2414

2084:                                             ; preds = %2056
  %2085 = and i8 %2060, 15
  %2086 = zext i8 %2085 to i32
  %2087 = getelementptr i64, ptr %0, i32 %2086
  %2088 = load i64, ptr %2087, align 8
  %2089 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2090 = load i16, ptr %2089, align 2
  %2091 = sext i16 %2090 to i64
  %2092 = add i64 %2088, %2091
  %2093 = trunc i64 %2092 to i32
  %2094 = inttoptr i32 %2093 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2094) #22, !srcloc !26
  %2095 = tail call { i64, i64, i32 } asm sideeffect "@ atomic64_fetch_add\0A1:\09ldrexd\09$0, ${0:H}, [$4]\0A\09adds ${1:Q}, ${0:Q}, ${5:Q}\0A\09adc ${1:R}, ${0:R}, ${5:R}\0A\09strexd\09$2, $1, ${1:H}, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %2094, ptr %2094, i64 %2064, ptr elementtype(i64) %2094) #22, !srcloc !33
  %2096 = extractvalue { i64, i64, i32 } %2095, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !34
  %2097 = load i8, ptr %2059, align 1
  %2098 = lshr i8 %2097, 4
  %2099 = zext i8 %2098 to i32
  %2100 = getelementptr i64, ptr %0, i32 %2099
  store i64 %2096, ptr %2100, align 8
  br label %2414

2101:                                             ; preds = %2019
  %2102 = and i32 %13, 24
  %2103 = icmp eq i32 %2102, 0
  %2104 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %2105 = load i8, ptr %2104, align 1
  %2106 = lshr i8 %2105, 4
  %2107 = zext i8 %2106 to i32
  %2108 = getelementptr i64, ptr %0, i32 %2107
  %2109 = load i64, ptr %2108, align 8
  br i1 %2103, label %2110, label %2123

2110:                                             ; preds = %2101
  %2111 = trunc i64 %2109 to i32
  %2112 = and i8 %2105, 15
  %2113 = zext i8 %2112 to i32
  %2114 = getelementptr i64, ptr %0, i32 %2113
  %2115 = load i64, ptr %2114, align 8
  %2116 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2117 = load i16, ptr %2116, align 2
  %2118 = sext i16 %2117 to i64
  %2119 = add i64 %2115, %2118
  %2120 = trunc i64 %2119 to i32
  %2121 = inttoptr i32 %2120 to ptr
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2121) #22, !srcloc !26
  %2122 = tail call { i32, i32 } asm sideeffect "@ atomic_and\0A1:\09ldrex\09$0, [$3]\0A\09and\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2121, ptr %2121, i32 %2111, ptr elementtype(i32) %2121) #22, !srcloc !35
  br label %2414

2123:                                             ; preds = %2101
  %2124 = and i8 %2105, 15
  %2125 = zext i8 %2124 to i32
  %2126 = getelementptr i64, ptr %0, i32 %2125
  %2127 = load i64, ptr %2126, align 8
  %2128 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2129 = load i16, ptr %2128, align 2
  %2130 = sext i16 %2129 to i64
  %2131 = add i64 %2127, %2130
  %2132 = trunc i64 %2131 to i32
  %2133 = inttoptr i32 %2132 to ptr
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2133) #22, !srcloc !26
  %2134 = tail call { i64, i32 } asm sideeffect "@ atomic64_and\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09and ${0:Q}, ${0:Q}, ${4:Q}\0A\09and ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %2133, ptr %2133, i64 %2109, ptr elementtype(i64) %2133) #22, !srcloc !36
  br label %2414

2135:                                             ; preds = %2019
  %2136 = and i32 %13, 24
  %2137 = icmp eq i32 %2136, 0
  %2138 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %2139 = load i8, ptr %2138, align 1
  %2140 = lshr i8 %2139, 4
  %2141 = zext i8 %2140 to i32
  %2142 = getelementptr i64, ptr %0, i32 %2141
  %2143 = load i64, ptr %2142, align 8
  br i1 %2137, label %2144, label %2163

2144:                                             ; preds = %2135
  %2145 = trunc i64 %2143 to i32
  %2146 = and i8 %2139, 15
  %2147 = zext i8 %2146 to i32
  %2148 = getelementptr i64, ptr %0, i32 %2147
  %2149 = load i64, ptr %2148, align 8
  %2150 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2151 = load i16, ptr %2150, align 2
  %2152 = sext i16 %2151 to i64
  %2153 = add i64 %2149, %2152
  %2154 = trunc i64 %2153 to i32
  %2155 = inttoptr i32 %2154 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !37
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2155) #22, !srcloc !26
  %2156 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_and\0A1:\09ldrex\09$0, [$4]\0A\09and\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2155, ptr %2155, i32 %2145, ptr elementtype(i32) %2155) #22, !srcloc !38
  %2157 = extractvalue { i32, i32, i32 } %2156, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !39
  %2158 = zext i32 %2157 to i64
  %2159 = load i8, ptr %2138, align 1
  %2160 = lshr i8 %2159, 4
  %2161 = zext i8 %2160 to i32
  %2162 = getelementptr i64, ptr %0, i32 %2161
  store i64 %2158, ptr %2162, align 8
  br label %2414

2163:                                             ; preds = %2135
  %2164 = and i8 %2139, 15
  %2165 = zext i8 %2164 to i32
  %2166 = getelementptr i64, ptr %0, i32 %2165
  %2167 = load i64, ptr %2166, align 8
  %2168 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2169 = load i16, ptr %2168, align 2
  %2170 = sext i16 %2169 to i64
  %2171 = add i64 %2167, %2170
  %2172 = trunc i64 %2171 to i32
  %2173 = inttoptr i32 %2172 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !40
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2173) #22, !srcloc !26
  %2174 = tail call { i64, i64, i32 } asm sideeffect "@ atomic64_fetch_and\0A1:\09ldrexd\09$0, ${0:H}, [$4]\0A\09and ${1:Q}, ${0:Q}, ${5:Q}\0A\09and ${1:R}, ${0:R}, ${5:R}\0A\09strexd\09$2, $1, ${1:H}, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %2173, ptr %2173, i64 %2143, ptr elementtype(i64) %2173) #22, !srcloc !41
  %2175 = extractvalue { i64, i64, i32 } %2174, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !42
  %2176 = load i8, ptr %2138, align 1
  %2177 = lshr i8 %2176, 4
  %2178 = zext i8 %2177 to i32
  %2179 = getelementptr i64, ptr %0, i32 %2178
  store i64 %2175, ptr %2179, align 8
  br label %2414

2180:                                             ; preds = %2019
  %2181 = and i32 %13, 24
  %2182 = icmp eq i32 %2181, 0
  %2183 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %2184 = load i8, ptr %2183, align 1
  %2185 = lshr i8 %2184, 4
  %2186 = zext i8 %2185 to i32
  %2187 = getelementptr i64, ptr %0, i32 %2186
  %2188 = load i64, ptr %2187, align 8
  br i1 %2182, label %2189, label %2202

2189:                                             ; preds = %2180
  %2190 = trunc i64 %2188 to i32
  %2191 = and i8 %2184, 15
  %2192 = zext i8 %2191 to i32
  %2193 = getelementptr i64, ptr %0, i32 %2192
  %2194 = load i64, ptr %2193, align 8
  %2195 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2196 = load i16, ptr %2195, align 2
  %2197 = sext i16 %2196 to i64
  %2198 = add i64 %2194, %2197
  %2199 = trunc i64 %2198 to i32
  %2200 = inttoptr i32 %2199 to ptr
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2200) #22, !srcloc !26
  %2201 = tail call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2200, ptr %2200, i32 %2190, ptr elementtype(i32) %2200) #22, !srcloc !43
  br label %2414

2202:                                             ; preds = %2180
  %2203 = and i8 %2184, 15
  %2204 = zext i8 %2203 to i32
  %2205 = getelementptr i64, ptr %0, i32 %2204
  %2206 = load i64, ptr %2205, align 8
  %2207 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2208 = load i16, ptr %2207, align 2
  %2209 = sext i16 %2208 to i64
  %2210 = add i64 %2206, %2209
  %2211 = trunc i64 %2210 to i32
  %2212 = inttoptr i32 %2211 to ptr
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2212) #22, !srcloc !26
  %2213 = tail call { i64, i32 } asm sideeffect "@ atomic64_or\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09orr ${0:Q}, ${0:Q}, ${4:Q}\0A\09orr ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %2212, ptr %2212, i64 %2188, ptr elementtype(i64) %2212) #22, !srcloc !44
  br label %2414

2214:                                             ; preds = %2019
  %2215 = and i32 %13, 24
  %2216 = icmp eq i32 %2215, 0
  %2217 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %2218 = load i8, ptr %2217, align 1
  %2219 = lshr i8 %2218, 4
  %2220 = zext i8 %2219 to i32
  %2221 = getelementptr i64, ptr %0, i32 %2220
  %2222 = load i64, ptr %2221, align 8
  br i1 %2216, label %2223, label %2242

2223:                                             ; preds = %2214
  %2224 = trunc i64 %2222 to i32
  %2225 = and i8 %2218, 15
  %2226 = zext i8 %2225 to i32
  %2227 = getelementptr i64, ptr %0, i32 %2226
  %2228 = load i64, ptr %2227, align 8
  %2229 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2230 = load i16, ptr %2229, align 2
  %2231 = sext i16 %2230 to i64
  %2232 = add i64 %2228, %2231
  %2233 = trunc i64 %2232 to i32
  %2234 = inttoptr i32 %2233 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !45
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2234) #22, !srcloc !26
  %2235 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2234, ptr %2234, i32 %2224, ptr elementtype(i32) %2234) #22, !srcloc !46
  %2236 = extractvalue { i32, i32, i32 } %2235, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !47
  %2237 = zext i32 %2236 to i64
  %2238 = load i8, ptr %2217, align 1
  %2239 = lshr i8 %2238, 4
  %2240 = zext i8 %2239 to i32
  %2241 = getelementptr i64, ptr %0, i32 %2240
  store i64 %2237, ptr %2241, align 8
  br label %2414

2242:                                             ; preds = %2214
  %2243 = and i8 %2218, 15
  %2244 = zext i8 %2243 to i32
  %2245 = getelementptr i64, ptr %0, i32 %2244
  %2246 = load i64, ptr %2245, align 8
  %2247 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2248 = load i16, ptr %2247, align 2
  %2249 = sext i16 %2248 to i64
  %2250 = add i64 %2246, %2249
  %2251 = trunc i64 %2250 to i32
  %2252 = inttoptr i32 %2251 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2252) #22, !srcloc !26
  %2253 = tail call { i64, i64, i32 } asm sideeffect "@ atomic64_fetch_or\0A1:\09ldrexd\09$0, ${0:H}, [$4]\0A\09orr ${1:Q}, ${0:Q}, ${5:Q}\0A\09orr ${1:R}, ${0:R}, ${5:R}\0A\09strexd\09$2, $1, ${1:H}, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %2252, ptr %2252, i64 %2222, ptr elementtype(i64) %2252) #22, !srcloc !49
  %2254 = extractvalue { i64, i64, i32 } %2253, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !50
  %2255 = load i8, ptr %2217, align 1
  %2256 = lshr i8 %2255, 4
  %2257 = zext i8 %2256 to i32
  %2258 = getelementptr i64, ptr %0, i32 %2257
  store i64 %2254, ptr %2258, align 8
  br label %2414

2259:                                             ; preds = %2019
  %2260 = and i32 %13, 24
  %2261 = icmp eq i32 %2260, 0
  %2262 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %2263 = load i8, ptr %2262, align 1
  %2264 = lshr i8 %2263, 4
  %2265 = zext i8 %2264 to i32
  %2266 = getelementptr i64, ptr %0, i32 %2265
  %2267 = load i64, ptr %2266, align 8
  br i1 %2261, label %2268, label %2281

2268:                                             ; preds = %2259
  %2269 = trunc i64 %2267 to i32
  %2270 = and i8 %2263, 15
  %2271 = zext i8 %2270 to i32
  %2272 = getelementptr i64, ptr %0, i32 %2271
  %2273 = load i64, ptr %2272, align 8
  %2274 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2275 = load i16, ptr %2274, align 2
  %2276 = sext i16 %2275 to i64
  %2277 = add i64 %2273, %2276
  %2278 = trunc i64 %2277 to i32
  %2279 = inttoptr i32 %2278 to ptr
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2279) #22, !srcloc !26
  %2280 = tail call { i32, i32 } asm sideeffect "@ atomic_xor\0A1:\09ldrex\09$0, [$3]\0A\09eor\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2279, ptr %2279, i32 %2269, ptr elementtype(i32) %2279) #22, !srcloc !51
  br label %2414

2281:                                             ; preds = %2259
  %2282 = and i8 %2263, 15
  %2283 = zext i8 %2282 to i32
  %2284 = getelementptr i64, ptr %0, i32 %2283
  %2285 = load i64, ptr %2284, align 8
  %2286 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2287 = load i16, ptr %2286, align 2
  %2288 = sext i16 %2287 to i64
  %2289 = add i64 %2285, %2288
  %2290 = trunc i64 %2289 to i32
  %2291 = inttoptr i32 %2290 to ptr
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2291) #22, !srcloc !26
  %2292 = tail call { i64, i32 } asm sideeffect "@ atomic64_xor\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09eor ${0:Q}, ${0:Q}, ${4:Q}\0A\09eor ${0:R}, ${0:R}, ${4:R}\0A\09strexd\09$1, $0, ${0:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %2291, ptr %2291, i64 %2267, ptr elementtype(i64) %2291) #22, !srcloc !52
  br label %2414

2293:                                             ; preds = %2019
  %2294 = and i32 %13, 24
  %2295 = icmp eq i32 %2294, 0
  %2296 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %2297 = load i8, ptr %2296, align 1
  %2298 = lshr i8 %2297, 4
  %2299 = zext i8 %2298 to i32
  %2300 = getelementptr i64, ptr %0, i32 %2299
  %2301 = load i64, ptr %2300, align 8
  br i1 %2295, label %2302, label %2321

2302:                                             ; preds = %2293
  %2303 = trunc i64 %2301 to i32
  %2304 = and i8 %2297, 15
  %2305 = zext i8 %2304 to i32
  %2306 = getelementptr i64, ptr %0, i32 %2305
  %2307 = load i64, ptr %2306, align 8
  %2308 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2309 = load i16, ptr %2308, align 2
  %2310 = sext i16 %2309 to i64
  %2311 = add i64 %2307, %2310
  %2312 = trunc i64 %2311 to i32
  %2313 = inttoptr i32 %2312 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !53
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2313) #22, !srcloc !26
  %2314 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_xor\0A1:\09ldrex\09$0, [$4]\0A\09eor\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2313, ptr %2313, i32 %2303, ptr elementtype(i32) %2313) #22, !srcloc !54
  %2315 = extractvalue { i32, i32, i32 } %2314, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !55
  %2316 = zext i32 %2315 to i64
  %2317 = load i8, ptr %2296, align 1
  %2318 = lshr i8 %2317, 4
  %2319 = zext i8 %2318 to i32
  %2320 = getelementptr i64, ptr %0, i32 %2319
  store i64 %2316, ptr %2320, align 8
  br label %2414

2321:                                             ; preds = %2293
  %2322 = and i8 %2297, 15
  %2323 = zext i8 %2322 to i32
  %2324 = getelementptr i64, ptr %0, i32 %2323
  %2325 = load i64, ptr %2324, align 8
  %2326 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2327 = load i16, ptr %2326, align 2
  %2328 = sext i16 %2327 to i64
  %2329 = add i64 %2325, %2328
  %2330 = trunc i64 %2329 to i32
  %2331 = inttoptr i32 %2330 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !56
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2331) #22, !srcloc !26
  %2332 = tail call { i64, i64, i32 } asm sideeffect "@ atomic64_fetch_xor\0A1:\09ldrexd\09$0, ${0:H}, [$4]\0A\09eor ${1:Q}, ${0:Q}, ${5:Q}\0A\09eor ${1:R}, ${0:R}, ${5:R}\0A\09strexd\09$2, $1, ${1:H}, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %2331, ptr %2331, i64 %2301, ptr elementtype(i64) %2331) #22, !srcloc !57
  %2333 = extractvalue { i64, i64, i32 } %2332, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !58
  %2334 = load i8, ptr %2296, align 1
  %2335 = lshr i8 %2334, 4
  %2336 = zext i8 %2335 to i32
  %2337 = getelementptr i64, ptr %0, i32 %2336
  store i64 %2333, ptr %2337, align 8
  br label %2414

2338:                                             ; preds = %2019
  %2339 = and i32 %13, 24
  %2340 = icmp eq i32 %2339, 0
  %2341 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %2342 = load i8, ptr %2341, align 1
  %2343 = and i8 %2342, 15
  %2344 = zext i8 %2343 to i32
  %2345 = getelementptr i64, ptr %0, i32 %2344
  %2346 = load i64, ptr %2345, align 8
  %2347 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2348 = load i16, ptr %2347, align 2
  %2349 = sext i16 %2348 to i64
  %2350 = add i64 %2346, %2349
  %2351 = trunc i64 %2350 to i32
  %2352 = inttoptr i32 %2351 to ptr
  %2353 = lshr i8 %2342, 4
  %2354 = zext i8 %2353 to i32
  %2355 = getelementptr i64, ptr %0, i32 %2354
  %2356 = load i64, ptr %2355, align 8
  br i1 %2340, label %2357, label %2366

2357:                                             ; preds = %2338
  %2358 = trunc i64 %2356 to i32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !59
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2352) #22, !srcloc !26
  %2359 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %2358, ptr %2352) #22, !srcloc !60
  %2360 = extractvalue { i32, i32 } %2359, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !61
  %2361 = zext i32 %2360 to i64
  %2362 = load i8, ptr %2341, align 1
  %2363 = lshr i8 %2362, 4
  %2364 = zext i8 %2363 to i32
  %2365 = getelementptr i64, ptr %0, i32 %2364
  store i64 %2361, ptr %2365, align 8
  br label %2414

2366:                                             ; preds = %2338
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !62
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2352) #22, !srcloc !26
  %2367 = tail call { i64, i32 } asm sideeffect "@ atomic64_xchg\0A1:\09ldrexd\09$0, ${0:H}, [$3]\0A\09strexd\09$1, $4, ${4:H}, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,r,*Qo,~{cc}"(ptr elementtype(i64) %2352, ptr %2352, i64 %2356, ptr elementtype(i64) %2352) #22, !srcloc !63
  %2368 = extractvalue { i64, i32 } %2367, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !64
  %2369 = load i8, ptr %2341, align 1
  %2370 = lshr i8 %2369, 4
  %2371 = zext i8 %2370 to i32
  %2372 = getelementptr i64, ptr %0, i32 %2371
  store i64 %2368, ptr %2372, align 8
  br label %2414

2373:                                             ; preds = %2019
  %2374 = and i32 %13, 24
  %2375 = icmp eq i32 %2374, 0
  %2376 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 1
  %2377 = load i8, ptr %2376, align 1
  %2378 = and i8 %2377, 15
  %2379 = zext i8 %2378 to i32
  %2380 = getelementptr i64, ptr %0, i32 %2379
  %2381 = load i64, ptr %2380, align 8
  %2382 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 2
  %2383 = load i16, ptr %2382, align 2
  %2384 = sext i16 %2383 to i64
  %2385 = add i64 %2381, %2384
  %2386 = trunc i64 %2385 to i32
  %2387 = inttoptr i32 %2386 to ptr
  %2388 = load i64, ptr %0, align 8
  br i1 %2375, label %2389, label %2403

2389:                                             ; preds = %2373
  %2390 = trunc i64 %2388 to i32
  %2391 = lshr i8 %2377, 4
  %2392 = zext i8 %2391 to i32
  %2393 = getelementptr i64, ptr %0, i32 %2392
  %2394 = load i64, ptr %2393, align 8
  %2395 = trunc i64 %2394 to i32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !65
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2387) #22, !srcloc !26
  br label %2396

2396:                                             ; preds = %2396, %2389
  %2397 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %2387, ptr %2387, i32 %2390, i32 %2395, ptr elementtype(i32) %2387) #22, !srcloc !66
  %2398 = extractvalue { i32, i32 } %2397, 0
  %2399 = icmp eq i32 %2398, 0
  br i1 %2399, label %2400, label %2396

2400:                                             ; preds = %2396
  %2401 = extractvalue { i32, i32 } %2397, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !67
  %2402 = zext i32 %2401 to i64
  store i64 %2402, ptr %0, align 8
  br label %2414

2403:                                             ; preds = %2373
  %2404 = lshr i8 %2377, 4
  %2405 = zext i8 %2404 to i32
  %2406 = getelementptr i64, ptr %0, i32 %2405
  %2407 = load i64, ptr %2406, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !68
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2387) #22, !srcloc !26
  br label %2408

2408:                                             ; preds = %2408, %2403
  %2409 = tail call { i32, i64 } asm sideeffect "@ atomic64_cmpxchg\0Aldrexd\09\09$1, ${1:H}, [$3]\0Amov\09\09$0, #0\0Ateq\09\09$1, $4\0Ateqeq\09\09${1:H}, ${4:H}\0Astrexdeq\09$0, $5, ${5:H}, [$3]", "=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i64) %2387, ptr %2387, i64 %2388, i64 %2407, ptr elementtype(i64) %2387) #22, !srcloc !69
  %2410 = extractvalue { i32, i64 } %2409, 0
  %2411 = icmp eq i32 %2410, 0
  br i1 %2411, label %2412, label %2408

2412:                                             ; preds = %2408
  %2413 = extractvalue { i32, i64 } %2409, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !70
  store i64 %2413, ptr %0, align 8
  br label %2414

2414:                                             ; preds = %2412, %2400, %2366, %2357, %2321, %2302, %2281, %2268, %2242, %2223, %2202, %2189, %2163, %2144, %2123, %2110, %2084, %2065, %2044, %2031
  %2415 = getelementptr %struct.bpf_insn, ptr %11, i32 1
  br label %29

2416:                                             ; preds = %2019, %9
  %2417 = zext i8 %12 to i32
  %2418 = getelementptr inbounds %struct.bpf_insn, ptr %11, i32 0, i32 3
  %2419 = load i32, ptr %2418, align 4
  %2420 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %2417, i32 noundef %2419) #25
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/bpf/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1745, 0\0A.popsection", ""() #22, !srcloc !71
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bpf_prog_run32(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [4 x i64], align 8
  %4 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !11
  %5 = getelementptr inbounds [4 x i64], ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 10
  store i64 %7, ptr %8, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %4, ptr noundef %1)
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bpf_prog_run64(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [8 x i64], align 8
  %4 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(64) %3, i8 0, i32 64, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !11
  %5 = getelementptr inbounds [8 x i64], ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 10
  store i64 %7, ptr %8, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %4, ptr noundef %1)
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bpf_prog_run96(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [12 x i64], align 8
  %4 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %3, i8 0, i32 96, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !11
  %5 = getelementptr inbounds [12 x i64], ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 10
  store i64 %7, ptr %8, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %4, ptr noundef %1)
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bpf_prog_run128(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [16 x i64], align 8
  %4 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !11
  %5 = getelementptr inbounds [16 x i64], ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 10
  store i64 %7, ptr %8, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %4, ptr noundef %1)
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bpf_prog_run160(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [20 x i64], align 8
  %4 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(160) %3, i8 0, i32 160, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !11
  %5 = getelementptr inbounds [20 x i64], ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 10
  store i64 %7, ptr %8, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %4, ptr noundef %1)
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %3) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bpf_prog_run192(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [24 x i64], align 8
  %4 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(192) %3, i8 0, i32 192, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !11
  %5 = getelementptr inbounds [24 x i64], ptr %3, i32 0, i32 24
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 10
  store i64 %7, ptr %8, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %4, ptr noundef %1)
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bpf_prog_run224(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [28 x i64], align 8
  %4 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(224) %3, i8 0, i32 224, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !11
  %5 = getelementptr inbounds [28 x i64], ptr %3, i32 0, i32 28
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 10
  store i64 %7, ptr %8, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %4, ptr noundef %1)
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %3) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bpf_prog_run256(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [32 x i64], align 8
  %4 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(256) %3, i8 0, i32 256, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !11
  %5 = getelementptr inbounds [32 x i64], ptr %3, i32 0, i32 32
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 10
  store i64 %7, ptr %8, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %4, ptr noundef %1)
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bpf_prog_run288(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [36 x i64], align 8
  %4 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(288) %3, i8 0, i32 288, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !11
  %5 = getelementptr inbounds [36 x i64], ptr %3, i32 0, i32 36
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 10
  store i64 %7, ptr %8, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %4, ptr noundef %1)
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %3) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bpf_prog_run320(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [40 x i64], align 8
  %4 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(320) %3, i8 0, i32 320, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !11
  %5 = getelementptr inbounds [40 x i64], ptr %3, i32 0, i32 40
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 10
  store i64 %7, ptr %8, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %4, ptr noundef %1)
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %3) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bpf_prog_run352(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [44 x i64], align 8
  %4 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 352, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(352) %3, i8 0, i32 352, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !11
  %5 = getelementptr inbounds [44 x i64], ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 10
  store i64 %7, ptr %8, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %4, ptr noundef %1)
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 352, ptr nonnull %3) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bpf_prog_run384(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [48 x i64], align 8
  %4 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(384) %3, i8 0, i32 384, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !11
  %5 = getelementptr inbounds [48 x i64], ptr %3, i32 0, i32 48
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 10
  store i64 %7, ptr %8, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %4, ptr noundef %1)
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %3) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bpf_prog_run416(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [52 x i64], align 8
  %4 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 416, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(416) %3, i8 0, i32 416, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !11
  %5 = getelementptr inbounds [52 x i64], ptr %3, i32 0, i32 52
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 10
  store i64 %7, ptr %8, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %4, ptr noundef %1)
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 416, ptr nonnull %3) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bpf_prog_run448(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [56 x i64], align 8
  %4 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(448) %3, i8 0, i32 448, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !11
  %5 = getelementptr inbounds [56 x i64], ptr %3, i32 0, i32 56
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 10
  store i64 %7, ptr %8, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %4, ptr noundef %1)
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %3) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bpf_prog_run480(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [60 x i64], align 8
  %4 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(480) %3, i8 0, i32 480, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !11
  %5 = getelementptr inbounds [60 x i64], ptr %3, i32 0, i32 60
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 10
  store i64 %7, ptr %8, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %4, ptr noundef %1)
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %3) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__bpf_prog_run512(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [64 x i64], align 8
  %4 = alloca [12 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(512) %3, i8 0, i32 512, i1 false), !annotation !11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i32 96, i1 false), !annotation !11
  %5 = getelementptr inbounds [64 x i64], ptr %3, i32 0, i32 64
  %6 = ptrtoint ptr %5 to i32
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 10
  store i64 %7, ptr %8, align 8
  %9 = ptrtoint ptr %0 to i32
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [12 x i64], ptr %4, i32 0, i32 1
  store i64 %10, ptr %11, align 8
  %12 = call fastcc i64 @___bpf_prog_run(ptr noundef nonnull %4, ptr noundef %1)
  %13 = trunc i64 %12 to i32
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #22
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_ro(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vm_area(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @__bpf_prog_ret1(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #10 {
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_callchain_buffers() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32_state(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #19

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xdp_exception(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %14, ptr noundef nonnull @trace_raw_output_xdp_exception.symbols) #22
  %16 = getelementptr inbounds %struct.trace_event_raw_xdp_exception, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %12, ptr noundef %15, i32 noundef %17) #22
  %18 = tail call i32 @trace_handle_return(ptr noundef %10) #22
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xdp_bulk_tx(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %14, ptr noundef nonnull @trace_raw_output_xdp_bulk_tx.symbols) #22
  %16 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %5, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %5, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_xdp_bulk_tx, ptr %5, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %12, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #22
  %22 = tail call i32 @trace_handle_return(ptr noundef %10) #22
  br label %23

23:                                               ; preds = %8, %3
  %24 = phi i32 [ %22, %8 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xdp_redirect_template(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %14, ptr noundef nonnull @trace_raw_output_xdp_redirect_template.symbols) #22
  %16 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %5, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_xdp_redirect_template, ptr %5, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %12, ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #22
  %26 = tail call i32 @trace_handle_return(ptr noundef %10) #22
  br label %27

27:                                               ; preds = %8, %3
  %28 = phi i32 [ %26, %8 ], [ %6, %3 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xdp_cpumap_kthread(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %5, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %5, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %5, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %16, ptr noundef nonnull @trace_raw_output_xdp_cpumap_kthread.symbols) #22
  %18 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %5, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %5, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %5, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_kthread, ptr %5, i32 0, i32 9
  %29 = load i32, ptr %28, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %12, i32 noundef %14, ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #22
  %30 = tail call i32 @trace_handle_return(ptr noundef %10) #22
  br label %31

31:                                               ; preds = %8, %3
  %32 = phi i32 [ %30, %8 ], [ %6, %3 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xdp_cpumap_enqueue(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %5, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %5, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %5, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %16, ptr noundef nonnull @trace_raw_output_xdp_cpumap_enqueue.symbols) #22
  %18 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %5, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_xdp_cpumap_enqueue, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %12, i32 noundef %14, ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #22
  %24 = tail call i32 @trace_handle_return(ptr noundef %10) #22
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_xdp_devmap_xmit(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %5, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %16, ptr noundef nonnull @trace_raw_output_xdp_devmap_xmit.symbols) #22
  %18 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %5, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %5, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.trace_event_raw_xdp_devmap_xmit, ptr %5, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %12, i32 noundef %14, ptr noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23) #22
  %24 = tail call i32 @trace_handle_return(ptr noundef %10) #22
  br label %25

25:                                               ; preds = %8, %3
  %26 = phi i32 [ %24, %8 ], [ %6, %3 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mem_disconnect(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %14, ptr noundef nonnull @trace_raw_output_mem_disconnect.symbols) #22
  %16 = getelementptr inbounds %struct.trace_event_raw_mem_disconnect, ptr %5, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef %12, ptr noundef %15, ptr noundef %17) #22
  %18 = tail call i32 @trace_handle_return(ptr noundef %10) #22
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mem_connect(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %14, ptr noundef nonnull @trace_raw_output_mem_connect.symbols) #22
  %16 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %5, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.trace_event_raw_mem_connect, ptr %5, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %12, ptr noundef %15, ptr noundef %17, i32 noundef %19) #22
  %20 = tail call i32 @trace_handle_return(ptr noundef %10) #22
  br label %21

21:                                               ; preds = %8, %3
  %22 = phi i32 [ %20, %8 ], [ %6, %3 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_mem_return_failed(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #22
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 12
  %10 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = tail call ptr @trace_print_symbols_seq(ptr noundef %9, i32 noundef %14, ptr noundef nonnull @trace_raw_output_mem_return_failed.symbols) #22
  %16 = getelementptr inbounds %struct.trace_event_raw_mem_return_failed, ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.64, i32 noundef %12, ptr noundef %15, ptr noundef %17) #22
  %18 = tail call i32 @trace_handle_return(ptr noundef %10) #22
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #19 = { nounwind readonly }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind }
attributes #23 = { nounwind readonly willreturn }
attributes #24 = { nounwind readnone }
attributes #25 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"auto-init"}
!12 = !{i64 2155951281, i64 2155951763, i64 2155951318, i64 2155951374, i64 2155951408, i64 2155951432, i64 2155951473, i64 2155951494, i64 2155951522, i64 2155951556}
!13 = !{i8 0, i8 2}
!14 = !{i64 2149382653}
!15 = !{i64 2149378477}
!16 = !{i64 2149378552, i64 2149378579, i64 2149378626, i64 2149378648, i64 2149378676, i64 2149378696}
!17 = !{i64 2149405656}
!18 = !{i64 2152207931, i64 2152207956}
!19 = !{i64 4703465}
!20 = !{i64 4703662}
!21 = !{i64 2152188941}
!22 = !{i64 2156116659}
!23 = !{i64 394090}
!24 = !{i64 2156117611}
!25 = !{!"branch_weights", i32 4001, i32 4000000}
!26 = !{i64 358238, i64 2147859804, i64 2147859830, i64 2147859877, i64 2147859899, i64 2147859927, i64 2147859947}
!27 = !{i64 2147933505, i64 2147933531, i64 2147933560, i64 2147933594, i64 2147933625, i64 2147933648}
!28 = !{i64 2147944737, i64 2147944765, i64 2147944799, i64 2147944833, i64 2147944867, i64 2147944903, i64 2147944926}
!29 = !{i64 2148032743}
!30 = !{i64 2147934963, i64 2147934995, i64 2147935024, i64 2147935058, i64 2147935089, i64 2147935112}
!31 = !{i64 2148032945}
!32 = !{i64 2148072185}
!33 = !{i64 2147946298, i64 2147946331, i64 2147946365, i64 2147946399, i64 2147946433, i64 2147946469, i64 2147946492}
!34 = !{i64 2148072389}
!35 = !{i64 2147938167, i64 2147938193, i64 2147938222, i64 2147938256, i64 2147938287, i64 2147938310}
!36 = !{i64 2147949655, i64 2147949683, i64 2147949717, i64 2147949751, i64 2147949785, i64 2147949821, i64 2147949844}
!37 = !{i64 2148041245}
!38 = !{i64 2147938854, i64 2147938886, i64 2147938915, i64 2147938949, i64 2147938980, i64 2147939003}
!39 = !{i64 2148041447}
!40 = !{i64 2148080737}
!41 = !{i64 2147950408, i64 2147950441, i64 2147950475, i64 2147950509, i64 2147950543, i64 2147950579, i64 2147950602}
!42 = !{i64 2148080941}
!43 = !{i64 2147941283, i64 2147941309, i64 2147941338, i64 2147941372, i64 2147941403, i64 2147941426}
!44 = !{i64 2147952944, i64 2147952972, i64 2147953006, i64 2147953040, i64 2147953074, i64 2147953110, i64 2147953133}
!45 = !{i64 2148044082}
!46 = !{i64 2147941967, i64 2147941999, i64 2147942028, i64 2147942062, i64 2147942093, i64 2147942116}
!47 = !{i64 2148044283}
!48 = !{i64 2148083586}
!49 = !{i64 2147953694, i64 2147953727, i64 2147953761, i64 2147953795, i64 2147953829, i64 2147953865, i64 2147953888}
!50 = !{i64 2148083789}
!51 = !{i64 2147942810, i64 2147942836, i64 2147942865, i64 2147942899, i64 2147942930, i64 2147942953}
!52 = !{i64 2147954561, i64 2147954589, i64 2147954623, i64 2147954657, i64 2147954691, i64 2147954727, i64 2147954750}
!53 = !{i64 2148045496}
!54 = !{i64 2147943497, i64 2147943529, i64 2147943558, i64 2147943592, i64 2147943623, i64 2147943646}
!55 = !{i64 2148045698}
!56 = !{i64 2148085006}
!57 = !{i64 2147955314, i64 2147955347, i64 2147955381, i64 2147955415, i64 2147955449, i64 2147955485, i64 2147955508}
!58 = !{i64 2148085210}
!59 = !{i64 2148220343}
!60 = !{i64 440769, i64 440786, i64 440810, i64 440836, i64 440854}
!61 = !{i64 2148220687}
!62 = !{i64 2148086417}
!63 = !{i64 315068, i64 315089, i64 315117, i64 315147, i64 315163}
!64 = !{i64 2148086616}
!65 = !{i64 2148046907}
!66 = !{i64 307390, i64 307414, i64 307435, i64 307452, i64 307469}
!67 = !{i64 2148047107}
!68 = !{i64 2148087829}
!69 = !{i64 314556, i64 314582, i64 314610, i64 314628, i64 314646, i64 314668}
!70 = !{i64 2148088031}
!71 = !{i64 2156055194, i64 2156055677, i64 2156055231, i64 2156055287, i64 2156055321, i64 2156055345, i64 2156055386, i64 2156055407, i64 2156055435, i64 2156055469}
