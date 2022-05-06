; ModuleID = '/llk/IR/mm/mmap.c_pt.bc'
source_filename = "../mm/mmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_get_page_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_get_page_prot\22\09\09\09\09\09"
module asm "__kstrtabns_vm_get_page_prot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_unmapped_area:\09\09\09\09\09"
module asm "\09.asciz \09\22get_unmapped_area\22\09\09\09\09\09"
module asm "__kstrtabns_get_unmapped_area:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_vma:\09\09\09\09\09"
module asm "\09.asciz \09\22find_vma\22\09\09\09\09\09"
module asm "__kstrtabns_find_vma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_extend_vma:\09\09\09\09\09"
module asm "\09.asciz \09\22find_extend_vma\22\09\09\09\09\09"
module asm "__kstrtabns_find_extend_vma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_munmap:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_munmap\22\09\09\09\09\09"
module asm "__kstrtabns_vm_munmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_brk_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_brk_flags\22\09\09\09\09\09"
module asm "__kstrtabns_vm_brk_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_brk:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_brk\22\09\09\09\09\09"
module asm "__kstrtabns_vm_brk:\09\09\09\09\09"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.70 }
%union.anon.70 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type {}
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_vm_unmapped_area = type { %struct.trace_entry, i32, i32, i32, i32, i32, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.38 }
%struct.llist_node = type { ptr }
%union.anon.38 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.39 }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon.12 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.vm_unmapped_area_info = type { i32, i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.13, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i32, i32 }
%struct.anon_vma = type { ptr, %struct.rw_semaphore, %struct.atomic_t, i32, ptr, %struct.rb_root_cached }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.91, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.92, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.93, ptr, %struct.address_space, %struct.list_head, %union.anon.94, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.91 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.92 = type { %struct.callback_head }
%union.anon.93 = type { ptr }
%union.anon.94 = type { ptr }
%struct.mmap_arg_struct = type { i32, i32, i32, i32, i32, i32 }
%struct.mmu_gather = type { ptr, i32, i32, i16, i32, ptr, %struct.mmu_gather_batch, [8 x ptr] }
%struct.mmu_gather_batch = type { ptr, i32, i32, [0 x ptr] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.vm_special_mapping = type { ptr, ptr, ptr, ptr }
%struct.anon.15 = type { ptr, i32, i32, i32 }
%struct.page = type { i32, %union.anon.4, %union.anon.69, %struct.atomic_t }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.69 = type { %struct.atomic_t }
%struct.vm_fault = type { %struct.anon.15, i32, ptr, ptr, %union.anon.16, ptr, ptr, ptr, ptr, ptr }
%union.anon.16 = type { i32 }

@__tpstrtab_vm_unmapped_area = internal constant [17 x i8] c"vm_unmapped_area\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_vm_unmapped_area = dso_local global %struct.static_call_key { ptr @__traceiter_vm_unmapped_area }, align 4
@__tracepoint_vm_unmapped_area = dso_local global %struct.tracepoint { ptr @__tpstrtab_vm_unmapped_area, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_vm_unmapped_area, ptr null, ptr @__traceiter_vm_unmapped_area, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_vm_unmapped_area = internal constant ptr @__tracepoint_vm_unmapped_area, section "__tracepoints_ptrs", align 4
@str__mmap__trace_system_name = internal constant [5 x i8] c"mmap\00", align 1
@trace_event_fields_vm_unmapped_area = internal global [9 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.6, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.7, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.9, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.10, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.12, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.5, %union.anon { %struct.anon { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_vm_unmapped_area = internal global %struct.trace_event_class { ptr @str__mmap__trace_system_name, ptr @trace_event_raw_event_vm_unmapped_area, ptr @perf_trace_vm_unmapped_area, ptr @trace_event_reg, ptr @trace_event_fields_vm_unmapped_area, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_vm_unmapped_area, i64 24), ptr getelementptr (i8, ptr @event_class_vm_unmapped_area, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_vm_unmapped_area = internal global %struct.trace_event_functions { ptr @trace_raw_output_vm_unmapped_area, ptr null, ptr null, ptr null }, align 4
@print_fmt_vm_unmapped_area = internal global [409 x i8] c"\22addr=0x%lx err=%ld total_vm=0x%lx flags=0x%lx len=0x%lx lo=0x%lx hi=0x%lx mask=0x%lx ofs=0x%lx\0A\22, __builtin_expect(!!((unsigned long)(void *)(REC->addr) >= (unsigned long)-4095), 0) ? 0 : REC->addr, __builtin_expect(!!((unsigned long)(void *)(REC->addr) >= (unsigned long)-4095), 0) ? REC->addr : 0, REC->total_vm, REC->flags, REC->length, REC->low_limit, REC->high_limit, REC->align_mask, REC->align_offset\00", align 1
@event_vm_unmapped_area = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_vm_unmapped_area, %union.anon.0 { ptr @__tracepoint_vm_unmapped_area }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_vm_unmapped_area }, ptr @print_fmt_vm_unmapped_area, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_vm_unmapped_area = internal global ptr @event_vm_unmapped_area, section "_ftrace_events", align 4
@mmap_rnd_bits_min = dso_local local_unnamed_addr constant i32 8, align 4
@mmap_rnd_bits_max = dso_local local_unnamed_addr constant i32 16, align 4
@mmap_rnd_bits = dso_local local_unnamed_addr global i32 8, section ".data..read_mostly", align 4
@__param_str_ignore_rlimit_data = internal constant [19 x i8] c"ignore_rlimit_data\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@ignore_rlimit_data = internal global i8 0, align 1
@__param_ignore_rlimit_data = internal constant %struct.kernel_param { ptr @__param_str_ignore_rlimit_data, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.70 { ptr @ignore_rlimit_data } }, section "__param", align 4
@protection_map = dso_local local_unnamed_addr global [16 x i32] [i32 2691, i32 899, i32 899, i32 899, i32 387, i32 387, i32 387, i32 387, i32 2691, i32 899, i32 771, i32 771, i32 387, i32 387, i32 259, i32 259], section ".data..ro_after_init", align 4
@__kstrtab_vm_get_page_prot = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_get_page_prot = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_get_page_prot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_get_page_prot to i32), ptr @__kstrtab_vm_get_page_prot, ptr @__kstrtabns_vm_get_page_prot }, section "___ksymtab+vm_get_page_prot", align 4
@sysctl_max_map_count = external dso_local local_unnamed_addr global i32, align 4
@sysctl_overcommit_memory = external dso_local local_unnamed_addr global i32, align 4
@mmap_region.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"mm/mmap.c\00", align 1
@__kstrtab_get_unmapped_area = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_unmapped_area = external dso_local constant [0 x i8], align 1
@__ksymtab_get_unmapped_area = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_unmapped_area to i32), ptr @__kstrtab_get_unmapped_area, ptr @__kstrtabns_get_unmapped_area }, section "___ksymtab+get_unmapped_area", align 4
@__kstrtab_find_vma = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_vma = external dso_local constant [0 x i8], align 1
@__ksymtab_find_vma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_vma to i32), ptr @__kstrtab_find_vma, ptr @__kstrtabns_find_vma }, section "___ksymtab+find_vma", align 4
@mmap_min_addr = external dso_local local_unnamed_addr global i32, align 4
@stack_guard_gap = dso_local local_unnamed_addr global i32 1048576, align 4
@__setup_str_cmdline_parse_stack_guard_gap = internal constant [17 x i8] c"stack_guard_gap=\00", section ".init.rodata", align 1
@__setup_cmdline_parse_stack_guard_gap = internal global %struct.obs_kernel_param { ptr @__setup_str_cmdline_parse_stack_guard_gap, ptr @cmdline_parse_stack_guard_gap, i32 0 }, section ".init.setup", align 4
@__kstrtab_find_extend_vma = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_extend_vma = external dso_local constant [0 x i8], align 1
@__ksymtab_find_extend_vma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_extend_vma to i32), ptr @__kstrtab_find_extend_vma, ptr @__kstrtabns_find_extend_vma }, section "___ksymtab_gpl+find_extend_vma", align 4
@__kstrtab_vm_munmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_munmap = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_munmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_munmap to i32), ptr @__kstrtab_vm_munmap, ptr @__kstrtabns_vm_munmap }, section "___ksymtab+vm_munmap", align 4
@__kstrtab_vm_brk_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_brk_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_brk_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_brk_flags to i32), ptr @__kstrtab_vm_brk_flags, ptr @__kstrtabns_vm_brk_flags }, section "___ksymtab+vm_brk_flags", align 4
@__kstrtab_vm_brk = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_brk = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_brk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_brk to i32), ptr @__kstrtab_vm_brk, ptr @__kstrtabns_vm_brk }, section "___ksymtab+vm_brk", align 4
@may_expand_vm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"\014mmap: %s (%d): VmData %lu exceed data ulimit %lu. Update limits%s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [39 x i8] c" or use boot option ignore_rlimit_data\00", align 1
@special_mapping_vmops = internal constant %struct.vm_operations_struct { ptr null, ptr @special_mapping_close, ptr @special_mapping_split, ptr @special_mapping_mremap, ptr null, ptr @special_mapping_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @special_mapping_name, ptr null }, align 4
@legacy_special_mapping_vmops = internal constant %struct.vm_operations_struct { ptr null, ptr @special_mapping_close, ptr null, ptr null, ptr null, ptr @special_mapping_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@mm_all_locks_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mm_all_locks_mutex, i64 12), ptr getelementptr (i8, ptr @mm_all_locks_mutex, i64 12) } }, align 4
@mmap_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@__initcall__kmod_mmap__301_3717_init_user_reserve4 = internal global ptr @init_user_reserve, section ".initcall4.init", align 4
@__initcall__kmod_mmap__304_3738_init_admin_reserve4 = internal global ptr @init_admin_reserve, section ".initcall4.init", align 4
@__initcall__kmod_mmap__305_3808_init_reserve_notifier4 = internal global ptr @init_reserve_notifier, section ".initcall4.init", align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"total_vm\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"low_limit\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"high_limit\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"align_mask\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"align_offset\00", align 1
@.str.14 = private unnamed_addr constant [97 x i8] c"addr=0x%lx err=%ld total_vm=0x%lx flags=0x%lx len=0x%lx lo=0x%lx hi=0x%lx mask=0x%lx ofs=0x%lx\0A\0A\00", align 1
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__do_sys_remap_file_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = private unnamed_addr constant [104 x i8] c"\014mmap: %s (%d) uses deprecated remap_file_pages() syscall. See Documentation/vm/remap_file_pages.rst.\0A\00", align 1
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@special_mapping_mremap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sysctl_user_reserve_kbytes = external dso_local local_unnamed_addr global i32, align 4
@vm_zone_stat = external dso_local global [10 x %struct.atomic_t], align 4
@sysctl_admin_reserve_kbytes = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [17 x ptr] [ptr @__event_vm_unmapped_area, ptr @__initcall__kmod_mmap__301_3717_init_user_reserve4, ptr @__initcall__kmod_mmap__304_3738_init_admin_reserve4, ptr @__initcall__kmod_mmap__305_3808_init_reserve_notifier4, ptr @__ksymtab_find_extend_vma, ptr @__ksymtab_find_vma, ptr @__ksymtab_get_unmapped_area, ptr @__ksymtab_vm_brk, ptr @__ksymtab_vm_brk_flags, ptr @__ksymtab_vm_get_page_prot, ptr @__ksymtab_vm_munmap, ptr @__param_ignore_rlimit_data, ptr @__setup_cmdline_parse_stack_guard_gap, ptr @__tracepoint_ptr_vm_unmapped_area, ptr @__tracepoint_vm_unmapped_area, ptr @event_class_vm_unmapped_area, ptr @event_vm_unmapped_area], section "llvm.metadata"

@sys_brk = dso_local alias i32 (i32), ptr @__se_sys_brk
@sys_mmap_pgoff = dso_local alias i32 (i32, i32, i32, i32, i32, i32), ptr @__se_sys_mmap_pgoff
@sys_old_mmap = dso_local alias i32 (ptr), ptr @__se_sys_old_mmap
@sys_munmap = dso_local alias i32 (i32, i32), ptr @__se_sys_munmap
@sys_remap_file_pages = dso_local alias i32 (i32, i32, i32, i32, i32), ptr @__se_sys_remap_file_pages

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_vm_unmapped_area(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_vm_unmapped_area, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, i32 noundef %1, ptr noundef %2) #19
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
define internal void @trace_event_raw_event_vm_unmapped_area(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
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
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #19
  br i1 %13, label %42, label %14

14:                                               ; preds = %12, %9, %3
  %15 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 40) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %42, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %15, i32 0, i32 1
  store i32 %1, ptr %18, align 4
  %19 = tail call ptr @llvm.thread.pointer() #19
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 37
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.anon.12, ptr %21, i32 0, i32 19
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %15, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = load i32, ptr %2, align 4
  %26 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %15, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %2, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %15, i32 0, i32 4
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %2, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %15, i32 0, i32 5
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %2, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %15, i32 0, i32 6
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %2, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %15, i32 0, i32 7
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %2, i32 0, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %15, i32 0, i32 8
  store i32 %40, ptr %41, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #19
  br label %42

42:                                               ; preds = %17, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_vm_unmapped_area(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #19
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !0) #19
  %10 = inttoptr i32 %9 to ptr
  %11 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %10) #14, !srcloc !12
  %12 = add i32 %11, %8
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load volatile ptr, ptr %13, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %60, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %60, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 4
  %25 = call ptr @llvm.returnaddress(i32 0) #19
  %26 = ptrtoint ptr %25 to i32
  %27 = getelementptr [18 x i32], ptr %24, i32 0, i32 15
  store i32 %26, ptr %27, align 4
  %28 = call ptr @llvm.frameaddress.p0(i32 0) #19
  %29 = ptrtoint ptr %28 to i32
  %30 = getelementptr [18 x i32], ptr %24, i32 0, i32 11
  store i32 %29, ptr %30, align 4
  %31 = call i32 @llvm.read_register.i32(metadata !0) #19
  %32 = getelementptr [18 x i32], ptr %24, i32 0, i32 13
  store i32 %31, ptr %32, align 4
  %33 = getelementptr [18 x i32], ptr %24, i32 0, i32 16
  store i32 19, ptr %33, align 4
  %34 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %21, i32 0, i32 1
  store i32 %1, ptr %34, align 4
  %35 = tail call ptr @llvm.thread.pointer() #19
  %36 = getelementptr inbounds %struct.task_struct, ptr %35, i32 0, i32 37
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.anon.12, ptr %37, i32 0, i32 19
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %21, i32 0, i32 2
  store i32 %39, ptr %40, align 4
  %41 = load i32, ptr %2, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %21, i32 0, i32 3
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %2, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %21, i32 0, i32 4
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %2, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %21, i32 0, i32 5
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %2, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %21, i32 0, i32 6
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %2, i32 0, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %21, i32 0, i32 7
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %2, i32 0, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %21, i32 0, i32 8
  store i32 %56, ptr %57, align 4
  %58 = load i32, ptr %5, align 4
  %59 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %21, i32 noundef 44, i32 noundef %58, ptr noundef %0, i64 noundef 1, ptr noundef %59, ptr noundef %13, ptr noundef null) #19
  br label %60

60:                                               ; preds = %23, %20, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @vm_get_page_prot(i32 noundef %0) #3 {
  %2 = and i32 %0, 15
  %3 = getelementptr [16 x i32], ptr @protection_map, i32 0, i32 %2
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vma_set_page_prot(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %3, 15
  %7 = getelementptr [16 x i32], ptr @protection_map, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %5, -61
  %10 = icmp eq i32 %9, %5
  %11 = and i32 %8, -61
  %12 = select i1 %10, i32 %11, i32 %8
  %13 = or i32 %9, 4
  %14 = icmp eq i32 %13, %5
  %15 = or i32 %11, 4
  %16 = select i1 %14, i32 %15, i32 %12
  %17 = or i32 %9, 1616
  %18 = icmp eq i32 %17, %5
  %19 = and i32 %16, -1661
  %20 = or i32 %19, 1616
  %21 = select i1 %18, i32 %20, i32 %16
  %22 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = and i32 %3, 10
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %84

26:                                               ; preds = %1
  %27 = icmp eq ptr %23, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.vm_operations_struct, ptr %23, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %67

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.vm_operations_struct, ptr %23, i32 0, i32 10
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %67

36:                                               ; preds = %32, %26
  %37 = and i32 %21, -61
  %38 = icmp eq i32 %37, %21
  %39 = select i1 %38, i32 %11, i32 %8
  %40 = or i32 %37, 4
  %41 = icmp eq i32 %40, %21
  %42 = select i1 %41, i32 %15, i32 %39
  %43 = or i32 %37, 1616
  %44 = icmp eq i32 %43, %21
  %45 = and i32 %42, -1661
  %46 = or i32 %45, 1616
  %47 = select i1 %44, i32 %46, i32 %42
  %48 = icmp eq i32 %47, %21
  %49 = and i32 %3, 1024
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %84

52:                                               ; preds = %36
  %53 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %84, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.file, ptr %54, i32 0, i32 17
  %58 = load ptr, ptr %57, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %84, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %58, align 4
  %62 = tail call ptr @inode_to_bdi(ptr noundef %61) #19
  %63 = getelementptr inbounds %struct.backing_dev_info, ptr %62, i32 0, i32 6
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %60, %32, %28
  %68 = and i32 %3, 7
  %69 = getelementptr [16 x i32], ptr @protection_map, i32 0, i32 %68
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %21, -61
  %72 = icmp eq i32 %71, %21
  %73 = and i32 %70, -61
  %74 = select i1 %72, i32 %73, i32 %70
  %75 = or i32 %71, 4
  %76 = icmp eq i32 %75, %21
  %77 = or i32 %73, 4
  %78 = select i1 %76, i32 %77, i32 %74
  %79 = or i32 %71, 1616
  %80 = icmp eq i32 %79, %21
  %81 = and i32 %78, -1661
  %82 = or i32 %81, 1616
  %83 = select i1 %80, i32 %82, i32 %78
  br label %84

84:                                               ; preds = %67, %60, %56, %52, %36, %1
  %85 = phi i32 [ %83, %67 ], [ %21, %60 ], [ %21, %1 ], [ %21, %36 ], [ %21, %56 ], [ %21, %52 ]
  store volatile i32 %85, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vma_wants_writenotify(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = and i32 %4, 10
  %8 = icmp eq i32 %7, 10
  br i1 %8, label %9, label %54

9:                                                ; preds = %2
  %10 = icmp eq ptr %6, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.vm_operations_struct, ptr %6, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %54

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.vm_operations_struct, ptr %6, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %54

19:                                               ; preds = %15, %9
  %20 = and i32 %4, 15
  %21 = getelementptr [16 x i32], ptr @protection_map, i32 0, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %1, -61
  %24 = icmp eq i32 %23, %1
  %25 = and i32 %22, -61
  %26 = select i1 %24, i32 %25, i32 %22
  %27 = or i32 %23, 4
  %28 = icmp eq i32 %27, %1
  %29 = or i32 %25, 4
  %30 = select i1 %28, i32 %29, i32 %26
  %31 = or i32 %23, 1616
  %32 = icmp eq i32 %31, %1
  %33 = and i32 %30, -1661
  %34 = or i32 %33, 1616
  %35 = select i1 %32, i32 %34, i32 %30
  %36 = icmp eq i32 %35, %1
  %37 = and i32 %4, 1024
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %54

40:                                               ; preds = %19
  %41 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.file, ptr %42, i32 0, i32 17
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 4
  %50 = tail call ptr @inode_to_bdi(ptr noundef %49) #19
  %51 = getelementptr inbounds %struct.backing_dev_info, ptr %50, i32 0, i32 6
  %52 = load i32, ptr %51, align 8
  %53 = and i32 %52, 1
  br label %54

54:                                               ; preds = %48, %44, %40, %19, %15, %11, %2
  %55 = phi i32 [ 0, %2 ], [ 1, %15 ], [ 1, %11 ], [ 0, %19 ], [ 0, %44 ], [ 0, %40 ], [ %53, %48 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unlink_file_vma(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 17
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 6
  tail call void @down_write(ptr noundef %8) #19
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #19, !srcloc !13
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #19, !srcloc !14
  br label %16

16:                                               ; preds = %13, %5
  %17 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %17) #19
  %18 = getelementptr inbounds %struct.address_space, ptr %7, i32 0, i32 5
  tail call void @vma_interval_tree_remove(ptr noundef %0, ptr noundef %18) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !15
  %19 = load i16, ptr %17, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #19, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !19
  tail call void @up_write(ptr noundef %8) #19
  br label %21

21:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_brk(i32 noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = tail call ptr @llvm.thread.pointer() #19
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 37
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store ptr %2, ptr %2, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %5, i1 noundef zeroext true) #19
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.anon.12, ptr %5, i32 0, i32 15
  %12 = call i32 @down_write_killable(ptr noundef %11) #19
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = icmp eq i32 %12, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %5, i1 noundef zeroext true, i1 noundef zeroext %16) #19
  br label %17

17:                                               ; preds = %15, %10
  %18 = icmp eq i32 %12, 0
  br i1 %18, label %19, label %136

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.anon.12, ptr %5, i32 0, i32 33
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 49
  %23 = load i8, ptr %22, align 8
  %24 = and i8 %23, 8
  %25 = icmp eq i8 %24, 0
  %26 = getelementptr inbounds %struct.anon.12, ptr %5, i32 0, i32 32
  %27 = getelementptr inbounds %struct.anon.12, ptr %5, i32 0, i32 31
  %28 = select i1 %25, ptr %27, ptr %26
  %29 = load i32, ptr %28, align 4
  %30 = icmp ugt i32 %29, %0
  br i1 %30, label %131, label %31

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %33 = load ptr, ptr %32, align 16
  %34 = getelementptr %struct.signal_struct, ptr %33, i32 0, i32 50, i32 2
  %35 = load volatile i32, ptr %34, align 8
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.anon.12, ptr %5, i32 0, i32 30
  %39 = load i32, ptr %38, align 8
  %40 = load i32, ptr %27, align 4
  %41 = load i32, ptr %26, align 8
  %42 = add i32 %40, %0
  %43 = add i32 %39, %41
  %44 = sub i32 %42, %43
  %45 = icmp ugt i32 %44, %35
  br i1 %45, label %131, label %46

46:                                               ; preds = %37, %31
  %47 = add i32 %0, 4095
  %48 = and i32 %47, -4096
  %49 = add i32 %21, 4095
  %50 = and i32 %49, -4096
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 %0, ptr %20, align 4
  br label %109

53:                                               ; preds = %46
  %54 = icmp ult i32 %21, %0
  br i1 %54, label %62, label %55

55:                                               ; preds = %53
  store i32 %0, ptr %20, align 4
  %56 = sub i32 %50, %48
  %57 = call i32 @__do_munmap(ptr noundef %5, i32 noundef %48, i32 noundef %56, ptr noundef nonnull %2, i1 noundef zeroext true) #19
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = icmp eq i32 %57, 1
  br label %109

61:                                               ; preds = %55
  store i32 %21, ptr %20, align 4
  br label %131

62:                                               ; preds = %53
  %63 = call ptr @vmacache_find(ptr noundef %5, i32 noundef %50) #19
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %92, !prof !11

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.anon.12, ptr %5, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %104, label %69

69:                                               ; preds = %83, %65
  %70 = phi ptr [ %86, %83 ], [ %67, %65 ]
  %71 = phi ptr [ %84, %83 ], [ null, %65 ]
  %72 = getelementptr i8, ptr %70, i32 -16
  %73 = getelementptr i8, ptr %70, i32 -12
  %74 = load i32, ptr %73, align 4
  %75 = icmp ugt i32 %74, %50
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i32, ptr %72, align 4
  %78 = icmp ugt i32 %77, %50
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.rb_node, ptr %70, i32 0, i32 2
  br label %83

81:                                               ; preds = %69
  %82 = getelementptr inbounds %struct.rb_node, ptr %70, i32 0, i32 1
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi ptr [ %72, %79 ], [ %71, %81 ]
  %85 = phi ptr [ %80, %79 ], [ %82, %81 ]
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %69

88:                                               ; preds = %83, %76
  %89 = phi ptr [ %84, %83 ], [ %72, %76 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %104, label %91

91:                                               ; preds = %88
  call void @vmacache_update(i32 noundef %50, ptr noundef nonnull %89) #19
  br label %92

92:                                               ; preds = %91, %62
  %93 = phi ptr [ %63, %62 ], [ %89, %91 ]
  %94 = add i32 %48, 4096
  %95 = load i32, ptr %93, align 4
  %96 = getelementptr inbounds %struct.vm_area_struct, ptr %93, i32 0, i32 8
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 256
  %99 = icmp eq i32 %98, 0
  %100 = load i32, ptr @stack_guard_gap, align 4
  %101 = call i32 @llvm.usub.sat.i32(i32 %95, i32 %100) #19
  %102 = select i1 %99, i32 %95, i32 %101
  %103 = icmp ugt i32 %94, %102
  br i1 %103, label %131, label %104

104:                                              ; preds = %92, %88, %65
  %105 = sub i32 %48, %50
  %106 = call fastcc i32 @do_brk_flags(i32 noundef %50, i32 noundef %105, i32 noundef 0, ptr noundef nonnull %2) #19
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %131, label %108

108:                                              ; preds = %104
  store i32 %0, ptr %20, align 4
  br label %109

109:                                              ; preds = %108, %59, %52
  %110 = phi i1 [ false, %52 ], [ false, %108 ], [ %60, %59 ]
  %111 = icmp ugt i32 %48, %50
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.anon.12, ptr %5, i32 0, i32 25
  %114 = load i32, ptr %113, align 4
  %115 = and i32 %114, 8192
  %116 = icmp ne i32 %115, 0
  br label %117

117:                                              ; preds = %112, %109
  %118 = phi i1 [ false, %109 ], [ %116, %112 ]
  %119 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %110, label %121, label %124

121:                                              ; preds = %117
  br i1 %120, label %122, label %123

122:                                              ; preds = %121
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext false) #19
  br label %123

123:                                              ; preds = %122, %121
  call void @up_read(ptr noundef %11) #19
  br label %127

124:                                              ; preds = %117
  br i1 %120, label %125, label %126

125:                                              ; preds = %124
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #19
  br label %126

126:                                              ; preds = %125, %124
  call void @up_write(ptr noundef %11) #19
  br label %127

127:                                              ; preds = %126, %123
  br i1 %118, label %128, label %136

128:                                              ; preds = %127
  %129 = sub i32 %48, %50
  %130 = call i32 @__mm_populate(i32 noundef %50, i32 noundef %129, i32 noundef 1) #19
  br label %136

131:                                              ; preds = %104, %92, %61, %37, %19
  %132 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  call void @__mmap_lock_do_trace_released(ptr noundef %5, i1 noundef zeroext true) #19
  br label %135

135:                                              ; preds = %134, %131
  call void @up_write(ptr noundef %11) #19
  br label %136

136:                                              ; preds = %135, %128, %127, %17
  %137 = phi i32 [ %21, %135 ], [ -4, %17 ], [ %0, %128 ], [ %0, %127 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret i32 %137
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__vma_link_rb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %56, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 4
  br label %10

10:                                               ; preds = %51, %8
  %11 = phi ptr [ %54, %51 ], [ %9, %8 ]
  %12 = getelementptr i8, ptr %11, i32 -16
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %11, i32 24
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr @stack_guard_gap, align 4
  %19 = tail call i32 @llvm.usub.sat.i32(i32 %13, i32 %18) #19
  %20 = select i1 %17, i32 %13, i32 %19
  %21 = getelementptr i8, ptr %11, i32 -4
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.vm_area_struct, ptr %22, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @llvm.usub.sat.i32(i32 %20, i32 %26) #19
  br label %28

28:                                               ; preds = %24, %10
  %29 = phi i32 [ %20, %10 ], [ %27, %24 ]
  %30 = getelementptr i8, ptr %11, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %31, i32 12
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 @llvm.umax.i32(i32 %35, i32 %29) #19
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i32 [ %29, %28 ], [ %36, %33 ]
  %39 = getelementptr i8, ptr %11, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %40, i32 12
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @llvm.umax.i32(i32 %44, i32 %38) #19
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i32 [ %38, %37 ], [ %45, %42 ]
  %48 = getelementptr i8, ptr %11, i32 12
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, %47
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  store i32 %47, ptr %48, align 4
  %52 = load i32, ptr %11, align 4
  %53 = and i32 %52, -4
  %54 = inttoptr i32 %53 to ptr
  %55 = icmp eq i32 %53, 0
  br i1 %55, label %60, label %10

56:                                               ; preds = %4
  %57 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 7
  store i32 %58, ptr %59, align 8
  br label %60

60:                                               ; preds = %56, %51, %46
  %61 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 4
  %62 = ptrtoint ptr %3 to i32
  store i32 %62, ptr %61, align 4
  %63 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 4, i32 1
  store ptr null, ptr %63, align 4
  %64 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 4, i32 2
  store ptr null, ptr %64, align 4
  store ptr %61, ptr %2, align 4
  %65 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 5
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %107, %60
  %67 = phi ptr [ %110, %107 ], [ %61, %60 ]
  %68 = getelementptr i8, ptr %67, i32 -16
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr i8, ptr %67, i32 24
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 256
  %73 = icmp eq i32 %72, 0
  %74 = load i32, ptr @stack_guard_gap, align 4
  %75 = tail call i32 @llvm.usub.sat.i32(i32 %69, i32 %74) #19
  %76 = select i1 %73, i32 %69, i32 %75
  %77 = getelementptr i8, ptr %67, i32 -4
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct.vm_area_struct, ptr %78, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = tail call i32 @llvm.usub.sat.i32(i32 %76, i32 %82) #19
  br label %84

84:                                               ; preds = %80, %66
  %85 = phi i32 [ %76, %66 ], [ %83, %80 ]
  %86 = getelementptr i8, ptr %67, i32 8
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = getelementptr i8, ptr %87, i32 12
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 @llvm.umax.i32(i32 %91, i32 %85) #19
  br label %93

93:                                               ; preds = %89, %84
  %94 = phi i32 [ %85, %84 ], [ %92, %89 ]
  %95 = getelementptr i8, ptr %67, i32 4
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = getelementptr i8, ptr %96, i32 12
  %100 = load i32, ptr %99, align 4
  %101 = tail call i32 @llvm.umax.i32(i32 %100, i32 %94) #19
  br label %102

102:                                              ; preds = %98, %93
  %103 = phi i32 [ %94, %93 ], [ %101, %98 ]
  %104 = getelementptr i8, ptr %67, i32 12
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, %103
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  store i32 %103, ptr %104, align 4
  %108 = load i32, ptr %67, align 4
  %109 = and i32 %108, -4
  %110 = inttoptr i32 %109 to ptr
  %111 = icmp eq i32 %109, 0
  br i1 %111, label %112, label %66

112:                                              ; preds = %107, %102
  %113 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 1
  tail call void @__rb_insert_augmented(ptr noundef %61, ptr noundef %113, ptr noundef nonnull @vma_gap_callbacks_rotate) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__vma_adjust(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef readnone %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %10, null
  %14 = icmp ne ptr %4, null
  %15 = or i1 %14, %13
  br i1 %15, label %69, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, %2
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = icmp eq ptr %10, %5
  br i1 %21, label %42, label %22

22:                                               ; preds = %20
  %23 = icmp ult i32 %18, %2
  br i1 %23, label %24, label %51

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  br label %42

31:                                               ; preds = %16
  %32 = load i32, ptr %10, align 4
  %33 = icmp ult i32 %32, %2
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = sub i32 %2, %32
  br label %51

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, %2
  br i1 %39, label %40, label %69

40:                                               ; preds = %36
  %41 = sub i32 %2, %38
  br label %42

42:                                               ; preds = %40, %28, %20
  %43 = phi i32 [ %18, %28 ], [ %2, %40 ], [ %2, %20 ]
  %44 = phi ptr [ %0, %28 ], [ %0, %40 ], [ %5, %20 ]
  %45 = phi ptr [ %10, %28 ], [ %10, %40 ], [ %0, %20 ]
  %46 = phi i32 [ 0, %28 ], [ %41, %40 ], [ 0, %20 ]
  %47 = phi i32 [ 2, %28 ], [ 0, %40 ], [ 3, %20 ]
  %48 = phi ptr [ %30, %28 ], [ %0, %40 ], [ %0, %20 ]
  %49 = phi ptr [ %0, %28 ], [ %10, %40 ], [ %5, %20 ]
  %50 = icmp eq ptr %48, null
  br i1 %50, label %69, label %51

51:                                               ; preds = %42, %34, %24, %22
  %52 = phi ptr [ %49, %42 ], [ %0, %24 ], [ %0, %34 ], [ %0, %22 ]
  %53 = phi ptr [ %48, %42 ], [ %10, %24 ], [ %10, %34 ], [ %10, %22 ]
  %54 = phi i32 [ %47, %42 ], [ 2, %24 ], [ 0, %34 ], [ 1, %22 ]
  %55 = phi i32 [ %46, %42 ], [ 0, %24 ], [ %35, %34 ], [ 0, %22 ]
  %56 = phi ptr [ %45, %42 ], [ %10, %24 ], [ %10, %34 ], [ %10, %22 ]
  %57 = phi ptr [ %44, %42 ], [ %0, %24 ], [ %0, %34 ], [ %0, %22 ]
  %58 = phi i32 [ %43, %42 ], [ %18, %24 ], [ %2, %34 ], [ %18, %22 ]
  %59 = getelementptr inbounds %struct.vm_area_struct, ptr %53, i32 0, i32 11
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.vm_area_struct, ptr %52, i32 0, i32 11
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  store ptr %60, ptr %63, align 4
  %67 = tail call i32 @anon_vma_clone(ptr noundef %52, ptr noundef nonnull %53) #19
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %863

69:                                               ; preds = %66, %62, %51, %42, %36, %6
  %70 = phi i32 [ %2, %6 ], [ %58, %62 ], [ %58, %66 ], [ %58, %51 ], [ %43, %42 ], [ %2, %36 ]
  %71 = phi ptr [ %0, %6 ], [ %57, %62 ], [ %57, %66 ], [ %57, %51 ], [ %44, %42 ], [ %0, %36 ]
  %72 = phi ptr [ %10, %6 ], [ %56, %62 ], [ %56, %66 ], [ %56, %51 ], [ %45, %42 ], [ %10, %36 ]
  %73 = phi i32 [ 0, %6 ], [ %55, %62 ], [ %55, %66 ], [ %55, %51 ], [ %46, %42 ], [ 0, %36 ]
  %74 = phi i32 [ 0, %6 ], [ %54, %62 ], [ %54, %66 ], [ %54, %51 ], [ %47, %42 ], [ 0, %36 ]
  %75 = icmp ne ptr %12, null
  %76 = getelementptr inbounds %struct.file, ptr %12, i32 0, i32 17
  %77 = getelementptr inbounds %struct.vm_area_struct, ptr %71, i32 0, i32 1
  %78 = icmp eq i32 %73, 0
  %79 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 14
  %80 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 8
  %81 = getelementptr inbounds %struct.vm_area_struct, ptr %71, i32 0, i32 11
  %82 = icmp ne i32 %73, 0
  %83 = getelementptr inbounds %struct.vm_area_struct, ptr %71, i32 0, i32 10
  %84 = getelementptr inbounds %struct.vm_area_struct, ptr %71, i32 0, i32 13
  %85 = ashr i32 %73, 12
  %86 = getelementptr inbounds %struct.anon.12, ptr %8, i32 0, i32 1
  %87 = getelementptr inbounds %struct.anon.12, ptr %8, i32 0, i32 2
  %88 = getelementptr inbounds %struct.vm_area_struct, ptr %71, i32 0, i32 4
  %89 = getelementptr inbounds %struct.anon.12, ptr %8, i32 0, i32 7
  %90 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 1
  %91 = getelementptr inbounds %struct.anon.12, ptr %8, i32 0, i32 13
  %92 = getelementptr inbounds %struct.vm_area_struct, ptr %71, i32 0, i32 2
  br label %93

93:                                               ; preds = %805, %69
  %94 = phi i32 [ %70, %69 ], [ %807, %805 ]
  %95 = phi ptr [ %72, %69 ], [ %803, %805 ]
  %96 = phi ptr [ null, %69 ], [ %130, %805 ]
  %97 = phi ptr [ null, %69 ], [ %131, %805 ]
  %98 = phi i1 [ false, %69 ], [ %176, %805 ]
  %99 = phi i1 [ false, %69 ], [ %181, %805 ]
  %100 = phi i32 [ %74, %69 ], [ 1, %805 ]
  br i1 %75, label %101, label %129

101:                                              ; preds = %93
  %102 = load ptr, ptr %76, align 8
  %103 = getelementptr inbounds %struct.address_space, ptr %102, i32 0, i32 5
  %104 = load i32, ptr %71, align 4
  %105 = load i32, ptr %77, align 4
  tail call void @uprobe_munmap(ptr noundef %71, i32 noundef %104, i32 noundef %105) #19
  br i1 %78, label %110, label %106

106:                                              ; preds = %101
  %107 = load i32, ptr %95, align 4
  %108 = getelementptr inbounds %struct.vm_area_struct, ptr %95, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  tail call void @uprobe_munmap(ptr noundef %95, i32 noundef %107, i32 noundef %109) #19
  br label %110

110:                                              ; preds = %106, %101
  %111 = getelementptr inbounds %struct.address_space, ptr %102, i32 0, i32 6
  tail call void @down_write(ptr noundef %111) #19
  br i1 %14, label %112, label %129

112:                                              ; preds = %110
  %113 = load ptr, ptr %79, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %129, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.file, ptr %113, i32 0, i32 17
  %117 = load ptr, ptr %116, align 8
  %118 = load i32, ptr %80, align 4
  %119 = and i32 %118, 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.address_space, ptr %117, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %122) #19, !srcloc !13
  %123 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %122, ptr %122, i32 1, ptr elementtype(i32) %122) #19, !srcloc !20
  br label %124

124:                                              ; preds = %121, %115
  %125 = getelementptr inbounds %struct.address_space, ptr %117, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %125) #19
  %126 = getelementptr inbounds %struct.address_space, ptr %117, i32 0, i32 5
  tail call void @vma_interval_tree_insert(ptr noundef nonnull %4, ptr noundef %126) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !15
  %127 = load i16, ptr %125, align 4
  %128 = add i16 %127, 1
  store i16 %128, ptr %125, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #19, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !19
  br label %129

129:                                              ; preds = %124, %112, %110, %93
  %130 = phi ptr [ %102, %110 ], [ %96, %93 ], [ %102, %112 ], [ %102, %124 ]
  %131 = phi ptr [ %103, %110 ], [ %97, %93 ], [ %103, %112 ], [ %103, %124 ]
  %132 = load ptr, ptr %81, align 4
  %133 = icmp eq ptr %132, null
  %134 = select i1 %133, i1 %82, i1 false
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.vm_area_struct, ptr %95, i32 0, i32 11
  %137 = load ptr, ptr %136, align 4
  br label %138

138:                                              ; preds = %135, %129
  %139 = phi ptr [ %137, %135 ], [ %132, %129 ]
  %140 = icmp eq ptr %139, null
  br i1 %140, label %167, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr %139, align 4
  %143 = getelementptr inbounds %struct.anon_vma, ptr %142, i32 0, i32 1
  tail call void @down_write(ptr noundef %143) #19
  %144 = load ptr, ptr %83, align 4
  %145 = icmp eq ptr %144, %83
  br i1 %145, label %154, label %146

146:                                              ; preds = %146, %141
  %147 = phi ptr [ %152, %146 ], [ %144, %141 ]
  %148 = getelementptr i8, ptr %147, i32 -8
  %149 = getelementptr i8, ptr %147, i32 -4
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.anon_vma, ptr %150, i32 0, i32 5
  tail call void @anon_vma_interval_tree_remove(ptr noundef %148, ptr noundef %151) #19
  %152 = load ptr, ptr %147, align 4
  %153 = icmp eq ptr %152, %83
  br i1 %153, label %154, label %146

154:                                              ; preds = %146, %141
  br i1 %82, label %155, label %167

155:                                              ; preds = %154
  %156 = getelementptr inbounds %struct.vm_area_struct, ptr %95, i32 0, i32 10
  %157 = load ptr, ptr %156, align 4
  %158 = icmp eq ptr %157, %156
  br i1 %158, label %167, label %159

159:                                              ; preds = %159, %155
  %160 = phi ptr [ %165, %159 ], [ %157, %155 ]
  %161 = getelementptr i8, ptr %160, i32 -8
  %162 = getelementptr i8, ptr %160, i32 -4
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.anon_vma, ptr %163, i32 0, i32 5
  tail call void @anon_vma_interval_tree_remove(ptr noundef %161, ptr noundef %164) #19
  %165 = load ptr, ptr %160, align 4
  %166 = icmp eq ptr %165, %156
  br i1 %166, label %167, label %159

167:                                              ; preds = %159, %155, %154, %138
  br i1 %75, label %168, label %171

168:                                              ; preds = %167
  %169 = getelementptr inbounds %struct.address_space, ptr %130, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %169) #19
  tail call void @vma_interval_tree_remove(ptr noundef %71, ptr noundef %131) #19
  br i1 %82, label %170, label %171

