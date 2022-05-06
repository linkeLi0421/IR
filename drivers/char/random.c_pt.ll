; ModuleID = '/llk/IR/drivers/char/random.c_pt.bc'
source_filename = "../drivers/char/random.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_device_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22add_device_randomness\22\09\09\09\09\09"
module asm "__kstrtabns_add_device_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_input_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22add_input_randomness\22\09\09\09\09\09"
module asm "__kstrtabns_add_input_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_interrupt_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22add_interrupt_randomness\22\09\09\09\09\09"
module asm "__kstrtabns_add_interrupt_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_disk_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22add_disk_randomness\22\09\09\09\09\09"
module asm "__kstrtabns_add_disk_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_random_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22get_random_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_get_random_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wait_for_random_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22wait_for_random_bytes\22\09\09\09\09\09"
module asm "__kstrtabns_wait_for_random_bytes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rng_is_initialized:\09\09\09\09\09"
module asm "\09.asciz \09\22rng_is_initialized\22\09\09\09\09\09"
module asm "__kstrtabns_rng_is_initialized:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_random_ready_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22add_random_ready_callback\22\09\09\09\09\09"
module asm "__kstrtabns_add_random_ready_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_del_random_ready_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22del_random_ready_callback\22\09\09\09\09\09"
module asm "__kstrtabns_del_random_ready_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_random_bytes_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22get_random_bytes_arch\22\09\09\09\09\09"
module asm "__kstrtabns_get_random_bytes_arch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_random_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22get_random_u64\22\09\09\09\09\09"
module asm "__kstrtabns_get_random_u64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_random_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22get_random_u32\22\09\09\09\09\09"
module asm "__kstrtabns_get_random_u32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_hwgenerator_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22add_hwgenerator_randomness\22\09\09\09\09\09"
module asm "__kstrtabns_add_hwgenerator_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_bootloader_randomness:\09\09\09\09\09"
module asm "\09.asciz \09\22add_bootloader_randomness\22\09\09\09\09\09"
module asm "__kstrtabns_add_bootloader_randomness:\09\09\09\09\09"
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.anon.93 = type { %struct.spinlock, i16, i16, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.timer_rand_state = type { i32, i32, i32 }
%struct.fast_pool = type { [4 x i32], i32, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.batched_entropy = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { [8 x i64] }
%struct.cpumask = type { [1 x i32] }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_add_device_randomness = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_random__mix_pool_bytes = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_credit_entropy_bits = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_debit_entropy = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_add_input_randomness = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_event_raw_add_disk_randomness = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_random__get_random_bytes = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.trace_event_raw_random__extract_entropy = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_urandom_read = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_prandom_u32 = type { %struct.trace_entry, i32, [0 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.95 = type { i32, i32, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type {}
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.anon.97 = type { i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.random_ready_callback = type { %struct.list_head, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.57, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.23 }
%struct.llist_node = type { ptr }
%union.anon.23 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.57 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%union.anon.96 = type { [8 x i32], [32 x i8] }
%struct.blake2s_state = type { [8 x i32], [2 x i32], [2 x i32], [64 x i8], i32, i32 }

@__tpstrtab_add_device_randomness = internal constant [22 x i8] c"add_device_randomness\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_add_device_randomness = dso_local global %struct.static_call_key { ptr @__traceiter_add_device_randomness }, align 4
@__tracepoint_add_device_randomness = dso_local global %struct.tracepoint { ptr @__tpstrtab_add_device_randomness, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_add_device_randomness, ptr null, ptr @__traceiter_add_device_randomness, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_add_device_randomness = internal constant ptr @__tracepoint_add_device_randomness, section "__tracepoints_ptrs", align 4
@__tpstrtab_mix_pool_bytes = internal constant [15 x i8] c"mix_pool_bytes\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mix_pool_bytes = dso_local global %struct.static_call_key { ptr @__traceiter_mix_pool_bytes }, align 4
@__tracepoint_mix_pool_bytes = dso_local global %struct.tracepoint { ptr @__tpstrtab_mix_pool_bytes, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mix_pool_bytes, ptr null, ptr @__traceiter_mix_pool_bytes, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mix_pool_bytes = internal constant ptr @__tracepoint_mix_pool_bytes, section "__tracepoints_ptrs", align 4
@__tpstrtab_mix_pool_bytes_nolock = internal constant [22 x i8] c"mix_pool_bytes_nolock\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_mix_pool_bytes_nolock = dso_local global %struct.static_call_key { ptr @__traceiter_mix_pool_bytes_nolock }, align 4
@__tracepoint_mix_pool_bytes_nolock = dso_local global %struct.tracepoint { ptr @__tpstrtab_mix_pool_bytes_nolock, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_mix_pool_bytes_nolock, ptr null, ptr @__traceiter_mix_pool_bytes_nolock, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_mix_pool_bytes_nolock = internal constant ptr @__tracepoint_mix_pool_bytes_nolock, section "__tracepoints_ptrs", align 4
@__tpstrtab_credit_entropy_bits = internal constant [20 x i8] c"credit_entropy_bits\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_credit_entropy_bits = dso_local global %struct.static_call_key { ptr @__traceiter_credit_entropy_bits }, align 4
@__tracepoint_credit_entropy_bits = dso_local global %struct.tracepoint { ptr @__tpstrtab_credit_entropy_bits, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_credit_entropy_bits, ptr null, ptr @__traceiter_credit_entropy_bits, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_credit_entropy_bits = internal constant ptr @__tracepoint_credit_entropy_bits, section "__tracepoints_ptrs", align 4
@__tpstrtab_debit_entropy = internal constant [14 x i8] c"debit_entropy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_debit_entropy = dso_local global %struct.static_call_key { ptr @__traceiter_debit_entropy }, align 4
@__tracepoint_debit_entropy = dso_local global %struct.tracepoint { ptr @__tpstrtab_debit_entropy, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_debit_entropy, ptr null, ptr @__traceiter_debit_entropy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_debit_entropy = internal constant ptr @__tracepoint_debit_entropy, section "__tracepoints_ptrs", align 4
@__tpstrtab_add_input_randomness = internal constant [21 x i8] c"add_input_randomness\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_add_input_randomness = dso_local global %struct.static_call_key { ptr @__traceiter_add_input_randomness }, align 4
@__tracepoint_add_input_randomness = dso_local global %struct.tracepoint { ptr @__tpstrtab_add_input_randomness, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_add_input_randomness, ptr null, ptr @__traceiter_add_input_randomness, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_add_input_randomness = internal constant ptr @__tracepoint_add_input_randomness, section "__tracepoints_ptrs", align 4
@__tpstrtab_add_disk_randomness = internal constant [20 x i8] c"add_disk_randomness\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_add_disk_randomness = dso_local global %struct.static_call_key { ptr @__traceiter_add_disk_randomness }, align 4
@__tracepoint_add_disk_randomness = dso_local global %struct.tracepoint { ptr @__tpstrtab_add_disk_randomness, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_add_disk_randomness, ptr null, ptr @__traceiter_add_disk_randomness, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_add_disk_randomness = internal constant ptr @__tracepoint_add_disk_randomness, section "__tracepoints_ptrs", align 4
@__tpstrtab_get_random_bytes = internal constant [17 x i8] c"get_random_bytes\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_get_random_bytes = dso_local global %struct.static_call_key { ptr @__traceiter_get_random_bytes }, align 4
@__tracepoint_get_random_bytes = dso_local global %struct.tracepoint { ptr @__tpstrtab_get_random_bytes, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_get_random_bytes, ptr null, ptr @__traceiter_get_random_bytes, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_get_random_bytes = internal constant ptr @__tracepoint_get_random_bytes, section "__tracepoints_ptrs", align 4
@__tpstrtab_get_random_bytes_arch = internal constant [22 x i8] c"get_random_bytes_arch\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_get_random_bytes_arch = dso_local global %struct.static_call_key { ptr @__traceiter_get_random_bytes_arch }, align 4
@__tracepoint_get_random_bytes_arch = dso_local global %struct.tracepoint { ptr @__tpstrtab_get_random_bytes_arch, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_get_random_bytes_arch, ptr null, ptr @__traceiter_get_random_bytes_arch, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_get_random_bytes_arch = internal constant ptr @__tracepoint_get_random_bytes_arch, section "__tracepoints_ptrs", align 4
@__tpstrtab_extract_entropy = internal constant [16 x i8] c"extract_entropy\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_extract_entropy = dso_local global %struct.static_call_key { ptr @__traceiter_extract_entropy }, align 4
@__tracepoint_extract_entropy = dso_local global %struct.tracepoint { ptr @__tpstrtab_extract_entropy, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_extract_entropy, ptr null, ptr @__traceiter_extract_entropy, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_extract_entropy = internal constant ptr @__tracepoint_extract_entropy, section "__tracepoints_ptrs", align 4
@__tpstrtab_urandom_read = internal constant [13 x i8] c"urandom_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_urandom_read = dso_local global %struct.static_call_key { ptr @__traceiter_urandom_read }, align 4
@__tracepoint_urandom_read = dso_local global %struct.tracepoint { ptr @__tpstrtab_urandom_read, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_urandom_read, ptr null, ptr @__traceiter_urandom_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_urandom_read = internal constant ptr @__tracepoint_urandom_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_prandom_u32 = internal constant [12 x i8] c"prandom_u32\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_prandom_u32 = dso_local global %struct.static_call_key { ptr @__traceiter_prandom_u32 }, align 4
@__tracepoint_prandom_u32 = dso_local global %struct.tracepoint { ptr @__tpstrtab_prandom_u32, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_prandom_u32, ptr null, ptr @__traceiter_prandom_u32, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_prandom_u32 = internal constant ptr @__tracepoint_prandom_u32, section "__tracepoints_ptrs", align 4
@str__random__trace_system_name = internal constant [7 x i8] c"random\00", align 1
@trace_event_fields_add_device_randomness = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_add_device_randomness = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_add_device_randomness, ptr @perf_trace_add_device_randomness, ptr @trace_event_reg, ptr @trace_event_fields_add_device_randomness, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_add_device_randomness, i64 24), ptr getelementptr (i8, ptr @event_class_add_device_randomness, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_add_device_randomness = internal global %struct.trace_event_functions { ptr @trace_raw_output_add_device_randomness, ptr null, ptr null, ptr null }, align 4
@print_fmt_add_device_randomness = internal global [51 x i8] c"\22bytes %d caller %pS\22, REC->bytes, (void *)REC->IP\00", align 1
@event_add_device_randomness = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_add_device_randomness, %union.anon.0 { ptr @__tracepoint_add_device_randomness }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_add_device_randomness }, ptr @print_fmt_add_device_randomness, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_add_device_randomness = internal global ptr @event_add_device_randomness, section "_ftrace_events", align 4
@trace_event_fields_random__mix_pool_bytes = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_random__mix_pool_bytes = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_random__mix_pool_bytes, ptr @perf_trace_random__mix_pool_bytes, ptr @trace_event_reg, ptr @trace_event_fields_random__mix_pool_bytes, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_random__mix_pool_bytes, i64 24), ptr getelementptr (i8, ptr @event_class_random__mix_pool_bytes, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_random__mix_pool_bytes = internal global %struct.trace_event_functions { ptr @trace_raw_output_random__mix_pool_bytes, ptr null, ptr null, ptr null }, align 4
@print_fmt_random__mix_pool_bytes = internal global [63 x i8] c"\22input pool: bytes %d caller %pS\22, REC->bytes, (void *)REC->IP\00", align 1
@event_mix_pool_bytes = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_random__mix_pool_bytes, %union.anon.0 { ptr @__tracepoint_mix_pool_bytes }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_random__mix_pool_bytes }, ptr @print_fmt_random__mix_pool_bytes, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mix_pool_bytes = internal global ptr @event_mix_pool_bytes, section "_ftrace_events", align 4
@event_mix_pool_bytes_nolock = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_random__mix_pool_bytes, %union.anon.0 { ptr @__tracepoint_mix_pool_bytes_nolock }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_random__mix_pool_bytes }, ptr @print_fmt_random__mix_pool_bytes, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_mix_pool_bytes_nolock = internal global ptr @event_mix_pool_bytes_nolock, section "_ftrace_events", align 4
@trace_event_fields_credit_entropy_bits = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_credit_entropy_bits = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_credit_entropy_bits, ptr @perf_trace_credit_entropy_bits, ptr @trace_event_reg, ptr @trace_event_fields_credit_entropy_bits, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_credit_entropy_bits, i64 24), ptr getelementptr (i8, ptr @event_class_credit_entropy_bits, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_credit_entropy_bits = internal global %struct.trace_event_functions { ptr @trace_raw_output_credit_entropy_bits, ptr null, ptr null, ptr null }, align 4
@print_fmt_credit_entropy_bits = internal global [98 x i8] c"\22input pool: bits %d entropy_count %d caller %pS\22, REC->bits, REC->entropy_count, (void *)REC->IP\00", align 1
@event_credit_entropy_bits = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_credit_entropy_bits, %union.anon.0 { ptr @__tracepoint_credit_entropy_bits }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_credit_entropy_bits }, ptr @print_fmt_credit_entropy_bits, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_credit_entropy_bits = internal global ptr @event_credit_entropy_bits, section "_ftrace_events", align 4
@trace_event_fields_debit_entropy = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.9, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_debit_entropy = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_debit_entropy, ptr @perf_trace_debit_entropy, ptr @trace_event_reg, ptr @trace_event_fields_debit_entropy, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_debit_entropy, i64 24), ptr getelementptr (i8, ptr @event_class_debit_entropy, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_debit_entropy = internal global %struct.trace_event_functions { ptr @trace_raw_output_debit_entropy, ptr null, ptr null, ptr null }, align 4
@print_fmt_debit_entropy = internal global [45 x i8] c"\22input pool: debit_bits %d\22, REC->debit_bits\00", align 1
@event_debit_entropy = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_debit_entropy, %union.anon.0 { ptr @__tracepoint_debit_entropy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_debit_entropy }, ptr @print_fmt_debit_entropy, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_debit_entropy = internal global ptr @event_debit_entropy, section "_ftrace_events", align 4
@trace_event_fields_add_input_randomness = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_add_input_randomness = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_add_input_randomness, ptr @perf_trace_add_input_randomness, ptr @trace_event_reg, ptr @trace_event_fields_add_input_randomness, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_add_input_randomness, i64 24), ptr getelementptr (i8, ptr @event_class_add_input_randomness, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_add_input_randomness = internal global %struct.trace_event_functions { ptr @trace_raw_output_add_input_randomness, ptr null, ptr null, ptr null }, align 4
@print_fmt_add_input_randomness = internal global [38 x i8] c"\22input_pool_bits %d\22, REC->input_bits\00", align 1
@event_add_input_randomness = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_add_input_randomness, %union.anon.0 { ptr @__tracepoint_add_input_randomness }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_add_input_randomness }, ptr @print_fmt_add_input_randomness, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_add_input_randomness = internal global ptr @event_add_input_randomness, section "_ftrace_events", align 4
@trace_event_fields_add_disk_randomness = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.13, %union.anon { %struct.anon { ptr @.str.14, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_add_disk_randomness = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_add_disk_randomness, ptr @perf_trace_add_disk_randomness, ptr @trace_event_reg, ptr @trace_event_fields_add_disk_randomness, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_add_disk_randomness, i64 24), ptr getelementptr (i8, ptr @event_class_add_disk_randomness, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_add_disk_randomness = internal global %struct.trace_event_functions { ptr @trace_raw_output_add_disk_randomness, ptr null, ptr null, ptr null }, align 4
@print_fmt_add_disk_randomness = internal global [135 x i8] c"\22dev %d,%d input_pool_bits %d\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->input_bits\00", align 1
@event_add_disk_randomness = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_add_disk_randomness, %union.anon.0 { ptr @__tracepoint_add_disk_randomness }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_add_disk_randomness }, ptr @print_fmt_add_disk_randomness, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_add_disk_randomness = internal global ptr @event_add_disk_randomness, section "_ftrace_events", align 4
@trace_event_fields_random__get_random_bytes = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.16, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_random__get_random_bytes = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_random__get_random_bytes, ptr @perf_trace_random__get_random_bytes, ptr @trace_event_reg, ptr @trace_event_fields_random__get_random_bytes, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_random__get_random_bytes, i64 24), ptr getelementptr (i8, ptr @event_class_random__get_random_bytes, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_random__get_random_bytes = internal global %struct.trace_event_functions { ptr @trace_raw_output_random__get_random_bytes, ptr null, ptr null, ptr null }, align 4
@print_fmt_random__get_random_bytes = internal global [53 x i8] c"\22nbytes %d caller %pS\22, REC->nbytes, (void *)REC->IP\00", align 1
@event_get_random_bytes = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_random__get_random_bytes, %union.anon.0 { ptr @__tracepoint_get_random_bytes }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_random__get_random_bytes }, ptr @print_fmt_random__get_random_bytes, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_get_random_bytes = internal global ptr @event_get_random_bytes, section "_ftrace_events", align 4
@event_get_random_bytes_arch = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_random__get_random_bytes, %union.anon.0 { ptr @__tracepoint_get_random_bytes_arch }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_random__get_random_bytes }, ptr @print_fmt_random__get_random_bytes, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_get_random_bytes_arch = internal global ptr @event_get_random_bytes_arch, section "_ftrace_events", align 4
@trace_event_fields_random__extract_entropy = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.16, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.7, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon { %struct.anon { ptr @.str.3, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_random__extract_entropy = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_random__extract_entropy, ptr @perf_trace_random__extract_entropy, ptr @trace_event_reg, ptr @trace_event_fields_random__extract_entropy, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_random__extract_entropy, i64 24), ptr getelementptr (i8, ptr @event_class_random__extract_entropy, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_random__extract_entropy = internal global %struct.trace_event_functions { ptr @trace_raw_output_random__extract_entropy, ptr null, ptr null, ptr null }, align 4
@print_fmt_random__extract_entropy = internal global [102 x i8] c"\22input pool: nbytes %d entropy_count %d caller %pS\22, REC->nbytes, REC->entropy_count, (void *)REC->IP\00", align 1
@event_extract_entropy = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_random__extract_entropy, %union.anon.0 { ptr @__tracepoint_extract_entropy }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_random__extract_entropy }, ptr @print_fmt_random__extract_entropy, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_extract_entropy = internal global ptr @event_extract_entropy, section "_ftrace_events", align 4
@trace_event_fields_urandom_read = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.19, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.20, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str, %union.anon { %struct.anon { ptr @.str.21, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_urandom_read = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_urandom_read, ptr @perf_trace_urandom_read, ptr @trace_event_reg, ptr @trace_event_fields_urandom_read, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_urandom_read, i64 24), ptr getelementptr (i8, ptr @event_class_urandom_read, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_urandom_read = internal global %struct.trace_event_functions { ptr @trace_raw_output_urandom_read, ptr null, ptr null, ptr null }, align 4
@print_fmt_urandom_read = internal global [117 x i8] c"\22got_bits %d nonblocking_pool_entropy_left %d input_entropy_left %d\22, REC->got_bits, REC->pool_left, REC->input_left\00", align 1
@event_urandom_read = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_urandom_read, %union.anon.0 { ptr @__tracepoint_urandom_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_urandom_read }, ptr @print_fmt_urandom_read, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_urandom_read = internal global ptr @event_urandom_read, section "_ftrace_events", align 4
@trace_event_fields_prandom_u32 = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.23, %union.anon { %struct.anon { ptr @.str.24, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_prandom_u32 = internal global %struct.trace_event_class { ptr @str__random__trace_system_name, ptr @trace_event_raw_event_prandom_u32, ptr @perf_trace_prandom_u32, ptr @trace_event_reg, ptr @trace_event_fields_prandom_u32, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_prandom_u32, i64 24), ptr getelementptr (i8, ptr @event_class_prandom_u32, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_prandom_u32 = internal global %struct.trace_event_functions { ptr @trace_raw_output_prandom_u32, ptr null, ptr null, ptr null }, align 4
@print_fmt_prandom_u32 = internal global [19 x i8] c"\22ret=%u\22, REC->ret\00", align 1
@event_prandom_u32 = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_prandom_u32, %union.anon.0 { ptr @__tracepoint_prandom_u32 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_prandom_u32 }, ptr @print_fmt_prandom_u32, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_prandom_u32 = internal global ptr @event_prandom_u32, section "_ftrace_events", align 4
@__param_str_ratelimit_disable = internal constant [25 x i8] c"random.ratelimit_disable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ratelimit_disable = internal global i32 0, section ".data..read_mostly", align 4
@__param_ratelimit_disable = internal constant %struct.kernel_param { ptr @__param_str_ratelimit_disable, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @ratelimit_disable } }, section "__param", align 4
@__UNIQUE_ID_ratelimit_disabletype313 = internal constant [38 x i8] c"random.parmtype=ratelimit_disable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ratelimit_disable314 = internal constant [67 x i8] c"random.parm=ratelimit_disable:Disable random ratelimit suppression\00", section ".modinfo", align 1
@__setup_str_parse_trust_cpu = internal constant [17 x i8] c"random.trust_cpu\00", section ".init.rodata", align 1
@__setup_parse_trust_cpu = internal global %struct.obs_kernel_param { ptr @__setup_str_parse_trust_cpu, ptr @parse_trust_cpu, i32 1 }, section ".init.setup", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@crng_init = internal unnamed_addr global i32 0, align 4
@input_pool = internal global %struct.anon.93 zeroinitializer, align 4
@__kstrtab_add_device_randomness = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_device_randomness = external dso_local constant [0 x i8], align 1
@__ksymtab_add_device_randomness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_device_randomness to i32), ptr @__kstrtab_add_device_randomness, ptr @__kstrtabns_add_device_randomness }, section "___ksymtab+add_device_randomness", align 4
@add_input_randomness.last_value = internal unnamed_addr global i8 0, align 1
@input_timer_state = internal global %struct.timer_rand_state { i32 -30000, i32 0, i32 0 }, align 4
@__kstrtab_add_input_randomness = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_input_randomness = external dso_local constant [0 x i8], align 1
@__ksymtab_add_input_randomness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_input_randomness to i32), ptr @__kstrtab_add_input_randomness, ptr @__kstrtabns_add_input_randomness }, section "___ksymtab_gpl+add_input_randomness", align 4
@irq_randomness = internal global %struct.fast_pool zeroinitializer, section ".data..percpu", align 4
@__kstrtab_add_interrupt_randomness = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_interrupt_randomness = external dso_local constant [0 x i8], align 1
@__ksymtab_add_interrupt_randomness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_interrupt_randomness to i32), ptr @__kstrtab_add_interrupt_randomness, ptr @__kstrtabns_add_interrupt_randomness }, section "___ksymtab_gpl+add_interrupt_randomness", align 4
@__kstrtab_add_disk_randomness = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_disk_randomness = external dso_local constant [0 x i8], align 1
@__ksymtab_add_disk_randomness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_disk_randomness to i32), ptr @__kstrtab_add_disk_randomness, ptr @__kstrtabns_add_disk_randomness }, section "___ksymtab_gpl+add_disk_randomness", align 4
@get_random_bytes.previous = internal global ptr null, align 4
@__func__.get_random_bytes = private unnamed_addr constant [17 x i8] c"get_random_bytes\00", align 1
@__kstrtab_get_random_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_random_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_get_random_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_random_bytes to i32), ptr @__kstrtab_get_random_bytes, ptr @__kstrtabns_get_random_bytes }, section "___ksymtab+get_random_bytes", align 4
@crng_init_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @crng_init_wait, i64 4), ptr getelementptr (i8, ptr @crng_init_wait, i64 4) } }, align 4
@__kstrtab_wait_for_random_bytes = external dso_local constant [0 x i8], align 1
@__kstrtabns_wait_for_random_bytes = external dso_local constant [0 x i8], align 1
@__ksymtab_wait_for_random_bytes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wait_for_random_bytes to i32), ptr @__kstrtab_wait_for_random_bytes, ptr @__kstrtabns_wait_for_random_bytes }, section "___ksymtab+wait_for_random_bytes", align 4
@__kstrtab_rng_is_initialized = external dso_local constant [0 x i8], align 1
@__kstrtabns_rng_is_initialized = external dso_local constant [0 x i8], align 1
@__ksymtab_rng_is_initialized = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rng_is_initialized to i32), ptr @__kstrtab_rng_is_initialized, ptr @__kstrtabns_rng_is_initialized }, section "___ksymtab+rng_is_initialized", align 4
@random_ready_list_lock = internal global %struct.spinlock zeroinitializer, align 4
@random_ready_list = internal global %struct.list_head { ptr @random_ready_list, ptr @random_ready_list }, align 4
@__kstrtab_add_random_ready_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_random_ready_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_add_random_ready_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_random_ready_callback to i32), ptr @__kstrtab_add_random_ready_callback, ptr @__kstrtabns_add_random_ready_callback }, section "___ksymtab+add_random_ready_callback", align 4
@__kstrtab_del_random_ready_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_del_random_ready_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_del_random_ready_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @del_random_ready_callback to i32), ptr @__kstrtab_del_random_ready_callback, ptr @__kstrtabns_del_random_ready_callback }, section "___ksymtab+del_random_ready_callback", align 4
@__kstrtab_get_random_bytes_arch = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_random_bytes_arch = external dso_local constant [0 x i8], align 1
@__ksymtab_get_random_bytes_arch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_random_bytes_arch to i32), ptr @__kstrtab_get_random_bytes_arch, ptr @__kstrtabns_get_random_bytes_arch }, section "___ksymtab+get_random_bytes_arch", align 4
@crng_need_final_init = internal unnamed_addr global i1 false, align 1
@crng_global_init_time = internal global i32 0, align 4
@urandom_warning = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 100, i32 3, i32 0, i32 0, i32 0, i32 0 }, align 4
@unseeded_warning = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 100, i32 3, i32 0, i32 0, i32 0, i32 0 }, align 4
@random_fops = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @random_read, ptr @random_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @random_poll, ptr @random_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @random_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@urandom_fops = dso_local local_unnamed_addr constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr @urandom_read, ptr @random_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @random_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @random_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__initcall__kmod_random__351_2070_random_sysctls_init6 = internal global ptr @random_sysctls_init, section ".initcall6.init", align 4
@get_random_u64.previous = internal global ptr null, align 4
@__func__.get_random_u64 = private unnamed_addr constant [15 x i8] c"get_random_u64\00", align 1
@batched_entropy_u64 = internal global %struct.batched_entropy zeroinitializer, section ".data..percpu", align 8
@__kstrtab_get_random_u64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_random_u64 = external dso_local constant [0 x i8], align 1
@__ksymtab_get_random_u64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_random_u64 to i32), ptr @__kstrtab_get_random_u64, ptr @__kstrtabns_get_random_u64 }, section "___ksymtab+get_random_u64", align 4
@get_random_u32.previous = internal global ptr null, align 4
@__func__.get_random_u32 = private unnamed_addr constant [15 x i8] c"get_random_u32\00", align 1
@batched_entropy_u32 = internal global %struct.batched_entropy zeroinitializer, section ".data..percpu", align 8
@__kstrtab_get_random_u32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_random_u32 = external dso_local constant [0 x i8], align 1
@__ksymtab_get_random_u32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_random_u32 to i32), ptr @__kstrtab_get_random_u32, ptr @__kstrtabns_get_random_u32 }, section "___ksymtab+get_random_u32", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@random_write_wakeup_bits = internal global i32 896, align 4
@random_write_wait = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @random_write_wait, i64 4), ptr getelementptr (i8, ptr @random_write_wait, i64 4) } }, align 4
@__kstrtab_add_hwgenerator_randomness = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_hwgenerator_randomness = external dso_local constant [0 x i8], align 1
@__ksymtab_add_hwgenerator_randomness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_hwgenerator_randomness to i32), ptr @__kstrtab_add_hwgenerator_randomness, ptr @__kstrtabns_add_hwgenerator_randomness }, section "___ksymtab_gpl+add_hwgenerator_randomness", align 4
@__kstrtab_add_bootloader_randomness = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_bootloader_randomness = external dso_local constant [0 x i8], align 1
@__ksymtab_add_bootloader_randomness = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_bootloader_randomness to i32), ptr @__kstrtab_add_bootloader_randomness, ptr @__kstrtabns_add_bootloader_randomness }, section "___ksymtab_gpl+add_bootloader_randomness", align 4
@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"bytes %d caller %pS\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"input pool: bytes %d caller %pS\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"entropy_count\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"input pool: bits %d entropy_count %d caller %pS\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"debit_bits\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"input pool: debit_bits %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"input_bits\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"input_pool_bits %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"dev_t\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"dev %d,%d input_pool_bits %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"nbytes\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"nbytes %d caller %pS\0A\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"input pool: nbytes %d entropy_count %d caller %pS\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"got_bits\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"pool_left\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"input_left\00", align 1
@.str.22 = private unnamed_addr constant [68 x i8] c"got_bits %d nonblocking_pool_entropy_left %d input_entropy_left %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"ret=%u\0A\00", align 1
@trust_cpu = internal global i8 0, section ".data..ro_after_init", align 1
@crng_slow_load.lfsr = internal unnamed_addr global i8 1, align 1
@primary_crng = internal global { <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock } { <{ i32, i32, i32, i32, [12 x i32] }> <{ i32 1634760805, i32 857760878, i32 2036477234, i32 1797285236, [12 x i32] zeroinitializer }>, i32 0, %struct.spinlock zeroinitializer }, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@input_pool_data = internal global [128 x i32] zeroinitializer, align 4
@twist_table = internal unnamed_addr constant [8 x i32] [i32 0, i32 997073096, i32 1994146192, i32 1303535960, i32 -306674912, i32 -690576408, i32 -1687895376, i32 -1609899400], align 4
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 4
@crng_init_cnt = internal unnamed_addr global i32 0, align 4
@.str.29 = private unnamed_addr constant [26 x i8] c"\015random: fast init done\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.30 = private unnamed_addr constant [22 x i8] c"drivers/char/random.c\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"\014random: negative entropy/overflow: count %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [44 x i8] c"\014random: negative entropy count: count %d\0A\00", align 1
@fasync = internal global ptr null, align 4
@_warn_unseeded_randomness.print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@__func__._warn_unseeded_randomness = private unnamed_addr constant [26 x i8] c"_warn_unseeded_randomness\00", align 1
@.str.33 = private unnamed_addr constant [48 x i8] c"\015random: %s called from %pS with crng_init=%d\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"\015random: crng init done\0A\00", align 1
@.str.35 = private unnamed_addr constant [66 x i8] c"\015random: %d get_random_xx warning(s) missed due to ratelimiting\0A\00", align 1
@.str.36 = private unnamed_addr constant [60 x i8] c"\015random: %d urandom warning(s) missed due to ratelimiting\0A\00", align 1
@.str.37 = private unnamed_addr constant [56 x i8] c"\015random: crng init done (trusting CPU's manufacturer)\0A\00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.38 = private unnamed_addr constant [23 x i8] c"include/linux/random.h\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.39 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@urandom_read.maxwarn = internal unnamed_addr global i32 10, align 4
@__func__.urandom_read = private unnamed_addr constant [13 x i8] c"urandom_read\00", align 1
@.str.41 = private unnamed_addr constant [59 x i8] c"\015random: %s: uninitialized urandom read (%zd bytes read)\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"kernel/random\00", align 1
@random_table = internal global [7 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.44, ptr @sysctl_poolsize, i32 4, i16 292, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.45, ptr getelementptr (i8, ptr @input_pool, i64 8), i32 4, i16 292, ptr null, ptr @proc_do_entropy, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.46, ptr @random_write_wakeup_bits, i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_write_thresh, ptr @max_write_thresh }, %struct.ctl_table { ptr @.str.47, ptr @random_min_urandom_seed, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.48, ptr @sysctl_bootid, i32 16, i16 292, ptr null, ptr @proc_do_uuid, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.49, ptr null, i32 16, i16 292, ptr null, ptr @proc_do_uuid, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 4
@.str.43 = private unnamed_addr constant [13 x i8] c"random_table\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"poolsize\00", align 1
@sysctl_poolsize = internal global i32 4096, align 4
@.str.45 = private unnamed_addr constant [14 x i8] c"entropy_avail\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"write_wakeup_threshold\00", align 1
@min_write_thresh = internal global i32 0, align 4
@max_write_thresh = internal global i32 4096, align 4
@.str.47 = private unnamed_addr constant [24 x i8] c"urandom_min_reseed_secs\00", align 1
@random_min_urandom_seed = internal global i32 60, align 4
@.str.48 = private unnamed_addr constant [8 x i8] c"boot_id\00", align 1
@sysctl_bootid = internal global [16 x i8] zeroinitializer, align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"uuid\00", align 1
@proc_do_uuid.bootid_spinlock = internal global %struct.spinlock zeroinitializer, align 4
@.str.50 = private unnamed_addr constant [4 x i8] c"%pU\00", align 1
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_ratelimit_disable314, ptr @__UNIQUE_ID_ratelimit_disabletype313, ptr @__event_add_device_randomness, ptr @__event_add_disk_randomness, ptr @__event_add_input_randomness, ptr @__event_credit_entropy_bits, ptr @__event_debit_entropy, ptr @__event_extract_entropy, ptr @__event_get_random_bytes, ptr @__event_get_random_bytes_arch, ptr @__event_mix_pool_bytes, ptr @__event_mix_pool_bytes_nolock, ptr @__event_prandom_u32, ptr @__event_urandom_read, ptr @__initcall__kmod_random__351_2070_random_sysctls_init6, ptr @__ksymtab_add_bootloader_randomness, ptr @__ksymtab_add_device_randomness, ptr @__ksymtab_add_disk_randomness, ptr @__ksymtab_add_hwgenerator_randomness, ptr @__ksymtab_add_input_randomness, ptr @__ksymtab_add_interrupt_randomness, ptr @__ksymtab_add_random_ready_callback, ptr @__ksymtab_del_random_ready_callback, ptr @__ksymtab_get_random_bytes, ptr @__ksymtab_get_random_bytes_arch, ptr @__ksymtab_get_random_u32, ptr @__ksymtab_get_random_u64, ptr @__ksymtab_rng_is_initialized, ptr @__ksymtab_wait_for_random_bytes, ptr @__param_ratelimit_disable, ptr @__setup_parse_trust_cpu, ptr @__tracepoint_add_device_randomness, ptr @__tracepoint_add_disk_randomness, ptr @__tracepoint_add_input_randomness, ptr @__tracepoint_credit_entropy_bits, ptr @__tracepoint_debit_entropy, ptr @__tracepoint_extract_entropy, ptr @__tracepoint_get_random_bytes, ptr @__tracepoint_get_random_bytes_arch, ptr @__tracepoint_mix_pool_bytes, ptr @__tracepoint_mix_pool_bytes_nolock, ptr @__tracepoint_prandom_u32, ptr @__tracepoint_ptr_add_device_randomness, ptr @__tracepoint_ptr_add_disk_randomness, ptr @__tracepoint_ptr_add_input_randomness, ptr @__tracepoint_ptr_credit_entropy_bits, ptr @__tracepoint_ptr_debit_entropy, ptr @__tracepoint_ptr_extract_entropy, ptr @__tracepoint_ptr_get_random_bytes, ptr @__tracepoint_ptr_get_random_bytes_arch, ptr @__tracepoint_ptr_mix_pool_bytes, ptr @__tracepoint_ptr_mix_pool_bytes_nolock, ptr @__tracepoint_ptr_prandom_u32, ptr @__tracepoint_ptr_urandom_read, ptr @__tracepoint_urandom_read, ptr @event_add_device_randomness, ptr @event_add_disk_randomness, ptr @event_add_input_randomness, ptr @event_class_add_device_randomness, ptr @event_class_add_disk_randomness, ptr @event_class_add_input_randomness, ptr @event_class_credit_entropy_bits, ptr @event_class_debit_entropy, ptr @event_class_prandom_u32, ptr @event_class_random__extract_entropy, ptr @event_class_random__get_random_bytes, ptr @event_class_random__mix_pool_bytes, ptr @event_class_urandom_read, ptr @event_credit_entropy_bits, ptr @event_debit_entropy, ptr @event_extract_entropy, ptr @event_get_random_bytes, ptr @event_get_random_bytes_arch, ptr @event_mix_pool_bytes, ptr @event_mix_pool_bytes_nolock, ptr @event_prandom_u32, ptr @event_urandom_read], section "llvm.metadata"