170:                                              ; preds = %168
  tail call void @vma_interval_tree_remove(ptr noundef %95, ptr noundef %131) #19
  br label %171

171:                                              ; preds = %170, %168, %167
  %172 = load i32, ptr %71, align 4
  %173 = icmp eq i32 %172, %1
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  store i32 %1, ptr %71, align 4
  br label %175

175:                                              ; preds = %174, %171
  %176 = phi i1 [ true, %174 ], [ %98, %171 ]
  %177 = load i32, ptr %77, align 4
  %178 = icmp eq i32 %94, %177
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  store i32 %94, ptr %77, align 4
  br label %180

180:                                              ; preds = %179, %175
  %181 = phi i1 [ true, %179 ], [ %99, %175 ]
  store i32 %3, ptr %84, align 4
  br i1 %82, label %182, label %188

182:                                              ; preds = %180
  %183 = load i32, ptr %95, align 4
  %184 = add i32 %183, %73
  store i32 %184, ptr %95, align 4
  %185 = getelementptr inbounds %struct.vm_area_struct, ptr %95, i32 0, i32 13
  %186 = load i32, ptr %185, align 4
  %187 = add i32 %186, %85
  store i32 %187, ptr %185, align 4
  br i1 %75, label %189, label %194

188:                                              ; preds = %180
  br i1 %75, label %190, label %194

189:                                              ; preds = %182
  tail call void @vma_interval_tree_insert(ptr noundef %95, ptr noundef %131) #19
  br label %190

190:                                              ; preds = %189, %188
  tail call void @vma_interval_tree_insert(ptr noundef %71, ptr noundef %131) #19
  %191 = getelementptr inbounds %struct.address_space, ptr %130, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !15
  %192 = load i16, ptr %191, align 4
  %193 = add i16 %192, 1
  store i16 %193, ptr %191, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #19, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !19
  br label %194

194:                                              ; preds = %190, %188, %182
  %195 = icmp eq i32 %100, 0
  br i1 %195, label %612, label %196

196:                                              ; preds = %194
  %197 = icmp eq i32 %100, 3
  %198 = getelementptr inbounds %struct.vm_area_struct, ptr %95, i32 0, i32 4
  %199 = getelementptr inbounds %struct.vm_area_struct, ptr %95, i32 0, i32 4, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.vm_area_struct, ptr %95, i32 0, i32 4, i32 2
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %197, label %399, label %204

204:                                              ; preds = %196
  br i1 %203, label %205, label %224

205:                                              ; preds = %204
  %206 = load i32, ptr %198, align 4
  %207 = and i32 %206, -4
  %208 = inttoptr i32 %207 to ptr
  %209 = icmp eq i32 %207, 0
  br i1 %209, label %216, label %210

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.rb_node, ptr %208, i32 0, i32 2
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, %198
  %214 = getelementptr inbounds %struct.rb_node, ptr %208, i32 0, i32 1
  %215 = select i1 %213, ptr %211, ptr %214
  br label %216

216:                                              ; preds = %210, %205
  %217 = phi ptr [ %86, %205 ], [ %215, %210 ]
  store volatile ptr %200, ptr %217, align 4
  %218 = icmp eq ptr %200, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %216
  store i32 %206, ptr %200, align 4
  br label %347

220:                                              ; preds = %216
  %221 = and i32 %206, 1
  %222 = icmp eq i32 %221, 0
  %223 = select i1 %222, ptr null, ptr %208
  br label %347

224:                                              ; preds = %204
  %225 = icmp eq ptr %200, null
  br i1 %225, label %226, label %239

226:                                              ; preds = %224
  %227 = load i32, ptr %198, align 4
  store i32 %227, ptr %202, align 4
  %228 = and i32 %227, -4
  %229 = inttoptr i32 %228 to ptr
  %230 = icmp eq i32 %228, 0
  br i1 %230, label %237, label %231

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.rb_node, ptr %229, i32 0, i32 2
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, %198
  %235 = getelementptr inbounds %struct.rb_node, ptr %229, i32 0, i32 1
  %236 = select i1 %234, ptr %232, ptr %235
  br label %237

237:                                              ; preds = %231, %226
  %238 = phi ptr [ %86, %226 ], [ %236, %231 ]
  store volatile ptr %202, ptr %238, align 4
  br label %347

239:                                              ; preds = %224
  %240 = getelementptr inbounds %struct.rb_node, ptr %200, i32 0, i32 2
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %250

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.rb_node, ptr %200, i32 0, i32 1
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr %struct.vm_area_struct, ptr %95, i32 0, i32 5
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr i8, ptr %200, i32 12
  store i32 %247, ptr %248, align 4
  %249 = ptrtoint ptr %200 to i32
  br label %314

250:                                              ; preds = %250, %239
  %251 = phi ptr [ %254, %250 ], [ %241, %239 ]
  %252 = phi ptr [ %251, %250 ], [ %200, %239 ]
  %253 = getelementptr inbounds %struct.rb_node, ptr %251, i32 0, i32 2
  %254 = load ptr, ptr %253, align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %250

256:                                              ; preds = %250
  %257 = getelementptr inbounds %struct.rb_node, ptr %251, i32 0, i32 1
  %258 = load ptr, ptr %257, align 4
  %259 = getelementptr inbounds %struct.rb_node, ptr %252, i32 0, i32 2
  store volatile ptr %258, ptr %259, align 4
  store volatile ptr %200, ptr %257, align 4
  %260 = load i32, ptr %200, align 4
  %261 = and i32 %260, 1
  %262 = ptrtoint ptr %251 to i32
  %263 = or i32 %261, %262
  store i32 %263, ptr %200, align 4
  %264 = getelementptr %struct.vm_area_struct, ptr %95, i32 0, i32 5
  %265 = load i32, ptr %264, align 4
  %266 = getelementptr i8, ptr %251, i32 12
  store i32 %265, ptr %266, align 4
  %267 = icmp eq ptr %252, %251
  br i1 %267, label %314, label %268

268:                                              ; preds = %309, %256
  %269 = phi ptr [ %312, %309 ], [ %252, %256 ]
  %270 = getelementptr i8, ptr %269, i32 -16
  %271 = load i32, ptr %270, align 4
  %272 = getelementptr i8, ptr %269, i32 24
  %273 = load i32, ptr %272, align 4
  %274 = and i32 %273, 256
  %275 = icmp eq i32 %274, 0
  %276 = load i32, ptr @stack_guard_gap, align 4
  %277 = tail call i32 @llvm.usub.sat.i32(i32 %271, i32 %276) #19
  %278 = select i1 %275, i32 %271, i32 %277
  %279 = getelementptr i8, ptr %269, i32 -4
  %280 = load ptr, ptr %279, align 4
  %281 = icmp eq ptr %280, null
  br i1 %281, label %286, label %282

282:                                              ; preds = %268
  %283 = getelementptr inbounds %struct.vm_area_struct, ptr %280, i32 0, i32 1
  %284 = load i32, ptr %283, align 4
  %285 = tail call i32 @llvm.usub.sat.i32(i32 %278, i32 %284) #19
  br label %286

286:                                              ; preds = %282, %268
  %287 = phi i32 [ %278, %268 ], [ %285, %282 ]
  %288 = getelementptr i8, ptr %269, i32 8
  %289 = load ptr, ptr %288, align 4
  %290 = icmp eq ptr %289, null
  br i1 %290, label %295, label %291

291:                                              ; preds = %286
  %292 = getelementptr i8, ptr %289, i32 12
  %293 = load i32, ptr %292, align 4
  %294 = tail call i32 @llvm.umax.i32(i32 %293, i32 %287) #19
  br label %295

295:                                              ; preds = %291, %286
  %296 = phi i32 [ %287, %286 ], [ %294, %291 ]
  %297 = getelementptr i8, ptr %269, i32 4
  %298 = load ptr, ptr %297, align 4
  %299 = icmp eq ptr %298, null
  br i1 %299, label %304, label %300

300:                                              ; preds = %295
  %301 = getelementptr i8, ptr %298, i32 12
  %302 = load i32, ptr %301, align 4
  %303 = tail call i32 @llvm.umax.i32(i32 %302, i32 %296) #19
  br label %304

304:                                              ; preds = %300, %295
  %305 = phi i32 [ %296, %295 ], [ %303, %300 ]
  %306 = getelementptr i8, ptr %269, i32 12
  %307 = load i32, ptr %306, align 4
  %308 = icmp eq i32 %307, %305
  br i1 %308, label %314, label %309

309:                                              ; preds = %304
  store i32 %305, ptr %306, align 4
  %310 = load i32, ptr %269, align 4
  %311 = and i32 %310, -4
  %312 = inttoptr i32 %311 to ptr
  %313 = icmp eq ptr %251, %312
  br i1 %313, label %314, label %268

314:                                              ; preds = %309, %304, %256, %243
  %315 = phi i32 [ %262, %256 ], [ %249, %243 ], [ %262, %304 ], [ %262, %309 ]
  %316 = phi ptr [ %251, %256 ], [ %200, %243 ], [ %252, %304 ], [ %252, %309 ]
  %317 = phi ptr [ %251, %256 ], [ %200, %243 ], [ %251, %304 ], [ %251, %309 ]
  %318 = phi ptr [ %258, %256 ], [ %245, %243 ], [ %258, %304 ], [ %258, %309 ]
  %319 = load ptr, ptr %201, align 4
  %320 = getelementptr inbounds %struct.rb_node, ptr %317, i32 0, i32 2
  store volatile ptr %319, ptr %320, align 4
  %321 = load i32, ptr %319, align 4
  %322 = and i32 %321, 1
  %323 = or i32 %322, %315
  store i32 %323, ptr %319, align 4
  %324 = load i32, ptr %198, align 4
  %325 = and i32 %324, -4
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %334, label %327

327:                                              ; preds = %314
  %328 = inttoptr i32 %325 to ptr
  %329 = getelementptr inbounds %struct.rb_node, ptr %328, i32 0, i32 2
  %330 = load ptr, ptr %329, align 4
  %331 = icmp eq ptr %330, %198
  %332 = getelementptr inbounds %struct.rb_node, ptr %328, i32 0, i32 1
  %333 = select i1 %331, ptr %329, ptr %332
  br label %334

334:                                              ; preds = %327, %314
  %335 = phi ptr [ %86, %314 ], [ %333, %327 ]
  store volatile ptr %317, ptr %335, align 4
  %336 = icmp eq ptr %318, null
  br i1 %336, label %340, label %337

337:                                              ; preds = %334
  %338 = ptrtoint ptr %316 to i32
  %339 = or i32 %338, 1
  store i32 %339, ptr %318, align 4
  br label %345

340:                                              ; preds = %334
  %341 = load i32, ptr %317, align 4
  %342 = and i32 %341, 1
  %343 = icmp eq i32 %342, 0
  %344 = select i1 %343, ptr null, ptr %316
  br label %345

345:                                              ; preds = %340, %337
  %346 = phi ptr [ null, %337 ], [ %344, %340 ]
  store i32 %324, ptr %317, align 4
  br label %347

347:                                              ; preds = %345, %237, %220, %219
  %348 = phi ptr [ %317, %345 ], [ %229, %237 ], [ %208, %220 ], [ %208, %219 ]
  %349 = phi ptr [ %346, %345 ], [ null, %237 ], [ %223, %220 ], [ null, %219 ]
  %350 = icmp eq ptr %348, null
  br i1 %350, label %397, label %351

351:                                              ; preds = %392, %347
  %352 = phi ptr [ %395, %392 ], [ %348, %347 ]
  %353 = getelementptr i8, ptr %352, i32 -16
  %354 = load i32, ptr %353, align 4
  %355 = getelementptr i8, ptr %352, i32 24
  %356 = load i32, ptr %355, align 4
  %357 = and i32 %356, 256
  %358 = icmp eq i32 %357, 0
  %359 = load i32, ptr @stack_guard_gap, align 4
  %360 = tail call i32 @llvm.usub.sat.i32(i32 %354, i32 %359) #19
  %361 = select i1 %358, i32 %354, i32 %360
  %362 = getelementptr i8, ptr %352, i32 -4
  %363 = load ptr, ptr %362, align 4
  %364 = icmp eq ptr %363, null
  br i1 %364, label %369, label %365

365:                                              ; preds = %351
  %366 = getelementptr inbounds %struct.vm_area_struct, ptr %363, i32 0, i32 1
  %367 = load i32, ptr %366, align 4
  %368 = tail call i32 @llvm.usub.sat.i32(i32 %361, i32 %367) #19
  br label %369

369:                                              ; preds = %365, %351
  %370 = phi i32 [ %361, %351 ], [ %368, %365 ]
  %371 = getelementptr i8, ptr %352, i32 8
  %372 = load ptr, ptr %371, align 4
  %373 = icmp eq ptr %372, null
  br i1 %373, label %378, label %374

374:                                              ; preds = %369
  %375 = getelementptr i8, ptr %372, i32 12
  %376 = load i32, ptr %375, align 4
  %377 = tail call i32 @llvm.umax.i32(i32 %376, i32 %370) #19
  br label %378

378:                                              ; preds = %374, %369
  %379 = phi i32 [ %370, %369 ], [ %377, %374 ]
  %380 = getelementptr i8, ptr %352, i32 4
  %381 = load ptr, ptr %380, align 4
  %382 = icmp eq ptr %381, null
  br i1 %382, label %387, label %383

383:                                              ; preds = %378
  %384 = getelementptr i8, ptr %381, i32 12
  %385 = load i32, ptr %384, align 4
  %386 = tail call i32 @llvm.umax.i32(i32 %385, i32 %379) #19
  br label %387

387:                                              ; preds = %383, %378
  %388 = phi i32 [ %379, %378 ], [ %386, %383 ]
  %389 = getelementptr i8, ptr %352, i32 12
  %390 = load i32, ptr %389, align 4
  %391 = icmp eq i32 %390, %388
  br i1 %391, label %397, label %392

392:                                              ; preds = %387
  store i32 %388, ptr %389, align 4
  %393 = load i32, ptr %352, align 4
  %394 = and i32 %393, -4
  %395 = inttoptr i32 %394 to ptr
  %396 = icmp eq i32 %394, 0
  br i1 %396, label %397, label %351

397:                                              ; preds = %392, %387, %347
  %398 = icmp eq ptr %349, null
  br i1 %398, label %596, label %594

399:                                              ; preds = %196
  br i1 %203, label %400, label %419

400:                                              ; preds = %399
  %401 = load i32, ptr %198, align 4
  %402 = and i32 %401, -4
  %403 = inttoptr i32 %402 to ptr
  %404 = icmp eq i32 %402, 0
  br i1 %404, label %411, label %405

405:                                              ; preds = %400
  %406 = getelementptr inbounds %struct.rb_node, ptr %403, i32 0, i32 2
  %407 = load ptr, ptr %406, align 4
  %408 = icmp eq ptr %407, %198
  %409 = getelementptr inbounds %struct.rb_node, ptr %403, i32 0, i32 1
  %410 = select i1 %408, ptr %406, ptr %409
  br label %411

411:                                              ; preds = %405, %400
  %412 = phi ptr [ %86, %400 ], [ %410, %405 ]
  store volatile ptr %200, ptr %412, align 4
  %413 = icmp eq ptr %200, null
  br i1 %413, label %415, label %414

414:                                              ; preds = %411
  store i32 %401, ptr %200, align 4
  br label %542

415:                                              ; preds = %411
  %416 = and i32 %401, 1
  %417 = icmp eq i32 %416, 0
  %418 = select i1 %417, ptr null, ptr %403
  br label %542

419:                                              ; preds = %399
  %420 = icmp eq ptr %200, null
  br i1 %420, label %421, label %434

421:                                              ; preds = %419
  %422 = load i32, ptr %198, align 4
  store i32 %422, ptr %202, align 4
  %423 = and i32 %422, -4
  %424 = inttoptr i32 %423 to ptr
  %425 = icmp eq i32 %423, 0
  br i1 %425, label %432, label %426

426:                                              ; preds = %421
  %427 = getelementptr inbounds %struct.rb_node, ptr %424, i32 0, i32 2
  %428 = load ptr, ptr %427, align 4
  %429 = icmp eq ptr %428, %198
  %430 = getelementptr inbounds %struct.rb_node, ptr %424, i32 0, i32 1
  %431 = select i1 %429, ptr %427, ptr %430
  br label %432

432:                                              ; preds = %426, %421
  %433 = phi ptr [ %86, %421 ], [ %431, %426 ]
  store volatile ptr %202, ptr %433, align 4
  br label %542

434:                                              ; preds = %419
  %435 = getelementptr inbounds %struct.rb_node, ptr %200, i32 0, i32 2
  %436 = load ptr, ptr %435, align 4
  %437 = icmp eq ptr %436, null
  br i1 %437, label %438, label %445

438:                                              ; preds = %434
  %439 = getelementptr inbounds %struct.rb_node, ptr %200, i32 0, i32 1
  %440 = load ptr, ptr %439, align 4
  %441 = getelementptr %struct.vm_area_struct, ptr %95, i32 0, i32 5
  %442 = load i32, ptr %441, align 4
  %443 = getelementptr i8, ptr %200, i32 12
  store i32 %442, ptr %443, align 4
  %444 = ptrtoint ptr %200 to i32
  br label %509

445:                                              ; preds = %445, %434
  %446 = phi ptr [ %449, %445 ], [ %436, %434 ]
  %447 = phi ptr [ %446, %445 ], [ %200, %434 ]
  %448 = getelementptr inbounds %struct.rb_node, ptr %446, i32 0, i32 2
  %449 = load ptr, ptr %448, align 4
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %445

451:                                              ; preds = %445
  %452 = getelementptr inbounds %struct.rb_node, ptr %446, i32 0, i32 1
  %453 = load ptr, ptr %452, align 4
  %454 = getelementptr inbounds %struct.rb_node, ptr %447, i32 0, i32 2
  store volatile ptr %453, ptr %454, align 4
  store volatile ptr %200, ptr %452, align 4
  %455 = load i32, ptr %200, align 4
  %456 = and i32 %455, 1
  %457 = ptrtoint ptr %446 to i32
  %458 = or i32 %456, %457
  store i32 %458, ptr %200, align 4
  %459 = getelementptr %struct.vm_area_struct, ptr %95, i32 0, i32 5
  %460 = load i32, ptr %459, align 4
  %461 = getelementptr i8, ptr %446, i32 12
  store i32 %460, ptr %461, align 4
  %462 = icmp eq ptr %447, %446
  br i1 %462, label %509, label %463

463:                                              ; preds = %504, %451
  %464 = phi ptr [ %507, %504 ], [ %447, %451 ]
  %465 = getelementptr i8, ptr %464, i32 -16
  %466 = load i32, ptr %465, align 4
  %467 = getelementptr i8, ptr %464, i32 24
  %468 = load i32, ptr %467, align 4
  %469 = and i32 %468, 256
  %470 = icmp eq i32 %469, 0
  %471 = load i32, ptr @stack_guard_gap, align 4
  %472 = tail call i32 @llvm.usub.sat.i32(i32 %466, i32 %471) #19
  %473 = select i1 %470, i32 %466, i32 %472
  %474 = getelementptr i8, ptr %464, i32 -4
  %475 = load ptr, ptr %474, align 4
  %476 = icmp eq ptr %475, null
  br i1 %476, label %481, label %477

477:                                              ; preds = %463
  %478 = getelementptr inbounds %struct.vm_area_struct, ptr %475, i32 0, i32 1
  %479 = load i32, ptr %478, align 4
  %480 = tail call i32 @llvm.usub.sat.i32(i32 %473, i32 %479) #19
  br label %481

481:                                              ; preds = %477, %463
  %482 = phi i32 [ %473, %463 ], [ %480, %477 ]
  %483 = getelementptr i8, ptr %464, i32 8
  %484 = load ptr, ptr %483, align 4
  %485 = icmp eq ptr %484, null
  br i1 %485, label %490, label %486

486:                                              ; preds = %481
  %487 = getelementptr i8, ptr %484, i32 12
  %488 = load i32, ptr %487, align 4
  %489 = tail call i32 @llvm.umax.i32(i32 %488, i32 %482) #19
  br label %490

490:                                              ; preds = %486, %481
  %491 = phi i32 [ %482, %481 ], [ %489, %486 ]
  %492 = getelementptr i8, ptr %464, i32 4
  %493 = load ptr, ptr %492, align 4
  %494 = icmp eq ptr %493, null
  br i1 %494, label %499, label %495

495:                                              ; preds = %490
  %496 = getelementptr i8, ptr %493, i32 12
  %497 = load i32, ptr %496, align 4
  %498 = tail call i32 @llvm.umax.i32(i32 %497, i32 %491) #19
  br label %499

499:                                              ; preds = %495, %490
  %500 = phi i32 [ %491, %490 ], [ %498, %495 ]
  %501 = getelementptr i8, ptr %464, i32 12
  %502 = load i32, ptr %501, align 4
  %503 = icmp eq i32 %502, %500
  br i1 %503, label %509, label %504

504:                                              ; preds = %499
  store i32 %500, ptr %501, align 4
  %505 = load i32, ptr %464, align 4
  %506 = and i32 %505, -4
  %507 = inttoptr i32 %506 to ptr
  %508 = icmp eq ptr %446, %507
  br i1 %508, label %509, label %463

509:                                              ; preds = %504, %499, %451, %438
  %510 = phi i32 [ %457, %451 ], [ %444, %438 ], [ %457, %499 ], [ %457, %504 ]
  %511 = phi ptr [ %446, %451 ], [ %200, %438 ], [ %447, %499 ], [ %447, %504 ]
  %512 = phi ptr [ %446, %451 ], [ %200, %438 ], [ %446, %499 ], [ %446, %504 ]
  %513 = phi ptr [ %453, %451 ], [ %440, %438 ], [ %453, %499 ], [ %453, %504 ]
  %514 = load ptr, ptr %201, align 4
  %515 = getelementptr inbounds %struct.rb_node, ptr %512, i32 0, i32 2
  store volatile ptr %514, ptr %515, align 4
  %516 = load i32, ptr %514, align 4
  %517 = and i32 %516, 1
  %518 = or i32 %517, %510
  store i32 %518, ptr %514, align 4
  %519 = load i32, ptr %198, align 4
  %520 = and i32 %519, -4
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %529, label %522

522:                                              ; preds = %509
  %523 = inttoptr i32 %520 to ptr
  %524 = getelementptr inbounds %struct.rb_node, ptr %523, i32 0, i32 2
  %525 = load ptr, ptr %524, align 4
  %526 = icmp eq ptr %525, %198
  %527 = getelementptr inbounds %struct.rb_node, ptr %523, i32 0, i32 1
  %528 = select i1 %526, ptr %524, ptr %527
  br label %529

529:                                              ; preds = %522, %509
  %530 = phi ptr [ %86, %509 ], [ %528, %522 ]
  store volatile ptr %512, ptr %530, align 4
  %531 = icmp eq ptr %513, null
  br i1 %531, label %535, label %532

532:                                              ; preds = %529
  %533 = ptrtoint ptr %511 to i32
  %534 = or i32 %533, 1
  store i32 %534, ptr %513, align 4
  br label %540

535:                                              ; preds = %529
  %536 = load i32, ptr %512, align 4
  %537 = and i32 %536, 1
  %538 = icmp eq i32 %537, 0
  %539 = select i1 %538, ptr null, ptr %511
  br label %540

540:                                              ; preds = %535, %532
  %541 = phi ptr [ null, %532 ], [ %539, %535 ]
  store i32 %519, ptr %512, align 4
  br label %542

542:                                              ; preds = %540, %432, %415, %414
  %543 = phi ptr [ %512, %540 ], [ %424, %432 ], [ %403, %415 ], [ %403, %414 ]
  %544 = phi ptr [ %541, %540 ], [ null, %432 ], [ %418, %415 ], [ null, %414 ]
  %545 = icmp eq ptr %543, null
  br i1 %545, label %592, label %546

546:                                              ; preds = %587, %542
  %547 = phi ptr [ %590, %587 ], [ %543, %542 ]
  %548 = getelementptr i8, ptr %547, i32 -16
  %549 = load i32, ptr %548, align 4
  %550 = getelementptr i8, ptr %547, i32 24
  %551 = load i32, ptr %550, align 4
  %552 = and i32 %551, 256
  %553 = icmp eq i32 %552, 0
  %554 = load i32, ptr @stack_guard_gap, align 4
  %555 = tail call i32 @llvm.usub.sat.i32(i32 %549, i32 %554) #19
  %556 = select i1 %553, i32 %549, i32 %555
  %557 = getelementptr i8, ptr %547, i32 -4
  %558 = load ptr, ptr %557, align 4
  %559 = icmp eq ptr %558, null
  br i1 %559, label %564, label %560

560:                                              ; preds = %546
  %561 = getelementptr inbounds %struct.vm_area_struct, ptr %558, i32 0, i32 1
  %562 = load i32, ptr %561, align 4
  %563 = tail call i32 @llvm.usub.sat.i32(i32 %556, i32 %562) #19
  br label %564

564:                                              ; preds = %560, %546
  %565 = phi i32 [ %556, %546 ], [ %563, %560 ]
  %566 = getelementptr i8, ptr %547, i32 8
  %567 = load ptr, ptr %566, align 4
  %568 = icmp eq ptr %567, null
  br i1 %568, label %573, label %569

569:                                              ; preds = %564
  %570 = getelementptr i8, ptr %567, i32 12
  %571 = load i32, ptr %570, align 4
  %572 = tail call i32 @llvm.umax.i32(i32 %571, i32 %565) #19
  br label %573

573:                                              ; preds = %569, %564
  %574 = phi i32 [ %565, %564 ], [ %572, %569 ]
  %575 = getelementptr i8, ptr %547, i32 4
  %576 = load ptr, ptr %575, align 4
  %577 = icmp eq ptr %576, null
  br i1 %577, label %582, label %578

578:                                              ; preds = %573
  %579 = getelementptr i8, ptr %576, i32 12
  %580 = load i32, ptr %579, align 4
  %581 = tail call i32 @llvm.umax.i32(i32 %580, i32 %574) #19
  br label %582

582:                                              ; preds = %578, %573
  %583 = phi i32 [ %574, %573 ], [ %581, %578 ]
  %584 = getelementptr i8, ptr %547, i32 12
  %585 = load i32, ptr %584, align 4
  %586 = icmp eq i32 %585, %583
  br i1 %586, label %592, label %587

587:                                              ; preds = %582
  store i32 %583, ptr %584, align 4
  %588 = load i32, ptr %547, align 4
  %589 = and i32 %588, -4
  %590 = inttoptr i32 %589 to ptr
  %591 = icmp eq i32 %589, 0
  br i1 %591, label %592, label %546

592:                                              ; preds = %587, %582, %542
  %593 = icmp eq ptr %544, null
  br i1 %593, label %596, label %594

594:                                              ; preds = %592, %397
  %595 = phi ptr [ %349, %397 ], [ %544, %592 ]
  tail call void @__rb_erase_color(ptr noundef nonnull %595, ptr noundef %86, ptr noundef nonnull @vma_gap_callbacks_rotate) #19
  br label %596

596:                                              ; preds = %594, %592, %397
  tail call void @__vma_unlink_list(ptr noundef %8, ptr noundef %95) #19
  %597 = load i64, ptr %87, align 8
  %598 = add i64 %597, 1
  store i64 %598, ptr %87, align 8
  br i1 %75, label %599, label %753

599:                                              ; preds = %596
  %600 = getelementptr inbounds %struct.vm_area_struct, ptr %95, i32 0, i32 8
  %601 = load i32, ptr %600, align 4
  %602 = and i32 %601, 8
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %607, label %604

604:                                              ; preds = %599
  %605 = getelementptr inbounds %struct.address_space, ptr %130, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %605) #19, !srcloc !13
  %606 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %605, ptr %605, i32 1, ptr elementtype(i32) %605) #19, !srcloc !14
  br label %607

607:                                              ; preds = %604, %599
  %608 = getelementptr inbounds %struct.address_space, ptr %130, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %608) #19
  %609 = getelementptr inbounds %struct.address_space, ptr %130, i32 0, i32 5
  tail call void @vma_interval_tree_remove(ptr noundef %95, ptr noundef %609) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !15
  %610 = load i16, ptr %608, align 4
  %611 = add i16 %610, 1
  store i16 %611, ptr %608, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #19, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !19
  br label %753

612:                                              ; preds = %194
  br i1 %14, label %613, label %652

613:                                              ; preds = %612
  %614 = load i32, ptr %4, align 4
  %615 = load i32, ptr %90, align 4
  %616 = load ptr, ptr %86, align 4
  %617 = icmp eq ptr %616, null
  br i1 %617, label %643, label %618

618:                                              ; preds = %630, %613
  %619 = phi ptr [ %632, %630 ], [ %616, %613 ]
  %620 = phi ptr [ %626, %630 ], [ null, %613 ]
  br label %625

621:                                              ; preds = %634
  %622 = getelementptr inbounds %struct.rb_node, ptr %626, i32 0, i32 2
  %623 = load ptr, ptr %622, align 4
  %624 = icmp eq ptr %623, null
  br i1 %624, label %639, label %625

625:                                              ; preds = %621, %618
  %626 = phi ptr [ %619, %618 ], [ %623, %621 ]
  %627 = getelementptr i8, ptr %626, i32 -12
  %628 = load i32, ptr %627, align 4
  %629 = icmp ugt i32 %628, %614
  br i1 %629, label %634, label %630

630:                                              ; preds = %625
  %631 = getelementptr inbounds %struct.rb_node, ptr %626, i32 0, i32 1
  %632 = load ptr, ptr %631, align 4
  %633 = icmp eq ptr %632, null
  br i1 %633, label %641, label %618

634:                                              ; preds = %625
  %635 = getelementptr i8, ptr %626, i32 -16
  %636 = load i32, ptr %635, align 4
  %637 = icmp ult i32 %636, %615
  br i1 %637, label %638, label %621

638:                                              ; preds = %634
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 719, 0\0A.popsection", ""() #19, !srcloc !21
  unreachable

639:                                              ; preds = %621
  %640 = getelementptr inbounds %struct.rb_node, ptr %626, i32 0, i32 2
  br label %643

641:                                              ; preds = %630
  %642 = getelementptr inbounds %struct.rb_node, ptr %626, i32 0, i32 1
  br label %643

643:                                              ; preds = %641, %639, %613
  %644 = phi ptr [ null, %613 ], [ %620, %639 ], [ %626, %641 ]
  %645 = phi ptr [ null, %613 ], [ %626, %639 ], [ %626, %641 ]
  %646 = phi ptr [ %86, %613 ], [ %640, %639 ], [ %642, %641 ]
  %647 = icmp eq ptr %644, null
  %648 = getelementptr i8, ptr %644, i32 -16
  %649 = select i1 %647, ptr null, ptr %648
  tail call void @__vma_link_list(ptr noundef %8, ptr noundef nonnull %4, ptr noundef %649) #19
  tail call void @__vma_link_rb(ptr noundef %8, ptr noundef nonnull %4, ptr noundef %646, ptr noundef %645) #19
  %650 = load i32, ptr %91, align 8
  %651 = add i32 %650, 1
  store i32 %651, ptr %91, align 8
  br label %753

652:                                              ; preds = %612
  br i1 %176, label %653, label %699

653:                                              ; preds = %694, %652
  %654 = phi ptr [ %697, %694 ], [ %88, %652 ]
  %655 = getelementptr i8, ptr %654, i32 -16
  %656 = load i32, ptr %655, align 4
  %657 = getelementptr i8, ptr %654, i32 24
  %658 = load i32, ptr %657, align 4
  %659 = and i32 %658, 256
  %660 = icmp eq i32 %659, 0
  %661 = load i32, ptr @stack_guard_gap, align 4
  %662 = tail call i32 @llvm.usub.sat.i32(i32 %656, i32 %661) #19
  %663 = select i1 %660, i32 %656, i32 %662
  %664 = getelementptr i8, ptr %654, i32 -4
  %665 = load ptr, ptr %664, align 4
  %666 = icmp eq ptr %665, null
  br i1 %666, label %671, label %667

667:                                              ; preds = %653
  %668 = getelementptr inbounds %struct.vm_area_struct, ptr %665, i32 0, i32 1
  %669 = load i32, ptr %668, align 4
  %670 = tail call i32 @llvm.usub.sat.i32(i32 %663, i32 %669) #19
  br label %671

671:                                              ; preds = %667, %653
  %672 = phi i32 [ %663, %653 ], [ %670, %667 ]
  %673 = getelementptr i8, ptr %654, i32 8
  %674 = load ptr, ptr %673, align 4
  %675 = icmp eq ptr %674, null
  br i1 %675, label %680, label %676

676:                                              ; preds = %671
  %677 = getelementptr i8, ptr %674, i32 12
  %678 = load i32, ptr %677, align 4
  %679 = tail call i32 @llvm.umax.i32(i32 %678, i32 %672) #19
  br label %680

680:                                              ; preds = %676, %671
  %681 = phi i32 [ %672, %671 ], [ %679, %676 ]
  %682 = getelementptr i8, ptr %654, i32 4
  %683 = load ptr, ptr %682, align 4
  %684 = icmp eq ptr %683, null
  br i1 %684, label %689, label %685

685:                                              ; preds = %680
  %686 = getelementptr i8, ptr %683, i32 12
  %687 = load i32, ptr %686, align 4
  %688 = tail call i32 @llvm.umax.i32(i32 %687, i32 %681) #19
  br label %689

689:                                              ; preds = %685, %680
  %690 = phi i32 [ %681, %680 ], [ %688, %685 ]
  %691 = getelementptr i8, ptr %654, i32 12
  %692 = load i32, ptr %691, align 4
  %693 = icmp eq i32 %692, %690
  br i1 %693, label %699, label %694

694:                                              ; preds = %689
  store i32 %690, ptr %691, align 4
  %695 = load i32, ptr %654, align 4
  %696 = and i32 %695, -4
  %697 = inttoptr i32 %696 to ptr
  %698 = icmp eq i32 %696, 0
  br i1 %698, label %699, label %653

699:                                              ; preds = %694, %689, %652
  br i1 %181, label %700, label %753

700:                                              ; preds = %699
  %701 = icmp eq ptr %95, null
  br i1 %701, label %702, label %704

702:                                              ; preds = %700
  %703 = load i32, ptr %77, align 4
  store i32 %703, ptr %89, align 8
  br label %753

704:                                              ; preds = %700
  br i1 %82, label %753, label %705

705:                                              ; preds = %704
  %706 = getelementptr inbounds %struct.vm_area_struct, ptr %95, i32 0, i32 4
  br label %707

707:                                              ; preds = %748, %705
  %708 = phi ptr [ %751, %748 ], [ %706, %705 ]
  %709 = getelementptr i8, ptr %708, i32 -16
  %710 = load i32, ptr %709, align 4
  %711 = getelementptr i8, ptr %708, i32 24
  %712 = load i32, ptr %711, align 4
  %713 = and i32 %712, 256
  %714 = icmp eq i32 %713, 0
  %715 = load i32, ptr @stack_guard_gap, align 4
  %716 = tail call i32 @llvm.usub.sat.i32(i32 %710, i32 %715) #19
  %717 = select i1 %714, i32 %710, i32 %716
  %718 = getelementptr i8, ptr %708, i32 -4
  %719 = load ptr, ptr %718, align 4
  %720 = icmp eq ptr %719, null
  br i1 %720, label %725, label %721

721:                                              ; preds = %707
  %722 = getelementptr inbounds %struct.vm_area_struct, ptr %719, i32 0, i32 1
  %723 = load i32, ptr %722, align 4
  %724 = tail call i32 @llvm.usub.sat.i32(i32 %717, i32 %723) #19
  br label %725

725:                                              ; preds = %721, %707
  %726 = phi i32 [ %717, %707 ], [ %724, %721 ]
  %727 = getelementptr i8, ptr %708, i32 8
  %728 = load ptr, ptr %727, align 4
  %729 = icmp eq ptr %728, null
  br i1 %729, label %734, label %730

730:                                              ; preds = %725
  %731 = getelementptr i8, ptr %728, i32 12
  %732 = load i32, ptr %731, align 4
  %733 = tail call i32 @llvm.umax.i32(i32 %732, i32 %726) #19
  br label %734

734:                                              ; preds = %730, %725
  %735 = phi i32 [ %726, %725 ], [ %733, %730 ]
  %736 = getelementptr i8, ptr %708, i32 4
  %737 = load ptr, ptr %736, align 4
  %738 = icmp eq ptr %737, null
  br i1 %738, label %743, label %739

739:                                              ; preds = %734
  %740 = getelementptr i8, ptr %737, i32 12
  %741 = load i32, ptr %740, align 4
  %742 = tail call i32 @llvm.umax.i32(i32 %741, i32 %735) #19
  br label %743

743:                                              ; preds = %739, %734
  %744 = phi i32 [ %735, %734 ], [ %742, %739 ]
  %745 = getelementptr i8, ptr %708, i32 12
  %746 = load i32, ptr %745, align 4
  %747 = icmp eq i32 %746, %744
  br i1 %747, label %753, label %748

748:                                              ; preds = %743
  store i32 %744, ptr %745, align 4
  %749 = load i32, ptr %708, align 4
  %750 = and i32 %749, -4
  %751 = inttoptr i32 %750 to ptr
  %752 = icmp eq i32 %750, 0
  br i1 %752, label %753, label %707

753:                                              ; preds = %748, %743, %704, %702, %699, %643, %607, %596
  br i1 %140, label %781, label %754

754:                                              ; preds = %753
  %755 = load ptr, ptr %83, align 4
  %756 = icmp eq ptr %755, %83
  br i1 %756, label %765, label %757

757:                                              ; preds = %757, %754
  %758 = phi ptr [ %763, %757 ], [ %755, %754 ]
  %759 = getelementptr i8, ptr %758, i32 -8
  %760 = getelementptr i8, ptr %758, i32 -4
  %761 = load ptr, ptr %760, align 4
  %762 = getelementptr inbounds %struct.anon_vma, ptr %761, i32 0, i32 5
  tail call void @anon_vma_interval_tree_insert(ptr noundef %759, ptr noundef %762) #19
  %763 = load ptr, ptr %758, align 4
  %764 = icmp eq ptr %763, %83
  br i1 %764, label %765, label %757

765:                                              ; preds = %757, %754
  br i1 %82, label %766, label %778

766:                                              ; preds = %765
  %767 = getelementptr inbounds %struct.vm_area_struct, ptr %95, i32 0, i32 10
  %768 = load ptr, ptr %767, align 4
  %769 = icmp eq ptr %768, %767
  br i1 %769, label %778, label %770

770:                                              ; preds = %770, %766
  %771 = phi ptr [ %776, %770 ], [ %768, %766 ]
  %772 = getelementptr i8, ptr %771, i32 -8
  %773 = getelementptr i8, ptr %771, i32 -4
  %774 = load ptr, ptr %773, align 4
  %775 = getelementptr inbounds %struct.anon_vma, ptr %774, i32 0, i32 5
  tail call void @anon_vma_interval_tree_insert(ptr noundef %772, ptr noundef %775) #19
  %776 = load ptr, ptr %771, align 4
  %777 = icmp eq ptr %776, %767
  br i1 %777, label %778, label %770

778:                                              ; preds = %770, %766, %765
  %779 = load ptr, ptr %139, align 4
  %780 = getelementptr inbounds %struct.anon_vma, ptr %779, i32 0, i32 1
  tail call void @up_write(ptr noundef %780) #19
  br label %781

781:                                              ; preds = %778, %753
  br i1 %75, label %782, label %788

782:                                              ; preds = %781
  %783 = getelementptr inbounds %struct.address_space, ptr %130, i32 0, i32 6
  tail call void @up_write(ptr noundef %783) #19
  %784 = tail call i32 @uprobe_mmap(ptr noundef %71) #19
  br i1 %82, label %785, label %787

785:                                              ; preds = %782
  %786 = tail call i32 @uprobe_mmap(ptr noundef %95) #19
  br label %787

787:                                              ; preds = %785, %782
  br i1 %195, label %859, label %789

788:                                              ; preds = %781
  br i1 %195, label %863, label %793

789:                                              ; preds = %787
  %790 = load i32, ptr %95, align 4
  %791 = getelementptr inbounds %struct.vm_area_struct, ptr %95, i32 0, i32 1
  %792 = load i32, ptr %791, align 4
  tail call void @uprobe_munmap(ptr noundef %95, i32 noundef %790, i32 noundef %792) #19
  tail call void @fput(ptr noundef nonnull %12) #19
  br label %793

793:                                              ; preds = %789, %788
  %794 = getelementptr inbounds %struct.vm_area_struct, ptr %95, i32 0, i32 11
  %795 = load ptr, ptr %794, align 4
  %796 = icmp eq ptr %795, null
  br i1 %796, label %798, label %797

797:                                              ; preds = %793
  tail call void @unlink_anon_vmas(ptr noundef %95) #19
  br label %798

798:                                              ; preds = %797, %793
  %799 = load i32, ptr %91, align 8
  %800 = add i32 %799, -1
  store i32 %800, ptr %91, align 8
  tail call void @vm_area_free(ptr noundef %95) #19
  %801 = icmp eq i32 %100, 3
  br i1 %801, label %808, label %802

802:                                              ; preds = %798
  %803 = load ptr, ptr %92, align 4
  %804 = icmp eq i32 %100, 2
  br i1 %804, label %805, label %808

805:                                              ; preds = %802
  %806 = getelementptr inbounds %struct.vm_area_struct, ptr %803, i32 0, i32 1
  %807 = load i32, ptr %806, align 4
  br label %93

808:                                              ; preds = %802, %798
  %809 = phi ptr [ %803, %802 ], [ %71, %798 ]
  %810 = icmp eq ptr %809, null
  br i1 %810, label %859, label %811

811:                                              ; preds = %808
  %812 = getelementptr inbounds %struct.vm_area_struct, ptr %809, i32 0, i32 4
  br label %813

813:                                              ; preds = %854, %811
  %814 = phi ptr [ %857, %854 ], [ %812, %811 ]
  %815 = getelementptr i8, ptr %814, i32 -16
  %816 = load i32, ptr %815, align 4
  %817 = getelementptr i8, ptr %814, i32 24
  %818 = load i32, ptr %817, align 4
  %819 = and i32 %818, 256
  %820 = icmp eq i32 %819, 0
  %821 = load i32, ptr @stack_guard_gap, align 4
  %822 = tail call i32 @llvm.usub.sat.i32(i32 %816, i32 %821) #19
  %823 = select i1 %820, i32 %816, i32 %822
  %824 = getelementptr i8, ptr %814, i32 -4
  %825 = load ptr, ptr %824, align 4
  %826 = icmp eq ptr %825, null
  br i1 %826, label %831, label %827

827:                                              ; preds = %813
  %828 = getelementptr inbounds %struct.vm_area_struct, ptr %825, i32 0, i32 1
  %829 = load i32, ptr %828, align 4
  %830 = tail call i32 @llvm.usub.sat.i32(i32 %823, i32 %829) #19
  br label %831

831:                                              ; preds = %827, %813
  %832 = phi i32 [ %823, %813 ], [ %830, %827 ]
  %833 = getelementptr i8, ptr %814, i32 8
  %834 = load ptr, ptr %833, align 4
  %835 = icmp eq ptr %834, null
  br i1 %835, label %840, label %836

836:                                              ; preds = %831
  %837 = getelementptr i8, ptr %834, i32 12
  %838 = load i32, ptr %837, align 4
  %839 = tail call i32 @llvm.umax.i32(i32 %838, i32 %832) #19
  br label %840

840:                                              ; preds = %836, %831
  %841 = phi i32 [ %832, %831 ], [ %839, %836 ]
  %842 = getelementptr i8, ptr %814, i32 4
  %843 = load ptr, ptr %842, align 4
  %844 = icmp eq ptr %843, null
  br i1 %844, label %849, label %845

845:                                              ; preds = %840
  %846 = getelementptr i8, ptr %843, i32 12
  %847 = load i32, ptr %846, align 4
  %848 = tail call i32 @llvm.umax.i32(i32 %847, i32 %841) #19
  br label %849

849:                                              ; preds = %845, %840
  %850 = phi i32 [ %841, %840 ], [ %848, %845 ]
  %851 = getelementptr i8, ptr %814, i32 12
  %852 = load i32, ptr %851, align 4
  %853 = icmp eq i32 %852, %850
  br i1 %853, label %859, label %854

854:                                              ; preds = %849
  store i32 %850, ptr %851, align 4
  %855 = load i32, ptr %814, align 4
  %856 = and i32 %855, -4
  %857 = inttoptr i32 %856 to ptr
  %858 = icmp eq i32 %856, 0
  br i1 %858, label %859, label %813

859:                                              ; preds = %854, %849, %808, %787
  %860 = select i1 %14, i1 %75, i1 false
  br i1 %860, label %861, label %863

861:                                              ; preds = %859
  %862 = tail call i32 @uprobe_mmap(ptr noundef nonnull %4) #19
  br label %863