@sys_getrandom = dso_local alias i32 (ptr, i32, i32), ptr @__se_sys_getrandom

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_add_device_randomness(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_device_randomness, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #14
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
define dso_local i32 @__traceiter_mix_pool_bytes(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mix_pool_bytes, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #14
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_mix_pool_bytes_nolock(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mix_pool_bytes_nolock, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #14
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_credit_entropy_bits(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_credit_entropy_bits, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #14
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_debit_entropy(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_debit_entropy, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #14
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_add_input_randomness(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_input_randomness, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #14
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_add_disk_randomness(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_disk_randomness, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #14
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_get_random_bytes(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_get_random_bytes, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #14
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_get_random_bytes_arch(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_get_random_bytes_arch, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, i32 noundef %2) #14
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_extract_entropy(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_extract_entropy, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #14
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_urandom_read(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_urandom_read, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, i32 noundef %1, i32 noundef %2, i32 noundef %3) #14
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_prandom_u32(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_prandom_u32, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, i32 noundef %1) #14
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_add_device_randomness(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_add_device_randomness, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_add_device_randomness, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #14
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_add_device_randomness(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

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
  %34 = getelementptr inbounds %struct.trace_event_raw_add_device_randomness, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_add_device_randomness, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #14
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_random__mix_pool_bytes(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_random__mix_pool_bytes, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_random__mix_pool_bytes, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #14
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_random__mix_pool_bytes(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

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
  %34 = getelementptr inbounds %struct.trace_event_raw_random__mix_pool_bytes, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_random__mix_pool_bytes, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #14
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_credit_entropy_bits(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #14
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #14
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_credit_entropy_bits(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #8, !srcloc !12
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
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #14
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #14
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #14
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_debit_entropy(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #14
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_debit_entropy, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #14
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_debit_entropy(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #14
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
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #14
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #14
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_debit_entropy, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #14
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_add_input_randomness(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #14
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_add_input_randomness, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #14
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_add_input_randomness(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #14
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
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #14
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #14
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_add_input_randomness, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #14
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_add_disk_randomness(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_add_disk_randomness, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_add_disk_randomness, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #14
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_add_disk_randomness(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

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
  %34 = getelementptr inbounds %struct.trace_event_raw_add_disk_randomness, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_add_disk_randomness, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #14
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_random__get_random_bytes(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  br i1 %13, label %20, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 16) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_random__get_random_bytes, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_random__get_random_bytes, ptr %15, i32 0, i32 2
  store i32 %2, ptr %19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #14
  br label %20

20:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_random__get_random_bytes(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
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
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

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
  %34 = getelementptr inbounds %struct.trace_event_raw_random__get_random_bytes, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_random__get_random_bytes, ptr %21, i32 0, i32 2
  store i32 %2, ptr %35, align 4
  %36 = load i32, ptr %5, align 4
  %37 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 20, i32 noundef %36, ptr noundef %0, i64 noundef 1, ptr noundef %37, ptr noundef %13, ptr noundef null) #14
  br label %38

38:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_random__extract_entropy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #14
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #14
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_random__extract_entropy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #8, !srcloc !12
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
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #14
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #14
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #14
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_urandom_read(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
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
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #14
  br i1 %14, label %22, label %15

15:                                               ; preds = %13, %10, %4
  %16 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef 20) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %16, i32 0, i32 1
  store i32 %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %16, i32 0, i32 2
  store i32 %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %16, i32 0, i32 3
  store i32 %3, ptr %21, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #14
  br label %22

22:                                               ; preds = %18, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_urandom_read(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %11 = inttoptr i32 %10 to ptr
  %12 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %11) #8, !srcloc !12
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
  %22 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %5, align 4
  %26 = call ptr @llvm.returnaddress(i32 0) #14
  %27 = ptrtoint ptr %26 to i32
  %28 = getelementptr [18 x i32], ptr %25, i32 0, i32 15
  store i32 %27, ptr %28, align 4
  %29 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %30 = ptrtoint ptr %29 to i32
  %31 = getelementptr [18 x i32], ptr %25, i32 0, i32 11
  store i32 %30, ptr %31, align 4
  %32 = call i32 @llvm.read_register.i32(metadata !0) #14
  %33 = getelementptr [18 x i32], ptr %25, i32 0, i32 13
  store i32 %32, ptr %33, align 4
  %34 = getelementptr [18 x i32], ptr %25, i32 0, i32 16
  store i32 19, ptr %34, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %22, i32 0, i32 1
  store i32 %1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %22, i32 0, i32 2
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %22, i32 0, i32 3
  store i32 %3, ptr %37, align 4
  %38 = load i32, ptr %6, align 4
  %39 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %22, i32 noundef 20, i32 noundef %38, ptr noundef %0, i64 noundef 1, ptr noundef %39, ptr noundef %14, ptr noundef null) #14
  br label %40

40:                                               ; preds = %24, %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_prandom_u32(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
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
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #14
  br i1 %12, label %18, label %13

13:                                               ; preds = %11, %8, %2
  %14 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 12) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.trace_event_raw_prandom_u32, ptr %14, i32 0, i32 1
  store i32 %1, ptr %17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #14
  br label %18

18:                                               ; preds = %16, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_prandom_u32(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #14
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
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %2
  %20 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 4
  %24 = call ptr @llvm.returnaddress(i32 0) #14
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [18 x i32], ptr %23, i32 0, i32 15
  store i32 %25, ptr %26, align 4
  %27 = call ptr @llvm.frameaddress.p0(i32 0) #14
  %28 = ptrtoint ptr %27 to i32
  %29 = getelementptr [18 x i32], ptr %23, i32 0, i32 11
  store i32 %28, ptr %29, align 4
  %30 = call i32 @llvm.read_register.i32(metadata !0) #14
  %31 = getelementptr [18 x i32], ptr %23, i32 0, i32 13
  store i32 %30, ptr %31, align 4
  %32 = getelementptr [18 x i32], ptr %23, i32 0, i32 16
  store i32 19, ptr %32, align 4
  %33 = getelementptr inbounds %struct.trace_event_raw_prandom_u32, ptr %20, i32 0, i32 1
  store i32 %1, ptr %33, align 4
  %34 = load i32, ptr %4, align 4
  %35 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %20, i32 noundef 12, i32 noundef %34, ptr noundef %0, i64 noundef 1, ptr noundef %35, ptr noundef %12, ptr noundef null) #14
  br label %36

36:                                               ; preds = %22, %19, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @parse_trust_cpu(ptr noundef %0) #3 section ".init.text" {
  %2 = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @trust_cpu) #14
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @add_device_randomness(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = call i32 @read_current_timer(ptr noundef nonnull %4) #14
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr %4, align 4
  %8 = select i1 %6, i32 %7, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = xor i32 %9, %8
  store i32 %10, ptr %3, align 4
  %11 = load i32, ptr @crng_init, align 4
  %12 = icmp sgt i32 %11, 1
  %13 = trunc i32 %10 to i8
  br i1 %12, label %17, label %14, !prof !10

14:                                               ; preds = %2
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  call fastcc void @crng_slow_load(ptr noundef %0, i32 noundef %1)
  br label %17

17:                                               ; preds = %16, %14, %2
  %18 = call ptr @llvm.returnaddress(i32 0)
  %19 = ptrtoint ptr %18 to i32
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_device_randomness, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %17
  %23 = tail call ptr @llvm.thread.pointer() #14
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %25, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %22
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !13
  %34 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_device_randomness, i32 0, i32 7), align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %36, %33
  %37 = phi ptr [ %41, %36 ], [ %34, %33 ]
  %38 = load volatile ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.tracepoint_func, ptr %37, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  call void %38(ptr noundef %40, i32 noundef %1, i32 noundef %19) #14
  %41 = getelementptr %struct.tracepoint_func, ptr %37, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %36

44:                                               ; preds = %36, %33
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !14
  br label %45

45:                                               ; preds = %44, %22, %17
  %46 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @input_pool) #14
  %47 = load i16, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 2), align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 1), align 4
  %50 = zext i16 %49 to i32
  %51 = icmp eq i32 %1, 0
  br i1 %51, label %101, label %52

52:                                               ; preds = %52, %45
  %53 = phi ptr [ %58, %52 ], [ %0, %45 ]
  %54 = phi i32 [ %99, %52 ], [ %48, %45 ]
  %55 = phi i32 [ %63, %52 ], [ %50, %45 ]
  %56 = phi i32 [ %57, %52 ], [ %1, %45 ]
  %57 = add i32 %56, -1
  %58 = getelementptr i8, ptr %53, i32 1
  %59 = load i8, ptr %53, align 1
  %60 = zext i8 %59 to i32
  %61 = call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 %54) #14
  %62 = add nuw nsw i32 %55, 127
  %63 = and i32 %62, 127
  %64 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = xor i32 %61, %65
  %67 = add nuw nsw i32 %55, 103
  %68 = and i32 %67, 127
  %69 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %68
  %70 = load i32, ptr %69, align 4
  %71 = xor i32 %66, %70
  %72 = add nuw nsw i32 %55, 75
  %73 = and i32 %72, 127
  %74 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = xor i32 %71, %75
  %77 = add nuw nsw i32 %55, 50
  %78 = and i32 %77, 127
  %79 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %78
  %80 = load i32, ptr %79, align 4
  %81 = xor i32 %76, %80
  %82 = add nuw nsw i32 %55, 24
  %83 = and i32 %82, 127
  %84 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %83
  %85 = load i32, ptr %84, align 4
  %86 = xor i32 %81, %85
  %87 = and i32 %55, 127
  %88 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %87
  %89 = load i32, ptr %88, align 4
  %90 = xor i32 %86, %89
  %91 = lshr i32 %90, 3
  %92 = and i32 %90, 7
  %93 = getelementptr [8 x i32], ptr @twist_table, i32 0, i32 %92
  %94 = load i32, ptr %93, align 4
  %95 = xor i32 %91, %94
  store i32 %95, ptr %64, align 4
  %96 = icmp eq i32 %63, 0
  %97 = select i1 %96, i32 14, i32 7
  %98 = add nuw nsw i32 %97, %54
  %99 = and i32 %98, 31
  %100 = icmp eq i32 %57, 0
  br i1 %100, label %101, label %52

101:                                              ; preds = %52, %45
  %102 = phi i32 [ %48, %45 ], [ %99, %52 ]
  %103 = phi i32 [ %50, %45 ], [ %63, %52 ]
  br label %104

104:                                              ; preds = %152, %101
  %105 = phi i8 [ %154, %152 ], [ %13, %101 ]
  %106 = phi ptr [ %153, %152 ], [ %3, %101 ]
  %107 = phi i32 [ %150, %152 ], [ %102, %101 ]
  %108 = phi i32 [ %114, %152 ], [ %103, %101 ]
  %109 = phi i32 [ %110, %152 ], [ 4, %101 ]
  %110 = add nsw i32 %109, -1
  %111 = zext i8 %105 to i32
  %112 = call i32 @llvm.fshl.i32(i32 %111, i32 %111, i32 %107) #14
  %113 = add nuw nsw i32 %108, 127
  %114 = and i32 %113, 127
  %115 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %114
  %116 = load i32, ptr %115, align 4
  %117 = xor i32 %112, %116
  %118 = add nuw nsw i32 %108, 103
  %119 = and i32 %118, 127
  %120 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %119
  %121 = load i32, ptr %120, align 4
  %122 = xor i32 %117, %121
  %123 = add nuw nsw i32 %108, 75
  %124 = and i32 %123, 127
  %125 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %124
  %126 = load i32, ptr %125, align 4
  %127 = xor i32 %122, %126
  %128 = add nuw nsw i32 %108, 50
  %129 = and i32 %128, 127
  %130 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %129
  %131 = load i32, ptr %130, align 4
  %132 = xor i32 %127, %131
  %133 = add nuw nsw i32 %108, 24
  %134 = and i32 %133, 127
  %135 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %134
  %136 = load i32, ptr %135, align 4
  %137 = xor i32 %132, %136
  %138 = and i32 %108, 127
  %139 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %138
  %140 = load i32, ptr %139, align 4
  %141 = xor i32 %137, %140
  %142 = lshr i32 %141, 3
  %143 = and i32 %141, 7
  %144 = getelementptr [8 x i32], ptr @twist_table, i32 0, i32 %143
  %145 = load i32, ptr %144, align 4
  %146 = xor i32 %142, %145
  store i32 %146, ptr %115, align 4
  %147 = icmp eq i32 %114, 0
  %148 = select i1 %147, i32 14, i32 7
  %149 = add nuw nsw i32 %148, %107
  %150 = and i32 %149, 31
  %151 = icmp eq i32 %110, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %104
  %153 = getelementptr i8, ptr %106, i32 1
  %154 = load i8, ptr %153, align 1
  br label %104

155:                                              ; preds = %104
  %156 = trunc i32 %150 to i16
  store i16 %156, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 2), align 2
  %157 = trunc i32 %114 to i16
  store i16 %157, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 1), align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @input_pool, i32 noundef %46) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @read_current_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @crng_slow_load(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !15
  %4 = tail call i32 @_raw_spin_trylock(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #14, !srcloc !16
  br label %35

7:                                                ; preds = %2
  %8 = load i32, ptr @crng_init, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %3) #14
  br label %35

11:                                               ; preds = %7
  %12 = tail call i32 @llvm.umax.i32(i32 %1, i32 32)
  %13 = load i8, ptr @crng_slow_load.lfsr, align 1
  br label %14

14:                                               ; preds = %14, %11
  %15 = phi i32 [ 0, %11 ], [ %32, %14 ]
  %16 = phi i8 [ %13, %11 ], [ %31, %14 ]
  %17 = lshr i8 %16, 1
  %18 = and i8 %16, 1
  %19 = icmp eq i8 %18, 0
  %20 = xor i8 %17, -31
  %21 = select i1 %19, i8 %17, i8 %20
  %22 = and i32 %15, 31
  %23 = getelementptr i8, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 0), i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = urem i32 %15, %1
  %26 = getelementptr i8, ptr %0, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = xor i8 %21, %24
  %29 = xor i8 %28, %27
  store i8 %29, ptr %23, align 1
  %30 = tail call i8 @llvm.fshl.i8(i8 %24, i8 %24, i8 3)
  %31 = add i8 %30, %21
  %32 = add nuw i32 %15, 1
  %33 = icmp eq i32 %32, %12
  br i1 %33, label %34, label %14

34:                                               ; preds = %14
  store i8 %31, ptr @crng_slow_load.lfsr, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %3) #14
  br label %35

35:                                               ; preds = %34, %10, %6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @add_input_randomness(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.anon.95, align 4
  %5 = alloca i32, align 4
  %6 = load i8, ptr @add_input_randomness.last_value, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp eq i32 %7, %2
  br i1 %8, label %67, label %9

9:                                                ; preds = %3
  %10 = trunc i32 %2 to i8
  store i8 %10, ptr @add_input_randomness.last_value, align 1
  %11 = shl i32 %0, 4
  %12 = xor i32 %11, %1
  %13 = lshr i32 %1, 4
  %14 = xor i32 %12, %13
  %15 = xor i32 %14, %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  %16 = load volatile i32, ptr @jiffies, align 64
  store i32 %16, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !9
  %17 = call i32 @read_current_timer(ptr noundef nonnull %5) #14
  %18 = icmp eq i32 %17, 0
  %19 = load i32, ptr %5, align 4
  %20 = select i1 %18, i32 %19, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %21 = getelementptr inbounds %struct.anon.95, ptr %4, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.anon.95, ptr %4, i32 0, i32 2
  store i32 %15, ptr %22, align 4
  call fastcc void @mix_pool_bytes(ptr noundef nonnull %4, i32 noundef 12) #14
  %23 = load volatile i32, ptr @input_timer_state, align 4
  %24 = sub i32 %16, %23
  store volatile i32 %16, ptr @input_timer_state, align 4
  %25 = load volatile i32, ptr getelementptr inbounds (%struct.timer_rand_state, ptr @input_timer_state, i32 0, i32 1), align 4
  %26 = sub i32 %24, %25
  store volatile i32 %24, ptr getelementptr inbounds (%struct.timer_rand_state, ptr @input_timer_state, i32 0, i32 1), align 4
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.timer_rand_state, ptr @input_timer_state, i32 0, i32 2), align 4
  %28 = sub i32 %26, %27
  store volatile i32 %26, ptr getelementptr inbounds (%struct.timer_rand_state, ptr @input_timer_state, i32 0, i32 2), align 4
  %29 = call i32 @llvm.abs.i32(i32 %24, i1 false) #14
  %30 = call i32 @llvm.abs.i32(i32 %26, i1 false) #14
  %31 = call i32 @llvm.abs.i32(i32 %28, i1 false) #14
  %32 = call i32 @llvm.smin.i32(i32 %29, i32 %30) #14
  %33 = call i32 @llvm.smin.i32(i32 %32, i32 %31) #14
  %34 = ashr i32 %33, 1
  %35 = icmp ult i32 %33, 2
  %36 = call i32 @llvm.ctlz.i32(i32 %34, i1 false) #14, !range !17
  %37 = sub nuw nsw i32 32, %36
  %38 = call i32 @llvm.smin.i32(i32 %37, i32 11) #14
  %39 = select i1 %35, i32 0, i32 %38
  call fastcc void @credit_entropy_bits(i32 noundef %39) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  %40 = load i32, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3), align 4
  %41 = ashr i32 %40, 3
  %42 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_input_randomness, i32 0, i32 1), align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %9
  %45 = tail call ptr @llvm.thread.pointer() #14
  %46 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 8
  %48 = lshr i32 %47, 5
  %49 = getelementptr i32, ptr @__cpu_online_mask, i32 %48
  %50 = load volatile i32, ptr %49, align 4
  %51 = and i32 %47, 31
  %52 = shl nuw i32 1, %51
  %53 = and i32 %52, %50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %44
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !18
  %56 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_input_randomness, i32 0, i32 7), align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %58, %55
  %59 = phi ptr [ %63, %58 ], [ %56, %55 ]
  %60 = load volatile ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.tracepoint_func, ptr %59, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  call void %60(ptr noundef %62, i32 noundef %41) #14
  %63 = getelementptr %struct.tracepoint_func, ptr %59, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %58

66:                                               ; preds = %58, %55
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !19
  br label %67

67:                                               ; preds = %66, %44, %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @add_interrupt_randomness(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #8, !srcloc !12
  %6 = add i32 %5, ptrtoint (ptr @irq_randomness to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = add i32 %5, ptrtoint (ptr @__irq_regs to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = load ptr, ptr %9, align 4
  %11 = load volatile i32, ptr @jiffies, align 64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !9
  %12 = call i32 @read_current_timer(ptr noundef nonnull %2) #14
  %13 = icmp ne i32 %12, 0
  %14 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = icmp eq ptr %10, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.fast_pool, ptr %7, i32 0, i32 2
  %21 = load volatile i16, ptr %20, align 4
  %22 = icmp ugt i16 %21, 17
  %23 = select i1 %22, i16 0, i16 %21
  %24 = zext i16 %23 to i32
  %25 = add nuw nsw i16 %23, 1
  %26 = getelementptr i32, ptr %10, i32 %24
  store volatile i16 %25, ptr %20, align 4
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %19, %17, %1
  %29 = phi i32 [ %14, %1 ], [ %27, %19 ], [ 0, %17 ]
  %30 = xor i32 %29, %0
  %31 = load i32, ptr %7, align 4
  %32 = xor i32 %30, %31
  store i32 %32, ptr %7, align 4
  %33 = getelementptr [4 x i32], ptr %7, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = xor i32 %34, %11
  store i32 %35, ptr %33, align 4
  %36 = icmp eq ptr %10, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = getelementptr [18 x i32], ptr %10, i32 0, i32 15
  %39 = load i32, ptr %38, align 4
  br label %43

40:                                               ; preds = %28
  %41 = call ptr @llvm.returnaddress(i32 0)
  %42 = ptrtoint ptr %41 to i32
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %39, %37 ], [ %42, %40 ]
  %45 = getelementptr [4 x i32], ptr %7, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = xor i32 %46, %44
  %48 = getelementptr [4 x i32], ptr %7, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %35, %32
  %51 = add i32 %49, %47
  %52 = call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 6) #14
  %53 = call i32 @llvm.fshl.i32(i32 %49, i32 %49, i32 27) #14
  %54 = xor i32 %53, %50
  %55 = xor i32 %51, %52
  %56 = add i32 %55, %50
  %57 = add i32 %54, %51
  %58 = call i32 @llvm.fshl.i32(i32 %55, i32 %55, i32 16) #14
  %59 = call i32 @llvm.fshl.i32(i32 %54, i32 %54, i32 14) #14
  %60 = xor i32 %59, %56
  %61 = xor i32 %58, %57
  %62 = add i32 %61, %56
  %63 = add i32 %60, %57
  %64 = call i32 @llvm.fshl.i32(i32 %61, i32 %61, i32 6) #14
  %65 = call i32 @llvm.fshl.i32(i32 %60, i32 %60, i32 27) #14
  %66 = xor i32 %65, %62
  %67 = xor i32 %64, %63
  %68 = add i32 %67, %62
  %69 = add i32 %66, %63
  %70 = call i32 @llvm.fshl.i32(i32 %67, i32 %67, i32 16) #14
  %71 = call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 14) #14
  %72 = xor i32 %71, %68
  %73 = xor i32 %70, %69
  store i32 %68, ptr %7, align 4
  store i32 %73, ptr %33, align 4
  store i32 %69, ptr %45, align 4
  store i32 %72, ptr %48, align 4
  %74 = getelementptr inbounds %struct.fast_pool, ptr %7, i32 0, i32 3
  %75 = load i8, ptr %74, align 2
  %76 = add i8 %75, 1
  store i8 %76, ptr %74, align 2
  %77 = load i32, ptr @crng_init, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86, !prof !11

79:                                               ; preds = %43
  %80 = icmp ugt i8 %76, 63
  br i1 %80, label %81, label %101

81:                                               ; preds = %79
  %82 = call fastcc i32 @crng_fast_load(ptr noundef %7, i32 noundef 16)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %81
  store i8 0, ptr %74, align 2
  %85 = getelementptr inbounds %struct.fast_pool, ptr %7, i32 0, i32 1
  store i32 %11, ptr %85, align 4
  br label %101

86:                                               ; preds = %43
  %87 = icmp ult i8 %76, 64
  br i1 %87, label %88, label %94

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.fast_pool, ptr %7, i32 0, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = sub i32 100, %11
  %92 = add i32 %91, %90
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %88, %86
  %95 = call i32 @_raw_spin_trylock(ptr noundef nonnull @input_pool) #14
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.fast_pool, ptr %7, i32 0, i32 1
  store i32 %11, ptr %98, align 4
  call fastcc void @__mix_pool_bytes(ptr noundef %7, i32 noundef 16)
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  %99 = load i16, ptr @input_pool, align 4
  %100 = add i16 %99, 1
  store i16 %100, ptr @input_pool, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !23
  store i8 0, ptr %74, align 2
  call fastcc void @credit_entropy_bits(i32 noundef 1)
  br label %101

101:                                              ; preds = %97, %94, %88, %84, %81, %79
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @crng_fast_load(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !15
  %4 = tail call i32 @_raw_spin_trylock(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #14, !srcloc !16
  br label %40

7:                                                ; preds = %2
  %8 = load i32, ptr @crng_init, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i32, ptr @crng_init_cnt, align 4
  %12 = icmp ne i32 %1, 0
  %13 = icmp slt i32 %11, 64
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %16, label %34

15:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %3) #14
  br label %40

16:                                               ; preds = %16, %10
  %17 = phi ptr [ %26, %16 ], [ %0, %10 ]
  %18 = phi i32 [ %28, %16 ], [ %1, %10 ]
  %19 = phi i32 [ %29, %16 ], [ 0, %10 ]
  %20 = phi i32 [ %27, %16 ], [ %11, %10 ]
  %21 = load i8, ptr %17, align 1
  %22 = srem i32 %20, 32
  %23 = getelementptr i8, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 0), i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = xor i8 %24, %21
  store i8 %25, ptr %23, align 1
  %26 = getelementptr i8, ptr %17, i32 1
  %27 = add nsw i32 %20, 1
  %28 = add i32 %18, -1
  %29 = add nuw i32 %19, 1
  %30 = icmp ne i32 %28, 0
  %31 = icmp slt i32 %20, 63
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %16, label %33

33:                                               ; preds = %16
  store i32 %27, ptr @crng_init_cnt, align 4
  br label %34

34:                                               ; preds = %33, %10
  %35 = phi i32 [ %29, %33 ], [ 0, %10 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %3) #14
  %36 = load i32, ptr @crng_init_cnt, align 4
  %37 = icmp sgt i32 %36, 63
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  tail call fastcc void @invalidate_batched_entropy()
  store i32 1, ptr @crng_init, align 4
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #15
  br label %40

40:                                               ; preds = %38, %34, %15, %6
  %41 = phi i32 [ 0, %15 ], [ 0, %6 ], [ %35, %38 ], [ %35, %34 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__mix_pool_bytes(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mix_pool_bytes_nolock, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #14
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !24
  %19 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mix_pool_bytes_nolock, i32 0, i32 7), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %26, %21 ], [ %19, %18 ]
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tracepoint_func, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %23(ptr noundef %25, i32 noundef %1, i32 noundef %4) #14
  %26 = getelementptr %struct.tracepoint_func, ptr %22, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %21

29:                                               ; preds = %21, %18
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !25
  br label %30

30:                                               ; preds = %29, %7, %2
  %31 = load i16, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 2), align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 1), align 4
  %34 = zext i16 %33 to i32
  %35 = icmp eq i32 %1, 0
  br i1 %35, label %85, label %36

36:                                               ; preds = %36, %30
  %37 = phi ptr [ %42, %36 ], [ %0, %30 ]
  %38 = phi i32 [ %83, %36 ], [ %32, %30 ]
  %39 = phi i32 [ %47, %36 ], [ %34, %30 ]
  %40 = phi i32 [ %41, %36 ], [ %1, %30 ]
  %41 = add i32 %40, -1
  %42 = getelementptr i8, ptr %37, i32 1
  %43 = load i8, ptr %37, align 1
  %44 = zext i8 %43 to i32
  %45 = tail call i32 @llvm.fshl.i32(i32 %44, i32 %44, i32 %38) #14
  %46 = add nuw nsw i32 %39, 127
  %47 = and i32 %46, 127
  %48 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %47
  %49 = load i32, ptr %48, align 4
  %50 = xor i32 %45, %49
  %51 = add nuw nsw i32 %39, 103
  %52 = and i32 %51, 127
  %53 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %52
  %54 = load i32, ptr %53, align 4
  %55 = xor i32 %50, %54
  %56 = add nuw nsw i32 %39, 75
  %57 = and i32 %56, 127
  %58 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %57
  %59 = load i32, ptr %58, align 4
  %60 = xor i32 %55, %59
  %61 = add nuw nsw i32 %39, 50
  %62 = and i32 %61, 127
  %63 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %62
  %64 = load i32, ptr %63, align 4
  %65 = xor i32 %60, %64
  %66 = add nuw nsw i32 %39, 24
  %67 = and i32 %66, 127
  %68 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %67
  %69 = load i32, ptr %68, align 4
  %70 = xor i32 %65, %69
  %71 = and i32 %39, 127
  %72 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = xor i32 %70, %73
  %75 = lshr i32 %74, 3
  %76 = and i32 %74, 7
  %77 = getelementptr [8 x i32], ptr @twist_table, i32 0, i32 %76
  %78 = load i32, ptr %77, align 4
  %79 = xor i32 %75, %78
  store i32 %79, ptr %48, align 4
  %80 = icmp eq i32 %47, 0
  %81 = select i1 %80, i32 14, i32 7
  %82 = add nuw nsw i32 %81, %38
  %83 = and i32 %82, 31
  %84 = icmp eq i32 %41, 0
  br i1 %84, label %85, label %36

85:                                               ; preds = %36, %30
  %86 = phi i32 [ %34, %30 ], [ %47, %36 ]
  %87 = phi i32 [ %32, %30 ], [ %83, %36 ]
  %88 = trunc i32 %87 to i16
  store i16 %88, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 2), align 2
  %89 = trunc i32 %86 to i16
  store i16 %89, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @credit_entropy_bits(i32 noundef %0) unnamed_addr #0 {
  %2 = shl i32 %0, 3
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %74, label %4

4:                                                ; preds = %1
  %5 = icmp slt i32 %2, 0
  br label %6

6:                                                ; preds = %36, %4
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3), align 4
  br i1 %5, label %8, label %10

8:                                                ; preds = %6
  %9 = add i32 %7, %2
  br label %23

10:                                               ; preds = %10, %6
  %11 = phi i32 [ %19, %10 ], [ %2, %6 ]
  %12 = phi i32 [ %18, %10 ], [ %7, %6 ]
  %13 = tail call i32 @llvm.smin.i32(i32 %11, i32 16384)
  %14 = sub i32 32768, %12
  %15 = mul i32 %13, 3
  %16 = mul i32 %15, %14
  %17 = lshr i32 %16, 17
  %18 = add i32 %17, %12
  %19 = sub i32 %11, %13
  %20 = icmp slt i32 %18, 32766
  %21 = icmp ne i32 %19, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %10, label %23, !prof !11

23:                                               ; preds = %10, %8
  %24 = phi i32 [ %9, %8 ], [ %18, %10 ]
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28, !prof !11

26:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 692, i32 noundef 9, ptr noundef null) #14
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %24) #15
  br label %30

28:                                               ; preds = %23
  %29 = tail call i32 @llvm.smin.i32(i32 %24, i32 32768)
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ 0, %26 ], [ %29, %28 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !26
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3)) #14, !srcloc !27
  br label %32