863:                                              ; preds = %861, %859, %788, %66
  %864 = phi i32 [ 0, %859 ], [ 0, %861 ], [ %67, %66 ], [ 0, %788 ]
  ret i32 %864
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_vma_clone(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_munmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_interval_tree_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_interval_tree_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @uprobe_mmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_area_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vma_merge(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readnone %5, ptr noundef readnone %6, i32 noundef %7, ptr nocapture readnone %8, ptr nocapture readnone %9) local_unnamed_addr #0 {
  %11 = sub i32 %3, %2
  %12 = lshr i32 %11, 12
  %13 = and i32 %4, 268715008
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %196

15:                                               ; preds = %10
  %16 = icmp eq ptr %1, null
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 2
  %18 = select i1 %16, ptr %0, ptr %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.vm_area_struct, ptr %19, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, %3
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %19, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %21, %15
  %29 = phi ptr [ %27, %25 ], [ %19, %21 ], [ null, %15 ]
  br i1 %16, label %133, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, %2
  br i1 %33, label %34, label %133

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %4
  br i1 %37, label %38, label %133

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %6
  br i1 %41, label %42, label %133

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.vm_operations_struct, ptr %44, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %133

50:                                               ; preds = %46, %42
  %51 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 11
  %52 = load ptr, ptr %51, align 4
  %53 = icmp ne ptr %5, null
  %54 = icmp ne ptr %52, null
  %55 = and i1 %53, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 10
  %58 = load volatile ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %57
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 10, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %58, %62
  %64 = icmp eq ptr %52, %5
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %68, label %133

66:                                               ; preds = %56, %50
  %67 = icmp eq ptr %52, %5
  br i1 %67, label %68, label %133

68:                                               ; preds = %66, %60
  %69 = load i32, ptr %1, align 4
  %70 = sub i32 %2, %69
  %71 = lshr i32 %70, 12
  %72 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %71, %73
  %75 = icmp eq i32 %74, %7
  br i1 %75, label %76, label %133

76:                                               ; preds = %68
  %77 = icmp eq ptr %29, null
  br i1 %77, label %128, label %78

78:                                               ; preds = %76
  %79 = load i32, ptr %29, align 4
  %80 = icmp eq i32 %79, %3
  br i1 %80, label %81, label %128

81:                                               ; preds = %78
  %82 = add i32 %12, %7
  %83 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 8
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, %4
  br i1 %85, label %86, label %128

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 14
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, %6
  br i1 %89, label %90, label %128

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 12
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.vm_operations_struct, ptr %92, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %128

98:                                               ; preds = %94, %90
  %99 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 11
  %100 = load ptr, ptr %99, align 4
  %101 = icmp ne ptr %100, null
  %102 = and i1 %53, %101
  br i1 %102, label %113, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 10
  %105 = load volatile ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, %104
  br i1 %106, label %113, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 10, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %105, %109
  %111 = icmp eq ptr %100, %5
  %112 = select i1 %110, i1 true, i1 %111
  br i1 %112, label %115, label %128

113:                                              ; preds = %103, %98
  %114 = icmp eq ptr %100, %5
  br i1 %114, label %115, label %128

115:                                              ; preds = %113, %107
  %116 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 13
  %117 = load i32, ptr %116, align 4
  %118 = icmp eq i32 %117, %82
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = icmp eq ptr %52, null
  %121 = icmp eq ptr %100, null
  %122 = or i1 %120, %121
  %123 = icmp eq ptr %52, %100
  %124 = or i1 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 1
  %127 = load i32, ptr %126, align 4
  br label %128

128:                                              ; preds = %125, %119, %115, %113, %107, %94, %86, %81, %78, %76
  %129 = phi i32 [ %127, %125 ], [ %3, %119 ], [ %3, %115 ], [ %3, %113 ], [ %3, %107 ], [ %3, %94 ], [ %3, %86 ], [ %3, %81 ], [ %3, %78 ], [ %3, %76 ]
  %130 = tail call i32 @__vma_adjust(ptr noundef nonnull %1, i32 noundef %69, i32 noundef %129, i32 noundef %73, ptr noundef null, ptr noundef nonnull %1)
  %131 = icmp eq i32 %130, 0
  %132 = select i1 %131, ptr %1, ptr null
  br label %196

133:                                              ; preds = %68, %66, %60, %46, %38, %34, %30, %28
  %134 = icmp eq ptr %29, null
  br i1 %134, label %196, label %135

135:                                              ; preds = %133
  %136 = load i32, ptr %29, align 4
  %137 = icmp eq i32 %136, %3
  br i1 %137, label %138, label %196

138:                                              ; preds = %135
  %139 = add i32 %12, %7
  %140 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 8
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, %4
  br i1 %142, label %143, label %196

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 14
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, %6
  br i1 %146, label %147, label %196

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 12
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.vm_operations_struct, ptr %149, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %196

155:                                              ; preds = %151, %147
  %156 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 11
  %157 = load ptr, ptr %156, align 4
  %158 = icmp ne ptr %5, null
  %159 = icmp ne ptr %157, null
  %160 = and i1 %158, %159
  br i1 %160, label %171, label %161

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 10
  %163 = load volatile ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, %162
  br i1 %164, label %171, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 10, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %163, %167
  %169 = icmp eq ptr %157, %5
  %170 = select i1 %168, i1 true, i1 %169
  br i1 %170, label %173, label %196

171:                                              ; preds = %161, %155
  %172 = icmp eq ptr %157, %5
  br i1 %172, label %173, label %196

173:                                              ; preds = %171, %165
  %174 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 13
  %175 = load i32, ptr %174, align 4
  %176 = icmp eq i32 %175, %139
  br i1 %176, label %177, label %196

177:                                              ; preds = %173
  br i1 %16, label %187, label %178

178:                                              ; preds = %177
  %179 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %180 = load i32, ptr %179, align 4
  %181 = icmp ugt i32 %180, %2
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = load i32, ptr %1, align 4
  %184 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %185 = load i32, ptr %184, align 4
  %186 = tail call i32 @__vma_adjust(ptr noundef nonnull %1, i32 noundef %183, i32 noundef %2, i32 noundef %185, ptr noundef null, ptr noundef nonnull %29)
  br label %191

187:                                              ; preds = %178, %177
  %188 = getelementptr inbounds %struct.vm_area_struct, ptr %29, i32 0, i32 1
  %189 = load i32, ptr %188, align 4
  %190 = tail call i32 @__vma_adjust(ptr noundef %19, i32 noundef %2, i32 noundef %189, i32 noundef %7, ptr noundef null, ptr noundef nonnull %29)
  br label %191

191:                                              ; preds = %187, %182
  %192 = phi ptr [ %19, %182 ], [ %29, %187 ]
  %193 = phi i32 [ %186, %182 ], [ %190, %187 ]
  %194 = icmp eq i32 %193, 0
  %195 = select i1 %194, ptr %192, ptr null
  br label %196

196:                                              ; preds = %191, %173, %171, %165, %151, %143, %138, %135, %133, %128, %10
  %197 = phi ptr [ null, %10 ], [ null, %135 ], [ null, %133 ], [ null, %138 ], [ null, %143 ], [ null, %151 ], [ null, %165 ], [ null, %171 ], [ null, %173 ], [ %132, %128 ], [ %195, %191 ]
  ret ptr %197
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @find_mergeable_anon_vma(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr %3, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 8
  %20 = load i32, ptr %19, align 4
  %21 = xor i32 %20, %18
  %22 = icmp ult i32 %21, 8
  br i1 %22, label %23, label %45

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 13
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %0, align 4
  %29 = sub i32 %7, %28
  %30 = lshr i32 %29, 12
  %31 = add i32 %30, %27
  %32 = icmp eq i32 %25, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 11
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 10
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 10, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %39, %43
  br i1 %44, label %90, label %45

45:                                               ; preds = %41, %37, %33, %23, %16, %10, %5, %1
  %46 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %90, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.vm_area_struct, ptr %47, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = load i32, ptr %0, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %90

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.vm_area_struct, ptr %47, i32 0, i32 14
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %56, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.vm_area_struct, ptr %47, i32 0, i32 8
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %64 = load i32, ptr %63, align 4
  %65 = xor i32 %64, %62
  %66 = icmp ult i32 %65, 8
  br i1 %66, label %67, label %90

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.vm_area_struct, ptr %47, i32 0, i32 13
  %71 = load i32, ptr %70, align 4
  %72 = load i32, ptr %47, align 4
  %73 = sub i32 %51, %72
  %74 = lshr i32 %73, 12
  %75 = add i32 %74, %71
  %76 = icmp eq i32 %69, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.vm_area_struct, ptr %47, i32 0, i32 11
  %79 = load volatile ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.vm_area_struct, ptr %47, i32 0, i32 10
  %83 = load volatile ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %82
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.vm_area_struct, ptr %47, i32 0, i32 10, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %83, %87
  br i1 %88, label %90, label %89

89:                                               ; preds = %85, %81, %77
  br label %90

90:                                               ; preds = %89, %85, %67, %60, %54, %49, %45, %41
  %91 = phi ptr [ null, %45 ], [ %35, %41 ], [ %79, %85 ], [ null, %89 ], [ null, %67 ], [ null, %60 ], [ null, %54 ], [ null, %49 ]
  ret ptr %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mlock_future_check(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %1, 8192
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = lshr i32 %2, 12
  %8 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 20
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  %11 = tail call ptr @llvm.thread.pointer() #19
  %12 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 93
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr %struct.signal_struct, ptr %13, i32 0, i32 50, i32 8
  %15 = load volatile i32, ptr %14, align 8
  %16 = lshr i32 %15, 12
  %17 = icmp ugt i32 %10, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = tail call zeroext i1 @capable(i32 noundef 14) #19
  br i1 %19, label %20, label %21

20:                                               ; preds = %18, %6, %3
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ 0, %20 ], [ -11, %18 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_mmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = tail call ptr @llvm.thread.pointer() #19
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 37
  %11 = load ptr, ptr %10, align 4
  store i32 0, ptr %6, align 4
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %272, label %13

13:                                               ; preds = %8
  %14 = and i32 %3, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 46
  %18 = load i32, ptr %17, align 16
  %19 = and i32 %18, 4194304
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = icmp eq ptr %0, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %25 = tail call zeroext i1 @path_noexec(ptr noundef %24) #19
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %21
  %27 = or i32 %3, 4
  br label %28

28:                                               ; preds = %26, %23, %16, %13
  %29 = phi i32 [ %3, %23 ], [ %27, %26 ], [ %3, %16 ], [ %3, %13 ]
  %30 = lshr i32 %4, 16
  %31 = and i32 %30, 16
  %32 = or i32 %31, %4
  %33 = and i32 %32, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = and i32 %1, -4096
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr @mmap_min_addr, align 4
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = add i32 %39, 4095
  %43 = and i32 %42, -4096
  br label %44

44:                                               ; preds = %41, %38, %35, %28
  %45 = phi i32 [ %1, %28 ], [ %43, %41 ], [ %36, %38 ], [ 0, %35 ]
  %46 = add i32 %2, 4095
  %47 = and i32 %46, -4096
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %272, label %49

49:                                               ; preds = %44
  %50 = lshr i32 %46, 12
  %51 = xor i32 %5, -1
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %272, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.anon.12, ptr %11, i32 0, i32 13
  %55 = load i32, ptr %54, align 8
  %56 = load i32, ptr @sysctl_max_map_count, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %272, label %58

58:                                               ; preds = %53
  %59 = icmp ne i32 %33, 0
  %60 = icmp ult i32 %45, 8192
  %61 = and i1 %59, %60
  br i1 %61, label %272, label %62

62:                                               ; preds = %58
  %63 = icmp ugt i32 %47, -1090519040
  br i1 %63, label %272, label %64

64:                                               ; preds = %62
  %65 = load ptr, ptr %10, align 4
  %66 = getelementptr inbounds %struct.anon.12, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %0, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.file_operations, ptr %71, i32 0, i32 21
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  %75 = select i1 %74, ptr %67, ptr %73
  br label %81

76:                                               ; preds = %64
  %77 = and i32 %4, 1
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 %5, i32 0
  %80 = select i1 %78, ptr %67, ptr @shmem_get_unmapped_area
  br label %81

81:                                               ; preds = %76, %69
  %82 = phi i32 [ %5, %69 ], [ %79, %76 ]
  %83 = phi ptr [ %75, %69 ], [ %80, %76 ]
  %84 = tail call i32 %83(ptr noundef %0, i32 noundef %45, i32 noundef %47, i32 noundef %82, i32 noundef %32) #19
  %85 = icmp ugt i32 %84, -4096
  br i1 %85, label %272, label %86, !prof !11

86:                                               ; preds = %81
  %87 = sub nuw i32 -1090519040, %47
  %88 = icmp ugt i32 %84, %87
  br i1 %88, label %272, label %89

89:                                               ; preds = %86
  %90 = and i32 %84, 4095
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %272

92:                                               ; preds = %89
  %93 = tail call i32 @cap_mmap_addr(i32 noundef %84) #19
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = icmp ugt i32 %93, -4096
  br i1 %96, label %272, label %97, !prof !11

97:                                               ; preds = %95, %92
  %98 = phi i32 [ %93, %95 ], [ %84, %92 ]
  %99 = and i32 %4, 1048576
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %136, label %101

101:                                              ; preds = %97
  %102 = add i32 %98, %47
  %103 = tail call ptr @vmacache_find(ptr noundef %11, i32 noundef %98) #19
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %132, !prof !11

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.anon.12, ptr %11, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %136, label %109

109:                                              ; preds = %123, %105
  %110 = phi ptr [ %126, %123 ], [ %107, %105 ]
  %111 = phi ptr [ %124, %123 ], [ null, %105 ]
  %112 = getelementptr i8, ptr %110, i32 -16
  %113 = getelementptr i8, ptr %110, i32 -12
  %114 = load i32, ptr %113, align 4
  %115 = icmp ugt i32 %114, %98
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load i32, ptr %112, align 4
  %118 = icmp ugt i32 %117, %98
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.rb_node, ptr %110, i32 0, i32 2
  br label %123

121:                                              ; preds = %109
  %122 = getelementptr inbounds %struct.rb_node, ptr %110, i32 0, i32 1
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi ptr [ %112, %119 ], [ %111, %121 ]
  %125 = phi ptr [ %120, %119 ], [ %122, %121 ]
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %109

128:                                              ; preds = %123, %116
  %129 = phi ptr [ %124, %123 ], [ %112, %116 ]
  %130 = icmp eq ptr %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %128
  tail call void @vmacache_update(i32 noundef %98, ptr noundef nonnull %129) #19
  br label %132

132:                                              ; preds = %131, %101
  %133 = phi ptr [ %103, %101 ], [ %129, %131 ]
  %134 = load i32, ptr %133, align 4
  %135 = icmp ult i32 %134, %102
  br i1 %135, label %272, label %136

136:                                              ; preds = %132, %128, %105, %97
  %137 = and i32 %29, 7
  %138 = and i32 %4, 8448
  %139 = shl i32 %4, 4
  %140 = and i32 %139, 8388608
  %141 = or i32 %140, %138
  %142 = or i32 %141, %137
  %143 = getelementptr inbounds %struct.anon.12, ptr %11, i32 0, i32 25
  %144 = load i32, ptr %143, align 4
  %145 = or i32 %142, %144
  %146 = or i32 %145, 112
  %147 = and i32 %4, 8192
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %136
  %150 = tail call zeroext i1 @can_do_mlock() #19
  br i1 %150, label %151, label %272

151:                                              ; preds = %149, %136
  %152 = and i32 %145, 8192
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.anon.12, ptr %11, i32 0, i32 20
  %156 = load i32, ptr %155, align 4
  %157 = add i32 %156, %50
  %158 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 93
  %159 = load ptr, ptr %158, align 16
  %160 = getelementptr %struct.signal_struct, ptr %159, i32 0, i32 50, i32 8
  %161 = load volatile i32, ptr %160, align 8
  %162 = lshr i32 %161, 12
  %163 = icmp ugt i32 %157, %162
  br i1 %163, label %164, label %166

164:                                              ; preds = %154
  %165 = tail call zeroext i1 @capable(i32 noundef 14) #19
  br i1 %165, label %166, label %272

166:                                              ; preds = %164, %154, %151
  br i1 %68, label %243, label %167

167:                                              ; preds = %166
  %168 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %169 = load ptr, ptr %168, align 8
  %170 = tail call fastcc zeroext i1 @file_mmap_ok(ptr noundef nonnull %0, ptr noundef %169, i32 noundef %5, i32 noundef %47)
  br i1 %170, label %171, label %272

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.file_operations, ptr %173, i32 0, i32 13
  %175 = load i32, ptr %174, align 4
  %176 = and i32 %4, 15
  switch i32 %176, label %272 [
    i32 1, label %180
    i32 3, label %182
    i32 2, label %177
  ]

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %179 = load i32, ptr %178, align 8
  br label %220

180:                                              ; preds = %171
  %181 = and i32 %32, 2080897331
  br label %182

182:                                              ; preds = %180, %171
  %183 = phi i32 [ %32, %171 ], [ %181, %180 ]
  %184 = and i32 %175, -2080897332
  %185 = xor i32 %184, -2080897332
  %186 = and i32 %183, %185
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %272

188:                                              ; preds = %182
  %189 = and i32 %29, 2
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %204, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %193 = load i32, ptr %192, align 8
  %194 = and i32 %193, 2
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %272, label %196

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %198 = load ptr, ptr %197, align 8
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.inode, ptr %199, i32 0, i32 4
  %201 = load i32, ptr %200, align 4
  %202 = and i32 %201, 256
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %272

204:                                              ; preds = %196, %188
  %205 = getelementptr inbounds %struct.inode, ptr %169, i32 0, i32 4
  %206 = load i32, ptr %205, align 4
  %207 = and i32 %206, 4
  %208 = icmp eq i32 %207, 0
  %209 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %210 = load i32, ptr %209, align 8
  %211 = and i32 %210, 2
  br i1 %208, label %214, label %212

212:                                              ; preds = %204
  %213 = icmp eq i32 %211, 0
  br i1 %213, label %214, label %272

214:                                              ; preds = %212, %204
  %215 = phi i32 [ 0, %212 ], [ %211, %204 ]
  %216 = or i32 %145, 248
  %217 = icmp eq i32 %215, 0
  %218 = and i32 %216, -41
  %219 = select i1 %217, i32 %218, i32 %216
  br label %220

220:                                              ; preds = %214, %177
  %221 = phi i32 [ %179, %177 ], [ %210, %214 ]
  %222 = phi i32 [ %32, %177 ], [ %183, %214 ]
  %223 = phi i32 [ %146, %177 ], [ %219, %214 ]
  %224 = and i32 %221, 1
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %272, label %226

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 1
  %228 = tail call zeroext i1 @path_noexec(ptr noundef %227) #19
  br i1 %228, label %229, label %234

229:                                              ; preds = %226
  %230 = and i32 %223, 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %272

232:                                              ; preds = %229
  %233 = and i32 %223, -65
  br label %234

234:                                              ; preds = %232, %226
  %235 = phi i32 [ %233, %232 ], [ %223, %226 ]
  %236 = load ptr, ptr %172, align 4
  %237 = getelementptr inbounds %struct.file_operations, ptr %236, i32 0, i32 12
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %272, label %240

240:                                              ; preds = %234
  %241 = and i32 %235, 256
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %252, label %272

243:                                              ; preds = %166
  %244 = and i32 %4, 15
  switch i32 %244, label %272 [
    i32 1, label %245
    i32 2, label %250
  ]

245:                                              ; preds = %243
  %246 = and i32 %145, 256
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %272

248:                                              ; preds = %245
  %249 = or i32 %145, 248
  br label %252

250:                                              ; preds = %243
  %251 = lshr i32 %98, 12
  br label %252

252:                                              ; preds = %250, %248, %240
  %253 = phi i32 [ %222, %240 ], [ %32, %250 ], [ %32, %248 ]
  %254 = phi i32 [ %5, %240 ], [ %251, %250 ], [ 0, %248 ]
  %255 = phi i32 [ %235, %240 ], [ %146, %250 ], [ %249, %248 ]
  %256 = and i32 %253, 16384
  %257 = icmp eq i32 %256, 0
  %258 = load i32, ptr @sysctl_overcommit_memory, align 4
  %259 = icmp eq i32 %258, 2
  %260 = or i32 %255, 2097152
  %261 = select i1 %257, i1 true, i1 %259
  %262 = select i1 %261, i32 %255, i32 %260
  %263 = tail call i32 @mmap_region(ptr noundef %0, i32 noundef %98, i32 noundef %47, i32 noundef %262, i32 noundef %254, ptr noundef %7)
  %264 = icmp ugt i32 %263, -4096
  br i1 %264, label %272, label %265, !prof !11

265:                                              ; preds = %252
  %266 = and i32 %262, 8192
  %267 = icmp ne i32 %266, 0
  %268 = and i32 %253, 98304
  %269 = icmp eq i32 %268, 32768
  %270 = select i1 %267, i1 true, i1 %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %265
  store i32 %47, ptr %6, align 4
  br label %272

272:                                              ; preds = %271, %265, %252, %245, %243, %240, %234, %229, %220, %212, %196, %191, %182, %171, %167, %164, %149, %132, %95, %89, %86, %81, %62, %58, %53, %49, %44, %8
  %273 = phi i32 [ -22, %240 ], [ -22, %8 ], [ -12, %44 ], [ -75, %49 ], [ -12, %53 ], [ %93, %95 ], [ -1, %149 ], [ -22, %245 ], [ -22, %243 ], [ %263, %265 ], [ %263, %271 ], [ %263, %252 ], [ -17, %132 ], [ -11, %164 ], [ -22, %89 ], [ -12, %86 ], [ %84, %81 ], [ -12, %62 ], [ -22, %58 ], [ -22, %171 ], [ -19, %234 ], [ -1, %229 ], [ -13, %220 ], [ -13, %212 ], [ -26, %196 ], [ -13, %191 ], [ -95, %182 ], [ -75, %167 ]
  ret i32 %273
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @path_noexec(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_unmapped_area(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = and i32 %4, 16
  %7 = icmp ne i32 %6, 0
  %8 = icmp ult i32 %1, 8192
  %9 = and i1 %8, %7
  br i1 %9, label %46, label %10

10:                                               ; preds = %5
  %11 = icmp ugt i32 %2, -1090519040
  br i1 %11, label %46, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @llvm.thread.pointer() #19
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 37
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.anon.12, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %0, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.file_operations, ptr %21, i32 0, i32 21
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr %17, ptr %23
  br label %31

26:                                               ; preds = %12
  %27 = and i32 %4, 1
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 %3, i32 0
  %30 = select i1 %28, ptr %17, ptr @shmem_get_unmapped_area
  br label %31

31:                                               ; preds = %26, %19
  %32 = phi i32 [ %3, %19 ], [ %29, %26 ]
  %33 = phi ptr [ %25, %19 ], [ %30, %26 ]
  %34 = tail call i32 %33(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %32, i32 noundef %4) #19
  %35 = icmp ugt i32 %34, -4096
  br i1 %35, label %46, label %36, !prof !11

36:                                               ; preds = %31
  %37 = sub nuw i32 -1090519040, %2
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = and i32 %34, 4095
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = tail call i32 @cap_mmap_addr(i32 noundef %34) #19
  %44 = icmp eq i32 %43, 0
  %45 = select i1 %44, i32 %34, i32 %43
  br label %46

46:                                               ; preds = %42, %39, %36, %31, %10, %5
  %47 = phi i32 [ %45, %42 ], [ -22, %5 ], [ -12, %10 ], [ %34, %31 ], [ -12, %36 ], [ -22, %39 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @can_do_mlock() local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @file_mmap_ok(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #5 {
  %5 = load i16, ptr %1, align 8
  %6 = and i16 %5, -4096
  switch i16 %6, label %9 [
    i16 -32768, label %7
    i16 24576, label %7
    i16 -16384, label %7
  ]

7:                                                ; preds = %4, %4, %4
  %8 = zext i32 %3 to i64
  br label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 8
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 8192
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i64 4294967295, i64 0
  %15 = zext i32 %3 to i64
  %16 = icmp ult i64 %14, %15
  %17 = and i1 %13, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %9, %7
  %19 = phi i64 [ %8, %7 ], [ %15, %9 ]
  %20 = phi i64 [ 17592186040320, %7 ], [ %14, %9 ]
  %21 = sub nsw i64 %20, %19
  %22 = zext i32 %2 to i64
  %23 = lshr i64 %21, 12
  %24 = icmp uge i64 %23, %22
  br label %25

25:                                               ; preds = %18, %9
  %26 = phi i1 [ false, %9 ], [ %24, %18 ]
  ret i1 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mmap_region(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @llvm.thread.pointer() #19
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  %10 = lshr i32 %2, 12
  %11 = getelementptr inbounds %struct.anon.12, ptr %9, i32 0, i32 19
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, %10
  %14 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 93
  %15 = load ptr, ptr %14, align 16
  %16 = getelementptr %struct.signal_struct, ptr %15, i32 0, i32 50, i32 9
  %17 = load volatile i32, ptr %16, align 8
  %18 = lshr i32 %17, 12
  %19 = icmp ugt i32 %13, %18
  br i1 %19, label %54, label %20

20:                                               ; preds = %6
  %21 = and i32 %3, 266
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %158

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.anon.12, ptr %9, i32 0, i32 22
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, %10
  %27 = getelementptr %struct.signal_struct, ptr %15, i32 0, i32 50, i32 2
  %28 = load volatile i32, ptr %27, align 8
  %29 = lshr i32 %28, 12
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %31, label %158

31:                                               ; preds = %23
  %32 = load volatile i32, ptr %27, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = getelementptr %struct.signal_struct, ptr %15, i32 0, i32 50, i32 2, i32 1
  %36 = load volatile i32, ptr %35, align 4
  %37 = lshr i32 %36, 12
  %38 = icmp ugt i32 %26, %37
  br i1 %38, label %39, label %158

39:                                               ; preds = %34, %31
  %40 = load i1, ptr @may_expand_vm.__already_done, align 1
  br i1 %40, label %51, label %41, !prof !10

41:                                               ; preds = %39
  store i1 true, ptr @may_expand_vm.__already_done, align 1
  %42 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 85
  %43 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 52
  %44 = load i32, ptr %43, align 8
  %45 = shl i32 %26, 12
  %46 = load volatile i32, ptr %27, align 8
  %47 = load i8, ptr @ignore_rlimit_data, align 1, !range !22
  %48 = icmp eq i8 %47, 0
  %49 = select i1 %48, ptr @.str.4, ptr @.str.3
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %42, i32 noundef %44, i32 noundef %45, i32 noundef %46, ptr noundef nonnull %49) #20
  br label %51

51:                                               ; preds = %41, %39
  %52 = load i8, ptr @ignore_rlimit_data, align 1, !range !22
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %158

54:                                               ; preds = %51, %6
  %55 = add i32 %2, %1
  %56 = tail call ptr @vmacache_find(ptr noundef %9, i32 noundef %1) #19
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %85, !prof !11

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.anon.12, ptr %9, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %114, label %62

62:                                               ; preds = %76, %58
  %63 = phi ptr [ %79, %76 ], [ %60, %58 ]
  %64 = phi ptr [ %77, %76 ], [ null, %58 ]
  %65 = getelementptr i8, ptr %63, i32 -16
  %66 = getelementptr i8, ptr %63, i32 -12
  %67 = load i32, ptr %66, align 4
  %68 = icmp ugt i32 %67, %1
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i32, ptr %65, align 4
  %71 = icmp ugt i32 %70, %1
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.rb_node, ptr %63, i32 0, i32 2
  br label %76

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.rb_node, ptr %63, i32 0, i32 1
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi ptr [ %65, %72 ], [ %64, %74 ]
  %78 = phi ptr [ %73, %72 ], [ %75, %74 ]
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %62

81:                                               ; preds = %76, %69
  %82 = phi ptr [ %77, %76 ], [ %65, %69 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %114, label %84

84:                                               ; preds = %81
  tail call void @vmacache_update(i32 noundef %1, ptr noundef nonnull %82) #19
  br label %85

85:                                               ; preds = %84, %54
  %86 = phi ptr [ %56, %54 ], [ %82, %84 ]
  %87 = load i32, ptr %86, align 4
  %88 = icmp ult i32 %87, %55
  br i1 %88, label %89, label %114

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.vm_area_struct, ptr %86, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 @llvm.umin.i32(i32 %91, i32 %55) #19
  %93 = tail call i32 @llvm.umax.i32(i32 %87, i32 %1) #19
  %94 = sub i32 %92, %93
  %95 = lshr i32 %94, 12
  %96 = getelementptr inbounds %struct.vm_area_struct, ptr %86, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %114, label %99

99:                                               ; preds = %104, %89
  %100 = phi ptr [ %112, %104 ], [ %97, %89 ]
  %101 = phi i32 [ %110, %104 ], [ %95, %89 ]
  %102 = load i32, ptr %100, align 4
  %103 = icmp ugt i32 %102, %55
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.vm_area_struct, ptr %100, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = tail call i32 @llvm.umin.i32(i32 %106, i32 %55) #19
  %108 = sub i32 %107, %102
  %109 = lshr i32 %108, 12
  %110 = add i32 %109, %101
  %111 = getelementptr inbounds %struct.vm_area_struct, ptr %100, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %99

114:                                              ; preds = %104, %99, %89, %85, %81, %58
  %115 = phi i32 [ 0, %85 ], [ 0, %81 ], [ 0, %58 ], [ %95, %89 ], [ %101, %99 ], [ %110, %104 ]
  %116 = sub i32 %10, %115
  %117 = load i32, ptr %11, align 8
  %118 = add i32 %117, %116
  %119 = load ptr, ptr %14, align 16
  %120 = getelementptr %struct.signal_struct, ptr %119, i32 0, i32 50, i32 9
  %121 = load volatile i32, ptr %120, align 8
  %122 = lshr i32 %121, 12
  %123 = icmp ugt i32 %118, %122
  br i1 %123, label %361, label %124

124:                                              ; preds = %114
  %125 = and i32 %3, 266
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %158

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.anon.12, ptr %9, i32 0, i32 22
  %129 = load i32, ptr %128, align 8
  %130 = add i32 %129, %116
  %131 = getelementptr %struct.signal_struct, ptr %119, i32 0, i32 50, i32 2
  %132 = load volatile i32, ptr %131, align 8
  %133 = lshr i32 %132, 12
  %134 = icmp ugt i32 %130, %133
  br i1 %134, label %135, label %158

135:                                              ; preds = %127
  %136 = load volatile i32, ptr %131, align 8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = getelementptr %struct.signal_struct, ptr %119, i32 0, i32 50, i32 2, i32 1
  %140 = load volatile i32, ptr %139, align 4
  %141 = lshr i32 %140, 12
  %142 = icmp ugt i32 %130, %141
  br i1 %142, label %143, label %158

143:                                              ; preds = %138, %135
  %144 = load i1, ptr @may_expand_vm.__already_done, align 1
  br i1 %144, label %155, label %145, !prof !10

145:                                              ; preds = %143
  store i1 true, ptr @may_expand_vm.__already_done, align 1
  %146 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 85
  %147 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 52
  %148 = load i32, ptr %147, align 8
  %149 = shl i32 %130, 12
  %150 = load volatile i32, ptr %131, align 8
  %151 = load i8, ptr @ignore_rlimit_data, align 1, !range !22
  %152 = icmp eq i8 %151, 0
  %153 = select i1 %152, ptr @.str.4, ptr @.str.3
  %154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %146, i32 noundef %148, i32 noundef %149, i32 noundef %150, ptr noundef nonnull %153) #20
  br label %155

155:                                              ; preds = %145, %143
  %156 = load i8, ptr @ignore_rlimit_data, align 1, !range !22
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %361, label %158

158:                                              ; preds = %155, %138, %127, %124, %51, %34, %23, %20
  %159 = add i32 %2, %1
  %160 = getelementptr inbounds %struct.anon.12, ptr %9, i32 0, i32 1
  br label %161

161:                                              ; preds = %184, %158
  %162 = load ptr, ptr %160, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %191, label %164

164:                                              ; preds = %176, %161
  %165 = phi ptr [ %178, %176 ], [ %162, %161 ]
  %166 = phi ptr [ %172, %176 ], [ null, %161 ]
  br label %171

167:                                              ; preds = %180
  %168 = getelementptr inbounds %struct.rb_node, ptr %172, i32 0, i32 2
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %187, label %171

171:                                              ; preds = %167, %164
  %172 = phi ptr [ %165, %164 ], [ %169, %167 ]
  %173 = getelementptr i8, ptr %172, i32 -12
  %174 = load i32, ptr %173, align 4
  %175 = icmp ugt i32 %174, %1
  br i1 %175, label %180, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.rb_node, ptr %172, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %189, label %164

180:                                              ; preds = %171
  %181 = getelementptr i8, ptr %172, i32 -16
  %182 = load i32, ptr %181, align 4
  %183 = icmp ult i32 %182, %159
  br i1 %183, label %184, label %167

184:                                              ; preds = %180
  %185 = tail call i32 @__do_munmap(ptr noundef %9, i32 noundef %1, i32 noundef %2, ptr noundef %5, i1 noundef zeroext false) #19
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %161, label %361

187:                                              ; preds = %167
  %188 = getelementptr inbounds %struct.rb_node, ptr %172, i32 0, i32 2
  br label %191

189:                                              ; preds = %176
  %190 = getelementptr inbounds %struct.rb_node, ptr %172, i32 0, i32 1
  br label %191

191:                                              ; preds = %189, %187, %161
  %192 = phi ptr [ %166, %187 ], [ %172, %189 ], [ null, %161 ]
  %193 = phi ptr [ %172, %187 ], [ %172, %189 ], [ null, %161 ]
  %194 = phi ptr [ %188, %187 ], [ %190, %189 ], [ %160, %161 ]
  %195 = icmp eq ptr %192, null
  %196 = getelementptr i8, ptr %192, i32 -16
  %197 = select i1 %195, ptr null, ptr %196
  %198 = and i32 %3, 2097162
  %199 = icmp eq i32 %198, 2
  br i1 %199, label %200, label %206

200:                                              ; preds = %191
  %201 = tail call i32 @cap_vm_enough_memory(ptr noundef %9, i32 noundef %10) #19
  %202 = tail call i32 @__vm_enough_memory(ptr noundef %9, i32 noundef %10, i32 noundef %201) #19
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %361

204:                                              ; preds = %200
  %205 = or i32 %3, 1048576
  br label %206

206:                                              ; preds = %204, %191
  %207 = phi i32 [ %205, %204 ], [ %3, %191 ]
  %208 = phi i32 [ %10, %204 ], [ 0, %191 ]
  %209 = tail call ptr @vma_merge(ptr noundef %9, ptr noundef %197, i32 noundef %1, i32 noundef %159, i32 noundef %207, ptr noundef null, ptr noundef %0, i32 noundef %4, ptr undef, ptr undef)
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %291

211:                                              ; preds = %206
  %212 = tail call ptr @vm_area_alloc(ptr noundef %9) #19
  %213 = icmp eq ptr %212, null
  br i1 %213, label %353, label %214

214:                                              ; preds = %211
  store i32 %1, ptr %212, align 4
  %215 = getelementptr inbounds %struct.vm_area_struct, ptr %212, i32 0, i32 1
  store i32 %159, ptr %215, align 4
  %216 = getelementptr inbounds %struct.vm_area_struct, ptr %212, i32 0, i32 8
  store i32 %207, ptr %216, align 4
  %217 = and i32 %207, 15
  %218 = getelementptr [16 x i32], ptr @protection_map, i32 0, i32 %217
  %219 = load i32, ptr %218, align 4
  %220 = getelementptr inbounds %struct.vm_area_struct, ptr %212, i32 0, i32 7
  store i32 %219, ptr %220, align 4
  %221 = getelementptr inbounds %struct.vm_area_struct, ptr %212, i32 0, i32 13
  store i32 %4, ptr %221, align 4
  %222 = icmp eq ptr %0, null
  %223 = and i32 %207, 8
  %224 = icmp eq i32 %223, 0
  br i1 %222, label %267, label %225

225:                                              ; preds = %214
  br i1 %224, label %231, label %226

226:                                              ; preds = %225
  %227 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %228 = load ptr, ptr %227, align 8
  %229 = tail call fastcc i32 @mapping_map_writable(ptr noundef %228)
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %350

231:                                              ; preds = %226, %225
  %232 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %232) #19, !srcloc !13
  %233 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %232, ptr %232, i32 1, ptr elementtype(i32) %232) #19, !srcloc !20
  %234 = getelementptr inbounds %struct.vm_area_struct, ptr %212, i32 0, i32 14
  store ptr %0, ptr %234, align 4
  %235 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 3
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.file_operations, ptr %236, i32 0, i32 12
  %238 = load ptr, ptr %237, align 4
  %239 = tail call i32 %238(ptr noundef nonnull %0, ptr noundef nonnull %212) #19
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %341

241:                                              ; preds = %231
  %242 = load i32, ptr %212, align 4
  %243 = icmp ne i32 %242, %1
  %244 = load i1, ptr @mmap_region.__already_done, align 1
  %245 = xor i1 %244, true
  %246 = select i1 %243, i1 %245, i1 false
  br i1 %246, label %247, label %249, !prof !11

247:                                              ; preds = %241
  store i1 true, ptr @mmap_region.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1804, i32 noundef 9, ptr noundef null) #19
  %248 = load i32, ptr %212, align 4
  br label %249

249:                                              ; preds = %247, %241
  %250 = phi i32 [ %248, %247 ], [ %242, %241 ]
  %251 = load i32, ptr %216, align 4
  %252 = icmp ne i32 %207, %251
  %253 = icmp ne ptr %197, null
  %254 = select i1 %252, i1 %253, i1 false
  br i1 %254, label %255, label %273, !prof !11

255:                                              ; preds = %249
  %256 = load i32, ptr %215, align 4
  %257 = load ptr, ptr %234, align 4
  %258 = load i32, ptr %221, align 4
  %259 = tail call ptr @vma_merge(ptr noundef %9, ptr noundef nonnull %197, i32 noundef %250, i32 noundef %256, i32 noundef %251, ptr noundef null, ptr noundef %257, i32 noundef %258, ptr undef, ptr undef)
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %263

261:                                              ; preds = %255
  %262 = load i32, ptr %216, align 4
  br label %273

263:                                              ; preds = %255
  %264 = load ptr, ptr %234, align 4
  tail call void @fput(ptr noundef %264) #19
  tail call void @vm_area_free(ptr noundef nonnull %212) #19
  %265 = getelementptr inbounds %struct.vm_area_struct, ptr %259, i32 0, i32 8
  %266 = load i32, ptr %265, align 4
  br label %276

267:                                              ; preds = %214
  br i1 %224, label %271, label %268

268:                                              ; preds = %267
  %269 = tail call i32 @shmem_zero_setup(ptr noundef nonnull %212) #19
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %273, label %350

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.vm_area_struct, ptr %212, i32 0, i32 12
  store ptr null, ptr %272, align 4
  br label %273

273:                                              ; preds = %271, %268, %261, %249
  %274 = phi i32 [ %207, %268 ], [ %207, %271 ], [ %262, %261 ], [ %251, %249 ]
  %275 = phi i32 [ %1, %268 ], [ %1, %271 ], [ %250, %261 ], [ %250, %249 ]
  tail call fastcc void @vma_link(ptr noundef %9, ptr noundef nonnull %212, ptr noundef %197, ptr noundef %194, ptr noundef %193)
  br label %276

276:                                              ; preds = %273, %263
  %277 = phi i32 [ %266, %263 ], [ %274, %273 ]
  %278 = phi ptr [ %259, %263 ], [ %212, %273 ]
  %279 = phi i32 [ %250, %263 ], [ %275, %273 ]
  %280 = and i32 %277, 8
  %281 = icmp eq i32 %280, 0
  %282 = select i1 %222, i1 true, i1 %281
  br i1 %282, label %288, label %283

283:                                              ; preds = %276
  %284 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %285 = load ptr, ptr %284, align 8
  %286 = getelementptr inbounds %struct.address_space, ptr %285, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %286) #19, !srcloc !13
  %287 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %286, ptr %286, i32 1, ptr elementtype(i32) %286) #19, !srcloc !14
  br label %288

288:                                              ; preds = %283, %276
  %289 = getelementptr inbounds %struct.vm_area_struct, ptr %278, i32 0, i32 14
  %290 = load ptr, ptr %289, align 4
  br label %291

291:                                              ; preds = %288, %206
  %292 = phi i32 [ %207, %206 ], [ %277, %288 ]
  %293 = phi ptr [ %209, %206 ], [ %278, %288 ]
  %294 = phi i32 [ %1, %206 ], [ %279, %288 ]
  %295 = phi ptr [ %0, %206 ], [ %290, %288 ]
  tail call void @perf_event_mmap(ptr noundef nonnull %293) #19
  %296 = load volatile i32, ptr %11, align 8
  %297 = add i32 %296, %10
  store volatile i32 %297, ptr %11, align 8
  %298 = and i32 %292, 262
  %299 = icmp eq i32 %298, 4
  br i1 %299, label %300, label %304

300:                                              ; preds = %291
  %301 = getelementptr inbounds %struct.anon.12, ptr %9, i32 0, i32 23
  %302 = load i32, ptr %301, align 4
  %303 = add i32 %302, %10
  store i32 %303, ptr %301, align 4
  br label %318

304:                                              ; preds = %291
  %305 = and i32 %292, 256
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %311, label %307

307:                                              ; preds = %304
  %308 = getelementptr inbounds %struct.anon.12, ptr %9, i32 0, i32 24
  %309 = load i32, ptr %308, align 8
  %310 = add i32 %309, %10
  store i32 %310, ptr %308, align 8
  br label %318

311:                                              ; preds = %304
  %312 = and i32 %292, 266
  %313 = icmp eq i32 %312, 2
  br i1 %313, label %314, label %318

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct.anon.12, ptr %9, i32 0, i32 22
  %316 = load i32, ptr %315, align 8
  %317 = add i32 %316, %10
  store i32 %317, ptr %315, align 8
  br label %318

318:                                              ; preds = %314, %311, %307, %300
  %319 = and i32 %292, 8192
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %336, label %321

321:                                              ; preds = %318
  %322 = and i32 %292, 268715008
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %321
  %325 = load ptr, ptr %8, align 4
  %326 = tail call ptr @get_gate_vma(ptr noundef %325) #19
  %327 = icmp eq ptr %293, %326
  br i1 %327, label %328, label %332

328:                                              ; preds = %324, %321
  %329 = getelementptr inbounds %struct.vm_area_struct, ptr %293, i32 0, i32 8
  %330 = load i32, ptr %329, align 4
  %331 = and i32 %330, -532481
  store i32 %331, ptr %329, align 4
  br label %336

332:                                              ; preds = %324
  %333 = getelementptr inbounds %struct.anon.12, ptr %9, i32 0, i32 20
  %334 = load i32, ptr %333, align 4
  %335 = add i32 %334, %10
  store i32 %335, ptr %333, align 4
  br label %336

336:                                              ; preds = %332, %328, %318
  %337 = icmp eq ptr %295, null
  br i1 %337, label %340, label %338

338:                                              ; preds = %336
  %339 = tail call i32 @uprobe_mmap(ptr noundef nonnull %293) #19
  br label %340

340:                                              ; preds = %338, %336
  tail call void @vma_set_page_prot(ptr noundef nonnull %293)
  br label %361

341:                                              ; preds = %231
  %342 = load ptr, ptr %234, align 4
  tail call void @fput(ptr noundef %342) #19
  store ptr null, ptr %234, align 4
  %343 = load i32, ptr %212, align 4
  %344 = load i32, ptr %215, align 4
  tail call fastcc void @unmap_region(ptr noundef %9, ptr noundef nonnull %212, ptr noundef %197, i32 noundef %343, i32 noundef %344)
  br i1 %224, label %350, label %345

345:                                              ; preds = %341
  %346 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 17
  %347 = load ptr, ptr %346, align 8
  %348 = getelementptr inbounds %struct.address_space, ptr %347, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %348) #19, !srcloc !13
  %349 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %348, ptr %348, i32 1, ptr elementtype(i32) %348) #19, !srcloc !14
  br label %350