32:                                               ; preds = %32, %30
  %33 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3), i32 %7, i32 %31) #14, !srcloc !28
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %32

36:                                               ; preds = %32
  %37 = extractvalue { i32, i32 } %33, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !29
  %38 = icmp eq i32 %37, %7
  br i1 %38, label %39, label %6

39:                                               ; preds = %36
  %40 = ashr i32 %31, 3
  %41 = tail call ptr @llvm.returnaddress(i32 0)
  %42 = ptrtoint ptr %41 to i32
  %43 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_credit_entropy_bits, i32 0, i32 1), align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %39
  %46 = tail call ptr @llvm.thread.pointer() #14
  %47 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 5
  %50 = getelementptr i32, ptr @__cpu_online_mask, i32 %49
  %51 = load volatile i32, ptr %50, align 4
  %52 = and i32 %48, 31
  %53 = shl nuw i32 1, %52
  %54 = and i32 %53, %51
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %45
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !30
  %57 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_credit_entropy_bits, i32 0, i32 7), align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %59, %56
  %60 = phi ptr [ %64, %59 ], [ %57, %56 ]
  %61 = load volatile ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.tracepoint_func, ptr %60, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  tail call void %61(ptr noundef %63, i32 noundef %0, i32 noundef %40, i32 noundef %42) #14
  %64 = getelementptr %struct.tracepoint_func, ptr %60, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %59

67:                                               ; preds = %59, %56
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !31
  br label %68

68:                                               ; preds = %67, %45, %39
  %69 = load i32, ptr @crng_init, align 4
  %70 = icmp slt i32 %69, 2
  %71 = icmp sgt i32 %31, 1023
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  tail call fastcc void @crng_reseed()
  br label %74

74:                                               ; preds = %73, %68, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @add_disk_randomness(ptr noundef readonly %0) #0 {
  %2 = alloca %struct.anon.95, align 4
  %3 = alloca i32, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %73, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 17
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %73, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %0, align 8
  %11 = shl i32 %10, 20
  %12 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %11, %13
  %15 = add i32 %14, 256
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #14
  %16 = load volatile i32, ptr @jiffies, align 64
  store i32 %16, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !9
  %17 = call i32 @read_current_timer(ptr noundef nonnull %3) #14
  %18 = icmp eq i32 %17, 0
  %19 = load i32, ptr %3, align 4
  %20 = select i1 %18, i32 %19, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %21 = getelementptr inbounds %struct.anon.95, ptr %2, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.anon.95, ptr %2, i32 0, i32 2
  store i32 %15, ptr %22, align 4
  call fastcc void @mix_pool_bytes(ptr noundef nonnull %2, i32 noundef 12) #14
  %23 = load volatile i32, ptr %7, align 4
  %24 = sub i32 %16, %23
  store volatile i32 %16, ptr %7, align 4
  %25 = getelementptr inbounds %struct.timer_rand_state, ptr %7, i32 0, i32 1
  %26 = load volatile i32, ptr %25, align 4
  %27 = sub i32 %24, %26
  store volatile i32 %24, ptr %25, align 4
  %28 = getelementptr inbounds %struct.timer_rand_state, ptr %7, i32 0, i32 2
  %29 = load volatile i32, ptr %28, align 4
  %30 = sub i32 %27, %29
  store volatile i32 %27, ptr %28, align 4
  %31 = call i32 @llvm.abs.i32(i32 %24, i1 false) #14
  %32 = call i32 @llvm.abs.i32(i32 %27, i1 false) #14
  %33 = call i32 @llvm.abs.i32(i32 %30, i1 false) #14
  %34 = call i32 @llvm.smin.i32(i32 %31, i32 %32) #14
  %35 = call i32 @llvm.smin.i32(i32 %34, i32 %33) #14
  %36 = ashr i32 %35, 1
  %37 = icmp ult i32 %35, 2
  %38 = call i32 @llvm.ctlz.i32(i32 %36, i1 false) #14, !range !17
  %39 = sub nuw nsw i32 32, %38
  %40 = call i32 @llvm.smin.i32(i32 %39, i32 11) #14
  %41 = select i1 %37, i32 0, i32 %40
  call fastcc void @credit_entropy_bits(i32 noundef %41) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #14
  %42 = load i32, ptr %0, align 8
  %43 = shl i32 %42, 20
  %44 = load i32, ptr %12, align 4
  %45 = or i32 %43, %44
  %46 = load i32, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3), align 4
  %47 = ashr i32 %46, 3
  %48 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_disk_randomness, i32 0, i32 1), align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %9
  %51 = tail call ptr @llvm.thread.pointer() #14
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
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !32
  %62 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_add_disk_randomness, i32 0, i32 7), align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %64, %61
  %65 = phi ptr [ %69, %64 ], [ %62, %61 ]
  %66 = load volatile ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.tracepoint_func, ptr %65, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  call void %66(ptr noundef %68, i32 noundef %45, i32 noundef %47) #14
  %69 = getelementptr %struct.tracepoint_func, ptr %65, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %64