350:                                              ; preds = %345, %341, %268, %226
  %351 = phi i32 [ %229, %226 ], [ %239, %345 ], [ %239, %341 ], [ %269, %268 ]
  %352 = phi i32 [ %208, %226 ], [ 0, %345 ], [ 0, %341 ], [ %208, %268 ]
  tail call void @vm_area_free(ptr noundef nonnull %212) #19
  br label %353

353:                                              ; preds = %350, %211
  %354 = phi i32 [ %351, %350 ], [ -12, %211 ]
  %355 = phi i32 [ %352, %350 ], [ %208, %211 ]
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %361, label %357

357:                                              ; preds = %353
  %358 = sub nsw i32 0, %355
  %359 = sext i32 %358 to i64
  %360 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %359, i32 noundef %360) #19
  br label %361

361:                                              ; preds = %357, %353, %340, %200, %184, %155, %114
  %362 = phi i32 [ %294, %340 ], [ -12, %200 ], [ %354, %357 ], [ %354, %353 ], [ -12, %114 ], [ -12, %155 ], [ -12, %184 ]
  ret i32 %362
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ksys_mmap_pgoff(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = and i32 %3, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = tail call ptr @fget(i32 noundef %4) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = and i32 %3, 262144
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %22, !prof !10

15:                                               ; preds = %6
  %16 = and i32 %3, 262144
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = tail call i32 @vm_mmap_pgoff(ptr noundef null, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %5) #19
  br label %24

20:                                               ; preds = %12
  %21 = tail call i32 @vm_mmap_pgoff(ptr noundef nonnull %10, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %5) #19
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %21, %20 ], [ -22, %12 ]
  tail call void @fput(ptr noundef nonnull %10) #19
  br label %24

24:                                               ; preds = %22, %18, %15, %9
  %25 = phi i32 [ -9, %9 ], [ %23, %22 ], [ -22, %15 ], [ %19, %18 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_mmap_pgoff(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_mmap_pgoff(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = and i32 %3, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = tail call ptr @fget(i32 noundef %4) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = and i32 %3, 262144
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %22, !prof !10

15:                                               ; preds = %6
  %16 = and i32 %3, 262144
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = tail call i32 @vm_mmap_pgoff(ptr noundef null, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %5) #19
  br label %24

20:                                               ; preds = %12
  %21 = tail call i32 @vm_mmap_pgoff(ptr noundef nonnull %10, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %5) #19
  br label %22

22:                                               ; preds = %20, %12
  %23 = phi i32 [ %21, %20 ], [ -22, %12 ]
  tail call void @fput(ptr noundef nonnull %10) #19
  br label %24

24:                                               ; preds = %22, %18, %15, %9
  %25 = phi i32 [ -9, %9 ], [ %23, %22 ], [ -22, %15 ], [ %19, %18 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_old_mmap(i32 noundef %0) #0 {
  %2 = alloca %struct.mmap_arg_struct, align 4
  %3 = inttoptr i32 %0 to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false) #19, !annotation !9
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 24, i32 -1090519040) #21, !srcloc !23
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15, !prof !10

7:                                                ; preds = %1
  %8 = tail call ptr @llvm.thread.pointer() #19
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %9) #14, !srcloc !24
  %11 = and i32 %10, -13
  %12 = or i32 %11, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #19, !srcloc !25
  tail call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !26
  %13 = call i32 @arm_copy_from_user(ptr noundef nonnull %2, ptr noundef %3, i32 noundef 24) #19
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #19, !srcloc !25
  call void asm sideeffect "isb ", "~{memory}"() #19, !srcloc !26
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15, !prof !10

15:                                               ; preds = %7, %1
  %16 = phi i32 [ %13, %7 ], [ 24, %1 ]
  %17 = sub i32 24, %16
  %18 = getelementptr i8, ptr %2, i32 %17
  call void @llvm.memset.p0.i32(ptr align 1 %18, i8 0, i32 %16, i1 false) #19
  br label %52

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.mmap_arg_struct, ptr %2, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 4095
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %19
  %25 = load i32, ptr %2, align 4
  %26 = getelementptr inbounds %struct.mmap_arg_struct, ptr %2, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mmap_arg_struct, ptr %2, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.mmap_arg_struct, ptr %2, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %21, 12
  %33 = and i32 %31, 32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.mmap_arg_struct, ptr %2, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = call ptr @fget(i32 noundef %37) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %35
  %41 = and i32 %31, 262144
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %50, !prof !10

43:                                               ; preds = %24
  %44 = and i32 %31, 262144
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = call i32 @vm_mmap_pgoff(ptr noundef null, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %32) #19
  br label %52

48:                                               ; preds = %40
  %49 = call i32 @vm_mmap_pgoff(ptr noundef nonnull %38, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %32) #19
  br label %50

50:                                               ; preds = %48, %40
  %51 = phi i32 [ %49, %48 ], [ -22, %40 ]
  call void @fput(ptr noundef nonnull %38) #19
  br label %52

52:                                               ; preds = %50, %46, %43, %35, %19, %15
  %53 = phi i32 [ -22, %19 ], [ -9, %35 ], [ %51, %50 ], [ -22, %43 ], [ %47, %46 ], [ -14, %15 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @may_expand_vm(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 19
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, %2
  %7 = tail call ptr @llvm.thread.pointer() #19
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 93
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr %struct.signal_struct, ptr %9, i32 0, i32 50, i32 9
  %11 = load volatile i32, ptr %10, align 8
  %12 = lshr i32 %11, 12
  %13 = icmp ugt i32 %6, %12
  br i1 %13, label %49, label %14

14:                                               ; preds = %3
  %15 = and i32 %1, 266
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %48

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 22
  %19 = load i32, ptr %18, align 8
  %20 = add i32 %19, %2
  %21 = getelementptr %struct.signal_struct, ptr %9, i32 0, i32 50, i32 2
  %22 = load volatile i32, ptr %21, align 8
  %23 = lshr i32 %22, 12
  %24 = icmp ugt i32 %20, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %17
  %26 = load volatile i32, ptr %21, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = getelementptr %struct.signal_struct, ptr %9, i32 0, i32 50, i32 2, i32 1
  %30 = load volatile i32, ptr %29, align 4
  %31 = lshr i32 %30, 12
  %32 = icmp ugt i32 %20, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %28, %25
  %34 = load i1, ptr @may_expand_vm.__already_done, align 1
  br i1 %34, label %45, label %35, !prof !10

35:                                               ; preds = %33
  store i1 true, ptr @may_expand_vm.__already_done, align 1
  %36 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 85
  %37 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 52
  %38 = load i32, ptr %37, align 8
  %39 = shl i32 %20, 12
  %40 = load volatile i32, ptr %21, align 8
  %41 = load i8, ptr @ignore_rlimit_data, align 1, !range !22
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %42, ptr @.str.4, ptr @.str.3
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %36, i32 noundef %38, i32 noundef %39, i32 noundef %40, ptr noundef nonnull %43) #20
  br label %45

45:                                               ; preds = %35, %33
  %46 = load i8, ptr @ignore_rlimit_data, align 1, !range !22
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %17, %14
  br label %49

49:                                               ; preds = %48, %45, %28, %3
  %50 = phi i1 [ true, %48 ], [ false, %3 ], [ true, %28 ], [ false, %45 ]
  ret i1 %50
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @security_vm_enough_memory_mm(ptr noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = tail call i32 @cap_vm_enough_memory(ptr noundef %0, i32 noundef %1) #19
  %4 = tail call i32 @__vm_enough_memory(ptr noundef %0, i32 noundef %1, i32 noundef %3) #19
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_area_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mapping_map_writable(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.address_space, ptr %0, i32 0, i32 4
  %3 = load volatile i32, ptr %2, align 4
  br label %4

4:                                                ; preds = %13, %1
  %5 = phi i32 [ %3, %1 ], [ %14, %13 ]
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %16, label %7, !prof !11

7:                                                ; preds = %4
  %8 = add nuw i32 %5, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !27
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #19, !srcloc !13
  br label %9

9:                                                ; preds = %9, %7
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 %5, i32 %8, ptr elementtype(i32) %2) #19, !srcloc !28
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9
  %14 = extractvalue { i32, i32 } %10, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !29
  %15 = icmp eq i32 %14, %5
  br i1 %15, label %16, label %4, !prof !10

16:                                               ; preds = %13, %4
  %17 = ashr i32 %5, 31
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_zero_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vma_link(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 17
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.address_space, ptr %11, i32 0, i32 6
  tail call void @down_write(ptr noundef %12) #19
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi ptr [ %11, %9 ], [ null, %5 ]
  tail call void @__vma_link_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19
  tail call void @__vma_link_rb(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %4) #19
  %15 = load ptr, ptr %6, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.file, ptr %15, i32 0, i32 17
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.address_space, ptr %19, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #19, !srcloc !13
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 1, ptr elementtype(i32) %25) #19, !srcloc !20
  br label %27

27:                                               ; preds = %24, %17
  %28 = getelementptr inbounds %struct.address_space, ptr %19, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %28) #19
  %29 = getelementptr inbounds %struct.address_space, ptr %19, i32 0, i32 5
  tail call void @vma_interval_tree_insert(ptr noundef %1, ptr noundef %29) #19
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !15
  %30 = load i16, ptr %28, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #19, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !19
  br label %32

32:                                               ; preds = %27, %13
  %33 = icmp eq ptr %14, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.address_space, ptr %14, i32 0, i32 6
  tail call void @up_write(ptr noundef %35) #19
  br label %36

36:                                               ; preds = %34, %32
  %37 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 13
  %38 = load i32, ptr %37, align 8
  %39 = add i32 %38, 1
  store i32 %39, ptr %37, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_mmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vm_stat_account(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 19
  %5 = load volatile i32, ptr %4, align 8
  %6 = add i32 %5, %2
  store volatile i32 %6, ptr %4, align 8
  %7 = and i32 %1, 262
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 23
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %2
  store i32 %12, ptr %10, align 4
  br label %27

13:                                               ; preds = %3
  %14 = and i32 %1, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 24
  %18 = load i32, ptr %17, align 8
  %19 = add i32 %18, %2
  store i32 %19, ptr %17, align 8
  br label %27

20:                                               ; preds = %13
  %21 = and i32 %1, 266
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 22
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, %2
  store i32 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %23, %20, %16, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_gate_vma(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unmap_region(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.mmu_gather, align 4
  %7 = icmp eq ptr %2, null
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 2
  %9 = select i1 %7, ptr %0, ptr %8
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %6) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %6, i8 0, i32 68, i1 false), !annotation !9
  tail call void @lru_add_drain() #19
  call void @tlb_gather_mmu(ptr noundef nonnull %6, ptr noundef %0) #19
  %11 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 40
  %12 = load volatile i32, ptr %11, align 4
  %13 = call i32 @llvm.smax.i32(i32 %12, i32 0) #19
  %14 = getelementptr %struct.anon.12, ptr %0, i32 0, i32 40, i32 0, i32 1
  %15 = load volatile i32, ptr %14, align 4
  %16 = call i32 @llvm.smax.i32(i32 %15, i32 0) #19
  %17 = add nuw i32 %16, %13
  %18 = getelementptr %struct.anon.12, ptr %0, i32 0, i32 40, i32 0, i32 3
  %19 = load volatile i32, ptr %18, align 4
  %20 = call i32 @llvm.smax.i32(i32 %19, i32 0) #19
  %21 = add i32 %17, %20
  %22 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 17
  %23 = load i32, ptr %22, align 8
  %24 = icmp ult i32 %23, %21
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 %21, ptr %22, align 8
  br label %26

26:                                               ; preds = %25, %5
  call void @unmap_vmas(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %3, i32 noundef %4) #19
  br i1 %7, label %30, label %27

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %26
  %31 = phi i32 [ %29, %27 ], [ 8192, %26 ]
  %32 = icmp eq ptr %10, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %10, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %34, %33 ], [ 0, %30 ]
  call void @free_pgtables(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %31, i32 noundef %36) #19
  call void @tlb_finish_mmu(ptr noundef nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %6) #19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vm_unmapped_area(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  %5 = tail call ptr @llvm.thread.pointer() #19
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 37
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %9
  %13 = icmp ult i32 %12, %9
  br i1 %4, label %129, label %14

14:                                               ; preds = %1
  br i1 %13, label %238, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %17, %12
  br i1 %18, label %238, label %19

19:                                               ; preds = %15
  %20 = sub i32 %17, %12
  %21 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %0, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp ugt i32 %22, %20
  br i1 %23, label %238, label %24

24:                                               ; preds = %19
  %25 = add i32 %22, %12
  %26 = getelementptr inbounds %struct.anon.12, ptr %7, i32 0, i32 7
  %27 = load i32, ptr %26, align 8
  %28 = icmp ugt i32 %27, %20
  br i1 %28, label %29, label %121

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.anon.12, ptr %7, i32 0, i32 1
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %238, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %31, i32 12
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %35, %12
  br i1 %36, label %238, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr @stack_guard_gap, align 4
  br label %39

39:                                               ; preds = %58, %37
  %40 = phi ptr [ %31, %37 ], [ %59, %58 ]
  %41 = getelementptr i8, ptr %40, i32 -16
  %42 = getelementptr i8, ptr %40, i32 -4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.vm_area_struct, ptr %43, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp ugt i32 %47, %20
  br i1 %48, label %60, label %49

49:                                               ; preds = %45, %39
  %50 = phi i32 [ %47, %45 ], [ 0, %39 ]
  %51 = getelementptr i8, ptr %40, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %49
  %55 = getelementptr i8, ptr %52, i32 12
  %56 = load i32, ptr %55, align 4
  %57 = icmp ult i32 %56, %12
  br i1 %57, label %60, label %58

58:                                               ; preds = %94, %54
  %59 = phi ptr [ %52, %54 ], [ %92, %94 ]
  br label %39

60:                                               ; preds = %54, %49, %45
  %61 = phi i32 [ %50, %54 ], [ %50, %49 ], [ %47, %45 ]
  %62 = load i32, ptr %41, align 4
  %63 = getelementptr i8, ptr %40, i32 24
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 256
  %66 = icmp eq i32 %65, 0
  %67 = tail call i32 @llvm.usub.sat.i32(i32 %62, i32 %38) #19
  %68 = select i1 %66, i32 %62, i32 %67
  %69 = icmp ult i32 %68, %25
  br i1 %69, label %238, label %80

70:                                               ; preds = %116, %111
  %71 = phi i32 [ %118, %116 ], [ 0, %111 ]
  %72 = load i32, ptr %107, align 4
  %73 = getelementptr i8, ptr %112, i32 24
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 256
  %76 = icmp eq i32 %75, 0
  %77 = tail call i32 @llvm.usub.sat.i32(i32 %72, i32 %38) #19
  %78 = select i1 %76, i32 %72, i32 %77
  %79 = icmp ult i32 %78, %25
  br i1 %79, label %238, label %80

80:                                               ; preds = %70, %60
  %81 = phi i32 [ %78, %70 ], [ %68, %60 ]
  %82 = phi ptr [ %107, %70 ], [ %41, %60 ]
  %83 = phi i32 [ %71, %70 ], [ %61, %60 ]
  %84 = icmp ugt i32 %83, %20
  %85 = icmp ule i32 %81, %83
  %86 = select i1 %84, i1 true, i1 %85
  %87 = sub i32 %81, %83
  %88 = icmp ult i32 %87, %12
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %90, label %119

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.vm_area_struct, ptr %82, i32 0, i32 4, i32 2
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = getelementptr i8, ptr %92, i32 12
  %96 = load i32, ptr %95, align 4
  %97 = icmp ult i32 %96, %12
  br i1 %97, label %98, label %58

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %105, %98
  %100 = phi ptr [ %107, %105 ], [ %82, %98 ]
  %101 = getelementptr inbounds %struct.vm_area_struct, ptr %100, i32 0, i32 4
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, -4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %238, label %105

105:                                              ; preds = %99
  %106 = inttoptr i32 %103 to ptr
  %107 = getelementptr i8, ptr %106, i32 -16
  %108 = getelementptr inbounds %struct.rb_node, ptr %106, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %101, %109
  br i1 %110, label %111, label %99

111:                                              ; preds = %105
  %112 = inttoptr i32 %103 to ptr
  %113 = getelementptr i8, ptr %112, i32 -4
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %70, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.vm_area_struct, ptr %114, i32 0, i32 1
  %118 = load i32, ptr %117, align 4
  br label %70

119:                                              ; preds = %80
  %120 = tail call i32 @llvm.umin.i32(i32 %81, i32 %17) #19
  br label %121

121:                                              ; preds = %119, %24
  %122 = phi i32 [ %17, %24 ], [ %120, %119 ]
  %123 = sub i32 %122, %9
  %124 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %0, i32 0, i32 5
  %125 = load i32, ptr %124, align 4
  %126 = sub i32 %123, %125
  %127 = and i32 %126, %11
  %128 = sub i32 %123, %127
  br label %238

129:                                              ; preds = %1
  br i1 %13, label %238, label %130

130:                                              ; preds = %129
  %131 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %0, i32 0, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = icmp ult i32 %132, %12
  br i1 %133, label %238, label %134

134:                                              ; preds = %130
  %135 = sub i32 %132, %12
  %136 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %0, i32 0, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = icmp ugt i32 %137, %135
  br i1 %138, label %238, label %139

139:                                              ; preds = %134
  %140 = add i32 %137, %12
  %141 = getelementptr inbounds %struct.anon.12, ptr %7, i32 0, i32 1
  %142 = load volatile ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %226, label %144

144:                                              ; preds = %139
  %145 = getelementptr i8, ptr %142, i32 12
  %146 = load i32, ptr %145, align 4
  %147 = icmp ult i32 %146, %12
  br i1 %147, label %226, label %148

148:                                              ; preds = %144
  %149 = load i32, ptr @stack_guard_gap, align 4
  br label %150

150:                                              ; preds = %169, %148
  %151 = phi ptr [ %142, %148 ], [ %170, %169 ]
  %152 = getelementptr i8, ptr %151, i32 -16
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr i8, ptr %151, i32 24
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, 256
  %157 = icmp eq i32 %156, 0
  %158 = tail call i32 @llvm.usub.sat.i32(i32 %153, i32 %149) #19
  %159 = select i1 %157, i32 %153, i32 %158
  %160 = icmp ult i32 %159, %140
  br i1 %160, label %171, label %161

161:                                              ; preds = %150
  %162 = getelementptr i8, ptr %151, i32 8
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %171, label %165

165:                                              ; preds = %161
  %166 = getelementptr i8, ptr %163, i32 12
  %167 = load i32, ptr %166, align 4
  %168 = icmp ult i32 %167, %12
  br i1 %168, label %171, label %169

169:                                              ; preds = %209, %165
  %170 = phi ptr [ %163, %165 ], [ %207, %209 ]
  br label %150

171:                                              ; preds = %165, %161, %150
  %172 = getelementptr i8, ptr %151, i32 -4
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.vm_area_struct, ptr %173, i32 0, i32 1
  %177 = load i32, ptr %176, align 4
  %178 = icmp ugt i32 %177, %135
  br i1 %178, label %238, label %179

179:                                              ; preds = %175, %171
  %180 = phi i32 [ 0, %171 ], [ %177, %175 ]
  br label %195

181:                                              ; preds = %220
  %182 = inttoptr i32 %218 to ptr
  %183 = getelementptr i8, ptr %182, i32 -4
  %184 = load ptr, ptr %183, align 4
  %185 = getelementptr inbounds %struct.vm_area_struct, ptr %184, i32 0, i32 1
  %186 = load i32, ptr %185, align 4
  %187 = load i32, ptr %222, align 4
  %188 = getelementptr i8, ptr %182, i32 24
  %189 = load i32, ptr %188, align 4
  %190 = and i32 %189, 256
  %191 = icmp eq i32 %190, 0
  %192 = tail call i32 @llvm.usub.sat.i32(i32 %187, i32 %149) #19
  %193 = select i1 %191, i32 %187, i32 %192
  %194 = icmp ugt i32 %186, %135
  br i1 %194, label %238, label %195

195:                                              ; preds = %181, %179
  %196 = phi ptr [ %222, %181 ], [ %152, %179 ]
  %197 = phi i32 [ %186, %181 ], [ %180, %179 ]
  %198 = phi i32 [ %193, %181 ], [ %159, %179 ]
  %199 = icmp ult i32 %198, %140
  %200 = icmp ule i32 %198, %197
  %201 = select i1 %199, i1 true, i1 %200
  %202 = sub i32 %198, %197
  %203 = icmp ult i32 %202, %12
  %204 = select i1 %201, i1 true, i1 %203
  br i1 %204, label %205, label %230

205:                                              ; preds = %195
  %206 = getelementptr inbounds %struct.vm_area_struct, ptr %196, i32 0, i32 4, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %213, label %209

209:                                              ; preds = %205
  %210 = getelementptr i8, ptr %207, i32 12
  %211 = load i32, ptr %210, align 4
  %212 = icmp ult i32 %211, %12
  br i1 %212, label %213, label %169

213:                                              ; preds = %209, %205
  br label %214

214:                                              ; preds = %220, %213
  %215 = phi ptr [ %222, %220 ], [ %196, %213 ]
  %216 = getelementptr inbounds %struct.vm_area_struct, ptr %215, i32 0, i32 4
  %217 = load i32, ptr %216, align 4
  %218 = and i32 %217, -4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %214
  %221 = inttoptr i32 %218 to ptr
  %222 = getelementptr i8, ptr %221, i32 -16
  %223 = getelementptr inbounds %struct.rb_node, ptr %221, i32 0, i32 2
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %216, %224
  br i1 %225, label %181, label %214

226:                                              ; preds = %214, %144, %139
  %227 = getelementptr inbounds %struct.anon.12, ptr %7, i32 0, i32 7
  %228 = load i32, ptr %227, align 8
  %229 = icmp ugt i32 %228, %135
  br i1 %229, label %238, label %230

230:                                              ; preds = %226, %195
  %231 = phi i32 [ %228, %226 ], [ %197, %195 ]
  %232 = tail call i32 @llvm.umax.i32(i32 %231, i32 %137) #19
  %233 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %0, i32 0, i32 5
  %234 = load i32, ptr %233, align 4
  %235 = sub i32 %234, %232
  %236 = and i32 %235, %11
  %237 = add i32 %236, %232
  br label %238

238:                                              ; preds = %230, %226, %181, %175, %134, %130, %129, %121, %99, %70, %60, %33, %29, %19, %15, %14
  %239 = phi i32 [ %128, %121 ], [ -12, %14 ], [ -12, %15 ], [ -12, %19 ], [ -12, %29 ], [ -12, %33 ], [ %237, %230 ], [ -12, %129 ], [ -12, %130 ], [ -12, %134 ], [ -12, %226 ], [ -12, %181 ], [ -12, %175 ], [ -12, %99 ], [ -12, %70 ], [ -12, %60 ]
  %240 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_vm_unmapped_area, i32 0, i32 1), align 4
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %265

242:                                              ; preds = %238
  %243 = tail call ptr @llvm.thread.pointer() #19
  %244 = getelementptr inbounds %struct.thread_info, ptr %243, i32 0, i32 2
  %245 = load i32, ptr %244, align 8
  %246 = lshr i32 %245, 5
  %247 = getelementptr i32, ptr @__cpu_online_mask, i32 %246
  %248 = load volatile i32, ptr %247, align 4
  %249 = and i32 %245, 31
  %250 = shl nuw i32 1, %249
  %251 = and i32 %250, %248
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %265, label %253

253:                                              ; preds = %242
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !30
  %254 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_vm_unmapped_area, i32 0, i32 7), align 4
  %255 = icmp eq ptr %254, null
  br i1 %255, label %264, label %256

256:                                              ; preds = %256, %253
  %257 = phi ptr [ %261, %256 ], [ %254, %253 ]
  %258 = load volatile ptr, ptr %257, align 4
  %259 = getelementptr inbounds %struct.tracepoint_func, ptr %257, i32 0, i32 1
  %260 = load ptr, ptr %259, align 4
  tail call void %258(ptr noundef %260, i32 noundef %239, ptr noundef %0) #19
  %261 = getelementptr %struct.tracepoint_func, ptr %257, i32 1
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %256

264:                                              ; preds = %256, %253
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !31
  br label %265