72:                                               ; preds = %64, %61
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !33
  br label %73

73:                                               ; preds = %72, %50, %9, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @get_random_bytes(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [64 x i8], align 4
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = load i1, ptr @_warn_unseeded_randomness.print_once, align 1
  %6 = load i32, ptr @crng_init, align 4
  %7 = icmp sgt i32 %6, 1
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %18, label %9, !prof !34

9:                                                ; preds = %2
  %10 = load volatile ptr, ptr @get_random_bytes.previous, align 4
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  store volatile ptr %4, ptr @get_random_bytes.previous, align 4
  store i1 true, ptr @_warn_unseeded_randomness.print_once, align 1
  %13 = tail call i32 @___ratelimit(ptr noundef nonnull @unseeded_warning, ptr noundef nonnull @__func__._warn_unseeded_randomness) #14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr @crng_init, align 4
  %17 = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.get_random_bytes, ptr noundef %4, i32 noundef %16) #15
  br label %18

18:                                               ; preds = %15, %12, %9, %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false) #14, !annotation !9
  %19 = ptrtoint ptr %4 to i32
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_get_random_bytes, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = tail call ptr @llvm.thread.pointer() #14
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %25, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !35
  %34 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_get_random_bytes, i32 0, i32 7), align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %36, %33
  %37 = phi ptr [ %41, %36 ], [ %34, %33 ]
  %38 = load volatile ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.tracepoint_func, ptr %37, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  tail call void %38(ptr noundef %40, i32 noundef %1, i32 noundef %19) #14
  %41 = getelementptr %struct.tracepoint_func, ptr %37, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %36

44:                                               ; preds = %36, %33
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !36
  br label %45

45:                                               ; preds = %44, %22, %18
  %46 = icmp sgt i32 %1, 63
  br i1 %46, label %47, label %74

47:                                               ; preds = %70, %45
  %48 = phi i32 [ %72, %70 ], [ %1, %45 ]
  %49 = phi ptr [ %71, %70 ], [ %0, %45 ]
  %50 = load i32, ptr @crng_init, align 4
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %63, !prof !10

52:                                               ; preds = %47
  %53 = load volatile i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 1), align 4
  %54 = load volatile i32, ptr @crng_global_init_time, align 4
  %55 = sub i32 %53, %54
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = add i32 %53, 30000
  %59 = load volatile i32, ptr @jiffies, align 64
  %60 = sub i32 %58, %59
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %52
  tail call fastcc void @crng_reseed() #14
  br label %63

63:                                               ; preds = %62, %57, %47
  %64 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  tail call void @chacha_block_generic(ptr noundef nonnull @primary_crng, ptr noundef %49, i32 noundef 20) #14
  %65 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 8), align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  %69 = add i32 %68, 1
  store i32 %69, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  br label %70

70:                                               ; preds = %67, %63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %64) #14
  %71 = getelementptr i8, ptr %49, i32 64
  %72 = add nsw i32 %48, -64
  %73 = icmp sgt i32 %48, 127
  br i1 %73, label %47, label %74

74:                                               ; preds = %70, %45
  %75 = phi ptr [ %0, %45 ], [ %71, %70 ]
  %76 = phi i32 [ %1, %45 ], [ %72, %70 ]
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %100

78:                                               ; preds = %74
  %79 = load i32, ptr @crng_init, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %92, !prof !10

81:                                               ; preds = %78
  %82 = load volatile i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 1), align 4
  %83 = load volatile i32, ptr @crng_global_init_time, align 4
  %84 = sub i32 %82, %83
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = add i32 %82, 30000
  %88 = load volatile i32, ptr @jiffies, align 64
  %89 = sub i32 %87, %88
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86, %81
  tail call fastcc void @crng_reseed() #14
  br label %92

92:                                               ; preds = %91, %86, %78
  %93 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  call void @chacha_block_generic(ptr noundef nonnull @primary_crng, ptr noundef nonnull %3, i32 noundef 20) #14
  %94 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 8), align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  %98 = add i32 %97, 1
  store i32 %98, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  br label %99

99:                                               ; preds = %96, %92
  call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %93) #14
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %75, ptr nonnull align 4 %3, i32 %76, i1 false) #14
  br label %100

100:                                              ; preds = %99, %74
  %101 = phi i32 [ %76, %99 ], [ 64, %74 ]
  call fastcc void @crng_backtrack_protect(ptr noundef nonnull %3, i32 noundef %101) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false) #14
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %3) #14, !srcloc !37
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wait_for_random_bytes() #0 {
  %1 = alloca %struct.wait_queue_entry, align 4
  %2 = load i32, ptr @crng_init, align 4
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %34, label %4, !prof !10

4:                                                ; preds = %31, %0
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %1) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %1, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %1, i32 noundef 0) #14
  %5 = call i32 @prepare_to_wait_event(ptr noundef nonnull @crng_init_wait, ptr noundef nonnull %1, i32 noundef 1) #14
  %6 = load i32, ptr @crng_init, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  call void @finish_wait(ptr noundef nonnull @crng_init_wait, ptr noundef nonnull %1) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #14
  br label %26

9:                                                ; preds = %13, %4
  %10 = phi i32 [ %21, %13 ], [ 100, %4 ]
  %11 = phi i32 [ %15, %13 ], [ %5, %4 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = call i32 @schedule_timeout(i32 noundef %10) #14
  %15 = call i32 @prepare_to_wait_event(ptr noundef nonnull @crng_init_wait, ptr noundef nonnull %1, i32 noundef 1) #14
  %16 = load i32, ptr @crng_init, align 4
  %17 = icmp sgt i32 %16, 1
  %18 = xor i1 %17, true
  %19 = icmp ne i32 %14, 0
  %20 = select i1 %18, i1 true, i1 %19
  %21 = select i1 %20, i32 %14, i32 1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %17, i1 true, i1 %22
  br i1 %23, label %24, label %9

24:                                               ; preds = %13
  call void @finish_wait(ptr noundef nonnull @crng_init_wait, ptr noundef nonnull %1) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #14
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %24, %8
  %27 = phi i32 [ 100, %8 ], [ %21, %24 ]
  %28 = call i32 @llvm.smin.i32(i32 %27, i32 0)
  br label %34

29:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #14
  %30 = call i32 @llvm.smin.i32(i32 %11, i32 0)
  br label %34

31:                                               ; preds = %24
  call fastcc void @try_to_generate_entropy()
  %32 = load i32, ptr @crng_init, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %4, label %34

34:                                               ; preds = %31, %29, %26, %0
  %35 = phi i32 [ %30, %29 ], [ 0, %0 ], [ %28, %26 ], [ 0, %31 ]
  ret i32 %35
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @try_to_generate_entropy() unnamed_addr #0 {
  %1 = alloca %struct.anon.97, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #14
  %5 = getelementptr inbounds i8, ptr %1, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 20, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !9
  %6 = call i32 @read_current_timer(ptr noundef nonnull %2) #14
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr %2, align 4
  %9 = select i1 %7, i32 %8, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  store i32 %9, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !9
  %10 = call i32 @read_current_timer(ptr noundef nonnull %3) #14
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr %3, align 4
  %13 = select i1 %11, i32 %12, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %14 = icmp eq i32 %9, %13
  br i1 %14, label %37, label %15

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.anon.97, ptr %1, i32 0, i32 1
  call void @init_timer_key(ptr noundef %16, ptr noundef nonnull @entropy_timer, i32 noundef 0, ptr noundef null, ptr noundef null) #14
  %17 = load i32, ptr @crng_init, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.anon.97, ptr %1, i32 0, i32 1, i32 0, i32 1
  br label %21

21:                                               ; preds = %28, %19
  %22 = load volatile ptr, ptr %20, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = add i32 %25, 1
  %27 = call i32 @mod_timer(ptr noundef %16, i32 noundef %26) #14
  br label %28

28:                                               ; preds = %24, %21
  call fastcc void @mix_pool_bytes(ptr noundef nonnull %1, i32 noundef 4)
  call void @schedule() #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  store i32 0, ptr %4, align 4, !annotation !9
  %29 = call i32 @read_current_timer(ptr noundef nonnull %4) #14
  %30 = icmp eq i32 %29, 0
  %31 = load i32, ptr %4, align 4
  %32 = select i1 %30, i32 %31, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  store i32 %32, ptr %1, align 4
  %33 = load i32, ptr @crng_init, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %21, label %35

35:                                               ; preds = %28, %15
  %36 = call i32 @del_timer_sync(ptr noundef %16) #14
  call fastcc void @mix_pool_bytes(ptr noundef nonnull %1, i32 noundef 4)
  br label %37

37:                                               ; preds = %35, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rng_is_initialized() #6 {
  %1 = load i32, ptr @crng_init, align 4
  %2 = icmp sgt i32 %1, 1
  ret i1 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @add_random_ready_callback(ptr noundef %0) #0 {
  %2 = load i32, ptr @crng_init, align 4
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %19, label %4, !prof !10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.random_ready_callback, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call zeroext i1 @try_module_get(ptr noundef %6) #14
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @random_ready_list_lock) #14
  %10 = load i32, ptr @crng_init, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %16, label %12, !prof !10

12:                                               ; preds = %8
  %13 = load ptr, ptr @random_ready_list, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %0, ptr %14, align 4
  store ptr %13, ptr %0, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr @random_ready_list, ptr %15, align 4
  store volatile ptr %0, ptr @random_ready_list, align 4
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi ptr [ %6, %8 ], [ null, %12 ]
  %18 = phi i32 [ -114, %8 ], [ 0, %12 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @random_ready_list_lock, i32 noundef %9) #14
  tail call void @module_put(ptr noundef %17) #14
  br label %19

19:                                               ; preds = %16, %4, %1
  %20 = phi i32 [ %18, %16 ], [ -114, %1 ], [ -2, %4 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @del_random_ready_callback(ptr noundef %0) #0 {
  %2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @random_ready_list_lock) #14
  %3 = load volatile ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  store volatile ptr %3, ptr %7, align 4
  store volatile ptr %0, ptr %0, align 4
  store ptr %0, ptr %6, align 4
  %9 = getelementptr inbounds %struct.random_ready_callback, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @random_ready_list_lock, i32 noundef %2) #14
  tail call void @module_put(ptr noundef %12) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_random_bytes_arch(ptr nocapture readnone %0, i32 noundef %1) #0 {
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_get_random_bytes_arch, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #14
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !38
  %19 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_get_random_bytes_arch, i32 0, i32 7), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %26, %21 ], [ %19, %18 ]
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tracepoint_func, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %23(ptr noundef %25, i32 noundef %1, i32 noundef %4) #14
  %26 = getelementptr %struct.tracepoint_func, ptr %22, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %21

29:                                               ; preds = %21, %18
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !39
  br label %30

30:                                               ; preds = %29, %7, %2
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @rand_initialize() local_unnamed_addr #3 section ".init.text" {
  tail call fastcc void @init_std_data() #16
  %1 = load i1, ptr @crng_need_final_init, align 1
  br i1 %1, label %2, label %3

2:                                                ; preds = %0
  tail call fastcc void @crng_finalize_init()
  br label %3

3:                                                ; preds = %2, %0
  tail call fastcc void @crng_initialize_primary() #16
  %4 = load volatile i32, ptr @jiffies, align 64
  store i32 %4, ptr @crng_global_init_time, align 4
  %5 = load i32, ptr @ratelimit_disable, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  store i32 0, ptr getelementptr inbounds (%struct.ratelimit_state, ptr @urandom_warning, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.ratelimit_state, ptr @unseeded_warning, i32 0, i32 1), align 4
  br label %8

8:                                                ; preds = %7, %3
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @init_std_data() unnamed_addr #3 section ".init.text" {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #14
  %4 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #14
  store i64 %4, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  call fastcc void @mix_pool_bytes(ptr noundef nonnull %1, i32 noundef 8)
  br label %5

5:                                                ; preds = %5, %0
  %6 = phi i32 [ 512, %0 ], [ %11, %5 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !9
  %7 = call i32 @read_current_timer(ptr noundef nonnull %3) #14
  %8 = icmp eq i32 %7, 0
  %9 = load i32, ptr %3, align 4
  %10 = select i1 %8, i32 %9, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  store i32 %10, ptr %2, align 4
  call fastcc void @mix_pool_bytes(ptr noundef nonnull %2, i32 noundef 4)
  %11 = add nsw i32 %6, -4
  %12 = icmp ugt i32 %6, 4
  br i1 %12, label %5, label %13

13:                                               ; preds = %5
  %14 = tail call ptr @llvm.thread.pointer() #14
  %15 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 92
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nsproxy, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  call fastcc void @mix_pool_bytes(ptr noundef %18, i32 noundef 390)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @crng_finalize_init() unnamed_addr #0 {
  %1 = load ptr, ptr @system_wq, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i1 true, ptr @crng_need_final_init, align 1
  br label %30

4:                                                ; preds = %0
  tail call fastcc void @invalidate_batched_entropy()
  store i32 2, ptr @crng_init, align 4
  store i1 false, ptr @crng_need_final_init, align 1
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @random_ready_list_lock) #14
  %6 = load ptr, ptr @random_ready_list, align 4
  %7 = icmp eq ptr %6, @random_ready_list
  br i1 %7, label %19, label %8

8:                                                ; preds = %8, %4
  %9 = phi ptr [ %10, %8 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.random_ready_callback, ptr %9, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %10, ptr %14, align 4
  store volatile ptr %9, ptr %9, align 4
  store ptr %9, ptr %13, align 4
  %16 = getelementptr inbounds %struct.random_ready_callback, ptr %9, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  tail call void %17(ptr noundef %9) #14
  tail call void @module_put(ptr noundef %12) #14
  %18 = icmp eq ptr %10, @random_ready_list
  br i1 %18, label %19, label %8

19:                                               ; preds = %8, %4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @random_ready_list_lock, i32 noundef %5) #14
  tail call void @__wake_up(ptr noundef nonnull @crng_init_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  tail call void @kill_fasync(ptr noundef nonnull @fasync, i32 noundef 29, i32 noundef 1) #14
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #15
  %21 = load i32, ptr getelementptr inbounds (%struct.ratelimit_state, ptr @unseeded_warning, i32 0, i32 4), align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %21) #15
  store i32 0, ptr getelementptr inbounds (%struct.ratelimit_state, ptr @unseeded_warning, i32 0, i32 4), align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i32, ptr getelementptr inbounds (%struct.ratelimit_state, ptr @urandom_warning, i32 0, i32 4), align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %26) #15
  store i32 0, ptr getelementptr inbounds (%struct.ratelimit_state, ptr @urandom_warning, i32 0, i32 4), align 4
  br label %30

30:                                               ; preds = %28, %25, %3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @crng_initialize_primary() unnamed_addr #3 section ".init.text" {
  %1 = tail call fastcc i32 @_extract_entropy(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 0), i32 noundef 48)
  %2 = tail call fastcc zeroext i1 @crng_init_try_arch_early() #16
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load i8, ptr @trust_cpu, align 1, !range !40
  %5 = icmp ne i8 %4, 0
  %6 = load i32, ptr @crng_init, align 4
  %7 = icmp slt i32 %6, 2
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  tail call fastcc void @invalidate_batched_entropy()
  store i32 2, ptr @crng_init, align 4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #15
  br label %11

11:                                               ; preds = %9, %3, %0
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = add i32 %12, -30001
  store i32 %13, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rand_initialize_disk(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 12) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  store i32 -30000, ptr %3, align 8
  %6 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 17
  store ptr %3, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @random_read(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = tail call i32 @wait_for_random_bytes()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @urandom_read_nowarn(ptr noundef %1, i32 noundef %2)
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ %8, %7 ], [ %5, %4 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @random_write(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false) #14, !annotation !9
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %22, %4
  %8 = phi i32 [ %23, %22 ], [ %2, %4 ]
  %9 = phi ptr [ %24, %22 ], [ %1, %4 ]
  %10 = call i32 @llvm.umin.i32(i32 %8, i32 64) #14
  %11 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %9, i32 %10, i32 -1090519040) #18, !srcloc !41
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27, !prof !10

14:                                               ; preds = %7
  %15 = tail call ptr @llvm.thread.pointer() #14
  %16 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %16) #8, !srcloc !42
  %18 = and i32 %17, -13
  %19 = or i32 %18, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #14, !srcloc !43
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !44
  %20 = call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %9, i32 noundef %10) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #14, !srcloc !43
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !44
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27, !prof !10

22:                                               ; preds = %14
  %23 = sub i32 %8, %10
  %24 = getelementptr i8, ptr %9, i32 %10
  call fastcc void @mix_pool_bytes(ptr noundef nonnull %5, i32 noundef %10) #14
  %25 = call i32 @__cond_resched() #14
  %26 = icmp eq i32 %23, 0
  br i1 %26, label %28, label %7

27:                                               ; preds = %14, %7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  br label %29

28:                                               ; preds = %22, %4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  br label %29

29:                                               ; preds = %28, %27
  %30 = phi i32 [ %2, %28 ], [ -14, %27 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @random_poll(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  tail call void %5(ptr noundef %0, ptr noundef nonnull @crng_init_wait, ptr noundef nonnull %1) #14
  %8 = load ptr, ptr %1, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void %8(ptr noundef %0, ptr noundef nonnull @random_write_wait, ptr noundef nonnull %1) #14
  br label %11

11:                                               ; preds = %10, %7, %4, %2
  %12 = load i32, ptr @crng_init, align 4
  %13 = icmp sgt i32 %12, 1
  %14 = select i1 %13, i32 65, i32 0, !prof !10
  %15 = load i32, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3), align 4
  %16 = ashr i32 %15, 3
  %17 = load i32, ptr @random_write_wakeup_bits, align 4
  %18 = icmp slt i32 %16, %17
  %19 = or i32 %14, 260
  %20 = select i1 %18, i32 %19, i32 %14
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @random_ioctl(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %2 to ptr
  switch i32 %1, label %79 [
    i32 -2147200512, label %5
    i32 1074024961, label %16
    i32 1074287107, label %32
    i32 20996, label %61
    i32 20998, label %61
    i32 20999, label %71
  ]

5:                                                ; preds = %3
  %6 = load i32, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3), align 4
  %7 = ashr i32 %6, 3
  %8 = tail call ptr @llvm.thread.pointer() #14
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #8, !srcloc !42
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #14, !srcloc !43
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !44
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %4, i32 %7, i32 -1090519041) #14, !srcloc !45
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #14, !srcloc !43
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !44
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 0, i32 -14
  br label %79

16:                                               ; preds = %3
  %17 = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %17, label %18, label %79

18:                                               ; preds = %16
  %19 = tail call ptr @llvm.thread.pointer() #14
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #8, !srcloc !42
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #14, !srcloc !43
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !44
  %24 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #14, !srcloc !46
  %25 = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #14, !srcloc !43
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !44
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %79

27:                                               ; preds = %18
  %28 = extractvalue { i32, i32 } %24, 1
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %79, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @llvm.smin.i32(i32 %28, i32 4096) #14
  tail call fastcc void @credit_entropy_bits(i32 noundef %31) #14
  br label %79

32:                                               ; preds = %3
  %33 = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %33, label %34, label %79

34:                                               ; preds = %32
  %35 = getelementptr i32, ptr %4, i32 1
  %36 = tail call ptr @llvm.thread.pointer() #14
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %38 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #8, !srcloc !42
  %39 = and i32 %38, -13
  %40 = or i32 %39, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %40) #14, !srcloc !43
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !44
  %41 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %4, i32 -1090519041) #14, !srcloc !47
  %42 = extractvalue { i32, i32 } %41, 0
  %43 = extractvalue { i32, i32 } %41, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #14, !srcloc !43
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !44
  %44 = icmp eq i32 %42, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %34
  %46 = icmp slt i32 %43, 0
  br i1 %46, label %79, label %47

47:                                               ; preds = %45
  %48 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %37) #8, !srcloc !42
  %49 = and i32 %48, -13
  %50 = or i32 %49, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #14, !srcloc !43
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !44
  %51 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %35, i32 -1090519041) #14, !srcloc !48
  %52 = extractvalue { i32, i32 } %51, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #14, !srcloc !43
  tail call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !44
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %47
  %55 = extractvalue { i32, i32 } %51, 1
  %56 = getelementptr i32, ptr %4, i32 2
  %57 = tail call fastcc i32 @write_pool(ptr noundef %56, i32 noundef %55)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %54
  %60 = tail call i32 @llvm.smin.i32(i32 %43, i32 4096) #14
  tail call fastcc void @credit_entropy_bits(i32 noundef %60) #14
  br label %79

61:                                               ; preds = %3, %3
  %62 = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %62, label %63, label %79

63:                                               ; preds = %61
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !49
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3)) #14, !srcloc !27
  %64 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3)) #14, !srcloc !50
  %65 = extractvalue { i32, i32 } %64, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !51
  %66 = icmp ne i32 %65, 0
  %67 = load i32, ptr @random_write_wakeup_bits, align 4
  %68 = icmp ne i32 %67, 0
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  tail call void @__wake_up(ptr noundef nonnull @random_write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  tail call void @kill_fasync(ptr noundef nonnull @fasync, i32 noundef 29, i32 noundef 2) #14
  br label %79

71:                                               ; preds = %3
  %72 = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %72, label %73, label %79

73:                                               ; preds = %71
  %74 = load i32, ptr @crng_init, align 4
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  tail call fastcc void @crng_reseed()
  %77 = load volatile i32, ptr @jiffies, align 64
  %78 = add i32 %77, -1
  store volatile i32 %78, ptr @crng_global_init_time, align 4
  br label %79

79:                                               ; preds = %76, %73, %71, %70, %63, %61, %59, %54, %47, %45, %34, %32, %30, %27, %18, %16, %5, %3
  %80 = phi i32 [ 0, %76 ], [ 0, %59 ], [ %15, %5 ], [ -1, %16 ], [ -14, %18 ], [ -1, %32 ], [ -14, %34 ], [ -22, %45 ], [ -14, %47 ], [ %57, %54 ], [ -1, %61 ], [ 0, %70 ], [ 0, %63 ], [ -1, %71 ], [ -61, %73 ], [ -22, %3 ], [ 0, %30 ], [ -22, %27 ]
  ret i32 %80
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @random_fasync(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call i32 @fasync_helper(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @fasync) #14
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @urandom_read(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) #0 {
  %5 = load i32, ptr @crng_init, align 4
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %18, label %7, !prof !10

7:                                                ; preds = %4
  %8 = load i32, ptr @urandom_read.maxwarn, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = add nsw i32 %8, -1
  store i32 %11, ptr @urandom_read.maxwarn, align 4
  %12 = tail call i32 @___ratelimit(ptr noundef nonnull @urandom_warning, ptr noundef nonnull @__func__.urandom_read) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @llvm.thread.pointer() #14
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 85
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %16, i32 noundef %2) #15
  br label %18

18:                                               ; preds = %14, %10, %7, %4
  %19 = tail call fastcc i32 @urandom_read_nowarn(ptr noundef %1, i32 noundef %2)
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_getrandom(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = inttoptr i32 %0 to ptr
  %5 = icmp ugt i32 %2, 7
  %6 = and i32 %2, 6
  %7 = icmp eq i32 %6, 6
  %8 = or i1 %5, %7
  br i1 %8, label %24, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @llvm.umin.i32(i32 %1, i32 2147483647) #14
  %11 = and i32 %2, 4
  %12 = icmp ne i32 %11, 0
  %13 = load i32, ptr @crng_init, align 4
  %14 = icmp sgt i32 %13, 1
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %22, label %16, !prof !34

16:                                               ; preds = %9
  %17 = and i32 %2, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = tail call i32 @wait_for_random_bytes() #14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24, !prof !10

22:                                               ; preds = %19, %9
  %23 = tail call fastcc i32 @urandom_read_nowarn(ptr noundef %4, i32 noundef %10) #14
  br label %24

24:                                               ; preds = %22, %19, %16, %3
  %25 = phi i32 [ %23, %22 ], [ -22, %3 ], [ -11, %16 ], [ %20, %19 ]
  ret i32 %25
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @random_sysctls_init() #3 section ".init.text" {
  tail call void @__register_sysctl_init(ptr noundef nonnull @.str.42, ptr noundef nonnull @random_table, ptr noundef nonnull @.str.43) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @get_random_u64() #0 {
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = load i1, ptr @_warn_unseeded_randomness.print_once, align 1
  %3 = load i32, ptr @crng_init, align 4
  %4 = icmp sgt i32 %3, 1
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %15, label %6, !prof !34

6:                                                ; preds = %0
  %7 = load volatile ptr, ptr @get_random_u64.previous, align 4
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  store volatile ptr %1, ptr @get_random_u64.previous, align 4
  store i1 true, ptr @_warn_unseeded_randomness.print_once, align 1
  %10 = tail call i32 @___ratelimit(ptr noundef nonnull @unseeded_warning, ptr noundef nonnull @__func__._warn_unseeded_randomness) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr @crng_init, align 4
  %14 = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.get_random_u64, ptr noundef %1, i32 noundef %13) #15
  br label %15

15:                                               ; preds = %12, %9, %6, %0
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #8, !srcloc !12
  %19 = add i32 %18, ptrtoint (ptr @batched_entropy_u64 to i32)
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.batched_entropy, ptr %20, i32 0, i32 2
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #14
  %23 = getelementptr inbounds %struct.batched_entropy, ptr %20, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %15
  %28 = load i32, ptr @crng_init, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %41, !prof !10

30:                                               ; preds = %27
  %31 = load volatile i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 1), align 4
  %32 = load volatile i32, ptr @crng_global_init_time, align 4
  %33 = sub i32 %31, %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = add i32 %31, 30000
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = sub i32 %36, %37
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %30
  tail call fastcc void @crng_reseed() #14
  br label %41

41:                                               ; preds = %40, %35, %27
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  tail call void @chacha_block_generic(ptr noundef nonnull @primary_crng, ptr noundef %20, i32 noundef 20) #14
  %43 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 8), align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  br label %48

48:                                               ; preds = %45, %41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %42) #14
  store i32 0, ptr %23, align 8
  br label %49

49:                                               ; preds = %48, %15
  %50 = phi i32 [ 0, %48 ], [ %24, %15 ]
  %51 = add i32 %50, 1
  store i32 %51, ptr %23, align 8
  %52 = getelementptr [8 x i64], ptr %20, i32 0, i32 %50
  %53 = load i64, ptr %52, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #14
  ret i64 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_random_u32() #0 {
  %1 = tail call ptr @llvm.returnaddress(i32 0)
  %2 = load i1, ptr @_warn_unseeded_randomness.print_once, align 1
  %3 = load i32, ptr @crng_init, align 4
  %4 = icmp sgt i32 %3, 1
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %15, label %6, !prof !34

6:                                                ; preds = %0
  %7 = load volatile ptr, ptr @get_random_u32.previous, align 4
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  store volatile ptr %1, ptr @get_random_u32.previous, align 4
  store i1 true, ptr @_warn_unseeded_randomness.print_once, align 1
  %10 = tail call i32 @___ratelimit(ptr noundef nonnull @unseeded_warning, ptr noundef nonnull @__func__._warn_unseeded_randomness) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr @crng_init, align 4
  %14 = tail call i32 (ptr, ...) @_printk_deferred(ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.get_random_u32, ptr noundef %1, i32 noundef %13) #15
  br label %15

15:                                               ; preds = %12, %9, %6, %0
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #8, !srcloc !12
  %19 = add i32 %18, ptrtoint (ptr @batched_entropy_u32 to i32)
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.batched_entropy, ptr %20, i32 0, i32 2
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #14
  %23 = getelementptr inbounds %struct.batched_entropy, ptr %20, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 15
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %15
  %28 = load i32, ptr @crng_init, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %41, !prof !10

30:                                               ; preds = %27
  %31 = load volatile i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 1), align 4
  %32 = load volatile i32, ptr @crng_global_init_time, align 4
  %33 = sub i32 %31, %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = add i32 %31, 30000
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = sub i32 %36, %37
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %30
  tail call fastcc void @crng_reseed() #14
  br label %41

41:                                               ; preds = %40, %35, %27
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  tail call void @chacha_block_generic(ptr noundef nonnull @primary_crng, ptr noundef %20, i32 noundef 20) #14
  %43 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 8), align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  %47 = add i32 %46, 1
  store i32 %47, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  br label %48

48:                                               ; preds = %45, %41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %42) #14
  store i32 0, ptr %23, align 8
  br label %49

49:                                               ; preds = %48, %15
  %50 = phi i32 [ 0, %48 ], [ %24, %15 ]
  %51 = add i32 %50, 1
  store i32 %51, ptr %23, align 8
  %52 = getelementptr [16 x i32], ptr %20, i32 0, i32 %50
  %53 = load i32, ptr %52, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #14
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @randomize_page(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %0, 4095
  %4 = icmp eq i32 %3, 0
  %5 = add i32 %0, 4095
  %6 = and i32 %5, -4096
  %7 = sub i32 %0, %6
  %8 = select i1 %4, i32 0, i32 %7
  %9 = add i32 %8, %1
  %10 = xor i32 %9, -1
  %11 = icmp ugt i32 %6, %10
  %12 = sub i32 -4096, %0
  %13 = or i32 %12, 4095
  %14 = select i1 %11, i32 %13, i32 %9
  %15 = icmp ult i32 %14, 4096
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = lshr i32 %14, 12
  %18 = tail call i32 @get_random_u32() #14
  %19 = urem i32 %18, %17
  %20 = shl nuw i32 %19, 12
  %21 = add i32 %20, %6
  br label %22

22:                                               ; preds = %16, %2
  %23 = phi i32 [ %21, %16 ], [ %6, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @add_hwgenerator_randomness(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  %5 = load i32, ptr @crng_init, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !11

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @crng_fast_load(ptr noundef %0, i32 noundef %1)
  tail call fastcc void @mix_pool_bytes(ptr noundef %0, i32 noundef %8)
  %9 = sub i32 %1, %8
  %10 = getelementptr i8, ptr %0, i32 %8
  %11 = icmp ne i32 %9, 0
  %12 = load i32, ptr @crng_init, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %56

15:                                               ; preds = %7, %3
  %16 = phi i32 [ %9, %7 ], [ %1, %3 ]
  %17 = phi ptr [ %10, %7 ], [ %0, %3 ]
  %18 = load ptr, ptr @system_wq, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %55, label %20

20:                                               ; preds = %15
  %21 = tail call zeroext i1 @kthread_should_stop() #14
  br i1 %21, label %55, label %22

22:                                               ; preds = %20
  %23 = load i32, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3), align 4
  %24 = ashr i32 %23, 3
  %25 = load i32, ptr @random_write_wakeup_bits, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #14
  %28 = call i32 @prepare_to_wait_event(ptr noundef nonnull @random_write_wait, ptr noundef nonnull %4, i32 noundef 1) #14
  %29 = load ptr, ptr @system_wq, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %53, label %31

31:                                               ; preds = %48, %27
  %32 = phi i32 [ %50, %48 ], [ %28, %27 ]
  %33 = phi i32 [ %49, %48 ], [ 30000, %27 ]
  %34 = call zeroext i1 @kthread_should_stop() #14
  br i1 %34, label %53, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3), align 4
  %37 = ashr i32 %36, 3
  %38 = load i32, ptr @random_write_wakeup_bits, align 4
  %39 = icmp sle i32 %37, %38
  %40 = xor i1 %39, true
  %41 = icmp ne i32 %33, 0
  %42 = select i1 %40, i1 true, i1 %41
  %43 = select i1 %42, i32 %33, i32 1
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %39, i1 true, i1 %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %35
  %47 = icmp eq i32 %32, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  %49 = call i32 @schedule_timeout(i32 noundef %43) #14
  %50 = call i32 @prepare_to_wait_event(ptr noundef nonnull @random_write_wait, ptr noundef nonnull %4, i32 noundef 1) #14
  %51 = load ptr, ptr @system_wq, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %31

53:                                               ; preds = %48, %35, %31, %27
  call void @finish_wait(ptr noundef nonnull @random_write_wait, ptr noundef nonnull %4) #14
  br label %54

54:                                               ; preds = %53, %46
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #14
  br label %55

55:                                               ; preds = %54, %22, %20, %15
  call fastcc void @mix_pool_bytes(ptr noundef %17, i32 noundef %16)
  call fastcc void @credit_entropy_bits(i32 noundef %2)
  br label %56

56:                                               ; preds = %55, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mix_pool_bytes(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  %5 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mix_pool_bytes, i32 0, i32 1), align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = tail call ptr @llvm.thread.pointer() #14
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr @__cpu_online_mask, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = and i32 %10, 31
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !52
  %19 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mix_pool_bytes, i32 0, i32 7), align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %21, %18
  %22 = phi ptr [ %26, %21 ], [ %19, %18 ]
  %23 = load volatile ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.tracepoint_func, ptr %22, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void %23(ptr noundef %25, i32 noundef %1, i32 noundef %4) #14
  %26 = getelementptr %struct.tracepoint_func, ptr %22, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %21