265:                                              ; preds = %264, %242, %238
  ret i32 %239
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmem_get_unmapped_area(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_vma(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @vmacache_find(ptr noundef %0, i32 noundef %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %32, !prof !11

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %23, %5
  %10 = phi ptr [ %26, %23 ], [ %7, %5 ]
  %11 = phi ptr [ %24, %23 ], [ null, %5 ]
  %12 = getelementptr i8, ptr %10, i32 -16
  %13 = getelementptr i8, ptr %10, i32 -12
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load i32, ptr %12, align 4
  %18 = icmp ugt i32 %17, %1
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  br label %23

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %12, %19 ], [ %11, %21 ]
  %25 = phi ptr [ %20, %19 ], [ %22, %21 ]
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %9

28:                                               ; preds = %23, %16
  %29 = phi ptr [ %24, %23 ], [ %12, %16 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @vmacache_update(i32 noundef %1, ptr noundef nonnull %29) #19
  br label %32

32:                                               ; preds = %31, %28, %5, %2
  %33 = phi ptr [ %3, %2 ], [ %29, %31 ], [ null, %28 ], [ null, %5 ]
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmacache_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vmacache_update(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_vma_prev(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call ptr @vmacache_find(ptr noundef %0, i32 noundef %1) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %33, !prof !11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %24, %6
  %11 = phi ptr [ %27, %24 ], [ %8, %6 ]
  %12 = phi ptr [ %25, %24 ], [ null, %6 ]
  %13 = getelementptr i8, ptr %11, i32 -16
  %14 = getelementptr i8, ptr %11, i32 -12
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load i32, ptr %13, align 4
  %19 = icmp ugt i32 %18, %1
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  br label %24

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi ptr [ %13, %20 ], [ %12, %22 ]
  %26 = phi ptr [ %21, %20 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %10

29:                                               ; preds = %24, %17
  %30 = phi ptr [ %25, %24 ], [ %13, %17 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  tail call void @vmacache_update(i32 noundef %1, ptr noundef nonnull %30) #19
  br label %33

33:                                               ; preds = %32, %3
  %34 = phi ptr [ %4, %3 ], [ %30, %32 ]
  %35 = getelementptr inbounds %struct.vm_area_struct, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  br label %42

37:                                               ; preds = %29, %6
  %38 = tail call ptr @rb_last(ptr noundef %7) #19
  %39 = icmp eq ptr %38, null
  %40 = getelementptr i8, ptr %38, i32 -16
  %41 = select i1 %39, ptr null, ptr %40
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi ptr [ null, %37 ], [ %34, %33 ]
  %44 = phi ptr [ %41, %37 ], [ %36, %33 ]
  store ptr %44, ptr %2, align 4
  ret ptr %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @expand_downwards(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = and i32 %1, -4096
  %6 = load i32, ptr @mmap_min_addr, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %242, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 256
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %14, 7
  %18 = icmp ne i32 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.vm_area_struct, ptr %10, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = sub i32 %5, %22
  %24 = load i32, ptr @stack_guard_gap, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %242, label %26

26:                                               ; preds = %20, %12, %8
  %27 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35, !prof !11

30:                                               ; preds = %26
  %31 = tail call i32 @__anon_vma_prepare(ptr noundef %0) #19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %242, !prof !10

33:                                               ; preds = %30
  %34 = load ptr, ptr %27, align 4
  br label %35

35:                                               ; preds = %33, %26
  %36 = phi ptr [ %34, %33 ], [ %28, %26 ]
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.anon_vma, ptr %37, i32 0, i32 1
  tail call void @down_write(ptr noundef %38) #19
  %39 = load i32, ptr %0, align 4
  %40 = icmp ugt i32 %39, %5
  br i1 %40, label %41, label %237

41:                                               ; preds = %35
  %42 = sub i32 %39, %5
  %43 = lshr i32 %42, 12
  %44 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 13
  %45 = load i32, ptr %44, align 4
  %46 = icmp ugt i32 %43, %45
  br i1 %46, label %237, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = sub i32 %49, %5
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.anon.12, ptr %51, i32 0, i32 19
  %55 = load i32, ptr %54, align 8
  %56 = add i32 %55, %43
  %57 = tail call ptr @llvm.thread.pointer() #19
  %58 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 93
  %59 = load ptr, ptr %58, align 16
  %60 = getelementptr %struct.signal_struct, ptr %59, i32 0, i32 50, i32 9
  %61 = load volatile i32, ptr %60, align 8
  %62 = lshr i32 %61, 12
  %63 = icmp ugt i32 %56, %62
  br i1 %63, label %237, label %64

64:                                               ; preds = %47
  %65 = and i32 %53, 266
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %100

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.anon.12, ptr %51, i32 0, i32 22
  %69 = load i32, ptr %68, align 8
  %70 = add i32 %69, %43
  %71 = getelementptr %struct.signal_struct, ptr %59, i32 0, i32 50, i32 2
  %72 = load volatile i32, ptr %71, align 8
  %73 = lshr i32 %72, 12
  %74 = icmp ugt i32 %70, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %67
  %76 = load volatile i32, ptr %71, align 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = getelementptr %struct.signal_struct, ptr %59, i32 0, i32 50, i32 2, i32 1
  %80 = load volatile i32, ptr %79, align 4
  %81 = lshr i32 %80, 12
  %82 = icmp ugt i32 %70, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %78, %75
  %84 = load i1, ptr @may_expand_vm.__already_done, align 1
  br i1 %84, label %95, label %85, !prof !10

85:                                               ; preds = %83
  store i1 true, ptr @may_expand_vm.__already_done, align 1
  %86 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 85
  %87 = getelementptr inbounds %struct.task_struct, ptr %57, i32 0, i32 52
  %88 = load i32, ptr %87, align 8
  %89 = shl i32 %70, 12
  %90 = load volatile i32, ptr %71, align 8
  %91 = load i8, ptr @ignore_rlimit_data, align 1, !range !22
  %92 = icmp eq i8 %91, 0
  %93 = select i1 %92, ptr @.str.4, ptr @.str.3
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %86, i32 noundef %88, i32 noundef %89, i32 noundef %90, ptr noundef nonnull %93) #20
  br label %95

95:                                               ; preds = %85, %83
  %96 = load i8, ptr @ignore_rlimit_data, align 1, !range !22
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %237, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %58, align 16
  br label %100

100:                                              ; preds = %98, %78, %67, %64
  %101 = phi ptr [ %99, %98 ], [ %59, %64 ], [ %59, %67 ], [ %59, %78 ]
  %102 = getelementptr %struct.signal_struct, ptr %101, i32 0, i32 50, i32 3
  %103 = load volatile i32, ptr %102, align 8
  %104 = icmp ult i32 %103, %50
  br i1 %104, label %237, label %105

105:                                              ; preds = %100
  %106 = load i32, ptr %52, align 4
  %107 = and i32 %106, 8192
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.anon.12, ptr %51, i32 0, i32 20
  %111 = load i32, ptr %110, align 4
  %112 = add i32 %111, %43
  %113 = getelementptr %struct.signal_struct, ptr %101, i32 0, i32 50, i32 8
  %114 = load volatile i32, ptr %113, align 8
  %115 = lshr i32 %114, 12
  %116 = icmp ugt i32 %112, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = tail call zeroext i1 @capable(i32 noundef 14) #19
  br i1 %118, label %119, label %237

119:                                              ; preds = %117, %109, %105
  %120 = tail call i32 @cap_vm_enough_memory(ptr noundef %51, i32 noundef %43) #19
  %121 = tail call i32 @__vm_enough_memory(ptr noundef %51, i32 noundef %43, i32 noundef %120) #19
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %237

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.anon.12, ptr %4, i32 0, i32 14
  tail call void @_raw_spin_lock(ptr noundef %124) #19
  %125 = load i32, ptr %52, align 4
  %126 = and i32 %125, 8192
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.anon.12, ptr %4, i32 0, i32 20
  %130 = load i32, ptr %129, align 4
  %131 = add i32 %130, %43
  store i32 %131, ptr %129, align 4
  %132 = load i32, ptr %52, align 4
  br label %133

133:                                              ; preds = %128, %123
  %134 = phi i32 [ %132, %128 ], [ %125, %123 ]
  %135 = getelementptr inbounds %struct.anon.12, ptr %4, i32 0, i32 19
  %136 = load volatile i32, ptr %135, align 8
  %137 = add i32 %136, %43
  store volatile i32 %137, ptr %135, align 8
  %138 = and i32 %134, 262
  %139 = icmp eq i32 %138, 4
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.anon.12, ptr %4, i32 0, i32 23
  %142 = load i32, ptr %141, align 4
  %143 = add i32 %142, %43
  store i32 %143, ptr %141, align 4
  br label %158

144:                                              ; preds = %133
  %145 = and i32 %134, 256
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.anon.12, ptr %4, i32 0, i32 24
  %149 = load i32, ptr %148, align 8
  %150 = add i32 %149, %43
  store i32 %150, ptr %148, align 8
  br label %158

151:                                              ; preds = %144
  %152 = and i32 %134, 266
  %153 = icmp eq i32 %152, 2
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.anon.12, ptr %4, i32 0, i32 22
  %156 = load i32, ptr %155, align 8
  %157 = add i32 %156, %43
  store i32 %157, ptr %155, align 8
  br label %158

158:                                              ; preds = %154, %151, %147, %140
  %159 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 10
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, %159
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  store i32 %5, ptr %0, align 4
  %163 = load i32, ptr %44, align 4
  %164 = sub i32 %163, %43
  store i32 %164, ptr %44, align 4
  br label %186

165:                                              ; preds = %165, %158
  %166 = phi ptr [ %171, %165 ], [ %160, %158 ]
  %167 = getelementptr i8, ptr %166, i32 -8
  %168 = getelementptr i8, ptr %166, i32 -4
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.anon_vma, ptr %169, i32 0, i32 5
  tail call void @anon_vma_interval_tree_remove(ptr noundef %167, ptr noundef %170) #19
  %171 = load ptr, ptr %166, align 4
  %172 = icmp eq ptr %171, %159
  br i1 %172, label %173, label %165

173:                                              ; preds = %165
  %174 = load ptr, ptr %159, align 4
  store i32 %5, ptr %0, align 4
  %175 = load i32, ptr %44, align 4
  %176 = sub i32 %175, %43
  store i32 %176, ptr %44, align 4
  %177 = icmp eq ptr %174, %159
  br i1 %177, label %186, label %178

178:                                              ; preds = %178, %173
  %179 = phi ptr [ %184, %178 ], [ %174, %173 ]
  %180 = getelementptr i8, ptr %179, i32 -8
  %181 = getelementptr i8, ptr %179, i32 -4
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.anon_vma, ptr %182, i32 0, i32 5
  tail call void @anon_vma_interval_tree_insert(ptr noundef %180, ptr noundef %183) #19
  %184 = load ptr, ptr %179, align 4
  %185 = icmp eq ptr %184, %159
  br i1 %185, label %186, label %178

186:                                              ; preds = %178, %173, %162
  %187 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 4
  br label %188

188:                                              ; preds = %229, %186
  %189 = phi ptr [ %232, %229 ], [ %187, %186 ]
  %190 = getelementptr i8, ptr %189, i32 -16
  %191 = load i32, ptr %190, align 4
  %192 = getelementptr i8, ptr %189, i32 24
  %193 = load i32, ptr %192, align 4
  %194 = and i32 %193, 256
  %195 = icmp eq i32 %194, 0
  %196 = load i32, ptr @stack_guard_gap, align 4
  %197 = tail call i32 @llvm.usub.sat.i32(i32 %191, i32 %196) #19
  %198 = select i1 %195, i32 %191, i32 %197
  %199 = getelementptr i8, ptr %189, i32 -4
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %206, label %202

202:                                              ; preds = %188
  %203 = getelementptr inbounds %struct.vm_area_struct, ptr %200, i32 0, i32 1
  %204 = load i32, ptr %203, align 4
  %205 = tail call i32 @llvm.usub.sat.i32(i32 %198, i32 %204) #19
  br label %206

206:                                              ; preds = %202, %188
  %207 = phi i32 [ %198, %188 ], [ %205, %202 ]
  %208 = getelementptr i8, ptr %189, i32 8
  %209 = load ptr, ptr %208, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %206
  %212 = getelementptr i8, ptr %209, i32 12
  %213 = load i32, ptr %212, align 4
  %214 = tail call i32 @llvm.umax.i32(i32 %213, i32 %207) #19
  br label %215

215:                                              ; preds = %211, %206
  %216 = phi i32 [ %207, %206 ], [ %214, %211 ]
  %217 = getelementptr i8, ptr %189, i32 4
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %224, label %220

220:                                              ; preds = %215
  %221 = getelementptr i8, ptr %218, i32 12
  %222 = load i32, ptr %221, align 4
  %223 = tail call i32 @llvm.umax.i32(i32 %222, i32 %216) #19
  br label %224

224:                                              ; preds = %220, %215
  %225 = phi i32 [ %216, %215 ], [ %223, %220 ]
  %226 = getelementptr i8, ptr %189, i32 12
  %227 = load i32, ptr %226, align 4
  %228 = icmp eq i32 %227, %225
  br i1 %228, label %234, label %229

229:                                              ; preds = %224
  store i32 %225, ptr %226, align 4
  %230 = load i32, ptr %189, align 4
  %231 = and i32 %230, -4
  %232 = inttoptr i32 %231 to ptr
  %233 = icmp eq i32 %231, 0
  br i1 %233, label %234, label %188

234:                                              ; preds = %229, %224
  tail call void asm sideeffect "dmb ish", "~{memory}"() #19, !srcloc !15
  %235 = load i16, ptr %124, align 4
  %236 = add i16 %235, 1
  store i16 %236, ptr %124, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #19, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #19, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #19, !srcloc !32
  tail call void @perf_event_mmap(ptr noundef %0) #19
  br label %237

237:                                              ; preds = %234, %119, %117, %100, %95, %47, %41, %35
  %238 = phi i32 [ 0, %35 ], [ 0, %234 ], [ -12, %41 ], [ -12, %100 ], [ -12, %117 ], [ -12, %119 ], [ -12, %47 ], [ -12, %95 ]
  %239 = load ptr, ptr %27, align 4
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr inbounds %struct.anon_vma, ptr %240, i32 0, i32 1
  tail call void @up_write(ptr noundef %241) #19
  br label %242

242:                                              ; preds = %237, %30, %20, %2
  %243 = phi i32 [ %238, %237 ], [ -1, %2 ], [ -12, %20 ], [ -12, %30 ]
  ret i32 %243
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cmdline_parse_stack_guard_gap(ptr noundef %0) #8 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #19
  store ptr null, ptr %2, align 4, !annotation !9
  %3 = call i32 @simple_strtoul(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) #19
  %4 = load ptr, ptr %2, align 4
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = shl i32 %3, 12
  store i32 %8, ptr @stack_guard_gap, align 4
  br label %9

9:                                                ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @expand_stack(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @expand_downwards(ptr noundef %0, i32 noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_extend_vma(ptr noundef %0, i32 noundef %1) #0 {
  %3 = and i32 %1, -4096
  %4 = tail call ptr @vmacache_find(ptr noundef %0, i32 noundef %3) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %33, !prof !11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %51, label %10

10:                                               ; preds = %24, %6
  %11 = phi ptr [ %27, %24 ], [ %8, %6 ]
  %12 = phi ptr [ %25, %24 ], [ null, %6 ]
  %13 = getelementptr i8, ptr %11, i32 -16
  %14 = getelementptr i8, ptr %11, i32 -12
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %3
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load i32, ptr %13, align 4
  %19 = icmp ugt i32 %18, %3
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  br label %24

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi ptr [ %13, %20 ], [ %12, %22 ]
  %26 = phi ptr [ %21, %20 ], [ %23, %22 ]
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %10

29:                                               ; preds = %24, %17
  %30 = phi ptr [ %25, %24 ], [ %13, %17 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %51, label %32

32:                                               ; preds = %29
  tail call void @vmacache_update(i32 noundef %3, ptr noundef nonnull %30) #19
  br label %33

33:                                               ; preds = %32, %2
  %34 = phi ptr [ %4, %2 ], [ %30, %32 ]
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %35, %3
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.vm_area_struct, ptr %34, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 256
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = tail call i32 @expand_downwards(ptr noundef nonnull %34, i32 noundef %3) #19
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, ptr %38, align 4
  %47 = and i32 %46, 8192
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @populate_vma_page_range(ptr noundef nonnull %34, i32 noundef %3, i32 noundef %35, ptr noundef null) #19
  br label %51

51:                                               ; preds = %49, %45, %42, %37, %33, %29, %6
  %52 = phi ptr [ %34, %33 ], [ null, %37 ], [ null, %42 ], [ %34, %49 ], [ %34, %45 ], [ null, %29 ], [ null, %6 ]
  ret ptr %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @populate_vma_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__split_vma(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.vm_operations_struct, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = tail call i32 %10(ptr noundef %1, i32 noundef %2) #19
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %81

15:                                               ; preds = %12, %8, %4
  %16 = tail call ptr @vm_area_dup(ptr noundef %1) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %81, label %18

18:                                               ; preds = %15
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.vm_area_struct, ptr %16, i32 0, i32 1
  store i32 %2, ptr %21, align 4
  br label %29

22:                                               ; preds = %18
  store i32 %2, ptr %16, align 4
  %23 = load i32, ptr %1, align 4
  %24 = sub i32 %2, %23
  %25 = lshr i32 %24, 12
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %16, i32 0, i32 13
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %25, %27
  store i32 %28, ptr %26, align 4
  br label %29

29:                                               ; preds = %22, %20
  %30 = tail call i32 @anon_vma_clone(ptr noundef nonnull %16, ptr noundef %1) #19
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %79

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.vm_area_struct, ptr %16, i32 0, i32 14
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.file, ptr %34, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #19, !srcloc !13
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 1, ptr elementtype(i32) %37) #19, !srcloc !20
  br label %39

39:                                               ; preds = %36, %32
  %40 = getelementptr inbounds %struct.vm_area_struct, ptr %16, i32 0, i32 12
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %41, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void %44(ptr noundef nonnull %16) #19
  br label %47

47:                                               ; preds = %46, %43, %39
  br i1 %19, label %58, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %52 = load i32, ptr %51, align 4
  %53 = load i32, ptr %16, align 4
  %54 = sub i32 %2, %53
  %55 = lshr i32 %54, 12
  %56 = add i32 %55, %52
  %57 = tail call i32 @__vma_adjust(ptr noundef %1, i32 noundef %2, i32 noundef %50, i32 noundef %56, ptr noundef nonnull %16, ptr noundef null) #19
  br label %63

58:                                               ; preds = %47
  %59 = load i32, ptr %1, align 4
  %60 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  %61 = load i32, ptr %60, align 4
  %62 = tail call i32 @__vma_adjust(ptr noundef %1, i32 noundef %59, i32 noundef %2, i32 noundef %61, ptr noundef nonnull %16, ptr noundef null) #19
  br label %63

63:                                               ; preds = %58, %48
  %64 = phi i32 [ %57, %48 ], [ %62, %58 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %40, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.vm_operations_struct, ptr %67, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  tail call void %71(ptr noundef nonnull %16) #19
  br label %74

74:                                               ; preds = %73, %69, %66
  %75 = load ptr, ptr %33, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  tail call void @fput(ptr noundef nonnull %75) #19
  br label %78

78:                                               ; preds = %77, %74
  tail call void @unlink_anon_vmas(ptr noundef nonnull %16) #19
  br label %79

79:                                               ; preds = %78, %29
  %80 = phi i32 [ %30, %29 ], [ %64, %78 ]
  tail call void @vm_area_free(ptr noundef nonnull %16) #19
  br label %81

81:                                               ; preds = %79, %63, %15, %12
  %82 = phi i32 [ %80, %79 ], [ %13, %12 ], [ -12, %15 ], [ 0, %63 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vm_area_dup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlink_anon_vmas(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @split_vma(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  %7 = load i32, ptr @sysctl_max_map_count, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 @__split_vma(ptr undef, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi i32 [ %10, %9 ], [ -12, %4 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__do_munmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readnone %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = and i32 %1, 4095
  %7 = icmp ne i32 %6, 0
  %8 = icmp ugt i32 %1, -1090519040
  %9 = or i1 %8, %7
  %10 = sub i32 -1090519040, %1
  %11 = icmp ult i32 %10, %2
  %12 = or i1 %11, %9
  br i1 %12, label %501, label %13

13:                                               ; preds = %5
  %14 = add i32 %2, 4095
  %15 = and i32 %14, -4096
  %16 = add i32 %15, %1
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %501, label %18

18:                                               ; preds = %13
  %19 = tail call ptr @vmacache_find(ptr noundef %0, i32 noundef %1) #19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %48, !prof !11

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %501, label %25

25:                                               ; preds = %39, %21
  %26 = phi ptr [ %42, %39 ], [ %23, %21 ]
  %27 = phi ptr [ %40, %39 ], [ null, %21 ]
  %28 = getelementptr i8, ptr %26, i32 -16
  %29 = getelementptr i8, ptr %26, i32 -12
  %30 = load i32, ptr %29, align 4
  %31 = icmp ugt i32 %30, %1
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, ptr %28, align 4
  %34 = icmp ugt i32 %33, %1
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.rb_node, ptr %26, i32 0, i32 2
  br label %39

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.rb_node, ptr %26, i32 0, i32 1
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi ptr [ %28, %35 ], [ %27, %37 ]
  %41 = phi ptr [ %36, %35 ], [ %38, %37 ]
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %25

44:                                               ; preds = %39, %32
  %45 = phi ptr [ %40, %39 ], [ %28, %32 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %501, label %47

47:                                               ; preds = %44
  tail call void @vmacache_update(i32 noundef %1, ptr noundef nonnull %45) #19
  br label %48

48:                                               ; preds = %47, %18
  %49 = phi ptr [ %19, %18 ], [ %45, %47 ]
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult i32 %50, %16
  br i1 %51, label %52, label %501

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.vm_area_struct, ptr %49, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp ult i32 %50, %1
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.vm_area_struct, ptr %49, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp ult i32 %16, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 13
  %62 = load i32, ptr %61, align 8
  %63 = load i32, ptr @sysctl_max_map_count, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %501

65:                                               ; preds = %60, %56
  %66 = tail call i32 @__split_vma(ptr undef, ptr noundef nonnull %49, i32 noundef %1, i32 noundef 0)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %501

68:                                               ; preds = %65, %52
  %69 = phi ptr [ %49, %65 ], [ %54, %52 ]
  %70 = tail call ptr @vmacache_find(ptr noundef %0, i32 noundef %16) #19
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %99, !prof !11

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %106, label %76

76:                                               ; preds = %90, %72
  %77 = phi ptr [ %93, %90 ], [ %74, %72 ]
  %78 = phi ptr [ %91, %90 ], [ null, %72 ]
  %79 = getelementptr i8, ptr %77, i32 -16
  %80 = getelementptr i8, ptr %77, i32 -12
  %81 = load i32, ptr %80, align 4
  %82 = icmp ugt i32 %81, %16
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32, ptr %79, align 4
  %85 = icmp ugt i32 %84, %16
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 2
  br label %90

88:                                               ; preds = %76
  %89 = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 1
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi ptr [ %79, %86 ], [ %78, %88 ]
  %92 = phi ptr [ %87, %86 ], [ %89, %88 ]
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %76

95:                                               ; preds = %90, %83
  %96 = phi ptr [ %91, %90 ], [ %79, %83 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %95
  tail call void @vmacache_update(i32 noundef %16, ptr noundef nonnull %96) #19
  br label %99

99:                                               ; preds = %98, %68
  %100 = phi ptr [ %70, %68 ], [ %96, %98 ]
  %101 = load i32, ptr %100, align 4
  %102 = icmp ugt i32 %16, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = tail call i32 @__split_vma(ptr undef, ptr noundef nonnull %100, i32 noundef %16, i32 noundef 1)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %501

106:                                              ; preds = %103, %99, %95, %72
  %107 = icmp eq ptr %69, null
  %108 = getelementptr inbounds %struct.vm_area_struct, ptr %69, i32 0, i32 2
  %109 = select i1 %107, ptr %0, ptr %108
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 20
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  %114 = icmp eq ptr %110, null
  %115 = select i1 %113, i1 true, i1 %114
  br i1 %115, label %142, label %116

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.vm_area_struct, ptr %110, i32 0, i32 6
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.anon.12, ptr %118, i32 0, i32 20
  br label %120

120:                                              ; preds = %138, %116
  %121 = phi ptr [ %110, %116 ], [ %140, %138 ]
  %122 = load i32, ptr %121, align 4
  %123 = icmp ult i32 %122, %16
  br i1 %123, label %124, label %142

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.vm_area_struct, ptr %121, i32 0, i32 8
  %126 = load i32, ptr %125, align 4
  %127 = and i32 %126, 8192
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.vm_area_struct, ptr %121, i32 0, i32 1
  %131 = load i32, ptr %130, align 4
  %132 = sub i32 %131, %122
  %133 = lshr i32 %132, 12
  %134 = load i32, ptr %119, align 4
  %135 = sub i32 %134, %133
  store i32 %135, ptr %119, align 4
  %136 = load i32, ptr %121, align 4
  %137 = load i32, ptr %130, align 4
  tail call void @munlock_vma_pages_range(ptr noundef nonnull %121, i32 noundef %136, i32 noundef %137) #19
  br label %138

138:                                              ; preds = %129, %124
  %139 = getelementptr inbounds %struct.vm_area_struct, ptr %121, i32 0, i32 2
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %120

142:                                              ; preds = %138, %120, %106
  %143 = getelementptr inbounds %struct.vm_area_struct, ptr %110, i32 0, i32 3
  store ptr null, ptr %143, align 4
  %144 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 1
  %145 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 13
  br label %146

146:                                              ; preds = %355, %142
  %147 = phi ptr [ %110, %142 ], [ %353, %355 ]
  %148 = getelementptr inbounds %struct.vm_area_struct, ptr %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.vm_area_struct, ptr %147, i32 0, i32 4, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.vm_area_struct, ptr %147, i32 0, i32 4, i32 2
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %173

154:                                              ; preds = %146
  %155 = load i32, ptr %148, align 4
  %156 = and i32 %155, -4
  %157 = inttoptr i32 %156 to ptr
  %158 = icmp eq i32 %156, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.rb_node, ptr %157, i32 0, i32 2
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, %148
  %163 = getelementptr inbounds %struct.rb_node, ptr %157, i32 0, i32 1
  %164 = select i1 %162, ptr %160, ptr %163
  br label %165

165:                                              ; preds = %159, %154
  %166 = phi ptr [ %144, %154 ], [ %164, %159 ]
  store volatile ptr %150, ptr %166, align 4
  %167 = icmp eq ptr %150, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  store i32 %155, ptr %150, align 4
  br label %296

169:                                              ; preds = %165
  %170 = and i32 %155, 1
  %171 = icmp eq i32 %170, 0
  %172 = select i1 %171, ptr null, ptr %157
  br label %296

173:                                              ; preds = %146
  %174 = icmp eq ptr %150, null
  br i1 %174, label %175, label %188

175:                                              ; preds = %173
  %176 = load i32, ptr %148, align 4
  store i32 %176, ptr %152, align 4
  %177 = and i32 %176, -4
  %178 = inttoptr i32 %177 to ptr
  %179 = icmp eq i32 %177, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.rb_node, ptr %178, i32 0, i32 2
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, %148
  %184 = getelementptr inbounds %struct.rb_node, ptr %178, i32 0, i32 1
  %185 = select i1 %183, ptr %181, ptr %184
  br label %186

186:                                              ; preds = %180, %175
  %187 = phi ptr [ %144, %175 ], [ %185, %180 ]
  store volatile ptr %152, ptr %187, align 4
  br label %296

188:                                              ; preds = %173
  %189 = getelementptr inbounds %struct.rb_node, ptr %150, i32 0, i32 2
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %199

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.rb_node, ptr %150, i32 0, i32 1
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr %struct.vm_area_struct, ptr %147, i32 0, i32 5
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr i8, ptr %150, i32 12
  store i32 %196, ptr %197, align 4
  %198 = ptrtoint ptr %150 to i32
  br label %263

199:                                              ; preds = %199, %188
  %200 = phi ptr [ %203, %199 ], [ %190, %188 ]
  %201 = phi ptr [ %200, %199 ], [ %150, %188 ]
  %202 = getelementptr inbounds %struct.rb_node, ptr %200, i32 0, i32 2
  %203 = load ptr, ptr %202, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %199

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.rb_node, ptr %200, i32 0, i32 1
  %207 = load ptr, ptr %206, align 4
  %208 = getelementptr inbounds %struct.rb_node, ptr %201, i32 0, i32 2
  store volatile ptr %207, ptr %208, align 4
  store volatile ptr %150, ptr %206, align 4
  %209 = load i32, ptr %150, align 4
  %210 = and i32 %209, 1
  %211 = ptrtoint ptr %200 to i32
  %212 = or i32 %210, %211
  store i32 %212, ptr %150, align 4
  %213 = getelementptr %struct.vm_area_struct, ptr %147, i32 0, i32 5
  %214 = load i32, ptr %213, align 4
  %215 = getelementptr i8, ptr %200, i32 12
  store i32 %214, ptr %215, align 4
  %216 = icmp eq ptr %201, %200
  br i1 %216, label %263, label %217

217:                                              ; preds = %258, %205
  %218 = phi ptr [ %261, %258 ], [ %201, %205 ]
  %219 = getelementptr i8, ptr %218, i32 -16
  %220 = load i32, ptr %219, align 4
  %221 = getelementptr i8, ptr %218, i32 24
  %222 = load i32, ptr %221, align 4
  %223 = and i32 %222, 256
  %224 = icmp eq i32 %223, 0
  %225 = load i32, ptr @stack_guard_gap, align 4
  %226 = tail call i32 @llvm.usub.sat.i32(i32 %220, i32 %225) #19
  %227 = select i1 %224, i32 %220, i32 %226
  %228 = getelementptr i8, ptr %218, i32 -4
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %235, label %231

231:                                              ; preds = %217
  %232 = getelementptr inbounds %struct.vm_area_struct, ptr %229, i32 0, i32 1
  %233 = load i32, ptr %232, align 4
  %234 = tail call i32 @llvm.usub.sat.i32(i32 %227, i32 %233) #19
  br label %235

235:                                              ; preds = %231, %217
  %236 = phi i32 [ %227, %217 ], [ %234, %231 ]
  %237 = getelementptr i8, ptr %218, i32 8
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %244, label %240

240:                                              ; preds = %235
  %241 = getelementptr i8, ptr %238, i32 12
  %242 = load i32, ptr %241, align 4
  %243 = tail call i32 @llvm.umax.i32(i32 %242, i32 %236) #19
  br label %244

244:                                              ; preds = %240, %235
  %245 = phi i32 [ %236, %235 ], [ %243, %240 ]
  %246 = getelementptr i8, ptr %218, i32 4
  %247 = load ptr, ptr %246, align 4
  %248 = icmp eq ptr %247, null
  br i1 %248, label %253, label %249

249:                                              ; preds = %244
  %250 = getelementptr i8, ptr %247, i32 12
  %251 = load i32, ptr %250, align 4
  %252 = tail call i32 @llvm.umax.i32(i32 %251, i32 %245) #19
  br label %253

253:                                              ; preds = %249, %244
  %254 = phi i32 [ %245, %244 ], [ %252, %249 ]
  %255 = getelementptr i8, ptr %218, i32 12
  %256 = load i32, ptr %255, align 4
  %257 = icmp eq i32 %256, %254
  br i1 %257, label %263, label %258

258:                                              ; preds = %253
  store i32 %254, ptr %255, align 4
  %259 = load i32, ptr %218, align 4
  %260 = and i32 %259, -4
  %261 = inttoptr i32 %260 to ptr
  %262 = icmp eq ptr %200, %261
  br i1 %262, label %263, label %217

263:                                              ; preds = %258, %253, %205, %192
  %264 = phi i32 [ %211, %205 ], [ %198, %192 ], [ %211, %253 ], [ %211, %258 ]
  %265 = phi ptr [ %200, %205 ], [ %150, %192 ], [ %201, %253 ], [ %201, %258 ]
  %266 = phi ptr [ %200, %205 ], [ %150, %192 ], [ %200, %253 ], [ %200, %258 ]
  %267 = phi ptr [ %207, %205 ], [ %194, %192 ], [ %207, %253 ], [ %207, %258 ]
  %268 = load ptr, ptr %151, align 4
  %269 = getelementptr inbounds %struct.rb_node, ptr %266, i32 0, i32 2
  store volatile ptr %268, ptr %269, align 4
  %270 = load i32, ptr %268, align 4
  %271 = and i32 %270, 1
  %272 = or i32 %271, %264
  store i32 %272, ptr %268, align 4
  %273 = load i32, ptr %148, align 4
  %274 = and i32 %273, -4
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %283, label %276

276:                                              ; preds = %263
  %277 = inttoptr i32 %274 to ptr
  %278 = getelementptr inbounds %struct.rb_node, ptr %277, i32 0, i32 2
  %279 = load ptr, ptr %278, align 4
  %280 = icmp eq ptr %279, %148
  %281 = getelementptr inbounds %struct.rb_node, ptr %277, i32 0, i32 1
  %282 = select i1 %280, ptr %278, ptr %281
  br label %283

283:                                              ; preds = %276, %263
  %284 = phi ptr [ %144, %263 ], [ %282, %276 ]
  store volatile ptr %266, ptr %284, align 4
  %285 = icmp eq ptr %267, null
  br i1 %285, label %289, label %286

286:                                              ; preds = %283
  %287 = ptrtoint ptr %265 to i32
  %288 = or i32 %287, 1
  store i32 %288, ptr %267, align 4
  br label %294

289:                                              ; preds = %283
  %290 = load i32, ptr %266, align 4
  %291 = and i32 %290, 1
  %292 = icmp eq i32 %291, 0
  %293 = select i1 %292, ptr null, ptr %265
  br label %294

294:                                              ; preds = %289, %286
  %295 = phi ptr [ null, %286 ], [ %293, %289 ]
  store i32 %273, ptr %266, align 4
  br label %296

296:                                              ; preds = %294, %186, %169, %168
  %297 = phi ptr [ %266, %294 ], [ %178, %186 ], [ %157, %169 ], [ %157, %168 ]
  %298 = phi ptr [ %295, %294 ], [ null, %186 ], [ %172, %169 ], [ null, %168 ]
  %299 = icmp eq ptr %297, null
  br i1 %299, label %346, label %300

300:                                              ; preds = %341, %296
  %301 = phi ptr [ %344, %341 ], [ %297, %296 ]
  %302 = getelementptr i8, ptr %301, i32 -16
  %303 = load i32, ptr %302, align 4
  %304 = getelementptr i8, ptr %301, i32 24
  %305 = load i32, ptr %304, align 4
  %306 = and i32 %305, 256
  %307 = icmp eq i32 %306, 0
  %308 = load i32, ptr @stack_guard_gap, align 4
  %309 = tail call i32 @llvm.usub.sat.i32(i32 %303, i32 %308) #19
  %310 = select i1 %307, i32 %303, i32 %309
  %311 = getelementptr i8, ptr %301, i32 -4
  %312 = load ptr, ptr %311, align 4
  %313 = icmp eq ptr %312, null
  br i1 %313, label %318, label %314

314:                                              ; preds = %300
  %315 = getelementptr inbounds %struct.vm_area_struct, ptr %312, i32 0, i32 1
  %316 = load i32, ptr %315, align 4
  %317 = tail call i32 @llvm.usub.sat.i32(i32 %310, i32 %316) #19
  br label %318

318:                                              ; preds = %314, %300
  %319 = phi i32 [ %310, %300 ], [ %317, %314 ]
  %320 = getelementptr i8, ptr %301, i32 8
  %321 = load ptr, ptr %320, align 4
  %322 = icmp eq ptr %321, null
  br i1 %322, label %327, label %323

323:                                              ; preds = %318
  %324 = getelementptr i8, ptr %321, i32 12
  %325 = load i32, ptr %324, align 4
  %326 = tail call i32 @llvm.umax.i32(i32 %325, i32 %319) #19
  br label %327

327:                                              ; preds = %323, %318
  %328 = phi i32 [ %319, %318 ], [ %326, %323 ]
  %329 = getelementptr i8, ptr %301, i32 4
  %330 = load ptr, ptr %329, align 4
  %331 = icmp eq ptr %330, null
  br i1 %331, label %336, label %332

332:                                              ; preds = %327
  %333 = getelementptr i8, ptr %330, i32 12
  %334 = load i32, ptr %333, align 4
  %335 = tail call i32 @llvm.umax.i32(i32 %334, i32 %328) #19
  br label %336

336:                                              ; preds = %332, %327
  %337 = phi i32 [ %328, %327 ], [ %335, %332 ]
  %338 = getelementptr i8, ptr %301, i32 12
  %339 = load i32, ptr %338, align 4
  %340 = icmp eq i32 %339, %337
  br i1 %340, label %346, label %341

341:                                              ; preds = %336
  store i32 %337, ptr %338, align 4
  %342 = load i32, ptr %301, align 4
  %343 = and i32 %342, -4
  %344 = inttoptr i32 %343 to ptr
  %345 = icmp eq i32 %343, 0
  br i1 %345, label %346, label %300

346:                                              ; preds = %341, %336, %296
  %347 = icmp eq ptr %298, null
  br i1 %347, label %349, label %348

348:                                              ; preds = %346
  tail call void @__rb_erase_color(ptr noundef nonnull %298, ptr noundef %144, ptr noundef nonnull @vma_gap_callbacks_rotate) #19
  br label %349

349:                                              ; preds = %348, %346
  %350 = load i32, ptr %145, align 8
  %351 = add i32 %350, -1
  store i32 %351, ptr %145, align 8
  %352 = getelementptr inbounds %struct.vm_area_struct, ptr %147, i32 0, i32 2
  %353 = load ptr, ptr %352, align 4
  %354 = icmp eq ptr %353, null
  br i1 %354, label %417, label %355

355:                                              ; preds = %349
  %356 = load i32, ptr %353, align 4
  %357 = icmp ult i32 %356, %16
  br i1 %357, label %146, label %358

358:                                              ; preds = %355
  %359 = getelementptr inbounds %struct.vm_area_struct, ptr %147, i32 0, i32 2
  store ptr %353, ptr %109, align 4
  %360 = getelementptr inbounds %struct.vm_area_struct, ptr %353, i32 0, i32 3
  store ptr %69, ptr %360, align 4
  %361 = getelementptr inbounds %struct.vm_area_struct, ptr %353, i32 0, i32 4
  br label %362

362:                                              ; preds = %403, %358
  %363 = phi ptr [ %406, %403 ], [ %361, %358 ]
  %364 = getelementptr i8, ptr %363, i32 -16
  %365 = load i32, ptr %364, align 4
  %366 = getelementptr i8, ptr %363, i32 24
  %367 = load i32, ptr %366, align 4
  %368 = and i32 %367, 256
  %369 = icmp eq i32 %368, 0
  %370 = load i32, ptr @stack_guard_gap, align 4
  %371 = tail call i32 @llvm.usub.sat.i32(i32 %365, i32 %370) #19
  %372 = select i1 %369, i32 %365, i32 %371
  %373 = getelementptr i8, ptr %363, i32 -4
  %374 = load ptr, ptr %373, align 4
  %375 = icmp eq ptr %374, null
  br i1 %375, label %380, label %376

376:                                              ; preds = %362
  %377 = getelementptr inbounds %struct.vm_area_struct, ptr %374, i32 0, i32 1
  %378 = load i32, ptr %377, align 4
  %379 = tail call i32 @llvm.usub.sat.i32(i32 %372, i32 %378) #19
  br label %380

380:                                              ; preds = %376, %362
  %381 = phi i32 [ %372, %362 ], [ %379, %376 ]
  %382 = getelementptr i8, ptr %363, i32 8
  %383 = load ptr, ptr %382, align 4
  %384 = icmp eq ptr %383, null
  br i1 %384, label %389, label %385

385:                                              ; preds = %380
  %386 = getelementptr i8, ptr %383, i32 12
  %387 = load i32, ptr %386, align 4
  %388 = tail call i32 @llvm.umax.i32(i32 %387, i32 %381) #19
  br label %389

389:                                              ; preds = %385, %380
  %390 = phi i32 [ %381, %380 ], [ %388, %385 ]
  %391 = getelementptr i8, ptr %363, i32 4
  %392 = load ptr, ptr %391, align 4
  %393 = icmp eq ptr %392, null
  br i1 %393, label %398, label %394

394:                                              ; preds = %389
  %395 = getelementptr i8, ptr %392, i32 12
  %396 = load i32, ptr %395, align 4
  %397 = tail call i32 @llvm.umax.i32(i32 %396, i32 %390) #19
  br label %398

398:                                              ; preds = %394, %389
  %399 = phi i32 [ %390, %389 ], [ %397, %394 ]
  %400 = getelementptr i8, ptr %363, i32 12
  %401 = load i32, ptr %400, align 4
  %402 = icmp eq i32 %401, %399
  br i1 %402, label %408, label %403

403:                                              ; preds = %398
  store i32 %399, ptr %400, align 4
  %404 = load i32, ptr %363, align 4
  %405 = and i32 %404, -4
  %406 = inttoptr i32 %405 to ptr
  %407 = icmp eq i32 %405, 0
  br i1 %407, label %408, label %362

408:                                              ; preds = %403, %398
  store ptr null, ptr %359, align 4
  %409 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 2
  %410 = load i64, ptr %409, align 8
  %411 = add i64 %410, 1
  store i64 %411, ptr %409, align 8
  %412 = getelementptr inbounds %struct.vm_area_struct, ptr %353, i32 0, i32 8
  %413 = load i32, ptr %412, align 4
  %414 = and i32 %413, 256
  %415 = icmp eq i32 %414, 0
  %416 = and i1 %415, %4
  br i1 %416, label %428, label %434

417:                                              ; preds = %349
  %418 = getelementptr inbounds %struct.vm_area_struct, ptr %147, i32 0, i32 2
  store ptr null, ptr %109, align 4
  br i1 %107, label %422, label %419

419:                                              ; preds = %417
  %420 = getelementptr inbounds %struct.vm_area_struct, ptr %69, i32 0, i32 1
  %421 = load i32, ptr %420, align 4
  br label %422

422:                                              ; preds = %419, %417
  %423 = phi i32 [ %421, %419 ], [ 0, %417 ]
  %424 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 7
  store i32 %423, ptr %424, align 8
  store ptr null, ptr %418, align 4
  %425 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 2
  %426 = load i64, ptr %425, align 8
  %427 = add i64 %426, 1
  store i64 %427, ptr %425, align 8
  br i1 %4, label %428, label %434

428:                                              ; preds = %422, %408
  %429 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %430 = icmp sgt i32 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %428
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext true) #19
  br label %432

432:                                              ; preds = %431, %428
  %433 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 15
  tail call void @downgrade_write(ptr noundef %433) #19
  br label %434

434:                                              ; preds = %432, %422, %408
  %435 = phi i32 [ 1, %432 ], [ 0, %422 ], [ 0, %408 ]
  tail call fastcc void @unmap_region(ptr noundef %0, ptr noundef %110, ptr noundef %69, i32 noundef %1, i32 noundef %16)
  %436 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 18
  %437 = load i32, ptr %436, align 4
  %438 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 19
  %439 = load i32, ptr %438, align 8
  %440 = icmp ult i32 %437, %439
  br i1 %440, label %441, label %442

441:                                              ; preds = %434
  store i32 %439, ptr %436, align 4
  br label %442

442:                                              ; preds = %441, %434
  %443 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 24
  %444 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 22
  %445 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 23
  br label %446

446:                                              ; preds = %495, %442
  %447 = phi ptr [ %110, %442 ], [ %481, %495 ]
  %448 = phi i32 [ 0, %442 ], [ %459, %495 ]
  %449 = getelementptr inbounds %struct.vm_area_struct, ptr %447, i32 0, i32 1
  %450 = load i32, ptr %449, align 4
  %451 = load i32, ptr %447, align 4
  %452 = sub i32 %450, %451
  %453 = lshr i32 %452, 12
  %454 = getelementptr inbounds %struct.vm_area_struct, ptr %447, i32 0, i32 8
  %455 = load i32, ptr %454, align 4
  %456 = and i32 %455, 1048576
  %457 = icmp eq i32 %456, 0
  %458 = select i1 %457, i32 0, i32 %453
  %459 = add i32 %458, %448
  %460 = load volatile i32, ptr %438, align 8
  %461 = sub i32 %460, %453
  store volatile i32 %461, ptr %438, align 8
  %462 = and i32 %455, 262
  %463 = icmp eq i32 %462, 4
  br i1 %463, label %464, label %467

464:                                              ; preds = %446
  %465 = load i32, ptr %445, align 4
  %466 = sub i32 %465, %453
  store i32 %466, ptr %445, align 4
  br label %479

467:                                              ; preds = %446
  %468 = and i32 %455, 256
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %473, label %470

470:                                              ; preds = %467
  %471 = load i32, ptr %443, align 8
  %472 = sub i32 %471, %453
  store i32 %472, ptr %443, align 8
  br label %479

473:                                              ; preds = %467
  %474 = and i32 %455, 266
  %475 = icmp eq i32 %474, 2
  br i1 %475, label %476, label %479

476:                                              ; preds = %473
  %477 = load i32, ptr %444, align 8
  %478 = sub i32 %477, %453
  store i32 %478, ptr %444, align 8
  br label %479

479:                                              ; preds = %476, %473, %470, %464
  %480 = getelementptr inbounds %struct.vm_area_struct, ptr %447, i32 0, i32 2
  %481 = load ptr, ptr %480, align 4
  %482 = getelementptr inbounds %struct.vm_area_struct, ptr %447, i32 0, i32 12
  %483 = load ptr, ptr %482, align 4
  %484 = icmp eq ptr %483, null
  br i1 %484, label %490, label %485

485:                                              ; preds = %479
  %486 = getelementptr inbounds %struct.vm_operations_struct, ptr %483, i32 0, i32 1
  %487 = load ptr, ptr %486, align 4
  %488 = icmp eq ptr %487, null
  br i1 %488, label %490, label %489

489:                                              ; preds = %485
  tail call void %487(ptr noundef %447) #19
  br label %490

490:                                              ; preds = %489, %485, %479
  %491 = getelementptr inbounds %struct.vm_area_struct, ptr %447, i32 0, i32 14
  %492 = load ptr, ptr %491, align 4
  %493 = icmp eq ptr %492, null
  br i1 %493, label %495, label %494

494:                                              ; preds = %490
  tail call void @fput(ptr noundef nonnull %492) #19
  br label %495

495:                                              ; preds = %494, %490
  tail call void @vm_area_free(ptr noundef %447) #19
  %496 = icmp eq ptr %481, null
  br i1 %496, label %497, label %446

497:                                              ; preds = %495
  %498 = sub i32 0, %459
  %499 = sext i32 %498 to i64
  %500 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %499, i32 noundef %500) #19
  br label %501

501:                                              ; preds = %497, %103, %65, %60, %48, %44, %21, %13, %5
  %502 = phi i32 [ %435, %497 ], [ %104, %103 ], [ %66, %65 ], [ -22, %5 ], [ -22, %13 ], [ 0, %48 ], [ 0, %44 ], [ 0, %21 ], [ -12, %60 ]
  ret i32 %502
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @do_munmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @__do_munmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext false)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vm_munmap(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @__vm_munmap(i32 noundef %0, i32 noundef %1, i1 noundef zeroext false)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__vm_munmap(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = tail call ptr @llvm.thread.pointer() #19
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 37
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store ptr %4, ptr %4, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %8, align 4
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %7, i1 noundef zeroext true) #19
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %struct.anon.12, ptr %7, i32 0, i32 15
  %14 = call i32 @down_write_killable(ptr noundef %13) #19
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = icmp eq i32 %14, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %7, i1 noundef zeroext true, i1 noundef zeroext %18) #19
  br label %19

19:                                               ; preds = %17, %12
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %19
  %22 = call i32 @__do_munmap(ptr noundef %7, i32 noundef %0, i32 noundef %1, ptr noundef nonnull %4, i1 noundef zeroext %2)
  %23 = icmp eq i32 %22, 1
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %23, label %26, label %29

26:                                               ; preds = %21
  br i1 %25, label %27, label %28

27:                                               ; preds = %26
  call void @__mmap_lock_do_trace_released(ptr noundef %7, i1 noundef zeroext false) #19
  br label %28

28:                                               ; preds = %27, %26
  call void @up_read(ptr noundef %13) #19
  br label %32

29:                                               ; preds = %21
  br i1 %25, label %30, label %31

30:                                               ; preds = %29
  call void @__mmap_lock_do_trace_released(ptr noundef %7, i1 noundef zeroext true) #19
  br label %31

31:                                               ; preds = %30, %29
  call void @up_write(ptr noundef %13) #19
  br label %32

32:                                               ; preds = %31, %28, %19
  %33 = phi i32 [ -4, %19 ], [ 0, %28 ], [ %22, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_munmap(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call fastcc i32 @__vm_munmap(i32 noundef %0, i32 noundef %1, i1 noundef zeroext true) #19
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_remap_file_pages(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = tail call ptr @llvm.thread.pointer() #19
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #19
  store i32 0, ptr %6, align 4
  %10 = load i1, ptr @__do_sys_remap_file_pages.__already_done, align 1
  br i1 %10, label %16, label %11, !prof !10

11:                                               ; preds = %5
  store i1 true, ptr @__do_sys_remap_file_pages.__already_done, align 1
  %12 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 85
  %13 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 52
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %12, i32 noundef %14) #20
  br label %16

16:                                               ; preds = %11, %5
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %18, label %135

18:                                               ; preds = %16
  %19 = and i32 %0, -4096
  %20 = and i32 %1, -4096
  %21 = add i32 %20, %19
  %22 = icmp ule i32 %21, %19
  %23 = lshr i32 %1, 12
  %24 = xor i32 %3, -1
  %25 = icmp ugt i32 %23, %24
  %26 = or i1 %22, %25
  br i1 %26, label %135, label %27

27:                                               ; preds = %18
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %9, i1 noundef zeroext true) #19
  br label %31

31:                                               ; preds = %30, %27
  %32 = getelementptr inbounds %struct.anon.12, ptr %9, i32 0, i32 15
  %33 = tail call i32 @down_write_killable(ptr noundef %32) #19
  %34 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = icmp eq i32 %33, 0
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %9, i1 noundef zeroext true, i1 noundef zeroext %37) #19
  br label %38

38:                                               ; preds = %36, %31
  %39 = icmp eq i32 %33, 0
  br i1 %39, label %40, label %135

40:                                               ; preds = %38
  %41 = tail call ptr @vmacache_find(ptr noundef %9, i32 noundef %19) #19
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %70, !prof !11

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.anon.12, ptr %9, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %122, label %47

47:                                               ; preds = %61, %43
  %48 = phi ptr [ %64, %61 ], [ %45, %43 ]
  %49 = phi ptr [ %62, %61 ], [ null, %43 ]
  %50 = getelementptr i8, ptr %48, i32 -16
  %51 = getelementptr i8, ptr %48, i32 -12
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %52, %19
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i32, ptr %50, align 4
  %56 = icmp ugt i32 %55, %19
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.rb_node, ptr %48, i32 0, i32 2
  br label %61

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.rb_node, ptr %48, i32 0, i32 1
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi ptr [ %50, %57 ], [ %49, %59 ]
  %63 = phi ptr [ %58, %57 ], [ %60, %59 ]
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %47

66:                                               ; preds = %61, %54
  %67 = phi ptr [ %62, %61 ], [ %50, %54 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %122, label %69

69:                                               ; preds = %66
  tail call void @vmacache_update(i32 noundef %19, ptr noundef nonnull %67) #19
  br label %70

70:                                               ; preds = %69, %40
  %71 = phi ptr [ %41, %40 ], [ %67, %69 ]
  %72 = load i32, ptr %71, align 4
  %73 = icmp ugt i32 %72, %19
  br i1 %73, label %122, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.vm_area_struct, ptr %71, i32 0, i32 8
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %122, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.vm_area_struct, ptr %71, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp ugt i32 %21, %81
  %83 = getelementptr inbounds %struct.vm_area_struct, ptr %71, i32 0, i32 14
  br i1 %82, label %86, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %83, align 4
  br label %111

86:                                               ; preds = %107, %79
  %87 = phi ptr [ %89, %107 ], [ %71, %79 ]
  %88 = getelementptr inbounds %struct.vm_area_struct, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %122, label %91

91:                                               ; preds = %86
  %92 = load i32, ptr %89, align 4
  %93 = getelementptr inbounds %struct.vm_area_struct, ptr %89, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.vm_area_struct, ptr %94, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %92, %96
  br i1 %97, label %98, label %122

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.vm_area_struct, ptr %89, i32 0, i32 14
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %83, align 4
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.vm_area_struct, ptr %89, i32 0, i32 8
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, %76
  br i1 %106, label %107, label %122

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.vm_area_struct, ptr %89, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = icmp ugt i32 %21, %109
  br i1 %110, label %86, label %111

111:                                              ; preds = %107, %84
  %112 = phi ptr [ %85, %84 ], [ %100, %107 ]
  %113 = and i32 %76, 7
  %114 = and i32 %4, 65536
  %115 = and i32 %76, 8192
  %116 = or i32 %114, %115
  %117 = or i32 %116, 32785
  %118 = getelementptr inbounds %struct.file, ptr %112, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %118) #19, !srcloc !13
  %119 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %118, ptr %118, i32 1, ptr elementtype(i32) %118) #19, !srcloc !20
  %120 = load ptr, ptr %83, align 4
  %121 = call i32 @do_mmap(ptr noundef %120, i32 noundef %19, i32 noundef %20, i32 noundef %113, i32 noundef %117, i32 noundef %3, ptr noundef nonnull %6, ptr noundef null) #19
  tail call void @fput(ptr noundef %112) #19
  br label %122

122:                                              ; preds = %111, %103, %98, %91, %86, %74, %70, %66, %43
  %123 = phi i32 [ %121, %111 ], [ -22, %74 ], [ -22, %66 ], [ -22, %43 ], [ -22, %70 ], [ -22, %86 ], [ -22, %91 ], [ -22, %98 ], [ -22, %103 ]
  %124 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  tail call void @__mmap_lock_do_trace_released(ptr noundef %9, i1 noundef zeroext true) #19
  br label %127

127:                                              ; preds = %126, %122
  tail call void @up_write(ptr noundef %32) #19
  %128 = load i32, ptr %6, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127
  %131 = tail call i32 @__mm_populate(i32 noundef %123, i32 noundef %128, i32 noundef 1) #19
  br label %132

132:                                              ; preds = %130, %127
  %133 = icmp ugt i32 %123, -4096
  %134 = select i1 %133, i32 %123, i32 0, !prof !11
  br label %135

135:                                              ; preds = %132, %38, %18, %16
  %136 = phi i32 [ %134, %132 ], [ -22, %16 ], [ -22, %18 ], [ -4, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #19
  ret i32 %136
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vm_brk_flags(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.list_head, align 8
  %5 = tail call ptr @llvm.thread.pointer() #19
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 37
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store ptr %4, ptr %4, align 8
  %8 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %8, align 4
  %9 = add i32 %1, 4095
  %10 = and i32 %9, -4096
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %41, label %12

12:                                               ; preds = %3
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %12
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %7, i1 noundef zeroext true) #19
  br label %18

18:                                               ; preds = %17, %14
  %19 = getelementptr inbounds %struct.anon.12, ptr %7, i32 0, i32 15
  %20 = call i32 @down_write_killable(ptr noundef %19) #19
  %21 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = icmp eq i32 %20, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %7, i1 noundef zeroext true, i1 noundef zeroext %24) #19
  br label %25

25:                                               ; preds = %23, %18
  %26 = icmp eq i32 %20, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %25
  %28 = call fastcc i32 @do_brk_flags(i32 noundef %0, i32 noundef %10, i32 noundef %2, ptr noundef nonnull %4)
  %29 = getelementptr inbounds %struct.anon.12, ptr %7, i32 0, i32 25
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 8192
  %32 = icmp eq i32 %31, 0
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  call void @__mmap_lock_do_trace_released(ptr noundef %7, i1 noundef zeroext true) #19
  br label %36

36:                                               ; preds = %35, %27
  call void @up_write(ptr noundef %19) #19
  %37 = icmp ne i32 %28, 0
  %38 = select i1 %32, i1 true, i1 %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = call i32 @__mm_populate(i32 noundef %0, i32 noundef %10, i32 noundef 1) #19
  br label %41

41:                                               ; preds = %39, %36, %25, %12, %3
  %42 = phi i32 [ -12, %3 ], [ 0, %12 ], [ -4, %25 ], [ 0, %39 ], [ %28, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret i32 %42
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_brk_flags(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @llvm.thread.pointer() #19
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 37
  %7 = load ptr, ptr %6, align 4
  %8 = lshr i32 %0, 12
  %9 = and i32 %2, -5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %179

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 46
  %13 = load i32, ptr %12, align 16
  %14 = lshr i32 %13, 20
  %15 = and i32 %14, 4
  %16 = getelementptr inbounds %struct.anon.12, ptr %7, i32 0, i32 25
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %2
  %19 = or i32 %18, %15
  %20 = or i32 %19, 1048691
  %21 = icmp ult i32 %0, 8192
  br i1 %21, label %179, label %22

22:                                               ; preds = %11
  %23 = icmp ugt i32 %1, -1090519040
  br i1 %23, label %179, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.anon.12, ptr %7, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 %26(ptr noundef null, i32 noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 16) #19
  %28 = icmp ugt i32 %27, -4096
  br i1 %28, label %179, label %29, !prof !11

29:                                               ; preds = %24
  %30 = sub nuw i32 -1090519040, %1
  %31 = icmp ugt i32 %27, %30
  br i1 %31, label %179, label %32

32:                                               ; preds = %29
  %33 = and i32 %27, 4095
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %179

35:                                               ; preds = %32
  %36 = tail call i32 @cap_mmap_addr(i32 noundef %27) #19
  %37 = icmp ugt i32 %36, -4096
  br i1 %37, label %179, label %38, !prof !33

38:                                               ; preds = %35
  %39 = load i32, ptr %16, align 4
  %40 = and i32 %39, 8192
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %38
  %43 = lshr i32 %1, 12
  %44 = getelementptr inbounds %struct.anon.12, ptr %7, i32 0, i32 20
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %43
  %47 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %48 = load ptr, ptr %47, align 16
  %49 = getelementptr %struct.signal_struct, ptr %48, i32 0, i32 50, i32 8
  %50 = load volatile i32, ptr %49, align 8
  %51 = lshr i32 %50, 12
  %52 = icmp ugt i32 %46, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = tail call zeroext i1 @capable(i32 noundef 14) #19
  br i1 %54, label %55, label %179

55:                                               ; preds = %53, %42, %38
  %56 = add i32 %1, %0
  %57 = getelementptr inbounds %struct.anon.12, ptr %7, i32 0, i32 1
  br label %58

58:                                               ; preds = %81, %55
  %59 = load ptr, ptr %57, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %88, label %61

61:                                               ; preds = %73, %58
  %62 = phi ptr [ %75, %73 ], [ %59, %58 ]
  %63 = phi ptr [ %69, %73 ], [ null, %58 ]
  br label %68

64:                                               ; preds = %77
  %65 = getelementptr inbounds %struct.rb_node, ptr %69, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %84, label %68

68:                                               ; preds = %64, %61
  %69 = phi ptr [ %62, %61 ], [ %66, %64 ]
  %70 = getelementptr i8, ptr %69, i32 -12
  %71 = load i32, ptr %70, align 4
  %72 = icmp ugt i32 %71, %0
  br i1 %72, label %77, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.rb_node, ptr %69, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %86, label %61

77:                                               ; preds = %68
  %78 = getelementptr i8, ptr %69, i32 -16
  %79 = load i32, ptr %78, align 4
  %80 = icmp ult i32 %79, %56
  br i1 %80, label %81, label %64

81:                                               ; preds = %77
  %82 = tail call i32 @__do_munmap(ptr noundef %7, i32 noundef %0, i32 noundef %1, ptr noundef %3, i1 noundef zeroext false) #19
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %58, label %179

84:                                               ; preds = %64
  %85 = getelementptr inbounds %struct.rb_node, ptr %69, i32 0, i32 2
  br label %88

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.rb_node, ptr %69, i32 0, i32 1
  br label %88

88:                                               ; preds = %86, %84, %58
  %89 = phi ptr [ %63, %84 ], [ %69, %86 ], [ null, %58 ]
  %90 = phi ptr [ %69, %84 ], [ %69, %86 ], [ null, %58 ]
  %91 = phi ptr [ %85, %84 ], [ %87, %86 ], [ %57, %58 ]
  %92 = icmp eq ptr %89, null
  %93 = getelementptr i8, ptr %89, i32 -16
  %94 = select i1 %92, ptr null, ptr %93
  %95 = lshr i32 %1, 12
  %96 = getelementptr inbounds %struct.anon.12, ptr %7, i32 0, i32 19
  %97 = load i32, ptr %96, align 8
  %98 = add i32 %97, %95
  %99 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 93
  %100 = load ptr, ptr %99, align 16
  %101 = getelementptr %struct.signal_struct, ptr %100, i32 0, i32 50, i32 9
  %102 = load volatile i32, ptr %101, align 8
  %103 = lshr i32 %102, 12
  %104 = icmp ugt i32 %98, %103
  br i1 %104, label %179, label %105

105:                                              ; preds = %88
  %106 = and i32 %20, 266
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %139

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.anon.12, ptr %7, i32 0, i32 22
  %110 = load i32, ptr %109, align 8
  %111 = add i32 %110, %95
  %112 = getelementptr %struct.signal_struct, ptr %100, i32 0, i32 50, i32 2
  %113 = load volatile i32, ptr %112, align 8
  %114 = lshr i32 %113, 12
  %115 = icmp ugt i32 %111, %114
  br i1 %115, label %116, label %139

116:                                              ; preds = %108
  %117 = load volatile i32, ptr %112, align 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = getelementptr %struct.signal_struct, ptr %100, i32 0, i32 50, i32 2, i32 1
  %121 = load volatile i32, ptr %120, align 4
  %122 = lshr i32 %121, 12
  %123 = icmp ugt i32 %111, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %119, %116
  %125 = load i1, ptr @may_expand_vm.__already_done, align 1
  br i1 %125, label %136, label %126, !prof !10

126:                                              ; preds = %124
  store i1 true, ptr @may_expand_vm.__already_done, align 1
  %127 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 85
  %128 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 52
  %129 = load i32, ptr %128, align 8
  %130 = shl i32 %111, 12
  %131 = load volatile i32, ptr %112, align 8
  %132 = load i8, ptr @ignore_rlimit_data, align 1, !range !22
  %133 = icmp eq i8 %132, 0
  %134 = select i1 %133, ptr @.str.4, ptr @.str.3
  %135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %127, i32 noundef %129, i32 noundef %130, i32 noundef %131, ptr noundef nonnull %134) #20
  br label %136

136:                                              ; preds = %126, %124
  %137 = load i8, ptr @ignore_rlimit_data, align 1, !range !22
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %179, label %139

139:                                              ; preds = %136, %119, %108, %105
  %140 = getelementptr inbounds %struct.anon.12, ptr %7, i32 0, i32 13
  %141 = load i32, ptr %140, align 8
  %142 = load i32, ptr @sysctl_max_map_count, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %179, label %144

144:                                              ; preds = %139
  %145 = tail call fastcc i32 @security_vm_enough_memory_mm(ptr noundef %7, i32 noundef %95)
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %179

147:                                              ; preds = %144
  %148 = tail call ptr @vma_merge(ptr noundef %7, ptr noundef %94, i32 noundef %0, i32 noundef %56, i32 noundef %20, ptr noundef null, ptr noundef null, i32 noundef %8, ptr undef, ptr undef)
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %166

150:                                              ; preds = %147
  %151 = tail call ptr @vm_area_alloc(ptr noundef %7) #19
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = sub nsw i32 0, %95
  %155 = sext i32 %154 to i64
  %156 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %155, i32 noundef %156) #19
  br label %179

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.vm_area_struct, ptr %151, i32 0, i32 12
  store ptr null, ptr %158, align 4
  store i32 %0, ptr %151, align 4
  %159 = getelementptr inbounds %struct.vm_area_struct, ptr %151, i32 0, i32 1
  store i32 %56, ptr %159, align 4
  %160 = getelementptr inbounds %struct.vm_area_struct, ptr %151, i32 0, i32 13
  store i32 %8, ptr %160, align 4
  %161 = getelementptr inbounds %struct.vm_area_struct, ptr %151, i32 0, i32 8
  store i32 %20, ptr %161, align 4
  %162 = and i32 %20, 15
  %163 = getelementptr [16 x i32], ptr @protection_map, i32 0, i32 %162
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr inbounds %struct.vm_area_struct, ptr %151, i32 0, i32 7
  store i32 %164, ptr %165, align 4
  tail call fastcc void @vma_link(ptr noundef %7, ptr noundef nonnull %151, ptr noundef %94, ptr noundef %91, ptr noundef %90)
  br label %166

166:                                              ; preds = %157, %147
  %167 = phi ptr [ %148, %147 ], [ %151, %157 ]
  tail call void @perf_event_mmap(ptr noundef nonnull %167) #19
  %168 = load i32, ptr %96, align 8
  %169 = add i32 %168, %95
  store i32 %169, ptr %96, align 8
  %170 = getelementptr inbounds %struct.anon.12, ptr %7, i32 0, i32 22
  %171 = load i32, ptr %170, align 8
  %172 = add i32 %171, %95
  store i32 %172, ptr %170, align 8
  %173 = and i32 %18, 8192
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %166
  %176 = getelementptr inbounds %struct.anon.12, ptr %7, i32 0, i32 20
  %177 = load i32, ptr %176, align 4
  %178 = add i32 %177, %95
  store i32 %178, ptr %176, align 4
  br label %179

179:                                              ; preds = %175, %166, %153, %144, %139, %136, %88, %81, %53, %35, %32, %29, %24, %22, %11, %4
  %180 = phi i32 [ -12, %153 ], [ -22, %4 ], [ -12, %139 ], [ -12, %144 ], [ 0, %175 ], [ 0, %166 ], [ -11, %53 ], [ -12, %88 ], [ -12, %136 ], [ -22, %32 ], [ -12, %29 ], [ %27, %24 ], [ -12, %22 ], [ -22, %11 ], [ %36, %35 ], [ -12, %81 ]
  ret i32 %180
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vm_brk(i32 noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @vm_brk_flags(i32 noundef %0, i32 noundef %1, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exit_mmap(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.mmu_gather, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %2) #19
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %2, i8 0, i32 68, i1 false), !annotation !9
  %3 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 43
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !10

7:                                                ; preds = %1
  %8 = tail call zeroext i1 @__oom_reap_task_mm(ptr noundef %0) #19
  tail call void @_set_bit(i32 noundef 21, ptr noundef %3) #19
  br label %9

9:                                                ; preds = %7, %1
  %10 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext true) #19
  br label %13

13:                                               ; preds = %12, %9
  %14 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 15
  tail call void @down_write(ptr noundef %14) #19
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext true) #19
  br label %18

18:                                               ; preds = %17, %13
  %19 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 20
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %54, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %23, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.anon.12, ptr %27, i32 0, i32 20
  br label %29

29:                                               ; preds = %47, %25
  %30 = phi ptr [ %23, %25 ], [ %49, %47 ]
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %51, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.vm_area_struct, ptr %30, i32 0, i32 8
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 8192
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.vm_area_struct, ptr %30, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %40, %31
  %42 = lshr i32 %41, 12
  %43 = load i32, ptr %28, align 4
  %44 = sub i32 %43, %42
  store i32 %44, ptr %28, align 4
  %45 = load i32, ptr %30, align 4
  %46 = load i32, ptr %39, align 4
  tail call void @munlock_vma_pages_range(ptr noundef nonnull %30, i32 noundef %45, i32 noundef %46) #19
  br label %47

47:                                               ; preds = %38, %33
  %48 = getelementptr inbounds %struct.vm_area_struct, ptr %30, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %29

51:                                               ; preds = %47, %29, %18
  %52 = load ptr, ptr %0, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51, %22
  %55 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  tail call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext true) #19
  br label %58

58:                                               ; preds = %57, %54
  tail call void @up_write(ptr noundef %14) #19
  br label %102

59:                                               ; preds = %51
  tail call void @lru_add_drain() #19
  tail call void @flush_cache_mm(ptr noundef %0) #19
  call void @tlb_gather_mmu_fullmm(ptr noundef nonnull %2, ptr noundef %0) #19
  call void @unmap_vmas(ptr noundef nonnull %2, ptr noundef nonnull %52, i32 noundef 0, i32 noundef -1) #19
  call void @free_pgtables(ptr noundef nonnull %2, ptr noundef nonnull %52, i32 noundef 8192, i32 noundef 0) #19
  call void @tlb_finish_mmu(ptr noundef nonnull %2) #19
  br label %60

60:                                               ; preds = %91, %59
  %61 = phi ptr [ %52, %59 ], [ %77, %91 ]
  %62 = phi i32 [ 0, %59 ], [ %75, %91 ]
  %63 = getelementptr inbounds %struct.vm_area_struct, ptr %61, i32 0, i32 8
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 1048576
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.vm_area_struct, ptr %61, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = load i32, ptr %61, align 4
  %71 = sub i32 %69, %70
  %72 = lshr i32 %71, 12
  %73 = add i32 %72, %62
  br label %74

74:                                               ; preds = %67, %60
  %75 = phi i32 [ %73, %67 ], [ %62, %60 ]
  %76 = getelementptr inbounds %struct.vm_area_struct, ptr %61, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.vm_area_struct, ptr %61, i32 0, i32 12
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.vm_operations_struct, ptr %79, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  call void %83(ptr noundef nonnull %61) #19
  br label %86

86:                                               ; preds = %85, %81, %74
  %87 = getelementptr inbounds %struct.vm_area_struct, ptr %61, i32 0, i32 14
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  call void @fput(ptr noundef nonnull %88) #19
  br label %91

91:                                               ; preds = %90, %86
  call void @vm_area_free(ptr noundef nonnull %61) #19
  %92 = call i32 @__cond_resched() #19
  %93 = icmp eq ptr %77, null
  br i1 %93, label %94, label %60

94:                                               ; preds = %91
  store ptr null, ptr %0, align 8
  %95 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  call void @__mmap_lock_do_trace_released(ptr noundef %0, i1 noundef zeroext true) #19
  br label %98

98:                                               ; preds = %97, %94
  call void @up_write(ptr noundef %14) #19
  %99 = sub i32 0, %75
  %100 = sext i32 %99 to i64
  %101 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %100, i32 noundef %101) #19
  br label %102

102:                                              ; preds = %98, %58
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %2) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__oom_reap_task_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu_fullmm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unmap_vmas(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pgtables(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_finish_mmu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @insert_vm_struct(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %21, %2
  %10 = phi ptr [ %23, %21 ], [ %7, %2 ]
  %11 = phi ptr [ %17, %21 ], [ null, %2 ]
  br label %16

12:                                               ; preds = %25
  %13 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %12, %9
  %17 = phi ptr [ %10, %9 ], [ %14, %12 ]
  %18 = getelementptr i8, ptr %17, i32 -12
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, %3
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %9

25:                                               ; preds = %16
  %26 = getelementptr i8, ptr %17, i32 -16
  %27 = load i32, ptr %26, align 4
  %28 = icmp ult i32 %27, %5
  br i1 %28, label %64, label %12

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  br label %33

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  br label %33

33:                                               ; preds = %31, %29, %2
  %34 = phi ptr [ null, %2 ], [ %11, %29 ], [ %17, %31 ]
  %35 = phi ptr [ null, %2 ], [ %17, %29 ], [ %17, %31 ]
  %36 = phi ptr [ %6, %2 ], [ %30, %29 ], [ %32, %31 ]
  %37 = icmp eq ptr %34, null
  %38 = getelementptr i8, ptr %34, i32 -16
  %39 = select i1 %37, ptr null, ptr %38
  %40 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1048576
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %33
  %45 = sub i32 %5, %3
  %46 = lshr i32 %45, 12
  %47 = tail call i32 @cap_vm_enough_memory(ptr noundef %0, i32 noundef %46) #19
  %48 = tail call i32 @__vm_enough_memory(ptr noundef %0, i32 noundef %46, i32 noundef %47) #19
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %44, %33
  %51 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 12
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 11
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !10

58:                                               ; preds = %54
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3223, 0\0A.popsection", ""() #19, !srcloc !34
  unreachable

59:                                               ; preds = %54
  %60 = load i32, ptr %1, align 4
  %61 = lshr i32 %60, 12
  %62 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  store i32 %61, ptr %62, align 4
  br label %63

63:                                               ; preds = %59, %50
  tail call fastcc void @vma_link(ptr noundef %0, ptr noundef %1, ptr noundef %39, ptr noundef %36, ptr noundef %35)
  br label %64

64:                                               ; preds = %63, %44, %25
  %65 = phi i32 [ 0, %63 ], [ -12, %44 ], [ -12, %25 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @copy_vma(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 12
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !11

17:                                               ; preds = %13
  %18 = lshr i32 %1, 12
  br label %19

19:                                               ; preds = %17, %13, %5
  %20 = phi i32 [ %18, %17 ], [ %3, %13 ], [ %3, %5 ]
  %21 = add i32 %2, %1
  %22 = getelementptr inbounds %struct.anon.12, ptr %9, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %49, label %25

25:                                               ; preds = %37, %19
  %26 = phi ptr [ %39, %37 ], [ %23, %19 ]
  %27 = phi ptr [ %33, %37 ], [ null, %19 ]
  br label %32

28:                                               ; preds = %41
  %29 = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %28, %25
  %33 = phi ptr [ %26, %25 ], [ %30, %28 ]
  %34 = getelementptr i8, ptr %33, i32 -12
  %35 = load i32, ptr %34, align 4
  %36 = icmp ugt i32 %35, %1
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %25

41:                                               ; preds = %32
  %42 = getelementptr i8, ptr %33, i32 -16
  %43 = load i32, ptr %42, align 4
  %44 = icmp ult i32 %43, %21
  br i1 %44, label %108, label %28

45:                                               ; preds = %28
  %46 = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 2
  br label %49

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.rb_node, ptr %33, i32 0, i32 1
  br label %49

49:                                               ; preds = %47, %45, %19
  %50 = phi ptr [ null, %19 ], [ %27, %45 ], [ %33, %47 ]
  %51 = phi ptr [ null, %19 ], [ %33, %45 ], [ %33, %47 ]
  %52 = phi ptr [ %22, %19 ], [ %46, %45 ], [ %48, %47 ]
  %53 = icmp eq ptr %50, null
  %54 = getelementptr i8, ptr %50, i32 -16
  %55 = select i1 %53, ptr null, ptr %54
  %56 = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 8
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 14
  %61 = load ptr, ptr %60, align 4
  %62 = tail call ptr @vma_merge(ptr noundef %9, ptr noundef %55, i32 noundef %1, i32 noundef %21, i32 noundef %57, ptr noundef %59, ptr noundef %61, i32 noundef %20, ptr undef, ptr undef)
  %63 = icmp eq ptr %62, null
  br i1 %63, label %80, label %64

64:                                               ; preds = %49
  %65 = load i32, ptr %62, align 4
  %66 = icmp ult i32 %7, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.vm_area_struct, ptr %62, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = icmp ult i32 %7, %69
  br i1 %70, label %71, label %72, !prof !11

71:                                               ; preds = %67
  store ptr %62, ptr %0, align 4
  br label %72

72:                                               ; preds = %71, %67, %64
  %73 = phi ptr [ %62, %71 ], [ %6, %67 ], [ %6, %64 ]
  %74 = getelementptr inbounds %struct.vm_area_struct, ptr %62, i32 0, i32 13
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr inbounds %struct.vm_area_struct, ptr %73, i32 0, i32 13
  %77 = load i32, ptr %76, align 4
  %78 = icmp ule i32 %75, %77
  %79 = zext i1 %78 to i8
  br label %104

80:                                               ; preds = %49
  %81 = tail call ptr @vm_area_dup(ptr noundef %6) #19
  %82 = icmp eq ptr %81, null
  br i1 %82, label %108, label %83

83:                                               ; preds = %80
  store i32 %1, ptr %81, align 4
  %84 = getelementptr inbounds %struct.vm_area_struct, ptr %81, i32 0, i32 1
  store i32 %21, ptr %84, align 4
  %85 = getelementptr inbounds %struct.vm_area_struct, ptr %81, i32 0, i32 13
  store i32 %20, ptr %85, align 4
  %86 = tail call i32 @anon_vma_clone(ptr noundef nonnull %81, ptr noundef %6) #19
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.vm_area_struct, ptr %81, i32 0, i32 14
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.file, ptr %90, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %93) #19, !srcloc !13
  %94 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %93, ptr %93, i32 1, ptr elementtype(i32) %93) #19, !srcloc !20
  br label %95

95:                                               ; preds = %92, %88
  %96 = getelementptr inbounds %struct.vm_area_struct, ptr %81, i32 0, i32 12
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %97, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  tail call void %100(ptr noundef nonnull %81) #19
  br label %103

103:                                              ; preds = %102, %99, %95
  tail call fastcc void @vma_link(ptr noundef %9, ptr noundef nonnull %81, ptr noundef %55, ptr noundef %52, ptr noundef %51)
  br label %104

104:                                              ; preds = %103, %72
  %105 = phi i8 [ 0, %103 ], [ %79, %72 ]
  %106 = phi ptr [ %81, %103 ], [ %62, %72 ]
  store i8 %105, ptr %4, align 1
  br label %108

107:                                              ; preds = %83
  tail call void @vm_area_free(ptr noundef nonnull %81) #19
  br label %108

108:                                              ; preds = %107, %104, %80, %41
  %109 = phi ptr [ %106, %104 ], [ null, %80 ], [ null, %107 ], [ null, %41 ]
  ret ptr %109
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @vma_is_special_mapping(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, @special_mapping_vmops
  %10 = icmp eq ptr %8, @legacy_special_mapping_vmops
  %11 = or i1 %9, %10
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i1 [ false, %2 ], [ %11, %6 ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @_install_special_mapping(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @__install_special_mapping(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull @special_mapping_vmops)
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__install_special_mapping(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = tail call ptr @vm_area_alloc(ptr noundef %0) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9, !prof !11

9:                                                ; preds = %6
  store i32 %1, ptr %7, align 4
  %10 = add i32 %2, %1
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 25
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %13, %3
  %15 = or i32 %14, 262144
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 8
  store i32 %15, ptr %16, align 4
  %17 = and i32 %14, 15
  %18 = getelementptr [16 x i32], ptr @protection_map, i32 0, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 7
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 12
  store ptr %5, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vm_area_struct, ptr %7, i32 0, i32 15
  store ptr %4, ptr %22, align 4
  %23 = tail call i32 @insert_vm_struct(ptr noundef %0, ptr noundef nonnull %7)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %9
  %26 = load i32, ptr %16, align 4
  %27 = lshr i32 %2, 12
  %28 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 19
  %29 = load volatile i32, ptr %28, align 8
  %30 = add i32 %29, %27
  store volatile i32 %30, ptr %28, align 8
  %31 = and i32 %26, 262
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 23
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, %27
  store i32 %36, ptr %34, align 4
  br label %51

37:                                               ; preds = %25
  %38 = and i32 %26, 256
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 24
  %42 = load i32, ptr %41, align 8
  %43 = add i32 %42, %27
  store i32 %43, ptr %41, align 8
  br label %51

44:                                               ; preds = %37
  %45 = and i32 %26, 266
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 22
  %49 = load i32, ptr %48, align 8
  %50 = add i32 %49, %27
  store i32 %50, ptr %48, align 8
  br label %51

51:                                               ; preds = %47, %44, %40, %33
  tail call void @perf_event_mmap(ptr noundef nonnull %7) #19
  br label %54

52:                                               ; preds = %9
  tail call void @vm_area_free(ptr noundef nonnull %7) #19
  %53 = inttoptr i32 %23 to ptr
  br label %54

54:                                               ; preds = %52, %51, %6
  %55 = phi ptr [ %53, %52 ], [ %7, %51 ], [ inttoptr (i32 -12 to ptr), %6 ]
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @install_special_mapping(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @__install_special_mapping(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull @legacy_special_mapping_vmops)
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %8 = ptrtoint ptr %6 to i32
  %9 = select i1 %7, i32 %8, i32 0
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mm_take_all_locks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext false) #19
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 15
  %7 = tail call i32 @down_read_trylock(ptr noundef %6) #19
  %8 = icmp ne i32 %7, 0
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext %8) #19
  br label %12

12:                                               ; preds = %11, %5
  br i1 %8, label %13, label %14, !prof !11

13:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3593, 0\0A.popsection", ""() #19, !srcloc !35
  unreachable

14:                                               ; preds = %12
  tail call void @mutex_lock(ptr noundef nonnull @mm_all_locks_mutex) #19
  %15 = load ptr, ptr %0, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %115, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @llvm.thread.pointer() #19
  br label %26

19:                                               ; preds = %31
  %20 = getelementptr inbounds %struct.vm_area_struct, ptr %27, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  br i1 %16, label %115, label %24

24:                                               ; preds = %23
  %25 = tail call ptr @llvm.thread.pointer() #19
  br label %40

26:                                               ; preds = %19, %17
  %27 = phi ptr [ %15, %17 ], [ %21, %19 ]
  %28 = load volatile i32, ptr %18, align 4
  %29 = and i32 %28, 256
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %114, !prof !10

31:                                               ; preds = %26
  %32 = load volatile i32, ptr %18, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %19, label %114

35:                                               ; preds = %68
  %36 = load ptr, ptr %0, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %115, label %38

38:                                               ; preds = %35
  %39 = tail call ptr @llvm.thread.pointer() #19
  br label %72

40:                                               ; preds = %68, %24
  %41 = phi ptr [ %15, %24 ], [ %70, %68 ]
  %42 = load volatile i32, ptr %25, align 4
  %43 = and i32 %42, 256
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %114, !prof !10

45:                                               ; preds = %40
  %46 = load volatile i32, ptr %25, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %114

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.vm_area_struct, ptr %41, i32 0, i32 14
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %68, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.file, ptr %51, i32 0, i32 17
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %68, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.address_space, ptr %55, i32 0, i32 10
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %58) #19
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3546, 0\0A.popsection", ""() #19, !srcloc !36
  unreachable

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.address_space, ptr %55, i32 0, i32 6
  tail call void @down_write(ptr noundef %67) #19
  br label %68

68:                                               ; preds = %66, %57, %53, %49
  %69 = getelementptr inbounds %struct.vm_area_struct, ptr %41, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %35, label %40

72:                                               ; preds = %110, %38
  %73 = phi ptr [ %36, %38 ], [ %112, %110 ]
  %74 = load volatile i32, ptr %39, align 4
  %75 = and i32 %74, 256
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %114, !prof !10

77:                                               ; preds = %72
  %78 = load volatile i32, ptr %39, align 4
  %79 = and i32 %78, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.vm_area_struct, ptr %73, i32 0, i32 11
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %110, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.vm_area_struct, ptr %73, i32 0, i32 10
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, %86
  br i1 %88, label %110, label %89

89:                                               ; preds = %107, %85
  %90 = phi ptr [ %108, %107 ], [ %87, %85 ]
  %91 = getelementptr i8, ptr %90, i32 -4
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.anon_vma, ptr %93, i32 0, i32 5
  %95 = load volatile i32, ptr %94, align 4
  %96 = and i32 %95, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.anon_vma, ptr %93, i32 0, i32 1
  tail call void @down_write(ptr noundef %99) #19
  %100 = load ptr, ptr %92, align 4
  %101 = getelementptr inbounds %struct.anon_vma, ptr %100, i32 0, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = or i32 %102, 1
  store i32 %103, ptr %101, align 4
  %104 = and i32 %102, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3529, 0\0A.popsection", ""() #19, !srcloc !37
  unreachable

107:                                              ; preds = %98, %89
  %108 = load ptr, ptr %90, align 4
  %109 = icmp eq ptr %108, %86
  br i1 %109, label %110, label %89

110:                                              ; preds = %107, %85, %81
  %111 = getelementptr inbounds %struct.vm_area_struct, ptr %73, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %72

114:                                              ; preds = %77, %72, %45, %40, %31, %26
  tail call void @mm_drop_all_locks(ptr noundef %0)
  br label %115

115:                                              ; preds = %114, %110, %35, %23, %14
  %116 = phi i32 [ -4, %114 ], [ 0, %35 ], [ 0, %23 ], [ 0, %14 ], [ 0, %110 ]
  ret i32 %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mm_drop_all_locks(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %0, i1 noundef zeroext false) #19
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.anon.12, ptr %0, i32 0, i32 15
  %7 = tail call i32 @down_read_trylock(ptr noundef %6) #19
  %8 = icmp ne i32 %7, 0
  %9 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %0, i1 noundef zeroext false, i1 noundef zeroext %8) #19
  br label %12

12:                                               ; preds = %11, %5
  br i1 %8, label %13, label %14, !prof !11

13:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3673, 0\0A.popsection", ""() #19, !srcloc !38
  unreachable

14:                                               ; preds = %12
  %15 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @mm_all_locks_mutex) #19
  br i1 %15, label %16, label %19, !prof !10

16:                                               ; preds = %14
  %17 = load ptr, ptr %0, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %67, label %20

19:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3674, 0\0A.popsection", ""() #19, !srcloc !39
  unreachable

20:                                               ; preds = %63, %16
  %21 = phi ptr [ %65, %63 ], [ %17, %16 ]
  %22 = getelementptr inbounds %struct.vm_area_struct, ptr %21, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.vm_area_struct, ptr %21, i32 0, i32 10
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %45, label %29

29:                                               ; preds = %42, %25
  %30 = phi ptr [ %43, %42 ], [ %27, %25 ]
  %31 = getelementptr i8, ptr %30, i32 -4
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.anon_vma, ptr %33, i32 0, i32 5
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %29
  %39 = and i32 %35, -2
  store i32 %39, ptr %34, align 4
  %40 = load ptr, ptr %32, align 4
  %41 = getelementptr inbounds %struct.anon_vma, ptr %40, i32 0, i32 1
  tail call void @up_write(ptr noundef %41) #19
  br label %42

42:                                               ; preds = %38, %29
  %43 = load ptr, ptr %30, align 4
  %44 = icmp eq ptr %43, %26
  br i1 %44, label %45, label %29

45:                                               ; preds = %42, %25, %20
  %46 = getelementptr inbounds %struct.vm_area_struct, ptr %21, i32 0, i32 14
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %63, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.file, ptr %47, i32 0, i32 17
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.address_space, ptr %51, i32 0, i32 10
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.address_space, ptr %51, i32 0, i32 6
  tail call void @up_write(ptr noundef %59) #19
  %60 = tail call i32 @_test_and_clear_bit(i32 noundef 2, ptr noundef %54) #19
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/mmap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3660, 0\0A.popsection", ""() #19, !srcloc !40
  unreachable

63:                                               ; preds = %58, %53, %49, %45
  %64 = getelementptr inbounds %struct.vm_area_struct, ptr %21, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %20

67:                                               ; preds = %63, %16
  tail call void @mutex_unlock(ptr noundef nonnull @mm_all_locks_mutex) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mmap_init() local_unnamed_addr #8 section ".init.text" {
  %1 = tail call i32 @__percpu_counter_init(ptr noundef nonnull @vm_committed_as, i64 noundef 0, i32 noundef 3264, ptr noundef nonnull @mmap_init.__key) #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__percpu_counter_init(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @init_user_reserve() #12 {
  %1 = load volatile i32, ptr @vm_zone_stat, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 0) #19
  %3 = lshr i32 %2, 3
  %4 = and i32 %3, 134217727
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 131072)
  store i32 %5, ptr @sysctl_user_reserve_kbytes, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @init_admin_reserve() #12 {
  %1 = load volatile i32, ptr @vm_zone_stat, align 4
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 0) #19
  %3 = lshr i32 %2, 3
  %4 = and i32 %3, 134217727
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 8192)
  store i32 %5, ptr @sysctl_admin_reserve_kbytes, align 4
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal i32 @init_reserve_notifier() #13 section ".meminit.text" {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_vm_unmapped_area(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %5 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #19
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %32

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %6, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, -4096
  %13 = select i1 %12, i32 0, i32 %11, !prof !11
  br i1 %12, label %14, label %15, !prof !11

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %9
  %16 = phi i32 [ %11, %14 ], [ 0, %9 ]
  %17 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %6, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %6, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %6, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %6, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %6, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %6, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_vm_unmapped_area, ptr %6, i32 0, i32 8
  %30 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %13, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30) #19
  %31 = tail call i32 @trace_handle_return(ptr noundef %4) #19
  br label %32

32:                                               ; preds = %15, %3
  %33 = phi i32 [ %31, %15 ], [ %7, %3 ]
  ret i32 %33
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
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @vma_gap_callbacks_rotate(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #16 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = getelementptr i8, ptr %0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %1, i32 12
  store i32 %5, ptr %6, align 4
  %7 = load i32, ptr %3, align 4
  %8 = getelementptr i8, ptr %0, i32 24
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 256
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr @stack_guard_gap, align 4
  %13 = tail call i32 @llvm.usub.sat.i32(i32 %7, i32 %12) #19
  %14 = select i1 %11, i32 %7, i32 %13
  %15 = getelementptr i8, ptr %0, i32 -4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %16, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = tail call i32 @llvm.usub.sat.i32(i32 %14, i32 %20) #19
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi i32 [ %14, %2 ], [ %21, %18 ]
  %24 = getelementptr i8, ptr %0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %25, i32 12
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @llvm.umax.i32(i32 %29, i32 %23) #19
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i32 [ %23, %22 ], [ %30, %27 ]
  %33 = getelementptr i8, ptr %0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %34, i32 12
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @llvm.umax.i32(i32 %38, i32 %32) #19
  br label %40

40:                                               ; preds = %36, %31
  %41 = phi i32 [ %32, %31 ], [ %39, %36 ]
  store i32 %41, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_interval_tree_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__vma_unlink_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_erase_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__vma_link_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_interval_tree_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inode_to_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__vm_enough_memory(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_vm_enough_memory(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cap_mmap_addr(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__anon_vma_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tlb_gather_mmu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @munlock_vma_pages_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @downgrade_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mm_populate(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @special_mapping_close(ptr nocapture noundef %0) #17 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @special_mapping_split(ptr nocapture noundef readnone %0, i32 noundef %1) #17 {
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @special_mapping_mremap(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @llvm.thread.pointer() #19
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ne ptr %6, %8
  %10 = load i1, ptr @special_mapping_mremap.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !11

13:                                               ; preds = %1
  store i1 true, ptr @special_mapping_mremap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3369, i32 noundef 9, ptr noundef null) #19
  br label %14

14:                                               ; preds = %13, %1
  br i1 %9, label %21, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.vm_special_mapping, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef %3, ptr noundef %0) #19
  br label %21

21:                                               ; preds = %19, %15, %14
  %22 = phi i32 [ %20, %19 ], [ -14, %14 ], [ 0, %15 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @special_mapping_fault(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @legacy_special_mapping_vmops
  %6 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 15
  br i1 %5, label %16, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.vm_special_mapping, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.vm_special_mapping, ptr %8, i32 0, i32 1
  br label %16

14:                                               ; preds = %7
  %15 = tail call i32 %10(ptr noundef %8, ptr noundef %2, ptr noundef %0) #19
  br label %53

16:                                               ; preds = %12, %1
  %17 = phi ptr [ %13, %12 ], [ %6, %1 ]
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.anon.15, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = shl i32 %20, 2
  %24 = getelementptr i8, ptr %18, i32 %23
  br label %25

25:                                               ; preds = %30, %22
  %26 = phi ptr [ %32, %30 ], [ %18, %22 ]
  %27 = phi i32 [ %31, %30 ], [ %20, %22 ]
  %28 = load ptr, ptr %26, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %53, label %30

30:                                               ; preds = %25
  %31 = add i32 %27, -1
  %32 = getelementptr ptr, ptr %26, i32 1
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %34, label %25

34:                                               ; preds = %30, %16
  %35 = phi ptr [ %18, %16 ], [ %24, %30 ]
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.page, ptr %36, i32 0, i32 1
  %40 = load volatile i32, ptr %39, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43, !prof !10

43:                                               ; preds = %38
  %44 = add i32 %40, -1
  br label %47

45:                                               ; preds = %38
  %46 = ptrtoint ptr %36 to i32
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = inttoptr i32 %48 to ptr
  %50 = getelementptr inbounds %struct.page, ptr %49, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #19, !srcloc !13
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #19, !srcloc !20
  %52 = getelementptr inbounds %struct.vm_fault, ptr %0, i32 0, i32 6
  store ptr %36, ptr %52, align 4
  br label %53

53:                                               ; preds = %47, %34, %25, %14
  %54 = phi i32 [ 0, %47 ], [ %15, %14 ], [ 2, %34 ], [ 2, %25 ]
  ret i32 %54
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @special_mapping_name(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 15
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #18

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind readonly }
attributes #15 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #16 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind readnone }

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
!12 = !{i64 426781}
!13 = !{i64 512842, i64 2148002813, i64 2148002839, i64 2148002886, i64 2148002908, i64 2148002936, i64 2148002956}
!14 = !{i64 2148017382, i64 2148017408, i64 2148017437, i64 2148017471, i64 2148017502, i64 2148017525}
!15 = !{i64 2149026793}
!16 = !{i64 2149022617}
!17 = !{i64 2149022692, i64 2149022719, i64 2149022766, i64 2149022788, i64 2149022816, i64 2149022836}
!18 = !{i64 408326}
!19 = !{i64 2149050937}
!20 = !{i64 2148015025, i64 2148015051, i64 2148015080, i64 2148015114, i64 2148015145, i64 2148015168}
!21 = !{i64 2154885362, i64 2154885836, i64 2154885399, i64 2154885455, i64 2154885489, i64 2154885513, i64 2154885554, i64 2154885575, i64 2154885603, i64 2154885637}
!22 = !{i8 0, i8 2}
!23 = !{i64 2151225273, i64 2151225298}
!24 = !{i64 3721385}
!25 = !{i64 3721582}
!26 = !{i64 2151206861}
!27 = !{i64 2148128427}
!28 = !{i64 498905, i64 498929, i64 498950, i64 498967, i64 498984}
!29 = !{i64 2148128627}
!30 = !{i64 2154482333}
!31 = !{i64 2154482497}
!32 = !{i64 2149049796}
!33 = !{!"branch_weights", i32 1, i32 4001}
!34 = !{i64 2154987576, i64 2154988051, i64 2154987613, i64 2154987669, i64 2154987703, i64 2154987727, i64 2154987768, i64 2154987789, i64 2154987817, i64 2154987851}
!35 = !{i64 2155002447, i64 2155002922, i64 2155002484, i64 2155002540, i64 2155002574, i64 2155002598, i64 2155002639, i64 2155002660, i64 2155002688, i64 2155002722}
!36 = !{i64 2155001401, i64 2155001876, i64 2155001438, i64 2155001494, i64 2155001528, i64 2155001552, i64 2155001593, i64 2155001614, i64 2155001642, i64 2155001676}
!37 = !{i64 2155000351, i64 2155000826, i64 2155000388, i64 2155000444, i64 2155000478, i64 2155000502, i64 2155000543, i64 2155000564, i64 2155000592, i64 2155000626}
!38 = !{i64 2155013007, i64 2155013482, i64 2155013044, i64 2155013100, i64 2155013134, i64 2155013158, i64 2155013199, i64 2155013220, i64 2155013248, i64 2155013282}
!39 = !{i64 2155014046, i64 2155014521, i64 2155014083, i64 2155014139, i64 2155014173, i64 2155014197, i64 2155014238, i64 2155014259, i64 2155014287, i64 2155014321}
!40 = !{i64 2155012000, i64 2155012475, i64 2155012037, i64 2155012093, i64 2155012127, i64 2155012151, i64 2155012192, i64 2155012213, i64 2155012241, i64 2155012275}