29:                                               ; preds = %21, %18
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !53
  br label %30

30:                                               ; preds = %29, %7, %2
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @input_pool) #14
  %32 = load i16, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 2), align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 1), align 4
  %35 = zext i16 %34 to i32
  %36 = icmp eq i32 %1, 0
  br i1 %36, label %86, label %37

37:                                               ; preds = %37, %30
  %38 = phi ptr [ %43, %37 ], [ %0, %30 ]
  %39 = phi i32 [ %84, %37 ], [ %33, %30 ]
  %40 = phi i32 [ %48, %37 ], [ %35, %30 ]
  %41 = phi i32 [ %42, %37 ], [ %1, %30 ]
  %42 = add i32 %41, -1
  %43 = getelementptr i8, ptr %38, i32 1
  %44 = load i8, ptr %38, align 1
  %45 = zext i8 %44 to i32
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 %39) #14
  %47 = add nuw nsw i32 %40, 127
  %48 = and i32 %47, 127
  %49 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = xor i32 %46, %50
  %52 = add nuw nsw i32 %40, 103
  %53 = and i32 %52, 127
  %54 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %53
  %55 = load i32, ptr %54, align 4
  %56 = xor i32 %51, %55
  %57 = add nuw nsw i32 %40, 75
  %58 = and i32 %57, 127
  %59 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = xor i32 %56, %60
  %62 = add nuw nsw i32 %40, 50
  %63 = and i32 %62, 127
  %64 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = xor i32 %61, %65
  %67 = add nuw nsw i32 %40, 24
  %68 = and i32 %67, 127
  %69 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %68
  %70 = load i32, ptr %69, align 4
  %71 = xor i32 %66, %70
  %72 = and i32 %40, 127
  %73 = getelementptr [128 x i32], ptr @input_pool_data, i32 0, i32 %72
  %74 = load i32, ptr %73, align 4
  %75 = xor i32 %71, %74
  %76 = lshr i32 %75, 3
  %77 = and i32 %75, 7
  %78 = getelementptr [8 x i32], ptr @twist_table, i32 0, i32 %77
  %79 = load i32, ptr %78, align 4
  %80 = xor i32 %76, %79
  store i32 %80, ptr %49, align 4
  %81 = icmp eq i32 %48, 0
  %82 = select i1 %81, i32 14, i32 7
  %83 = add nuw nsw i32 %82, %39
  %84 = and i32 %83, 31
  %85 = icmp eq i32 %42, 0
  br i1 %85, label %86, label %37

86:                                               ; preds = %37, %30
  %87 = phi i32 [ %35, %30 ], [ %48, %37 ]
  %88 = phi i32 [ %33, %30 ], [ %84, %37 ]
  %89 = trunc i32 %88 to i16
  store i16 %89, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 2), align 2
  %90 = trunc i32 %87 to i16
  store i16 %90, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 1), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @input_pool, i32 noundef %31) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @add_bootloader_randomness(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call void @add_device_randomness(ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_add_device_randomness(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_add_device_randomness, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_add_device_randomness, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = inttoptr i32 %13 to ptr
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %11, ptr noundef %14) #14
  %15 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %16

16:                                               ; preds = %8, %3
  %17 = phi i32 [ %15, %8 ], [ %6, %3 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_random__mix_pool_bytes(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_random__mix_pool_bytes, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_random__mix_pool_bytes, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = inttoptr i32 %13 to ptr
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %11, ptr noundef %14) #14
  %15 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %16

16:                                               ; preds = %8, %3
  %17 = phi i32 [ %15, %8 ], [ %6, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_credit_entropy_bits(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_credit_entropy_bits, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i32 %15 to ptr
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %11, i32 noundef %13, ptr noundef %16) #14
  %17 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %18

18:                                               ; preds = %8, %3
  %19 = phi i32 [ %17, %8 ], [ %6, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_debit_entropy(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_debit_entropy, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %11) #14
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_add_input_randomness(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_add_input_randomness, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %11) #14
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_add_disk_randomness(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_add_disk_randomness, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 20
  %13 = and i32 %11, 1048575
  %14 = getelementptr inbounds %struct.trace_event_raw_add_disk_randomness, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %12, i32 noundef %13, i32 noundef %15) #14
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_random__get_random_bytes(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_random__get_random_bytes, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_random__get_random_bytes, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = inttoptr i32 %13 to ptr
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %11, ptr noundef %14) #14
  %15 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %16

16:                                               ; preds = %8, %3
  %17 = phi i32 [ %15, %8 ], [ %6, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_random__extract_entropy(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_random__extract_entropy, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i32 %15 to ptr
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %11, i32 noundef %13, ptr noundef %16) #14
  %17 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %18

18:                                               ; preds = %8, %3
  %19 = phi i32 [ %17, %8 ], [ %6, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_urandom_read(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %5, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.trace_event_raw_urandom_read, ptr %5, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %11, i32 noundef %13, i32 noundef %15) #14
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_prandom_u32(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #14
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_prandom_u32, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %11) #14
  %12 = tail call i32 @trace_handle_return(ptr noundef %9) #14
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ %12, %8 ], [ %6, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @invalidate_batched_entropy() unnamed_addr #0 {
  %1 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %23

4:                                                ; preds = %4, %0
  %5 = phi i32 [ %20, %4 ], [ %1, %0 ]
  %6 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, ptrtoint (ptr @batched_entropy_u32 to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr inbounds %struct.batched_entropy, ptr %9, i32 0, i32 2
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #14
  %12 = getelementptr inbounds %struct.batched_entropy, ptr %9, i32 0, i32 1
  store i32 0, ptr %12, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  %13 = load i16, ptr %10, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !23
  %15 = load i32, ptr %6, align 4
  %16 = add i32 %15, ptrtoint (ptr @batched_entropy_u64 to i32)
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.batched_entropy, ptr %17, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %18) #14
  %19 = getelementptr inbounds %struct.batched_entropy, ptr %17, i32 0, i32 1
  store i32 0, ptr %19, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %11) #14
  %20 = tail call i32 @cpumask_next(i32 noundef %5, ptr noundef nonnull @__cpu_possible_mask) #19
  %21 = load i32, ptr @nr_cpu_ids, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %4, label %23

23:                                               ; preds = %4, %0
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @crng_reseed() unnamed_addr #0 {
  %1 = alloca %union.anon.96, align 4
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %1, i8 0, i32 64, i1 false), !annotation !9
  %3 = load i32, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3), align 4
  %4 = ashr i32 %3, 3
  %5 = tail call ptr @llvm.returnaddress(i32 0) #14
  %6 = ptrtoint ptr %5 to i32
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_extract_entropy, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %0
  %10 = tail call ptr @llvm.thread.pointer() #14
  %11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr @__cpu_online_mask, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %12, 31
  %17 = shl nuw i32 1, %16
  %18 = and i32 %17, %15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %9
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !54
  %21 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_extract_entropy, i32 0, i32 7), align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %28, %23 ], [ %21, %20 ]
  %25 = load volatile ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tracepoint_func, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void %25(ptr noundef %27, i32 noundef 32, i32 noundef %4, i32 noundef %6) #14
  %28 = getelementptr %struct.tracepoint_func, ptr %24, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %23

31:                                               ; preds = %23, %20
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !55
  %32 = load i32, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3), align 4
  br label %33

33:                                               ; preds = %31, %9, %0
  %34 = phi i32 [ %3, %0 ], [ %3, %9 ], [ %32, %31 ]
  %35 = icmp sgt i32 %34, 32768
  br i1 %35, label %36, label %37, !prof !11

36:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/char/random.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1299, 0\0A.popsection", ""() #14, !srcloc !56
  unreachable

37:                                               ; preds = %54, %33
  %38 = load volatile i32, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3), align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42, !prof !11

40:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 1304, i32 noundef 9, ptr noundef null) #14
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %38) #15
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi i32 [ 0, %40 ], [ %38, %37 ]
  %44 = lshr i32 %43, 6
  %45 = tail call i32 @llvm.umin.i32(i32 %44, i32 32) #14
  %46 = icmp ult i32 %45, 16
  %47 = select i1 %46, i32 0, i32 %45
  %48 = shl nuw nsw i32 %47, 6
  %49 = tail call i32 @llvm.usub.sat.i32(i32 %43, i32 %48) #14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !57
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3)) #14, !srcloc !27
  br label %50

50:                                               ; preds = %50, %42
  %51 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3), i32 %38, i32 %49) #14, !srcloc !28
  %52 = extractvalue { i32, i32 } %51, 0
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %50

54:                                               ; preds = %50
  %55 = extractvalue { i32, i32 } %51, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !58
  %56 = icmp eq i32 %55, %38
  br i1 %56, label %57, label %37

57:                                               ; preds = %54
  %58 = shl nuw nsw i32 %47, 3
  %59 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_debit_entropy, i32 0, i32 1), align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = tail call ptr @llvm.thread.pointer() #14
  %63 = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 8
  %65 = lshr i32 %64, 5
  %66 = getelementptr i32, ptr @__cpu_online_mask, i32 %65
  %67 = load volatile i32, ptr %66, align 4
  %68 = and i32 %64, 31
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %61
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !59
  %73 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_debit_entropy, i32 0, i32 7), align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %75, %72
  %76 = phi ptr [ %80, %75 ], [ %73, %72 ]
  %77 = load volatile ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.tracepoint_func, ptr %76, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  tail call void %77(ptr noundef %79, i32 noundef %58) #14
  %80 = getelementptr %struct.tracepoint_func, ptr %76, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %75

83:                                               ; preds = %75, %72
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !60
  br label %84

84:                                               ; preds = %83, %61, %57
  %85 = icmp eq i32 %47, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %84
  %87 = load i32, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3), align 4
  %88 = ashr i32 %87, 3
  %89 = load i32, ptr @random_write_wakeup_bits, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  tail call void @__wake_up(ptr noundef nonnull @random_write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #14
  tail call void @kill_fasync(ptr noundef nonnull @fasync, i32 noundef 29, i32 noundef 2) #14
  br label %92

92:                                               ; preds = %91, %86, %84
  %93 = call fastcc i32 @_extract_entropy(ptr noundef nonnull %1, i32 noundef %47) #14
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %172, label %95

95:                                               ; preds = %92
  %96 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !9
  %97 = call i32 @read_current_timer(ptr noundef nonnull %2) #14
  %98 = icmp eq i32 %97, 0
  %99 = load i32, ptr %2, align 4
  %100 = select i1 %98, i32 %99, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %101 = load i32, ptr %1, align 4
  %102 = xor i32 %101, %100
  %103 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 0), align 4
  %104 = xor i32 %102, %103
  store i32 %104, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 0), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !9
  %105 = call i32 @read_current_timer(ptr noundef nonnull %2) #14
  %106 = icmp eq i32 %105, 0
  %107 = load i32, ptr %2, align 4
  %108 = select i1 %106, i32 %107, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %109 = getelementptr inbounds [8 x i32], ptr %1, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = xor i32 %110, %108
  %112 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 1), align 4
  %113 = xor i32 %111, %112
  store i32 %113, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !9
  %114 = call i32 @read_current_timer(ptr noundef nonnull %2) #14
  %115 = icmp eq i32 %114, 0
  %116 = load i32, ptr %2, align 4
  %117 = select i1 %115, i32 %116, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %118 = getelementptr inbounds [8 x i32], ptr %1, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = xor i32 %119, %117
  %121 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 2), align 4
  %122 = xor i32 %120, %121
  store i32 %122, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !9
  %123 = call i32 @read_current_timer(ptr noundef nonnull %2) #14
  %124 = icmp eq i32 %123, 0
  %125 = load i32, ptr %2, align 4
  %126 = select i1 %124, i32 %125, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %127 = getelementptr inbounds [8 x i32], ptr %1, i32 0, i32 3
  %128 = load i32, ptr %127, align 4
  %129 = xor i32 %128, %126
  %130 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 3), align 4
  %131 = xor i32 %129, %130
  store i32 %131, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 3), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !9
  %132 = call i32 @read_current_timer(ptr noundef nonnull %2) #14
  %133 = icmp eq i32 %132, 0
  %134 = load i32, ptr %2, align 4
  %135 = select i1 %133, i32 %134, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %136 = getelementptr inbounds [8 x i32], ptr %1, i32 0, i32 4
  %137 = load i32, ptr %136, align 4
  %138 = xor i32 %137, %135
  %139 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 4), align 4
  %140 = xor i32 %138, %139
  store i32 %140, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 4), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !9
  %141 = call i32 @read_current_timer(ptr noundef nonnull %2) #14
  %142 = icmp eq i32 %141, 0
  %143 = load i32, ptr %2, align 4
  %144 = select i1 %142, i32 %143, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %145 = getelementptr inbounds [8 x i32], ptr %1, i32 0, i32 5
  %146 = load i32, ptr %145, align 4
  %147 = xor i32 %146, %144
  %148 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 5), align 4
  %149 = xor i32 %147, %148
  store i32 %149, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 5), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !9
  %150 = call i32 @read_current_timer(ptr noundef nonnull %2) #14
  %151 = icmp eq i32 %150, 0
  %152 = load i32, ptr %2, align 4
  %153 = select i1 %151, i32 %152, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %154 = getelementptr inbounds [8 x i32], ptr %1, i32 0, i32 6
  %155 = load i32, ptr %154, align 4
  %156 = xor i32 %155, %153
  %157 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 6), align 4
  %158 = xor i32 %156, %157
  store i32 %158, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 6), align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4, !annotation !9
  %159 = call i32 @read_current_timer(ptr noundef nonnull %2) #14
  %160 = icmp eq i32 %159, 0
  %161 = load i32, ptr %2, align 4
  %162 = select i1 %160, i32 %161, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  %163 = getelementptr inbounds [8 x i32], ptr %1, i32 0, i32 7
  %164 = load i32, ptr %163, align 4
  %165 = xor i32 %164, %162
  %166 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 7), align 4
  %167 = xor i32 %165, %166
  store i32 %167, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 7), align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %1, i8 0, i32 64, i1 false) #14
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %1) #14, !srcloc !37
  %168 = load volatile i32, ptr @jiffies, align 64
  store volatile i32 %168, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 1), align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %96) #14
  %169 = load i32, ptr @crng_init, align 4
  %170 = icmp slt i32 %169, 2
  br i1 %170, label %171, label %172

171:                                              ; preds = %95
  call fastcc void @crng_finalize_init()
  br label %172

172:                                              ; preds = %171, %95, %92
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_extract_entropy(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.blake2s_state, align 4
  %4 = alloca [32 x i8], align 1
  %5 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %3, i32 48
  %9 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 1
  %10 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 2
  %11 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 3
  %12 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 4
  %13 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 5
  %14 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 6
  %15 = getelementptr inbounds [8 x i32], ptr %3, i32 0, i32 7
  %16 = getelementptr inbounds %struct.blake2s_state, ptr %3, i32 0, i32 1
  %17 = getelementptr inbounds %struct.blake2s_state, ptr %3, i32 0, i32 4
  %18 = getelementptr inbounds %struct.blake2s_state, ptr %3, i32 0, i32 5
  br label %19

19:                                               ; preds = %19, %7
  %20 = phi ptr [ %0, %7 ], [ %26, %19 ]
  %21 = phi i32 [ %1, %7 ], [ %25, %19 ]
  %22 = phi i32 [ 0, %7 ], [ %27, %19 ]
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(120) %8, i8 0, i32 64, i1 false) #14, !annotation !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false) #14, !annotation !9
  store i32 1795745351, ptr %3, align 4
  store i32 -1150833019, ptr %9, align 4
  store i32 1013904242, ptr %10, align 4
  store i32 -1521486534, ptr %11, align 4
  store i32 1359893119, ptr %12, align 4
  store i32 -1694144372, ptr %13, align 4
  store i32 528734635, ptr %14, align 4
  store i32 1541459225, ptr %15, align 4
  store i32 0, ptr %17, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %16, i8 0, i64 16, i1 false) #14
  store i32 32, ptr %18, align 4
  %23 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @input_pool) #14
  call void @blake2s_update(ptr noundef nonnull %3, ptr noundef nonnull @input_pool_data, i32 noundef 512) #14
  call void @blake2s_final(ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  call fastcc void @__mix_pool_bytes(ptr noundef nonnull %4, i32 noundef 32) #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @input_pool, i32 noundef %23) #14
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, ptr noundef nonnull align 1 dereferenceable(16) %4, i32 16, i1 false) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false) #14
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %4) #14, !srcloc !37
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #14
  %24 = call i32 @llvm.smin.i32(i32 %21, i32 16)
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %20, ptr nonnull align 1 %5, i32 %24, i1 false)
  %25 = sub i32 %21, %24
  %26 = getelementptr i8, ptr %20, i32 %24
  %27 = add i32 %24, %22
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %29, label %19

29:                                               ; preds = %19, %2
  %30 = phi i32 [ 0, %2 ], [ %27, %19 ]
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false) #14
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %5) #14, !srcloc !37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blake2s_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blake2s_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @chacha_block_generic(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk_deferred(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @crng_backtrack_protect(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add i32 %1, -1
  %4 = or i32 %3, 3
  %5 = add i32 %4, 1
  %6 = add i32 %4, 33
  %7 = icmp sgt i32 %6, 64
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = load i32, ptr @crng_init, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %22, !prof !10

11:                                               ; preds = %8
  %12 = load volatile i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 1), align 4
  %13 = load volatile i32, ptr @crng_global_init_time, align 4
  %14 = sub i32 %12, %13
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = add i32 %12, 30000
  %18 = load volatile i32, ptr @jiffies, align 64
  %19 = sub i32 %17, %18
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %11
  tail call fastcc void @crng_reseed() #14
  br label %22

22:                                               ; preds = %21, %16, %8
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  tail call void @chacha_block_generic(ptr noundef nonnull @primary_crng, ptr noundef %0, i32 noundef 20) #14
  %24 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 8), align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  br label %29

29:                                               ; preds = %26, %22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %23) #14
  br label %30

30:                                               ; preds = %29, %2
  %31 = phi i32 [ 0, %29 ], [ %5, %2 ]
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  %33 = getelementptr i8, ptr %0, i32 %31
  %34 = getelementptr i32, ptr %33, i32 1
  %35 = load i32, ptr %33, align 4
  %36 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 0), align 4
  %37 = xor i32 %36, %35
  store i32 %37, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 0), align 4
  %38 = getelementptr i32, ptr %34, i32 1
  %39 = load i32, ptr %34, align 4
  %40 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 1), align 4
  %41 = xor i32 %40, %39
  store i32 %41, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 1), align 4
  %42 = getelementptr i32, ptr %38, i32 1
  %43 = load i32, ptr %38, align 4
  %44 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 2), align 4
  %45 = xor i32 %44, %43
  store i32 %45, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 2), align 4
  %46 = getelementptr i32, ptr %42, i32 1
  %47 = load i32, ptr %42, align 4
  %48 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 3), align 4
  %49 = xor i32 %48, %47
  store i32 %49, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 3), align 4
  %50 = getelementptr i32, ptr %46, i32 1
  %51 = load i32, ptr %46, align 4
  %52 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 4), align 4
  %53 = xor i32 %52, %51
  store i32 %53, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 4), align 4
  %54 = getelementptr i32, ptr %50, i32 1
  %55 = load i32, ptr %50, align 4
  %56 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 5), align 4
  %57 = xor i32 %56, %55
  store i32 %57, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 5), align 4
  %58 = getelementptr i32, ptr %54, i32 1
  %59 = load i32, ptr %54, align 4
  %60 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 6), align 4
  %61 = xor i32 %60, %59
  store i32 %61, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 6), align 4
  %62 = load i32, ptr %58, align 4
  %63 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 7), align 4
  %64 = xor i32 %63, %62
  store i32 %64, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 7), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %32) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @entropy_timer(ptr nocapture noundef readnone %0) #0 {
  tail call fastcc void @credit_entropy_bits(i32 noundef 1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc zeroext i1 @crng_init_try_arch_early() unnamed_addr #3 section ".init.text" {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %10, %0
  %3 = phi i32 [ 4, %0 ], [ %18, %10 ]
  %4 = load i32, ptr @system_state, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !10

6:                                                ; preds = %2
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 148, i32 noundef 9, ptr noundef null) #14
  %7 = load i32, ptr @system_state, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !10

9:                                                ; preds = %6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 156, i32 noundef 9, ptr noundef null) #14
  br label %10

10:                                               ; preds = %9, %6, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #14
  store i32 0, ptr %1, align 4, !annotation !9
  %11 = call i32 @read_current_timer(ptr noundef nonnull %1) #14
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr %1, align 4
  %14 = select i1 %12, i32 %13, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #14
  %15 = getelementptr [16 x i32], ptr @primary_crng, i32 0, i32 %3
  %16 = load i32, ptr %15, align 4
  %17 = xor i32 %16, %14
  store i32 %17, ptr %15, align 4
  %18 = add nuw nsw i32 %3, 1
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %20, label %2

20:                                               ; preds = %10
  ret i1 false
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @urandom_read_nowarn(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [64 x i8], align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 33554431)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false) #14, !annotation !9
  %5 = icmp ugt i32 %4, 256
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %73, label %7

7:                                                ; preds = %68, %2
  %8 = phi ptr [ %70, %68 ], [ %0, %2 ]
  %9 = phi i32 [ %69, %68 ], [ %4, %2 ]
  %10 = phi i32 [ %71, %68 ], [ 0, %2 ]
  %11 = phi i32 [ %51, %68 ], [ 64, %2 ]
  br i1 %5, label %12, label %29

12:                                               ; preds = %7
  %13 = tail call ptr @llvm.thread.pointer() #14
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = load volatile i32, ptr %13, align 4
  %19 = and i32 %18, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25, !prof !10

21:                                               ; preds = %17
  %22 = load volatile i32, ptr %13, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21, %17
  %26 = icmp eq i32 %10, 0
  %27 = select i1 %26, i32 -512, i32 %10
  br label %73

28:                                               ; preds = %21
  call void @schedule() #14
  br label %29

29:                                               ; preds = %28, %12, %7
  %30 = load i32, ptr @crng_init, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %43, !prof !10

32:                                               ; preds = %29
  %33 = load volatile i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 1), align 4
  %34 = load volatile i32, ptr @crng_global_init_time, align 4
  %35 = sub i32 %33, %34
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = add i32 %33, 30000
  %39 = load volatile i32, ptr @jiffies, align 64
  %40 = sub i32 %38, %39
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %32
  call fastcc void @crng_reseed() #14
  br label %43

43:                                               ; preds = %42, %37, %29
  %44 = call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2)) #14
  call void @chacha_block_generic(ptr noundef nonnull @primary_crng, ptr noundef nonnull %3, i32 noundef 20) #14
  %45 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 8), align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  %49 = add i32 %48, 1
  store i32 %49, ptr getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 0, i32 4, i32 9), align 4
  br label %50

50:                                               ; preds = %47, %43
  call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds ({ <{ i32, i32, i32, i32, [12 x i32] }>, i32, %struct.spinlock }, ptr @primary_crng, i32 0, i32 2), i32 noundef %44) #14
  %51 = call i32 @llvm.smin.i32(i32 %9, i32 64) #14
  %52 = icmp ugt i32 %51, 64
  br i1 %52, label %53, label %54, !prof !11

53:                                               ; preds = %50
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.40, i32 noundef 64, i32 noundef %51) #14
  br label %73

54:                                               ; preds = %50
  %55 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 %51, i32 -1090519040) #18, !srcloc !61
  %56 = extractvalue { i32, i32 } %55, 0
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = tail call ptr @llvm.thread.pointer() #14
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 3
  %61 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %60) #8, !srcloc !42
  %62 = and i32 %61, -13
  %63 = or i32 %62, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %63) #14, !srcloc !43
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !44
  %64 = call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef nonnull %3, i32 noundef %51) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #14, !srcloc !43
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !44
  br label %65

65:                                               ; preds = %58, %54
  %66 = phi i32 [ %64, %58 ], [ %51, %54 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = sub i32 %9, %51
  %70 = getelementptr i8, ptr %8, i32 %51
  %71 = add i32 %51, %10
  %72 = icmp eq i32 %69, 0
  br i1 %72, label %73, label %7

73:                                               ; preds = %68, %65, %53, %25, %2
  %74 = phi i32 [ %11, %25 ], [ 64, %2 ], [ %51, %53 ], [ %51, %68 ], [ %51, %65 ]
  %75 = phi i32 [ %27, %25 ], [ 0, %2 ], [ -14, %53 ], [ -14, %65 ], [ %71, %68 ]
  call fastcc void @crng_backtrack_protect(ptr noundef nonnull %3, i32 noundef %74) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false) #14
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %3) #14, !srcloc !37
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  %76 = shl nuw nsw i32 %4, 3
  %77 = load i32, ptr getelementptr inbounds (%struct.anon.93, ptr @input_pool, i32 0, i32 3), align 4
  %78 = ashr i32 %77, 3
  %79 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_urandom_read, i32 0, i32 1), align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %73
  %82 = tail call ptr @llvm.thread.pointer() #14
  %83 = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = lshr i32 %84, 5
  %86 = getelementptr i32, ptr @__cpu_online_mask, i32 %85
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %84, 31
  %89 = shl nuw i32 1, %88
  %90 = and i32 %89, %87
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %81
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !62
  %93 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_urandom_read, i32 0, i32 7), align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %95, %92
  %96 = phi ptr [ %100, %95 ], [ %93, %92 ]
  %97 = load volatile ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.tracepoint_func, ptr %96, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  call void %97(ptr noundef %99, i32 noundef %76, i32 noundef 0, i32 noundef %78) #14
  %100 = getelementptr %struct.tracepoint_func, ptr %96, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %95

103:                                              ; preds = %95, %92
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !63
  br label %104

104:                                              ; preds = %103, %81, %73
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @write_pool(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [16 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i32 64, i1 false), !annotation !9
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %24, %2
  %6 = phi i32 [ %25, %24 ], [ %1, %2 ]
  %7 = phi ptr [ %26, %24 ], [ %0, %2 ]
  %8 = call i32 @llvm.umin.i32(i32 %6, i32 64)
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %8, i32 -1090519040) #18, !srcloc !41
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20, !prof !10

12:                                               ; preds = %5
  %13 = tail call ptr @llvm.thread.pointer() #14
  %14 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %14) #8, !srcloc !42
  %16 = and i32 %15, -13
  %17 = or i32 %16, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #14, !srcloc !43
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !44
  %18 = call i32 @arm_copy_from_user(ptr noundef nonnull %3, ptr noundef %7, i32 noundef %8) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #14, !srcloc !43
  call void asm sideeffect "isb ", "~{memory}"() #14, !srcloc !44
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20, !prof !10

20:                                               ; preds = %12, %5
  %21 = phi i32 [ %18, %12 ], [ %8, %5 ]
  %22 = sub i32 %8, %21
  %23 = getelementptr i8, ptr %3, i32 %22
  call void @llvm.memset.p0.i32(ptr align 1 %23, i8 0, i32 %21, i1 false) #14
  br label %29

24:                                               ; preds = %12
  %25 = sub i32 %6, %8
  %26 = getelementptr i8, ptr %7, i32 %8
  call fastcc void @mix_pool_bytes(ptr noundef nonnull %3, i32 noundef %8)
  %27 = call i32 @__cond_resched() #14
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %29, label %5

29:                                               ; preds = %24, %20, %2
  %30 = phi i32 [ -14, %20 ], [ 0, %2 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #14
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_do_entropy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.ctl_table, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 36, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %8 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = ashr i32 %10, 3
  store i32 %11, ptr %7, align 4
  %12 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 1
  store ptr %7, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 2
  store i32 4, ptr %13, align 4
  %14 = call i32 @proc_dointvec(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #14
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @proc_do_uuid(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca %struct.ctl_table, align 4
  %7 = alloca [64 x i8], align 1
  %8 = alloca [16 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, i8 0, i32 36, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %7, i8 0, i32 64, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %8, i8 0, i32 16, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.ctl_table, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  call void @generate_random_uuid(ptr noundef nonnull %8) #14
  br label %21

13:                                               ; preds = %5
  tail call void @_raw_spin_lock(ptr noundef nonnull @proc_do_uuid.bootid_spinlock) #14
  %14 = getelementptr i8, ptr %10, i32 8
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @generate_random_uuid(ptr noundef nonnull %10) #14
  br label %18

18:                                               ; preds = %17, %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !20
  %19 = load i16, ptr @proc_do_uuid.bootid_spinlock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @proc_do_uuid.bootid_spinlock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #14, !srcloc !21
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #14, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !23
  br label %21

21:                                               ; preds = %18, %12
  %22 = phi ptr [ %10, %18 ], [ %8, %12 ]
  %23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.50, ptr noundef nonnull %22)
  %24 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 1
  store ptr %7, ptr %24, align 4
  %25 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 2
  store i32 64, ptr %25, align 4
  %26 = call i32 @proc_dostring(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #14
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generate_random_uuid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { cold }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nounwind readnone }
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
!12 = !{i64 619753}
!13 = !{i64 2153882900}
!14 = !{i64 2153883072}
!15 = !{i64 612648, i64 612709}
!16 = !{i64 615665}
!17 = !{i32 0, i32 33}
!18 = !{i64 2153968302}
!19 = !{i64 2153968474}
!20 = !{i64 2149232114}
!21 = !{i64 2149227938}
!22 = !{i64 2149228013, i64 2149228040, i64 2149228087, i64 2149228109, i64 2149228137, i64 2149228157}
!23 = !{i64 2149255117}
!24 = !{i64 2153919429}
!25 = !{i64 2153919601}
!26 = !{i64 2154732879}
!27 = !{i64 583901, i64 2148085467, i64 2148085493, i64 2148085540, i64 2148085562, i64 2148085590, i64 2148085610}
!28 = !{i64 658717, i64 658738, i64 658761, i64 658780, i64 658799}
!29 = !{i64 2154733269}
!30 = !{i64 2153936287}
!31 = !{i64 2153936483}
!32 = !{i64 2153988799}
!33 = !{i64 2153988979}
!34 = !{!"branch_weights", i32 4001, i32 1}
!35 = !{i64 2154005126}
!36 = !{i64 2154005290}
!37 = !{i64 2148960550}
!38 = !{i64 2154021447}
!39 = !{i64 2154021621}
!40 = !{i8 0, i8 2}
!41 = !{i64 2151465529, i64 2151465554}
!42 = !{i64 3961641}
!43 = !{i64 3961838}
!44 = !{i64 2151447117}
!45 = !{i64 2154840507, i64 2154840787, i64 2154841121, i64 2154841455}
!46 = !{i64 2154852397, i64 2154852677, i64 2154853011, i64 2154853345}
!47 = !{i64 2154865109, i64 2154865389, i64 2154865723, i64 2154866057}
!48 = !{i64 2154877035, i64 2154877315, i64 2154877649, i64 2154877983}
!49 = !{i64 2154882217}
!50 = !{i64 655993, i64 656010, i64 656034, i64 656060, i64 656078}
!51 = !{i64 2154882534}
!52 = !{i64 2153899190}
!53 = !{i64 2153899348}
!54 = !{i64 2154042272}
!55 = !{i64 2154042464}
!56 = !{i64 2154798940, i64 2154799427, i64 2154798977, i64 2154799033, i64 2154799067, i64 2154799091, i64 2154799132, i64 2154799153, i64 2154799181, i64 2154799215}
!57 = !{i64 2154806999}
!58 = !{i64 2154807389}
!59 = !{i64 2153952406}
!60 = !{i64 2153952564}
!61 = !{i64 2151466107, i64 2151466132}
!62 = !{i64 2154058754}
!63 = !{i64 2154058952}
