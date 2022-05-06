; ModuleID = '/llk/IR/mm/page_alloc.c_pt.bc'
source_filename = "../mm/page_alloc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_node_states:\09\09\09\09\09"
module asm "\09.asciz \09\22node_states\22\09\09\09\09\09"
module asm "__kstrtabns_node_states:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__totalram_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22_totalram_pages\22\09\09\09\09\09"
module asm "__kstrtabns__totalram_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_on_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22init_on_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_init_on_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_on_free:\09\09\09\09\09"
module asm "\09.asciz \09\22init_on_free\22\09\09\09\09\09"
module asm "__kstrtabns_init_on_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_movable_zone:\09\09\09\09\09"
module asm "\09.asciz \09\22movable_zone\22\09\09\09\09\09"
module asm "__kstrtabns_movable_zone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_split_page:\09\09\09\09\09"
module asm "\09.asciz \09\22split_page\22\09\09\09\09\09"
module asm "__kstrtabns_split_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___alloc_pages_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22__alloc_pages_bulk\22\09\09\09\09\09"
module asm "__kstrtabns___alloc_pages_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___alloc_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22__alloc_pages\22\09\09\09\09\09"
module asm "__kstrtabns___alloc_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___folio_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__folio_alloc\22\09\09\09\09\09"
module asm "__kstrtabns___folio_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___get_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22__get_free_pages\22\09\09\09\09\09"
module asm "__kstrtabns___get_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_zeroed_page:\09\09\09\09\09"
module asm "\09.asciz \09\22get_zeroed_page\22\09\09\09\09\09"
module asm "__kstrtabns_get_zeroed_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22__free_pages\22\09\09\09\09\09"
module asm "__kstrtabns___free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22free_pages\22\09\09\09\09\09"
module asm "__kstrtabns_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___page_frag_cache_drain:\09\09\09\09\09"
module asm "\09.asciz \09\22__page_frag_cache_drain\22\09\09\09\09\09"
module asm "__kstrtabns___page_frag_cache_drain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_frag_alloc_align:\09\09\09\09\09"
module asm "\09.asciz \09\22page_frag_alloc_align\22\09\09\09\09\09"
module asm "__kstrtabns_page_frag_alloc_align:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_frag_free:\09\09\09\09\09"
module asm "\09.asciz \09\22page_frag_free\22\09\09\09\09\09"
module asm "__kstrtabns_page_frag_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_pages_exact:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_pages_exact\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_pages_exact:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_pages_exact:\09\09\09\09\09"
module asm "\09.asciz \09\22free_pages_exact\22\09\09\09\09\09"
module asm "__kstrtabns_free_pages_exact:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nr_free_buffer_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22nr_free_buffer_pages\22\09\09\09\09\09"
module asm "__kstrtabns_nr_free_buffer_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_si_mem_available:\09\09\09\09\09"
module asm "\09.asciz \09\22si_mem_available\22\09\09\09\09\09"
module asm "__kstrtabns_si_mem_available:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_si_meminfo:\09\09\09\09\09"
module asm "\09.asciz \09\22si_meminfo\22\09\09\09\09\09"
module asm "__kstrtabns_si_meminfo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adjust_managed_page_count:\09\09\09\09\09"
module asm "\09.asciz \09\22adjust_managed_page_count\22\09\09\09\09\09"
module asm "__kstrtabns_adjust_managed_page_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_contig_range:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_contig_range\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_contig_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_contig_range:\09\09\09\09\09"
module asm "\09.asciz \09\22free_contig_range\22\09\09\09\09\09"
module asm "__kstrtabns_free_contig_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nodemask_t = type { [1 x i32] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.per_cpu_pages = type { i32, i32, i32, i16, [12 x %struct.list_head] }
%struct.per_cpu_zonestat = type { [10 x i8], i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, %struct.zone_padding, %struct.lruvec, i32, [56 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [28 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32 }
%struct.zone_padding = type { [0 x i8] }
%struct.pcpu_drain = type { ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.vm_event_state = type { [71 x i32] }
%struct.memblock = type { i8, i32, %struct.memblock_type, %struct.memblock_type }
%struct.memblock_type = type { i32, i32, i32, ptr, ptr }
%struct.per_cpu_nodestat = type { i8, [40 x i8] }
%struct.lock_class_key = type {}
%struct.page = type { i32, %union.anon.0, %union.anon.70, %struct.atomic_t }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.70 = type { %struct.atomic_t }
%struct.anon.64 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.31 }
%struct.llist_node = type { ptr }
%union.anon.31 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.32 }
%union.anon.32 = type { %struct.anon.33 }
%struct.anon.33 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.capture_control = type { ptr, ptr }
%struct.compact_control = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.rlimit = type { i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.alloc_context = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.oom_control = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.page_frag_cache = type { ptr, i16, i16, i32, i8 }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.memblock_region = type { i32, i32, i32 }
%struct.migration_target_control = type { i32, ptr, i32 }

@vm_numa_stat_key = dso_local local_unnamed_addr global %struct.static_key_true { %struct.static_key { %struct.atomic_t { i32 1 } } }, align 4
@node_states = dso_local global [7 x %struct.nodemask_t] [%struct.nodemask_t { [1 x i32] [i32 1] }, %struct.nodemask_t { [1 x i32] [i32 1] }, %struct.nodemask_t { [1 x i32] [i32 1] }, %struct.nodemask_t { [1 x i32] [i32 1] }, %struct.nodemask_t { [1 x i32] [i32 1] }, %struct.nodemask_t { [1 x i32] [i32 1] }, %struct.nodemask_t zeroinitializer], section ".data..read_mostly", align 4
@__kstrtab_node_states = external dso_local constant [0 x i8], align 1
@__kstrtabns_node_states = external dso_local constant [0 x i8], align 1
@__ksymtab_node_states = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @node_states to i32), ptr @__kstrtab_node_states, ptr @__kstrtabns_node_states }, section "___ksymtab+node_states", align 4
@_totalram_pages = dso_local global %struct.atomic_t zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab__totalram_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns__totalram_pages = external dso_local constant [0 x i8], align 1
@__ksymtab__totalram_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_totalram_pages to i32), ptr @__kstrtab__totalram_pages, ptr @__kstrtabns__totalram_pages }, section "___ksymtab+_totalram_pages", align 4
@gfp_allowed_mask = dso_local local_unnamed_addr global i32 33551167, section ".data..read_mostly", align 4
@init_on_alloc = dso_local global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_init_on_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_on_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_init_on_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_on_alloc to i32), ptr @__kstrtab_init_on_alloc, ptr @__kstrtabns_init_on_alloc }, section "___ksymtab+init_on_alloc", align 4
@init_on_free = dso_local global %struct.static_key_false zeroinitializer, align 4
@__kstrtab_init_on_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_on_free = external dso_local constant [0 x i8], align 1
@__ksymtab_init_on_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_on_free to i32), ptr @__kstrtab_init_on_free, ptr @__kstrtabns_init_on_free }, section "___ksymtab+init_on_free", align 4
@__setup_str_early_init_on_alloc = internal constant [14 x i8] c"init_on_alloc\00", section ".init.rodata", align 1
@__setup_early_init_on_alloc = internal global %struct.obs_kernel_param { ptr @__setup_str_early_init_on_alloc, ptr @early_init_on_alloc, i32 1 }, section ".init.setup", align 4
@__setup_str_early_init_on_free = internal constant [13 x i8] c"init_on_free\00", section ".init.rodata", align 1
@__setup_early_init_on_free = internal global %struct.obs_kernel_param { ptr @__setup_str_early_init_on_free, ptr @early_init_on_free, i32 1 }, section ".init.setup", align 4
@system_transition_mutex = external dso_local global %struct.mutex, align 4
@.str = private unnamed_addr constant [16 x i8] c"mm/page_alloc.c\00", align 1
@saved_gfp_mask = internal unnamed_addr global i32 0, align 4
@sysctl_lowmem_reserve_ratio = dso_local local_unnamed_addr global [4 x i32] [i32 256, i32 32, i32 0, i32 0], align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Unmovable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Movable\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Reclaimable\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"HighAtomic\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"CMA\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Isolate\00", align 1
@migratetype_names = dso_local local_unnamed_addr constant [6 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4
@compound_page_dtors = dso_local local_unnamed_addr constant [2 x ptr] [ptr null, ptr @free_compound_page], align 4
@min_free_kbytes = dso_local local_unnamed_addr global i32 1024, align 4
@user_min_free_kbytes = dso_local local_unnamed_addr global i32 -1, align 4
@watermark_boost_factor = dso_local local_unnamed_addr global i32 15000, section ".data..read_mostly", align 4
@watermark_scale_factor = dso_local local_unnamed_addr global i32 10, align 4
@movable_zone = dso_local global i32 0, align 4
@__kstrtab_movable_zone = external dso_local constant [0 x i8], align 1
@__kstrtabns_movable_zone = external dso_local constant [0 x i8], align 1
@__ksymtab_movable_zone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @movable_zone to i32), ptr @__kstrtab_movable_zone, ptr @__kstrtabns_movable_zone }, section "___ksymtab+movable_zone", align 4
@page_group_by_mobility_disabled = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@_init_on_alloc_enabled_early = internal global i8 0, section ".data..read_mostly", align 1
@_init_on_free_enabled_early = internal global i8 0, section ".data..read_mostly", align 1
@fallbacks = internal unnamed_addr constant [6 x [3 x i32]] [[3 x i32] [i32 2, i32 1, i32 6], [3 x i32] [i32 2, i32 0, i32 6], [3 x i32] [i32 0, i32 1, i32 6], [3 x i32] zeroinitializer, [3 x i32] [i32 6, i32 0, i32 0], [3 x i32] [i32 6, i32 0, i32 0]], align 4
@__kstrtab_split_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_split_page = external dso_local constant [0 x i8], align 1
@__ksymtab_split_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @split_page to i32), ptr @__kstrtab_split_page, ptr @__kstrtabns_split_page }, section "___ksymtab_gpl+split_page", align 4
@warn_alloc.nopage_rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 1000, i32 1, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.warn_alloc = private unnamed_addr constant [11 x i8] c"warn_alloc\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\014%s: %pV, mode:%#x(%pGg), nodemask=%*pbl\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@__kstrtab___alloc_pages_bulk = external dso_local constant [0 x i8], align 1
@__kstrtabns___alloc_pages_bulk = external dso_local constant [0 x i8], align 1
@__ksymtab___alloc_pages_bulk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__alloc_pages_bulk to i32), ptr @__kstrtab___alloc_pages_bulk, ptr @__kstrtabns___alloc_pages_bulk }, section "___ksymtab_gpl+__alloc_pages_bulk", align 4
@__alloc_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab___alloc_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns___alloc_pages = external dso_local constant [0 x i8], align 1
@__ksymtab___alloc_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__alloc_pages to i32), ptr @__kstrtab___alloc_pages, ptr @__kstrtabns___alloc_pages }, section "___ksymtab+__alloc_pages", align 4
@__kstrtab___folio_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___folio_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab___folio_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__folio_alloc to i32), ptr @__kstrtab___folio_alloc, ptr @__kstrtabns___folio_alloc }, section "___ksymtab+__folio_alloc", align 4
@__kstrtab___get_free_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns___get_free_pages = external dso_local constant [0 x i8], align 1
@__ksymtab___get_free_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__get_free_pages to i32), ptr @__kstrtab___get_free_pages, ptr @__kstrtabns___get_free_pages }, section "___ksymtab+__get_free_pages", align 4
@__kstrtab_get_zeroed_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_zeroed_page = external dso_local constant [0 x i8], align 1
@__ksymtab_get_zeroed_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_zeroed_page to i32), ptr @__kstrtab_get_zeroed_page, ptr @__kstrtabns_get_zeroed_page }, section "___ksymtab+get_zeroed_page", align 4
@__kstrtab___free_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns___free_pages = external dso_local constant [0 x i8], align 1
@__ksymtab___free_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__free_pages to i32), ptr @__kstrtab___free_pages, ptr @__kstrtabns___free_pages }, section "___ksymtab+__free_pages", align 4
@__kstrtab_free_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_free_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_pages to i32), ptr @__kstrtab_free_pages, ptr @__kstrtabns_free_pages }, section "___ksymtab+free_pages", align 4
@__kstrtab___page_frag_cache_drain = external dso_local constant [0 x i8], align 1
@__kstrtabns___page_frag_cache_drain = external dso_local constant [0 x i8], align 1
@__ksymtab___page_frag_cache_drain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__page_frag_cache_drain to i32), ptr @__kstrtab___page_frag_cache_drain, ptr @__kstrtabns___page_frag_cache_drain }, section "___ksymtab+__page_frag_cache_drain", align 4
@__kstrtab_page_frag_alloc_align = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_frag_alloc_align = external dso_local constant [0 x i8], align 1
@__ksymtab_page_frag_alloc_align = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_frag_alloc_align to i32), ptr @__kstrtab_page_frag_alloc_align, ptr @__kstrtabns_page_frag_alloc_align }, section "___ksymtab+page_frag_alloc_align", align 4
@__kstrtab_page_frag_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_frag_free = external dso_local constant [0 x i8], align 1
@__ksymtab_page_frag_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_frag_free to i32), ptr @__kstrtab_page_frag_free, ptr @__kstrtabns_page_frag_free }, section "___ksymtab+page_frag_free", align 4
@alloc_pages_exact.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_alloc_pages_exact = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_pages_exact = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_pages_exact = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_pages_exact to i32), ptr @__kstrtab_alloc_pages_exact, ptr @__kstrtabns_alloc_pages_exact }, section "___ksymtab+alloc_pages_exact", align 4
@alloc_pages_exact_nid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_free_pages_exact = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_pages_exact = external dso_local constant [0 x i8], align 1
@__ksymtab_free_pages_exact = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_pages_exact to i32), ptr @__kstrtab_free_pages_exact, ptr @__kstrtabns_free_pages_exact }, section "___ksymtab+free_pages_exact", align 4
@__kstrtab_nr_free_buffer_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_nr_free_buffer_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_nr_free_buffer_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nr_free_buffer_pages to i32), ptr @__kstrtab_nr_free_buffer_pages, ptr @__kstrtabns_nr_free_buffer_pages }, section "___ksymtab_gpl+nr_free_buffer_pages", align 4
@totalreserve_pages = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@__kstrtab_si_mem_available = external dso_local constant [0 x i8], align 1
@__kstrtabns_si_mem_available = external dso_local constant [0 x i8], align 1
@__ksymtab_si_mem_available = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @si_mem_available to i32), ptr @__kstrtab_si_mem_available, ptr @__kstrtabns_si_mem_available }, section "___ksymtab_gpl+si_mem_available", align 4
@__kstrtab_si_meminfo = external dso_local constant [0 x i8], align 1
@__kstrtabns_si_meminfo = external dso_local constant [0 x i8], align 1
@__ksymtab_si_meminfo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @si_meminfo to i32), ptr @__kstrtab_si_meminfo, ptr @__kstrtabns_si_meminfo }, section "___ksymtab+si_meminfo", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@.str.10 = private unnamed_addr constant [305 x i8] c"active_anon:%lu inactive_anon:%lu isolated_anon:%lu\0A active_file:%lu inactive_file:%lu isolated_file:%lu\0A unevictable:%lu dirty:%lu writeback:%lu\0A slab_reclaimable:%lu slab_unreclaimable:%lu\0A mapped:%lu shmem:%lu pagetables:%lu bounce:%lu\0A kernel_misc_reclaimable:%lu\0A free:%lu free_pcp:%lu free_cma:%lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [276 x i8] c"Node %d active_anon:%lukB inactive_anon:%lukB active_file:%lukB inactive_file:%lukB unevictable:%lukB isolated(anon):%lukB isolated(file):%lukB mapped:%lukB dirty:%lukB writeback:%lukB shmem:%lukB writeback_tmp:%lukB kernel_stack:%lukB pagetables:%lukB all_unreclaimable? %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.14 = private unnamed_addr constant [299 x i8] c"\01c%s free:%lukB boost:%lukB min:%lukB low:%lukB high:%lukB reserved_highatomic:%luKB active_anon:%lukB inactive_anon:%lukB active_file:%lukB inactive_file:%lukB unevictable:%lukB writepending:%lukB present:%lukB managed:%lukB mlocked:%lukB bounce:%lukB free_pcp:%lukB local_pcp:%ukB free_cma:%lukB\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"lowmem_reserve[]:\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"\01c %ld\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"\01c%s: \00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"\01c%lu*%lukB \00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"\01c= %lukB\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"%ld total pagecache pages\0A\00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [63 x i8] c"\016Built %u zonelists, mobility grouping %s.  Total pages: %ld\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@highest_memmap_pfn = external dso_local local_unnamed_addr global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@arch_zone_lowest_possible_pfn = internal unnamed_addr global [4 x i32] zeroinitializer, section ".init.data", align 4
@arch_zone_highest_possible_pfn = internal unnamed_addr global [4 x i32] zeroinitializer, section ".init.data", align 4
@zone_movable_pfn = internal unnamed_addr global [1 x i32] zeroinitializer, section ".init.data", align 4
@.str.26 = private unnamed_addr constant [16 x i8] c"\016Zone ranges:\0A\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"\016  %-8s \00", align 1
@zone_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.2], align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"\01cempty\0A\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"\01c[mem %#018Lx-%#018Lx]\0A\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"\016Movable zone start for each node\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"\016  Node %d: %#018Lx\0A\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"\016Early memory node ranges\0A\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"\016  node %3d: [mem %#018Lx-%#018Lx]\0A\00", align 1
@__setup_str_cmdline_parse_kernelcore = internal constant [11 x i8] c"kernelcore\00", section ".init.rodata", align 1
@__setup_cmdline_parse_kernelcore = internal global %struct.obs_kernel_param { ptr @__setup_str_cmdline_parse_kernelcore, ptr @cmdline_parse_kernelcore, i32 1 }, section ".init.setup", align 4
@__setup_str_cmdline_parse_movablecore = internal constant [12 x i8] c"movablecore\00", section ".init.rodata", align 1
@__setup_cmdline_parse_movablecore = internal global %struct.obs_kernel_param { ptr @__setup_str_cmdline_parse_movablecore, ptr @cmdline_parse_movablecore, i32 1 }, section ".init.setup", align 4
@__kstrtab_adjust_managed_page_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_adjust_managed_page_count = external dso_local constant [0 x i8], align 1
@__ksymtab_adjust_managed_page_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adjust_managed_page_count to i32), ptr @__kstrtab_adjust_managed_page_count, ptr @__kstrtabns_adjust_managed_page_count }, section "___ksymtab+adjust_managed_page_count", align 4
@.str.34 = private unnamed_addr constant [27 x i8] c"\016Freeing %s memory: %ldK\0A\00", align 1
@_etext = external dso_local global [0 x i8], align 1
@_stext = external dso_local global [0 x i8], align 1
@_edata = external dso_local global [0 x i8], align 1
@_sdata = external dso_local global [0 x i8], align 1
@__end_rodata = external dso_local global [0 x i8], align 1
@__start_rodata = external dso_local global [0 x i8], align 1
@__bss_stop = external dso_local global [0 x i8], align 1
@__bss_start = external dso_local global [0 x i8], align 1
@__init_end = external dso_local global [0 x i8], align 1
@__init_begin = external dso_local global [0 x i8], align 1
@_einittext = external dso_local global [0 x i8], align 1
@_sinittext = external dso_local global [0 x i8], align 1
@.str.35 = private unnamed_addr constant [145 x i8] c"\016Memory: %luK/%luK available (%luK kernel code, %luK rwdata, %luK rodata, %luK init, %luK bss, %luK reserved, %luK cma-reserved, %luK highmem)\0A\00", align 1
@totalcma_pages = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@dma_reserve = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.36 = private unnamed_addr constant [18 x i8] c"mm/page_alloc:pcp\00", align 1
@setup_per_zone_wmarks.lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.37 = private unnamed_addr constant [83 x i8] c"\014min_free_kbytes is not updated to %d because user defined value %d is preferred\0A\00", align 1
@__initcall__kmod_page_alloc__460_8566_init_per_zone_wmark_min2 = internal global ptr @init_per_zone_wmark_min, section ".initcall2.init", align 4
@pcp_batch_high_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pcp_batch_high_lock, i64 12), ptr getelementptr (i8, ptr @pcp_batch_high_lock, i64 12) } }, align 4
@percpu_pagelist_high_fraction = dso_local local_unnamed_addr global i32 0, align 4
@nr_kernel_pages = internal unnamed_addr global i32 0, section ".init.data", align 4
@nr_all_pages = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.38 = private unnamed_addr constant [34 x i8] c"Failed to allocate %s hash table\0A\00", align 1
@.str.39 = private unnamed_addr constant [57 x i8] c"\016%s hash table entries: %ld (order: %d, %lu bytes, %s)\0A\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"vmalloc\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@__kstrtab_alloc_contig_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_contig_range = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_contig_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_contig_range to i32), ptr @__kstrtab_alloc_contig_range, ptr @__kstrtabns_alloc_contig_range }, section "___ksymtab+alloc_contig_range", align 4
@.str.43 = private unnamed_addr constant [29 x i8] c"%lu pages are still in use!\0A\00", align 1
@__kstrtab_free_contig_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_contig_range = external dso_local constant [0 x i8], align 1
@__ksymtab_free_contig_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_contig_range to i32), ptr @__kstrtab_free_contig_range, ptr @__kstrtabns_free_contig_range }, section "___ksymtab+free_contig_range", align 4
@boot_pageset = internal global %struct.per_cpu_pages zeroinitializer, section ".data..percpu", align 4
@boot_zonestats = internal global %struct.per_cpu_zonestat zeroinitializer, section ".data..percpu", align 1
@static_key_initialized = external dso_local local_unnamed_addr global i8, align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"include/linux/jump_label.h\00", align 1
@.str.45 = private unnamed_addr constant [61 x i8] c"%s(): static key '%pS' used before call to jump_label_init()\00", align 1
@__func__.static_key_enable = private unnamed_addr constant [18 x i8] c"static_key_enable\00", align 1
@static_key_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__func__.static_key_disable = private unnamed_addr constant [19 x i8] c"static_key_disable\00", align 1
@static_key_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_mm_page_free = external dso_local global %struct.tracepoint, align 4
@bad_page.resume = internal unnamed_addr global i32 0, align 4
@bad_page.nr_shown = internal unnamed_addr global i32 0, align 4
@bad_page.nr_unshown = internal unnamed_addr global i32 0, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.47 = private unnamed_addr constant [48 x i8] c"\011BUG: Bad page state: %lu messages suppressed\0A\00", align 1
@.str.48 = private unnamed_addr constant [48 x i8] c"\011BUG: Bad page state in process %s  pfn:%05lx\0A\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"nonzero mapcount\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"non-NULL mapping\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"nonzero _refcount\00", align 1
@.str.52 = private unnamed_addr constant [37 x i8] c"PAGE_FLAGS_CHECK_AT_PREP flag(s) set\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"PAGE_FLAGS_CHECK_AT_FREE flag(s) set\00", align 1
@contig_page_data = external dso_local global %struct.pglist_data, align 64
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mm_page_pcpu_drain = external dso_local global %struct.tracepoint, align 4
@__drain_all_pages.cpus_with_pcps = internal global %struct.cpumask zeroinitializer, align 4
@__drain_all_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mm_percpu_wq = external dso_local local_unnamed_addr global ptr, align 4
@pcpu_drain_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pcpu_drain_mutex, i64 12), ptr getelementptr (i8, ptr @pcpu_drain_mutex, i64 12) } }, align 4
@pcpu_drain = internal global %struct.pcpu_drain zeroinitializer, section ".data..percpu", align 4
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@__tracepoint_mm_page_free_batched = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mm_page_alloc_extfrag = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mm_page_alloc_zone_locked = external dso_local global %struct.tracepoint, align 4
@rmqueue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__alloc_pages_slowpath.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__alloc_pages_slowpath.__already_done.54 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__alloc_pages_slowpath.__already_done.55 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__alloc_pages_slowpath.__already_done.56 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"page allocation failure: order:%u\00", align 1
@__tracepoint_reclaim_retry_zone = external dso_local global %struct.tracepoint, align 4
@__tracepoint_compact_retry = external dso_local global %struct.tracepoint, align 4
@oom_lock = external dso_local global %struct.mutex, align 4
@__alloc_pages_may_oom.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__tracepoint_mm_page_alloc = external dso_local global %struct.tracepoint, align 4
@vm_zone_stat = external dso_local global [10 x %struct.atomic_t], align 4
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@_totalhigh_pages = external dso_local global %struct.atomic_t, align 4
@.str.59 = private unnamed_addr constant [8 x i8] c"\01c(%s) \00", align 1
@__build_all_zonelists.lock = internal global %struct.spinlock zeroinitializer, align 4
@overlap_memmap_init.r = internal unnamed_addr global ptr null, align 4
@mirrored_kernelcore = internal unnamed_addr global i1 false, section ".meminit.data", align 1
@memblock = external dso_local local_unnamed_addr global %struct.memblock, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.60 = private unnamed_addr constant [47 x i8] c"\016Initmem setup node %d [mem %#018Lx-%#018Lx]\0A\00", align 1
@.str.61 = private unnamed_addr constant [53 x i8] c"Failed to allocate %ld bytes for node %d memory map\0A\00", align 1
@boot_nodestats = internal global %struct.per_cpu_nodestat zeroinitializer, section ".data..percpu", align 1
@.str.62 = private unnamed_addr constant [52 x i8] c"\014  %s zone: %lu memmap pages exceeds freesize %lu\0A\00", align 1
@pgdat_init_internals.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"&pgdat->kswapd_wait\00", align 1
@pgdat_init_internals.__key.64 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"&pgdat->pfmemalloc_wait\00", align 1
@pgdat_init_internals.__key.66 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"&pgdat->reclaim_wait[i]\00", align 1
@pgdat_init_kcompactd.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.68 = private unnamed_addr constant [23 x i8] c"&pgdat->kcompactd_wait\00", align 1
@.str.69 = private unnamed_addr constant [69 x i8] c"Failed to allocate %ld bytes for zone %s pageblock flags on node %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [59 x i8] c"\014This configuration results in unmirrored kernel memory.\0A\00", align 1
@required_kernelcore_percent = internal global i32 0, section ".init.data", align 4
@required_kernelcore = internal global i32 0, section ".init.data", align 4
@required_movablecore_percent = internal global i32 0, section ".init.data", align 4
@required_movablecore = internal global i32 0, section ".init.data", align 4
@.str.71 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"HighMem\00", align 1
@.str.74 = private unnamed_addr constant [56 x i8] c"\016On node %d, zone %s: %lld pages in unavailable ranges\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@lru_disable_count = external dso_local global %struct.atomic_t, align 4
@llvm.compiler.used = appending global [29 x ptr] [ptr @__initcall__kmod_page_alloc__460_8566_init_per_zone_wmark_min2, ptr @__ksymtab___alloc_pages, ptr @__ksymtab___alloc_pages_bulk, ptr @__ksymtab___folio_alloc, ptr @__ksymtab___free_pages, ptr @__ksymtab___get_free_pages, ptr @__ksymtab___page_frag_cache_drain, ptr @__ksymtab__totalram_pages, ptr @__ksymtab_adjust_managed_page_count, ptr @__ksymtab_alloc_contig_range, ptr @__ksymtab_alloc_pages_exact, ptr @__ksymtab_free_contig_range, ptr @__ksymtab_free_pages, ptr @__ksymtab_free_pages_exact, ptr @__ksymtab_get_zeroed_page, ptr @__ksymtab_init_on_alloc, ptr @__ksymtab_init_on_free, ptr @__ksymtab_movable_zone, ptr @__ksymtab_node_states, ptr @__ksymtab_nr_free_buffer_pages, ptr @__ksymtab_page_frag_alloc_align, ptr @__ksymtab_page_frag_free, ptr @__ksymtab_si_mem_available, ptr @__ksymtab_si_meminfo, ptr @__ksymtab_split_page, ptr @__setup_cmdline_parse_kernelcore, ptr @__setup_cmdline_parse_movablecore, ptr @__setup_early_init_on_alloc, ptr @__setup_early_init_on_free], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_init_on_alloc(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @_init_on_alloc_enabled_early) #31
  ret i32 %2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @early_init_on_free(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @_init_on_free_enabled_early) #31
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_restore_gfp_mask() local_unnamed_addr #1 {
  %1 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @system_transition_mutex) #31
  br i1 %1, label %3, label %2, !prof !9

2:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef null) #31
  br label %3

3:                                                ; preds = %2, %0
  %4 = load i32, ptr @saved_gfp_mask, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  store i32 %4, ptr @gfp_allowed_mask, align 4
  store i32 0, ptr @saved_gfp_mask, align 4
  br label %7

7:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pm_restrict_gfp_mask() local_unnamed_addr #1 {
  %1 = tail call zeroext i1 @mutex_is_locked(ptr noundef nonnull @system_transition_mutex) #31
  br i1 %1, label %3, label %2, !prof !9

2:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 255, i32 noundef 9, ptr noundef null) #31
  br label %3

3:                                                ; preds = %2, %0
  %4 = load i32, ptr @saved_gfp_mask, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 256, i32 noundef 9, ptr noundef null) #31
  br label %7

7:                                                ; preds = %6, %3
  %8 = load i32, ptr @gfp_allowed_mask, align 4
  store i32 %8, ptr @saved_gfp_mask, align 4
  %9 = and i32 %8, -193
  store i32 %9, ptr @gfp_allowed_mask, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pm_suspended_storage() local_unnamed_addr #4 {
  %1 = load i32, ptr @gfp_allowed_mask, align 4
  %2 = and i32 %1, 192
  %3 = icmp ne i32 %2, 192
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_compound_page(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = load volatile i32, ptr %0, align 4
  %5 = and i32 %4, 65536
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %9 = getelementptr inbounds %struct.anon.64, ptr %8, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i32 [ %11, %7 ], [ 0, %1 ]
  tail call fastcc void @free_the_page(ptr noundef %0, i32 noundef %13)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @get_pfnblock_flags_mask(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = load i32, ptr %0, align 4
  %5 = lshr i32 %4, 30
  %6 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %5, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %5, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -2048
  %11 = sub i32 %1, %10
  %12 = lshr i32 %11, 9
  %13 = lshr i32 %11, 14
  %14 = and i32 %12, 28
  %15 = getelementptr i32, ptr %7, i32 %13
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, %14
  %18 = and i32 %17, %2
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_pfnblock_flags_mask(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = load i32, ptr %0, align 4
  %6 = lshr i32 %5, 30
  %7 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %6, i32 9
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %6, i32 10
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -2048
  %12 = sub i32 %2, %11
  %13 = lshr i32 %12, 9
  %14 = lshr i32 %12, 14
  %15 = and i32 %13, 28
  %16 = shl i32 %3, %15
  %17 = shl i32 %1, %15
  %18 = getelementptr i32, ptr %8, i32 %14
  %19 = load volatile i32, ptr %18, align 4
  %20 = xor i32 %16, -1
  br label %21

21:                                               ; preds = %29, %4
  %22 = phi i32 [ %19, %4 ], [ %30, %29 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !10
  %23 = and i32 %22, %20
  %24 = or i32 %23, %17
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #31, !srcloc !11
  br label %25

25:                                               ; preds = %25, %21
  %26 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %18, i32 %22, i32 %24) #31, !srcloc !12
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %25

29:                                               ; preds = %25
  %30 = extractvalue { i32, i32 } %26, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !13
  %31 = icmp eq i32 %22, %30
  br i1 %31, label %32, label %21

32:                                               ; preds = %29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_pageblock_migratetype(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr @page_group_by_mobility_disabled, align 4
  %4 = icmp ne i32 %3, 0
  %5 = icmp slt i32 %1, 3
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %8, !prof !14

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %2
  %9 = phi i32 [ 0, %7 ], [ %1, %2 ]
  %10 = load ptr, ptr @mem_map, align 4
  %11 = ptrtoint ptr %0 to i32
  %12 = ptrtoint ptr %10 to i32
  %13 = sub i32 %11, %12
  %14 = ashr exact i32 %13, 5
  %15 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %16 = add i32 %14, %15
  %17 = load i32, ptr %0, align 4
  %18 = lshr i32 %17, 30
  %19 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %18, i32 9
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %18, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -2048
  %24 = sub i32 %16, %23
  %25 = lshr i32 %24, 9
  %26 = lshr i32 %24, 14
  %27 = and i32 %25, 28
  %28 = shl nuw nsw i32 7, %27
  %29 = shl i32 %9, %27
  %30 = getelementptr i32, ptr %20, i32 %26
  %31 = load volatile i32, ptr %30, align 4
  %32 = xor i32 %28, -1
  br label %33

33:                                               ; preds = %41, %8
  %34 = phi i32 [ %31, %8 ], [ %42, %41 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !10
  %35 = and i32 %34, %32
  %36 = or i32 %35, %29
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %30) #31, !srcloc !11
  br label %37

37:                                               ; preds = %37, %33
  %38 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %30, i32 %34, i32 %36) #31, !srcloc !12
  %39 = extractvalue { i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %37

41:                                               ; preds = %37
  %42 = extractvalue { i32, i32 } %38, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !13
  %43 = icmp eq i32 %34, %42
  br i1 %43, label %44, label %33

44:                                               ; preds = %41
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_the_page(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = icmp ult i32 %1, 4
  br i1 %3, label %4, label %49

4:                                                ; preds = %2
  %5 = load ptr, ptr @mem_map, align 4
  %6 = ptrtoint ptr %0 to i32
  %7 = ptrtoint ptr %5 to i32
  %8 = sub i32 %6, %7
  %9 = ashr exact i32 %8, 5
  %10 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %11 = add i32 %9, %10
  %12 = tail call fastcc zeroext i1 @free_unref_page_prepare(ptr noundef %0, i32 noundef %11, i32 noundef %1) #31
  br i1 %12, label %13, label %50

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %40, !prof !14

17:                                               ; preds = %13
  %18 = icmp eq i32 %15, 5
  br i1 %18, label %19, label %40, !prof !14

19:                                               ; preds = %17
  %20 = load i32, ptr %0, align 4
  %21 = lshr i32 %20, 30
  %22 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %21
  %23 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %21, i32 22
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #31
  %25 = load i32, ptr %0, align 4
  %26 = lshr i32 %25, 30
  %27 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %26, i32 9
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %26, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, -2048
  %32 = sub i32 %11, %31
  %33 = lshr i32 %32, 9
  %34 = lshr i32 %32, 14
  %35 = and i32 %33, 28
  %36 = getelementptr i32, ptr %28, i32 %34
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, %35
  %39 = and i32 %38, 7
  tail call fastcc void @__free_one_page(ptr noundef %0, i32 noundef %11, ptr noundef %22, i32 noundef %1, i32 noundef %39, i32 noundef 0) #31
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #31
  br label %50

40:                                               ; preds = %17, %13
  %41 = phi i32 [ %15, %13 ], [ 1, %17 ]
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #31, !srcloc !15
  %43 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %44 = inttoptr i32 %43 to ptr
  %45 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %44) #28, !srcloc !16
  tail call fastcc void @free_unref_page_commit(ptr noundef %0, i32 noundef %41, i32 noundef %1) #31
  %46 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %47 = inttoptr i32 %46 to ptr
  %48 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %47) #28, !srcloc !16
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %42) #31, !srcloc !17
  br label %50

49:                                               ; preds = %2
  tail call fastcc void @__free_pages_ok(ptr noundef %0, i32 noundef %1, i32 noundef 0)
  br label %50

50:                                               ; preds = %49, %40, %19, %4
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @prep_compound_page(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = shl nuw i32 1, %1
  %4 = load i32, ptr %0, align 4
  %5 = or i32 %4, 65536
  store i32 %5, ptr %0, align 4
  %6 = icmp sgt i32 %3, 1
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = ptrtoint ptr %0 to i32
  %9 = add i32 %8, 1
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i32 [ 1, %7 ], [ %14, %10 ]
  %12 = getelementptr %struct.page, ptr %0, i32 %11, i32 1, i32 0, i32 1
  store ptr inttoptr (i32 1024 to ptr), ptr %12, align 4
  %13 = getelementptr %struct.page, ptr %0, i32 %11, i32 1
  store volatile i32 %9, ptr %13, align 4
  %14 = add nuw nsw i32 %11, 1
  %15 = icmp eq i32 %14, %3
  br i1 %15, label %16, label %10

16:                                               ; preds = %10, %2
  %17 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 0, i32 1
  store i8 1, ptr %17, align 4
  %18 = trunc i32 %1 to i8
  %19 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %20 = getelementptr inbounds %struct.anon.64, ptr %19, i32 0, i32 2
  store i8 %18, ptr %20, align 1
  %21 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  store i32 %3, ptr %21, align 4
  %22 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 1
  store volatile i32 -1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %24 = load volatile i32, ptr %23, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27, !prof !9

27:                                               ; preds = %16
  %28 = add i32 %24, -1
  br label %31

29:                                               ; preds = %16
  %30 = ptrtoint ptr %0 to i32
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = inttoptr i32 %32 to ptr
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 65536
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 1
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %37, %31
  %43 = load volatile i32, ptr %33, align 4
  %44 = and i32 %43, 65536
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = getelementptr %struct.page, ptr %33, i32 1, i32 1
  %48 = getelementptr inbounds %struct.anon.64, ptr %47, i32 0, i32 2
  %49 = load i8, ptr %48, align 1
  %50 = icmp ugt i8 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = getelementptr %struct.page, ptr %0, i32 2, i32 1, i32 0, i32 0, i32 1
  store volatile i32 0, ptr %52, align 4
  br label %53

53:                                               ; preds = %51, %46, %42, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @init_mem_debugging_and_hardening() local_unnamed_addr #1 {
  %1 = load i8, ptr @_init_on_alloc_enabled_early, align 1, !range !18
  %2 = icmp eq i8 %1, 0
  %3 = load i8, ptr @static_key_initialized, align 1, !range !18
  %4 = icmp eq i8 %3, 0
  br i1 %2, label %18, label %5

5:                                                ; preds = %0
  br i1 %4, label %6, label %7, !prof !14

6:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @init_on_alloc) #31
  br label %7

7:                                                ; preds = %6, %5
  %8 = load volatile i32, ptr @init_on_alloc, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = load volatile i32, ptr @init_on_alloc, align 4
  %12 = icmp ne i32 %11, 1
  %13 = load i1, ptr @static_key_enable.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %31, !prof !14

16:                                               ; preds = %10
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 321, i32 noundef 9, ptr noundef null) #31
  br label %31

17:                                               ; preds = %7
  store volatile i32 1, ptr @init_on_alloc, align 4
  br label %31

18:                                               ; preds = %0
  br i1 %4, label %19, label %20, !prof !14

19:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.static_key_disable, ptr noundef nonnull @init_on_alloc) #31
  br label %20

20:                                               ; preds = %19, %18
  %21 = load volatile i32, ptr @init_on_alloc, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load volatile i32, ptr @init_on_alloc, align 4
  %25 = icmp ne i32 %24, 0
  %26 = load i1, ptr @static_key_disable.__already_done, align 1
  %27 = xor i1 %26, true
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %31, !prof !14

29:                                               ; preds = %23
  store i1 true, ptr @static_key_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 332, i32 noundef 9, ptr noundef null) #31
  br label %31

30:                                               ; preds = %20
  store volatile i32 0, ptr @init_on_alloc, align 4
  br label %31

31:                                               ; preds = %30, %29, %23, %17, %16, %10
  %32 = load i8, ptr @_init_on_free_enabled_early, align 1, !range !18
  %33 = icmp eq i8 %32, 0
  %34 = load i8, ptr @static_key_initialized, align 1, !range !18
  %35 = icmp eq i8 %34, 0
  br i1 %33, label %49, label %36

36:                                               ; preds = %31
  br i1 %35, label %37, label %38, !prof !14

37:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 318, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.static_key_enable, ptr noundef nonnull @init_on_free) #31
  br label %38

38:                                               ; preds = %37, %36
  %39 = load volatile i32, ptr @init_on_free, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = load volatile i32, ptr @init_on_free, align 4
  %43 = icmp ne i32 %42, 1
  %44 = load i1, ptr @static_key_enable.__already_done, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %62, !prof !14

47:                                               ; preds = %41
  store i1 true, ptr @static_key_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 321, i32 noundef 9, ptr noundef null) #31
  br label %62

48:                                               ; preds = %38
  store volatile i32 1, ptr @init_on_free, align 4
  br label %62

49:                                               ; preds = %31
  br i1 %35, label %50, label %51, !prof !14

50:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 329, i32 noundef 9, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.static_key_disable, ptr noundef nonnull @init_on_free) #31
  br label %51

51:                                               ; preds = %50, %49
  %52 = load volatile i32, ptr @init_on_free, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load volatile i32, ptr @init_on_free, align 4
  %56 = icmp ne i32 %55, 0
  %57 = load i1, ptr @static_key_disable.__already_done, align 1
  %58 = xor i1 %57, true
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %62, !prof !14

60:                                               ; preds = %54
  store i1 true, ptr @static_key_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 332, i32 noundef 9, ptr noundef null) #31
  br label %62

61:                                               ; preds = %51
  store volatile i32 0, ptr @init_on_free, align 4
  br label %62

62:                                               ; preds = %61, %60, %54, %48, %47, %41
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @reserve_bootmem_region(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".meminit.text" {
  %3 = lshr i32 %0, 12
  %4 = add i32 %1, 4095
  %5 = lshr i32 %4, 12
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %20, %2
  %8 = phi i32 [ %21, %20 ], [ %3, %2 ]
  %9 = tail call i32 @pfn_valid(i32 noundef %8) #31
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @mem_map, align 4
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %14 = sub i32 %8, %13
  %15 = getelementptr %struct.page, ptr %12, i32 %14
  %16 = getelementptr %struct.page, ptr %12, i32 %14, i32 1
  store volatile ptr %16, ptr %16, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = load i32, ptr %15, align 4
  %19 = or i32 %18, 4096
  store i32 %19, ptr %15, align 4
  br label %20

20:                                               ; preds = %11, %7
  %21 = add nuw nsw i32 %8, 1
  %22 = icmp eq i32 %21, %5
  br i1 %22, label %23, label %7

23:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__free_pages_core(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = shl nuw i32 1, %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #31, !srcloc !11
  %4 = add i32 %3, -1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %6, %2
  %7 = phi i32 [ %13, %6 ], [ 0, %2 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %2 ]
  %9 = getelementptr %struct.page, ptr %8, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #31, !srcloc !11
  %10 = load i32, ptr %8, align 4
  %11 = and i32 %10, -4097
  store i32 %11, ptr %8, align 4
  %12 = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  store volatile i32 0, ptr %12, align 4
  %13 = add nuw i32 %7, 1
  %14 = icmp eq i32 %13, %4
  br i1 %14, label %15, label %6

15:                                               ; preds = %6, %2
  %16 = phi ptr [ %0, %2 ], [ %9, %6 ]
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -4097
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  store volatile i32 0, ptr %19, align 4
  %20 = load i32, ptr %0, align 4
  %21 = lshr i32 %20, 30
  %22 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %21, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %22) #31, !srcloc !11
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %22, ptr %22, i32 %3, ptr elementtype(i32) %22) #31, !srcloc !19
  tail call fastcc void @__free_pages_ok(ptr noundef %0, i32 noundef %1, i32 noundef 6)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__free_pages_ok(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load ptr, ptr @mem_map, align 4
  %5 = ptrtoint ptr %0 to i32
  %6 = ptrtoint ptr %4 to i32
  %7 = sub i32 %5, %6
  %8 = ashr exact i32 %7, 5
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %10 = add i32 %8, %9
  %11 = load i32, ptr %0, align 4
  %12 = lshr i32 %11, 30
  %13 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %12
  %14 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_page_free, i32 0, i32 1), align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = tail call ptr @llvm.thread.pointer() #31
  %18 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  %20 = lshr i32 %19, 5
  %21 = getelementptr i32, ptr @__cpu_online_mask, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %19, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  tail call void asm sideeffect "", "~{memory}"() #31, !srcloc !20
  %28 = tail call i32 @__traceiter_mm_page_free(ptr noundef null, ptr noundef %0, i32 noundef %1) #31
  tail call void asm sideeffect "", "~{memory}"() #31, !srcloc !21
  br label %29

29:                                               ; preds = %27, %16, %3
  %30 = icmp eq i32 %1, 0
  br i1 %30, label %63, label %31, !prof !9

31:                                               ; preds = %29
  %32 = load volatile i32, ptr %0, align 4
  %33 = and i32 %32, 65536
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %37 = load volatile i32, ptr %36, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i1 [ %39, %35 ], [ false, %31 ]
  %42 = shl nuw i32 1, %1
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %63

44:                                               ; preds = %59, %40
  %45 = phi i32 [ %61, %59 ], [ 1, %40 ]
  %46 = phi i32 [ %60, %59 ], [ 0, %40 ]
  br i1 %41, label %50, label %47

47:                                               ; preds = %44
  %48 = getelementptr %struct.page, ptr %0, i32 %45, i32 1, i32 0, i32 1
  store ptr null, ptr %48, align 4
  %49 = getelementptr %struct.page, ptr %0, i32 %45, i32 1
  store volatile i32 0, ptr %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = getelementptr %struct.page, ptr %0, i32 %45
  %52 = tail call fastcc i32 @check_free_page(ptr noundef %51) #31
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54, !prof !9

54:                                               ; preds = %50
  %55 = add i32 %46, 1
  br label %59

56:                                               ; preds = %50
  %57 = load i32, ptr %51, align 4
  %58 = and i32 %57, -4194304
  store i32 %58, ptr %51, align 4
  br label %59

59:                                               ; preds = %56, %54
  %60 = phi i32 [ %55, %54 ], [ %46, %56 ]
  %61 = add nuw nsw i32 %45, 1
  %62 = icmp eq i32 %61, %42
  br i1 %62, label %63, label %44

63:                                               ; preds = %59, %40, %29
  %64 = phi i32 [ 0, %29 ], [ 0, %40 ], [ %60, %59 ]
  %65 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = and i32 %67, 3
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  store ptr null, ptr %65, align 4
  br label %71

71:                                               ; preds = %70, %63
  %72 = phi ptr [ null, %70 ], [ %66, %63 ]
  %73 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  %74 = load volatile i32, ptr %73, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %85, !prof !9

76:                                               ; preds = %71
  %77 = ptrtoint ptr %72 to i32
  %78 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  %79 = load volatile i32, ptr %78, align 4
  %80 = or i32 %79, %77
  %81 = load i32, ptr %0, align 4
  %82 = and i32 %81, 3207729
  %83 = or i32 %80, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85, !prof !9

85:                                               ; preds = %76, %71
  tail call fastcc void @check_free_page_bad(ptr noundef %0) #31
  br label %86

86:                                               ; preds = %85, %76
  %87 = phi i32 [ 1, %85 ], [ 0, %76 ]
  %88 = sub i32 0, %64
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %165

90:                                               ; preds = %86
  %91 = load i32, ptr %0, align 4
  %92 = and i32 %91, -4194304
  store i32 %92, ptr %0, align 4
  %93 = lshr i32 %91, 30
  %94 = icmp eq i32 %93, 2
  br i1 %94, label %103, label %95

95:                                               ; preds = %90
  %96 = icmp ne i32 %93, 3
  %97 = load i32, ptr @movable_zone, align 4
  %98 = icmp ne i32 %97, 2
  %99 = select i1 %96, i1 true, i1 %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = tail call ptr @page_address(ptr noundef %0) #31
  %102 = tail call ptr @page_address(ptr noundef %0) #31
  br label %103

103:                                              ; preds = %100, %95, %90
  %104 = shl nuw i32 1, %1
  %105 = load volatile i32, ptr @init_on_free, align 4
  %106 = icmp slt i32 %105, 1
  %107 = icmp slt i32 %104, 1
  %108 = select i1 %106, i1 true, i1 %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %109, %103
  %110 = phi i32 [ %115, %109 ], [ 0, %103 ]
  %111 = getelementptr %struct.page, ptr %0, i32 %110
  %112 = load i32, ptr @pgprot_kernel, align 4
  %113 = or i32 %112, 512
  %114 = tail call ptr @__kmap_local_page_prot(ptr noundef %111, i32 noundef %113) #31
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %114, i8 0, i32 4096, i1 false) #31
  tail call void @kunmap_local_indexed(ptr noundef %114) #31
  %115 = add nuw nsw i32 %110, 1
  %116 = icmp eq i32 %115, %104
  br i1 %116, label %117, label %109

117:                                              ; preds = %109, %103
  %118 = load i32, ptr %0, align 4
  %119 = lshr i32 %118, 30
  %120 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %119, i32 9
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %119, i32 10
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, -2048
  %125 = sub i32 %10, %124
  %126 = lshr i32 %125, 9
  %127 = lshr i32 %125, 14
  %128 = and i32 %126, 28
  %129 = getelementptr i32, ptr %121, i32 %127
  %130 = load i32, ptr %129, align 4
  %131 = lshr i32 %130, %128
  %132 = and i32 %131, 7
  %133 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %12, i32 22
  %134 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %133) #31
  %135 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %12, i32 16
  %136 = load i32, ptr %135, align 4
  %137 = icmp ne i32 %136, 0
  %138 = icmp eq i32 %132, 5
  %139 = select i1 %137, i1 true, i1 %138
  br i1 %139, label %140, label %156, !prof !22

140:                                              ; preds = %117
  %141 = load i32, ptr %0, align 4
  %142 = lshr i32 %141, 30
  %143 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %142, i32 9
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %142, i32 10
  %146 = load i32, ptr %145, align 4
  %147 = and i32 %146, -2048
  %148 = sub i32 %10, %147
  %149 = lshr i32 %148, 9
  %150 = lshr i32 %148, 14
  %151 = and i32 %149, 28
  %152 = getelementptr i32, ptr %144, i32 %150
  %153 = load i32, ptr %152, align 4
  %154 = lshr i32 %153, %151
  %155 = and i32 %154, 7
  br label %156

156:                                              ; preds = %140, %117
  %157 = phi i32 [ %155, %140 ], [ %132, %117 ]
  tail call fastcc void @__free_one_page(ptr noundef %0, i32 noundef %10, ptr noundef %13, i32 noundef %1, i32 noundef %157, i32 noundef %2)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %133, i32 noundef %134) #31
  %158 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %159 = inttoptr i32 %158 to ptr
  %160 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %159) #28, !srcloc !16
  %161 = add i32 %160, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 16) to i32)
  %162 = inttoptr i32 %161 to ptr
  %163 = load i32, ptr %162, align 4
  %164 = add i32 %163, %104
  store i32 %164, ptr %162, align 4
  br label %165

165:                                              ; preds = %156, %86
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @memblock_free_pages(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 section ".init.text" {
  tail call void @__free_pages_core(ptr noundef %0, i32 noundef %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__pageblock_pfn_to_page(i32 noundef %0, i32 noundef %1, ptr noundef readnone %2) local_unnamed_addr #1 {
  %4 = add i32 %1, -1
  %5 = tail call i32 @pfn_valid(i32 noundef %0) #31
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @pfn_valid(i32 noundef %4) #31
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @pfn_valid(i32 noundef %0) #31
  %12 = icmp eq i32 %11, 0
  %13 = load ptr, ptr @mem_map, align 4
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %15 = sub i32 %0, %14
  %16 = getelementptr %struct.page, ptr %13, i32 %15
  %17 = icmp eq ptr %16, null
  %18 = select i1 %12, i1 true, i1 %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %10
  %20 = load i32, ptr %16, align 4
  %21 = lshr i32 %20, 30
  %22 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %21
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = sub i32 %4, %14
  %26 = getelementptr %struct.page, ptr %13, i32 %25
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 30
  %29 = icmp eq i32 %21, %28
  %30 = select i1 %29, ptr %16, ptr null
  br label %31

31:                                               ; preds = %24, %19, %10, %7, %3
  %32 = phi ptr [ null, %7 ], [ null, %3 ], [ null, %10 ], [ null, %19 ], [ %30, %24 ]
  ret ptr %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_zone_contiguous(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %3
  %7 = icmp ult i32 %3, %6
  br i1 %7, label %8, label %49

8:                                                ; preds = %1
  %9 = add i32 %3, 2048
  %10 = and i32 %9, -2048
  br label %11

11:                                               ; preds = %42, %8
  %12 = phi i32 [ %47, %42 ], [ %6, %8 ]
  %13 = phi i32 [ %15, %42 ], [ %3, %8 ]
  %14 = phi i32 [ %44, %42 ], [ %10, %8 ]
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %12)
  %16 = add i32 %15, -1
  %17 = tail call i32 @pfn_valid(i32 noundef %13) #31
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %51, label %19

19:                                               ; preds = %11
  %20 = tail call i32 @pfn_valid(i32 noundef %16) #31
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @pfn_valid(i32 noundef %13) #31
  %24 = icmp eq i32 %23, 0
  %25 = load ptr, ptr @mem_map, align 4
  %26 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %27 = sub i32 %13, %26
  %28 = getelementptr %struct.page, ptr %25, i32 %27
  %29 = icmp eq ptr %28, null
  %30 = select i1 %24, i1 true, i1 %29
  br i1 %30, label %51, label %31

31:                                               ; preds = %22
  %32 = load i32, ptr %28, align 4
  %33 = lshr i32 %32, 30
  %34 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %33
  %35 = icmp eq ptr %34, %0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = sub i32 %16, %26
  %38 = getelementptr %struct.page, ptr %25, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 30
  %41 = icmp eq i32 %33, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = tail call i32 @__cond_resched() #31
  %44 = add i32 %15, 2048
  %45 = load i32, ptr %2, align 4
  %46 = load i32, ptr %4, align 4
  %47 = add i32 %46, %45
  %48 = icmp ult i32 %15, %47
  br i1 %48, label %11, label %49

49:                                               ; preds = %42, %1
  %50 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 34
  store i8 1, ptr %50, align 1
  br label %51

51:                                               ; preds = %49, %36, %31, %22, %19, %11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @clear_zone_contiguous(ptr nocapture noundef writeonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 34
  store i8 0, ptr %2, align 1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @page_alloc_init_late() local_unnamed_addr #0 section ".init.text" {
  tail call void @buffer_init() #31
  %1 = tail call ptr @first_online_pgdat() #31
  %2 = icmp eq ptr %1, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %9, %0
  %4 = phi ptr [ %10, %9 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.zone, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @set_zone_contiguous(ptr noundef nonnull %4)
  br label %9

9:                                                ; preds = %8, %3
  %10 = tail call ptr @next_zone(ptr noundef nonnull %4) #31
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %3

12:                                               ; preds = %9, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @buffer_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @first_online_pgdat() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_zone(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @init_cma_reserved_pageblock(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 2048, %1 ], [ %9, %2 ]
  %4 = phi ptr [ %0, %1 ], [ %8, %2 ]
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -4097
  store i32 %6, ptr %4, align 4
  %7 = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  store volatile i32 0, ptr %7, align 4
  %8 = getelementptr %struct.page, ptr %4, i32 1
  %9 = add nsw i32 %3, -1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %2

11:                                               ; preds = %2
  tail call void @set_pageblock_migratetype(ptr noundef %0, i32 noundef 4)
  %12 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  store volatile i32 1, ptr %12, align 4
  tail call void @__free_pages(ptr noundef %0, i32 noundef 11)
  tail call void @adjust_managed_page_count(ptr noundef %0, i32 noundef 2048)
  %13 = load i32, ptr %0, align 4
  %14 = lshr i32 %13, 30
  %15 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %14, i32 14
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 2048
  store i32 %17, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__free_pages(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #31, !srcloc !11
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #31, !srcloc !24
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !25
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call fastcc void @free_the_page(ptr noundef %0, i32 noundef %1)
  br label %20

8:                                                ; preds = %2
  %9 = load volatile i32, ptr %0, align 4
  %10 = and i32 %9, 65536
  %11 = icmp ne i32 %10, 0
  %12 = icmp eq i32 %1, 0
  %13 = or i1 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %14, %8
  %15 = phi i32 [ %16, %14 ], [ %1, %8 ]
  %16 = add i32 %15, -1
  %17 = shl nuw i32 1, %16
  %18 = getelementptr %struct.page, ptr %0, i32 %17
  tail call fastcc void @free_the_page(ptr noundef %18, i32 noundef %16)
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %20, label %14

20:                                               ; preds = %14, %8, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adjust_managed_page_count(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = load i32, ptr %0, align 4
  %4 = lshr i32 %3, 30
  %5 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %4, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #31, !srcloc !11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 %1, ptr elementtype(i32) %5) #31, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @_totalram_pages) #31, !srcloc !11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @_totalram_pages, ptr nonnull @_totalram_pages, i32 %1, ptr nonnull elementtype(i32) @_totalram_pages) #31, !srcloc !19
  %8 = load i32, ptr %0, align 4
  %9 = lshr i32 %8, 30
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = icmp ne i32 %9, 3
  %13 = load i32, ptr @movable_zone, align 4
  %14 = icmp ne i32 %13, 2
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %11, %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @_totalhigh_pages) #31, !srcloc !11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @_totalhigh_pages, ptr nonnull @_totalhigh_pages, i32 %1, ptr nonnull elementtype(i32) @_totalhigh_pages) #31, !srcloc !19
  br label %18

18:                                               ; preds = %16, %11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @post_alloc_hook(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  store volatile i32 1, ptr %5, align 4
  %6 = shl nuw i32 1, %1
  %7 = load volatile i32, ptr @init_on_free, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %3
  %10 = load volatile i32, ptr @init_on_alloc, align 4
  %11 = icmp sgt i32 %10, 0
  %12 = and i32 %2, 256
  %13 = icmp ne i32 %12, 0
  %14 = or i1 %13, %11
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = and i32 %2, 8388608
  %17 = icmp ne i32 %16, 0
  %18 = icmp slt i32 %6, 1
  %19 = or i1 %18, %17
  br i1 %19, label %28, label %20

20:                                               ; preds = %20, %15
  %21 = phi i32 [ %26, %20 ], [ 0, %15 ]
  %22 = getelementptr %struct.page, ptr %0, i32 %21
  %23 = load i32, ptr @pgprot_kernel, align 4
  %24 = or i32 %23, 512
  %25 = tail call ptr @__kmap_local_page_prot(ptr noundef %22, i32 noundef %24) #31
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %25, i8 0, i32 4096, i1 false) #31
  tail call void @kunmap_local_indexed(ptr noundef %25) #31
  %26 = add nuw nsw i32 %21, 1
  %27 = icmp eq i32 %26, %6
  br i1 %27, label %28, label %20

28:                                               ; preds = %20, %15, %9, %3
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @move_freepages_block(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #6 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  store i32 0, ptr %3, align 4
  br label %7

7:                                                ; preds = %6, %4
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %1 to i32
  %10 = ptrtoint ptr %8 to i32
  %11 = sub i32 %9, %10
  %12 = ashr exact i32 %11, 5
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %14 = add i32 %12, %13
  %15 = and i32 %14, -2048
  %16 = or i32 %14, 2047
  %17 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, %15
  br i1 %19, label %26, label %20

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %18
  %24 = icmp ugt i32 %23, %15
  %25 = select i1 %24, i32 %15, i32 %14
  br label %26

26:                                               ; preds = %20, %7
  %27 = phi i32 [ %14, %7 ], [ %25, %20 ]
  %28 = icmp ugt i32 %18, %16
  br i1 %28, label %102, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 12
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %18
  %33 = icmp ule i32 %32, %16
  %34 = icmp ugt i32 %27, %16
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %102, label %36

36:                                               ; preds = %99, %29
  %37 = phi i32 [ %101, %99 ], [ %13, %29 ]
  %38 = phi ptr [ %100, %99 ], [ %8, %29 ]
  %39 = phi i32 [ %97, %99 ], [ 0, %29 ]
  %40 = phi i32 [ %96, %99 ], [ %27, %29 ]
  br label %41

41:                                               ; preds = %78, %36
  %42 = phi i32 [ %37, %36 ], [ %79, %78 ]
  %43 = phi ptr [ %38, %36 ], [ %80, %78 ]
  %44 = phi i32 [ %40, %36 ], [ %81, %78 ]
  %45 = sub i32 %44, %42
  %46 = getelementptr %struct.page, ptr %43, i32 %45
  %47 = getelementptr %struct.page, ptr %43, i32 %45, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, -268435328
  %50 = icmp eq i32 %49, -268435456
  br i1 %50, label %83, label %51

51:                                               ; preds = %41
  br i1 %5, label %78, label %52

52:                                               ; preds = %51
  %53 = getelementptr %struct.page, ptr %43, i32 %45, i32 1
  %54 = load volatile i32, ptr %53, align 4
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57, !prof !9

57:                                               ; preds = %52
  %58 = add i32 %54, -1
  br label %61

59:                                               ; preds = %52
  %60 = ptrtoint ptr %46 to i32
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = inttoptr i32 %62 to ptr
  %64 = load volatile i32, ptr %63, align 4
  %65 = and i32 %64, 16
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = getelementptr %struct.page, ptr %43, i32 %45, i32 1, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = ptrtoint ptr %69 to i32
  %71 = and i32 %70, 3
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %78

73:                                               ; preds = %67, %61
  %74 = load i32, ptr %3, align 4
  %75 = add i32 %74, 1
  store i32 %75, ptr %3, align 4
  %76 = load ptr, ptr @mem_map, align 4
  %77 = load i32, ptr @__pv_phys_pfn_offset, align 4
  br label %78

78:                                               ; preds = %73, %67, %51
  %79 = phi i32 [ %77, %73 ], [ %42, %67 ], [ %42, %51 ]
  %80 = phi ptr [ %76, %73 ], [ %43, %67 ], [ %43, %51 ]
  %81 = add i32 %44, 1
  %82 = icmp ugt i32 %81, %16
  br i1 %82, label %102, label %41

83:                                               ; preds = %41
  %84 = getelementptr %struct.page, ptr %43, i32 %45, i32 1, i32 0, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %85
  %87 = getelementptr %struct.page, ptr %43, i32 %45, i32 1
  %88 = getelementptr [6 x %struct.list_head], ptr %86, i32 0, i32 %2
  %89 = getelementptr %struct.page, ptr %43, i32 %45, i32 1, i32 0, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = load ptr, ptr %87, align 4
  %92 = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  store ptr %90, ptr %92, align 4
  store volatile ptr %91, ptr %90, align 4
  %93 = getelementptr [6 x %struct.list_head], ptr %86, i32 0, i32 %2, i32 1
  %94 = load ptr, ptr %93, align 4
  store ptr %87, ptr %93, align 4
  store ptr %88, ptr %87, align 4
  store ptr %94, ptr %89, align 4
  store volatile ptr %87, ptr %94, align 4
  %95 = shl nuw i32 1, %85
  %96 = add i32 %95, %44
  %97 = add i32 %95, %39
  %98 = icmp ugt i32 %96, %16
  br i1 %98, label %102, label %99

99:                                               ; preds = %83
  %100 = load ptr, ptr @mem_map, align 4
  %101 = load i32, ptr @__pv_phys_pfn_offset, align 4
  br label %36

102:                                              ; preds = %83, %78, %29, %26
  %103 = phi i32 [ 0, %29 ], [ 0, %26 ], [ %39, %78 ], [ %97, %83 ]
  ret i32 %103
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @find_suitable_fallback(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nocapture noundef %4) local_unnamed_addr #6 {
  %6 = getelementptr inbounds %struct.free_area, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %5
  store i8 0, ptr %4, align 1
  %10 = and i32 %2, 1073741822
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %36, label %12

12:                                               ; preds = %9
  %13 = getelementptr [6 x [3 x i32]], ptr @fallbacks, i32 0, i32 %2, i32 0
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %1, 4
  %16 = and i32 %2, -3
  %17 = icmp eq i32 %16, 0
  %18 = or i1 %15, %17
  %19 = load i32, ptr @page_group_by_mobility_disabled, align 4
  %20 = icmp ne i32 %19, 0
  %21 = select i1 %18, i1 true, i1 %20
  br label %22

22:                                               ; preds = %31, %12
  %23 = phi i32 [ %14, %12 ], [ %34, %31 ]
  %24 = phi i32 [ 0, %12 ], [ %32, %31 ]
  %25 = getelementptr [6 x %struct.list_head], ptr %0, i32 0, i32 %23
  %26 = load volatile ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %25
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  br i1 %21, label %30, label %29

29:                                               ; preds = %28
  br i1 %3, label %31, label %36

30:                                               ; preds = %28
  store i8 1, ptr %4, align 1
  br label %36

31:                                               ; preds = %29, %22
  %32 = add i32 %24, 1
  %33 = getelementptr [6 x [3 x i32]], ptr @fallbacks, i32 0, i32 %2, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 6
  br i1 %35, label %36, label %22

36:                                               ; preds = %31, %30, %29, %9, %5
  %37 = phi i32 [ -1, %5 ], [ -1, %9 ], [ %23, %30 ], [ %23, %29 ], [ -1, %31 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drain_local_pages(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call ptr @llvm.thread.pointer() #31
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #31, !srcloc !15
  %8 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %9) #28, !srcloc !16
  %11 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 8
  %13 = ptrtoint ptr %12 to i32
  %14 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  %17 = inttoptr i32 %16 to ptr
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  tail call fastcc void @free_pcppages_bulk(ptr noundef nonnull %0, i32 noundef %18, ptr noundef %17) #31
  br label %21

21:                                               ; preds = %20, %6
  %22 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %23) #28, !srcloc !16
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #31, !srcloc !17
  br label %56

25:                                               ; preds = %1
  %26 = tail call ptr @first_online_pgdat() #31
  %27 = icmp eq ptr %26, null
  br i1 %27, label %56, label %28

28:                                               ; preds = %25
  %29 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  br label %30

30:                                               ; preds = %53, %28
  %31 = phi ptr [ %26, %28 ], [ %54, %53 ]
  %32 = getelementptr inbounds %struct.zone, ptr %31, i32 0, i32 13
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %30
  %36 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #31, !srcloc !15
  %37 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %38 = inttoptr i32 %37 to ptr
  %39 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %38) #28, !srcloc !16
  %40 = getelementptr inbounds %struct.zone, ptr %31, i32 0, i32 5
  %41 = load ptr, ptr %40, align 8
  %42 = ptrtoint ptr %41 to i32
  %43 = load i32, ptr %29, align 4
  %44 = add i32 %43, %42
  %45 = inttoptr i32 %44 to ptr
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %35
  tail call fastcc void @free_pcppages_bulk(ptr noundef nonnull %31, i32 noundef %46, ptr noundef %45) #31
  br label %49

49:                                               ; preds = %48, %35
  %50 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %51 = inttoptr i32 %50 to ptr
  %52 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %51) #28, !srcloc !16
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %36) #31, !srcloc !17
  br label %53

53:                                               ; preds = %49, %30
  %54 = tail call ptr @next_zone(ptr noundef nonnull %31) #31
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %30

56:                                               ; preds = %53, %25, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drain_all_pages(ptr noundef %0) local_unnamed_addr #1 {
  tail call fastcc void @__drain_all_pages(ptr noundef %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__drain_all_pages(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = load ptr, ptr @mm_percpu_wq, align 4
  %4 = icmp eq ptr %3, null
  %5 = load i1, ptr @__drain_all_pages.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !14

8:                                                ; preds = %2
  store i1 true, ptr @__drain_all_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3189, i32 noundef 9, ptr noundef null) #31
  br label %9

9:                                                ; preds = %8, %2
  br i1 %4, label %98, label %10

10:                                               ; preds = %9
  %11 = tail call i32 @mutex_trylock(ptr noundef nonnull @pcpu_drain_mutex) #31
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16, !prof !14

13:                                               ; preds = %10
  %14 = icmp eq ptr %0, null
  br i1 %14, label %98, label %15

15:                                               ; preds = %13
  tail call void @mutex_lock(ptr noundef nonnull @pcpu_drain_mutex) #31
  br label %16

16:                                               ; preds = %15, %10
  %17 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #32
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = icmp eq ptr %0, null
  %22 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 5
  br label %27

23:                                               ; preds = %63, %16
  %24 = phi i32 [ %18, %16 ], [ %65, %63 ]
  %25 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__drain_all_pages.cpus_with_pcps) #32
  %26 = icmp ult i32 %25, %24
  br i1 %26, label %71, label %67

27:                                               ; preds = %63, %20
  %28 = phi i32 [ %17, %20 ], [ %64, %63 ]
  br i1 %1, label %61, label %29

29:                                               ; preds = %27
  br i1 %21, label %39, label %30

30:                                               ; preds = %29
  %31 = load ptr, ptr %22, align 8
  %32 = ptrtoint ptr %31 to i32
  %33 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  %36 = inttoptr i32 %35 to ptr
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %62, label %61

39:                                               ; preds = %29
  %40 = tail call ptr @first_online_pgdat() #31
  %41 = icmp eq ptr %40, null
  br i1 %41, label %62, label %42

42:                                               ; preds = %39
  %43 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  br label %44

44:                                               ; preds = %58, %42
  %45 = phi ptr [ %40, %42 ], [ %59, %58 ]
  %46 = getelementptr inbounds %struct.zone, ptr %45, i32 0, i32 13
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.zone, ptr %45, i32 0, i32 5
  %51 = load ptr, ptr %50, align 8
  %52 = ptrtoint ptr %51 to i32
  %53 = load i32, ptr %43, align 4
  %54 = add i32 %53, %52
  %55 = inttoptr i32 %54 to ptr
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49, %44
  %59 = tail call ptr @next_zone(ptr noundef nonnull %45) #31
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %44

61:                                               ; preds = %49, %30, %27
  tail call void @_set_bit(i32 noundef %28, ptr noundef nonnull @__drain_all_pages.cpus_with_pcps) #31
  br label %63

62:                                               ; preds = %58, %39, %30
  tail call void @_clear_bit(i32 noundef %28, ptr noundef nonnull @__drain_all_pages.cpus_with_pcps) #31
  br label %63

63:                                               ; preds = %62, %61
  %64 = tail call i32 @cpumask_next(i32 noundef %28, ptr noundef nonnull @__cpu_online_mask) #32
  %65 = load i32, ptr @nr_cpu_ids, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %27, label %23

67:                                               ; preds = %71, %23
  %68 = phi i32 [ %24, %23 ], [ %84, %71 ]
  %69 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__drain_all_pages.cpus_with_pcps) #32
  %70 = icmp ult i32 %69, %68
  br i1 %70, label %86, label %97

71:                                               ; preds = %71, %23
  %72 = phi i32 [ %83, %71 ], [ %25, %23 ]
  %73 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %72
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %74, ptrtoint (ptr @pcpu_drain to i32)
  %76 = inttoptr i32 %75 to ptr
  store ptr %0, ptr %76, align 4
  %77 = getelementptr inbounds %struct.pcpu_drain, ptr %76, i32 0, i32 1
  store i32 -32, ptr %77, align 4
  %78 = getelementptr inbounds %struct.pcpu_drain, ptr %76, i32 0, i32 1, i32 1
  store volatile ptr %78, ptr %78, align 4
  %79 = getelementptr inbounds %struct.pcpu_drain, ptr %76, i32 0, i32 1, i32 1, i32 1
  store ptr %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.pcpu_drain, ptr %76, i32 0, i32 1, i32 2
  store ptr @drain_local_pages_wq, ptr %80, align 4
  %81 = load ptr, ptr @mm_percpu_wq, align 4
  %82 = tail call zeroext i1 @queue_work_on(i32 noundef %72, ptr noundef %81, ptr noundef %77) #31
  %83 = tail call i32 @cpumask_next(i32 noundef %72, ptr noundef nonnull @__drain_all_pages.cpus_with_pcps) #32
  %84 = load i32, ptr @nr_cpu_ids, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %71, label %67

86:                                               ; preds = %86, %67
  %87 = phi i32 [ %94, %86 ], [ %69, %67 ]
  %88 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %87
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, ptrtoint (ptr @pcpu_drain to i32)
  %91 = inttoptr i32 %90 to ptr
  %92 = getelementptr inbounds %struct.pcpu_drain, ptr %91, i32 0, i32 1
  %93 = tail call zeroext i1 @flush_work(ptr noundef %92) #31
  %94 = tail call i32 @cpumask_next(i32 noundef %87, ptr noundef nonnull @__drain_all_pages.cpus_with_pcps) #32
  %95 = load i32, ptr @nr_cpu_ids, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %86, label %97

97:                                               ; preds = %86, %67
  tail call void @mutex_unlock(ptr noundef nonnull @pcpu_drain_mutex) #31
  br label %98

98:                                               ; preds = %97, %13, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_unref_page(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr @mem_map, align 4
  %4 = ptrtoint ptr %0 to i32
  %5 = ptrtoint ptr %3 to i32
  %6 = sub i32 %4, %5
  %7 = ashr exact i32 %6, 5
  %8 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %9 = add i32 %7, %8
  %10 = tail call fastcc zeroext i1 @free_unref_page_prepare(ptr noundef %0, i32 noundef %9, i32 noundef %1)
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %21, !prof !14

15:                                               ; preds = %11
  %16 = icmp eq i32 %13, 5
  br i1 %16, label %17, label %21, !prof !14

17:                                               ; preds = %15
  %18 = load i32, ptr %0, align 4
  %19 = lshr i32 %18, 30
  %20 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %19
  tail call fastcc void @free_one_page(ptr noundef %20, ptr noundef %0, i32 noundef %9, i32 noundef %1, i32 noundef 5)
  br label %30

21:                                               ; preds = %15, %11
  %22 = phi i32 [ %13, %11 ], [ 1, %15 ]
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #31, !srcloc !15
  %24 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %25 = inttoptr i32 %24 to ptr
  %26 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %25) #28, !srcloc !16
  tail call fastcc void @free_unref_page_commit(ptr noundef %0, i32 noundef %22, i32 noundef %1)
  %27 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %28 = inttoptr i32 %27 to ptr
  %29 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %28) #28, !srcloc !16
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %23) #31, !srcloc !17
  br label %30

30:                                               ; preds = %21, %17, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @free_unref_page_prepare(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_page_free, i32 0, i32 1), align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  %7 = tail call ptr @llvm.thread.pointer() #31
  %8 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 5
  %11 = getelementptr i32, ptr @__cpu_online_mask, i32 %10
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %9, 31
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #31, !srcloc !20
  %18 = tail call i32 @__traceiter_mm_page_free(ptr noundef null, ptr noundef %0, i32 noundef %2) #31
  tail call void asm sideeffect "", "~{memory}"() #31, !srcloc !21
  br label %19

19:                                               ; preds = %17, %6, %3
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %87, label %21, !prof !9

21:                                               ; preds = %19
  %22 = load volatile i32, ptr %0, align 4
  %23 = and i32 %22, 65536
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %27 = load volatile i32, ptr %26, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i1 [ %29, %25 ], [ false, %21 ]
  %32 = shl nuw i32 1, %2
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %87

34:                                               ; preds = %83, %30
  %35 = phi i32 [ %85, %83 ], [ 1, %30 ]
  %36 = phi i32 [ %84, %83 ], [ 0, %30 ]
  br i1 %31, label %40, label %37

37:                                               ; preds = %34
  %38 = getelementptr %struct.page, ptr %0, i32 %35, i32 1, i32 0, i32 1
  store ptr null, ptr %38, align 4
  %39 = getelementptr %struct.page, ptr %0, i32 %35, i32 1
  store volatile i32 0, ptr %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = getelementptr %struct.page, ptr %0, i32 %35
  %42 = getelementptr %struct.page, ptr %0, i32 %35, i32 2
  %43 = load volatile i32, ptr %42, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %56, !prof !9

45:                                               ; preds = %40
  %46 = getelementptr %struct.page, ptr %0, i32 %35, i32 1, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = getelementptr %struct.page, ptr %0, i32 %35, i32 3
  %50 = load volatile i32, ptr %49, align 4
  %51 = or i32 %50, %48
  %52 = load i32, ptr %41, align 4
  %53 = and i32 %52, 3207729
  %54 = or i32 %51, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %81, label %56, !prof !9

56:                                               ; preds = %45, %40
  %57 = load volatile i32, ptr %42, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %60, label %59, !prof !9

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi ptr [ @.str.49, %59 ], [ null, %56 ]
  %62 = getelementptr %struct.page, ptr %0, i32 %35, i32 1, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65, !prof !9

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %60
  %67 = phi ptr [ @.str.50, %65 ], [ %61, %60 ]
  %68 = getelementptr %struct.page, ptr %0, i32 %35, i32 3
  %69 = load volatile i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71, !prof !9

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %66
  %73 = phi ptr [ @.str.51, %71 ], [ %67, %66 ]
  %74 = load i32, ptr %41, align 4
  %75 = and i32 %74, 3207729
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77, !prof !9

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %72
  %79 = phi ptr [ %73, %72 ], [ @.str.53, %77 ]
  tail call fastcc void @bad_page(ptr noundef %41, ptr noundef %79) #31
  %80 = add i32 %36, 1
  br label %83

81:                                               ; preds = %45
  %82 = and i32 %52, -4194304
  store i32 %82, ptr %41, align 4
  br label %83

83:                                               ; preds = %81, %78
  %84 = phi i32 [ %80, %78 ], [ %36, %81 ]
  %85 = add nuw nsw i32 %35, 1
  %86 = icmp eq i32 %85, %32
  br i1 %86, label %87, label %34

87:                                               ; preds = %83, %30, %19
  %88 = phi i32 [ 0, %19 ], [ 0, %30 ], [ %84, %83 ]
  %89 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = ptrtoint ptr %90 to i32
  %92 = and i32 %91, 3
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  store ptr null, ptr %89, align 4
  br label %95

95:                                               ; preds = %94, %87
  %96 = icmp eq i32 %88, 0
  br i1 %96, label %97, label %141

97:                                               ; preds = %95
  %98 = load i32, ptr %0, align 4
  %99 = and i32 %98, -4194304
  store i32 %99, ptr %0, align 4
  %100 = lshr i32 %98, 30
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %110, label %102

102:                                              ; preds = %97
  %103 = icmp ne i32 %100, 3
  %104 = load i32, ptr @movable_zone, align 4
  %105 = icmp ne i32 %104, 2
  %106 = select i1 %103, i1 true, i1 %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = tail call ptr @page_address(ptr noundef %0) #31
  %109 = tail call ptr @page_address(ptr noundef %0) #31
  br label %110

110:                                              ; preds = %107, %102, %97
  %111 = shl nuw i32 1, %2
  %112 = load volatile i32, ptr @init_on_free, align 4
  %113 = icmp slt i32 %112, 1
  %114 = icmp slt i32 %111, 1
  %115 = select i1 %113, i1 true, i1 %114
  br i1 %115, label %124, label %116

116:                                              ; preds = %116, %110
  %117 = phi i32 [ %122, %116 ], [ 0, %110 ]
  %118 = getelementptr %struct.page, ptr %0, i32 %117
  %119 = load i32, ptr @pgprot_kernel, align 4
  %120 = or i32 %119, 512
  %121 = tail call ptr @__kmap_local_page_prot(ptr noundef %118, i32 noundef %120) #31
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %121, i8 0, i32 4096, i1 false) #31
  tail call void @kunmap_local_indexed(ptr noundef %121) #31
  %122 = add nuw nsw i32 %117, 1
  %123 = icmp eq i32 %122, %111
  br i1 %123, label %124, label %116

124:                                              ; preds = %116, %110
  %125 = load i32, ptr %0, align 4
  %126 = lshr i32 %125, 30
  %127 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %126, i32 9
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %126, i32 10
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, -2048
  %132 = sub i32 %1, %131
  %133 = lshr i32 %132, 9
  %134 = lshr i32 %132, 14
  %135 = and i32 %133, 28
  %136 = getelementptr i32, ptr %128, i32 %134
  %137 = load i32, ptr %136, align 4
  %138 = lshr i32 %137, %135
  %139 = and i32 %138, 7
  %140 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 2
  store i32 %139, ptr %140, align 4
  br label %141

141:                                              ; preds = %124, %95
  ret i1 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_one_page(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 22
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #31
  %8 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = icmp eq i32 %4, 5
  %12 = or i1 %11, %10
  br i1 %12, label %13, label %29, !prof !22

13:                                               ; preds = %5
  %14 = load i32, ptr %1, align 4
  %15 = lshr i32 %14, 30
  %16 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %15, i32 9
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %15, i32 10
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, -2048
  %21 = sub i32 %2, %20
  %22 = lshr i32 %21, 9
  %23 = lshr i32 %21, 14
  %24 = and i32 %22, 28
  %25 = getelementptr i32, ptr %17, i32 %23
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, %24
  %28 = and i32 %27, 7
  br label %29

29:                                               ; preds = %13, %5
  %30 = phi i32 [ %28, %13 ], [ %4, %5 ]
  tail call fastcc void @__free_one_page(ptr noundef %1, i32 noundef %2, ptr noundef %0, i32 noundef %3, i32 noundef %30, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_unref_page_commit(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load i32, ptr %0, align 4
  %5 = lshr i32 %4, 30
  %6 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %5
  %7 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %8 = inttoptr i32 %7 to ptr
  %9 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %8) #28, !srcloc !16
  %10 = add i32 %9, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 16) to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4
  %14 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %5, i32 5
  %15 = load ptr, ptr %14, align 8
  %16 = ptrtoint ptr %15 to i32
  %17 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %18 = inttoptr i32 %17 to ptr
  %19 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %18) #28, !srcloc !16
  %20 = add i32 %19, %16
  %21 = inttoptr i32 %20 to ptr
  %22 = mul i32 %2, 3
  %23 = add i32 %22, %1
  %24 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %25 = getelementptr %struct.per_cpu_pages, ptr %21, i32 0, i32 4, i32 %23
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %24, ptr %27, align 4
  store ptr %26, ptr %24, align 4
  %28 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %25, ptr %28, align 4
  store volatile ptr %24, ptr %25, align 4
  %29 = shl nuw i32 1, %2
  %30 = load i32, ptr %21, align 4
  %31 = add i32 %30, %29
  store i32 %31, ptr %21, align 4
  %32 = getelementptr inbounds %struct.per_cpu_pages, ptr %21, i32 0, i32 1
  %33 = load volatile i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35, !prof !14

35:                                               ; preds = %3
  %36 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %5, i32 21
  %37 = load volatile i32, ptr %36, align 16
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.per_cpu_pages, ptr %21, i32 0, i32 2
  %42 = load volatile i32, ptr %41, align 4
  %43 = shl i32 %42, 2
  %44 = tail call i32 @llvm.smin.i32(i32 %43, i32 %33) #31
  br label %45

45:                                               ; preds = %40, %35, %3
  %46 = phi i32 [ %44, %40 ], [ 0, %3 ], [ %33, %35 ]
  %47 = icmp slt i32 %31, %46
  br i1 %47, label %66, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.per_cpu_pages, ptr %21, i32 0, i32 2
  %50 = load volatile i32, ptr %49, align 4
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %64, label %52, !prof !14

52:                                               ; preds = %48
  %53 = sub i32 %46, %50
  %54 = getelementptr inbounds %struct.per_cpu_pages, ptr %21, i32 0, i32 3
  %55 = load i16, ptr %54, align 4
  %56 = zext i16 %55 to i32
  %57 = shl i32 %50, %56
  %58 = icmp slt i32 %57, %53
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = add i16 %55, 1
  store i16 %60, ptr %54, align 4
  br label %61

61:                                               ; preds = %59, %52
  %62 = tail call i32 @llvm.smax.i32(i32 %57, i32 %50) #31
  %63 = tail call i32 @llvm.smin.i32(i32 %62, i32 %53) #31
  br label %64

64:                                               ; preds = %61, %48
  %65 = phi i32 [ %63, %61 ], [ 1, %48 ]
  tail call fastcc void @free_pcppages_bulk(ptr noundef %6, i32 noundef %65, ptr noundef %21)
  br label %66

66:                                               ; preds = %64, %45
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_unref_page_list(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %37, label %4

4:                                                ; preds = %35, %1
  %5 = phi ptr [ %7, %35 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -4
  %7 = load ptr, ptr %5, align 4
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %6 to i32
  %10 = ptrtoint ptr %8 to i32
  %11 = sub i32 %9, %10
  %12 = ashr exact i32 %11, 5
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %14 = add i32 %12, %13
  %15 = tail call fastcc zeroext i1 @free_unref_page_prepare(ptr noundef %6, i32 noundef %14, i32 noundef 0)
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %18, ptr %20, align 4
  store volatile ptr %19, ptr %18, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %17, align 4
  br label %35

21:                                               ; preds = %4
  %22 = getelementptr i8, ptr %5, i32 12
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %33, !prof !14

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  %30 = load i32, ptr %6, align 4
  %31 = lshr i32 %30, 30
  %32 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %31
  tail call fastcc void @free_one_page(ptr noundef %32, ptr noundef %6, i32 noundef %14, i32 noundef 0, i32 noundef 5)
  br label %35

33:                                               ; preds = %21
  %34 = getelementptr i8, ptr %5, i32 16
  store i32 %14, ptr %34, align 4
  br label %35

35:                                               ; preds = %33, %25, %16
  %36 = icmp eq ptr %7, %0
  br i1 %36, label %37, label %4

37:                                               ; preds = %35, %1
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #31, !srcloc !15
  %39 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %40 = inttoptr i32 %39 to ptr
  %41 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %40) #28, !srcloc !16
  %42 = load ptr, ptr %0, align 4
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %87, label %44

44:                                               ; preds = %83, %37
  %45 = phi ptr [ %49, %83 ], [ %42, %37 ]
  %46 = phi i32 [ %85, %83 ], [ %38, %37 ]
  %47 = phi i32 [ %84, %83 ], [ 0, %37 ]
  %48 = getelementptr i8, ptr %45, i32 -4
  %49 = load ptr, ptr %45, align 4
  %50 = getelementptr i8, ptr %45, i32 16
  store i32 0, ptr %50, align 4
  %51 = getelementptr i8, ptr %45, i32 12
  %52 = load i32, ptr %51, align 4
  %53 = icmp sgt i32 %52, 2
  br i1 %53, label %54, label %55, !prof !14

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %44
  %56 = phi i32 [ 1, %54 ], [ %52, %44 ]
  %57 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_page_free_batched, i32 0, i32 1), align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = tail call ptr @llvm.thread.pointer() #31
  %61 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 2
  %62 = load i32, ptr %61, align 8
  %63 = lshr i32 %62, 5
  %64 = getelementptr i32, ptr @__cpu_online_mask, i32 %63
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %62, 31
  %67 = shl nuw i32 1, %66
  %68 = and i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %59
  tail call void asm sideeffect "", "~{memory}"() #31, !srcloc !26
  %71 = tail call i32 @__traceiter_mm_page_free_batched(ptr noundef null, ptr noundef %48) #31
  tail call void asm sideeffect "", "~{memory}"() #31, !srcloc !27
  br label %72

72:                                               ; preds = %70, %59, %55
  tail call fastcc void @free_unref_page_commit(ptr noundef %48, i32 noundef %56, i32 noundef 0)
  %73 = add i32 %47, 1
  %74 = icmp eq i32 %73, 32
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %77 = inttoptr i32 %76 to ptr
  %78 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %77) #28, !srcloc !16
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %46) #31, !srcloc !17
  %79 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #31, !srcloc !15
  %80 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %81 = inttoptr i32 %80 to ptr
  %82 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %81) #28, !srcloc !16
  br label %83

83:                                               ; preds = %75, %72
  %84 = phi i32 [ 0, %75 ], [ %73, %72 ]
  %85 = phi i32 [ %79, %75 ], [ %46, %72 ]
  %86 = icmp eq ptr %49, %0
  br i1 %86, label %87, label %44

87:                                               ; preds = %83, %37
  %88 = phi i32 [ %38, %37 ], [ %85, %83 ]
  %89 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %90 = inttoptr i32 %89 to ptr
  %91 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %90) #28, !srcloc !16
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %88) #31, !srcloc !17
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @split_page(ptr noundef %0, i32 noundef %1) #9 {
  %3 = shl nuw i32 1, %1
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %10

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %8, %5 ], [ 1, %2 ]
  %7 = getelementptr %struct.page, ptr %0, i32 %6, i32 3
  store volatile i32 1, ptr %7, align 4
  %8 = add nuw nsw i32 %6, 1
  %9 = icmp eq i32 %8, %3
  br i1 %9, label %10, label %5

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__isolate_free_page(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, -268435328
  %6 = icmp eq i32 %5, -268435456
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/page_alloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3517, 0\0A.popsection", ""() #31, !srcloc !28
  unreachable

8:                                                ; preds = %2
  %9 = load i32, ptr %0, align 4
  %10 = lshr i32 %9, 30
  %11 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %10
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %0 to i32
  %14 = ptrtoint ptr %12 to i32
  %15 = sub i32 %13, %14
  %16 = ashr exact i32 %15, 5
  %17 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %18 = add i32 %16, %17
  %19 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %10, i32 9
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %10, i32 10
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, -2048
  %24 = sub i32 %18, %23
  %25 = lshr i32 %24, 9
  %26 = lshr i32 %24, 14
  %27 = and i32 %25, 28
  %28 = getelementptr i32, ptr %20, i32 %26
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, %27
  %31 = and i32 %30, 7
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %51, label %33

33:                                               ; preds = %8
  %34 = load i32, ptr %11, align 64
  %35 = shl nuw i32 1, %1
  %36 = add i32 %34, %35
  %37 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %10, i32 37, i32 0
  %38 = load volatile i32, ptr %37, align 64
  %39 = tail call i32 @llvm.smax.i32(i32 %38, i32 0) #31
  %40 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %10, i32 2
  %41 = load i32, ptr %40, align 16
  %42 = sub i32 %39, %41
  %43 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %10, i32 3, i32 0
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %36, %44
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %119

47:                                               ; preds = %33
  %48 = sub i32 0, %35
  tail call void @__mod_zone_page_state(ptr noundef %11, i32 noundef 0, i32 noundef %48) #31
  %49 = icmp eq i32 %31, 4
  br i1 %49, label %50, label %51, !prof !14

50:                                               ; preds = %47
  tail call void @__mod_zone_page_state(ptr noundef %11, i32 noundef 9, i32 noundef %48) #31
  br label %51

51:                                               ; preds = %50, %47, %8
  %52 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %53 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %52, align 4
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %54, ptr %56, align 4
  store volatile ptr %55, ptr %54, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %52, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %53, align 4
  %57 = load i32, ptr %3, align 4
  %58 = or i32 %57, 128
  store i32 %58, ptr %3, align 4
  %59 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  store i32 0, ptr %59, align 4
  %60 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %10, i32 20, i32 %1, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, -1
  store i32 %62, ptr %60, align 4
  %63 = icmp ugt i32 %1, 9
  %64 = shl nuw i32 1, %1
  br i1 %63, label %65, label %119

65:                                               ; preds = %51
  %66 = getelementptr %struct.page, ptr %0, i32 %64
  %67 = getelementptr %struct.page, ptr %66, i32 -1
  %68 = icmp ugt ptr %67, %0
  br i1 %68, label %69, label %119

69:                                               ; preds = %116, %65
  %70 = phi ptr [ %117, %116 ], [ %0, %65 ]
  %71 = load ptr, ptr @mem_map, align 4
  %72 = ptrtoint ptr %70 to i32
  %73 = ptrtoint ptr %71 to i32
  %74 = sub i32 %72, %73
  %75 = ashr exact i32 %74, 5
  %76 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %77 = add i32 %75, %76
  %78 = load i32, ptr %70, align 4
  %79 = lshr i32 %78, 30
  %80 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %79, i32 9
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %79, i32 10
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, -2048
  %85 = sub i32 %77, %84
  %86 = lshr i32 %85, 9
  %87 = lshr i32 %85, 14
  %88 = and i32 %86, 28
  %89 = getelementptr i32, ptr %81, i32 %87
  %90 = load i32, ptr %89, align 4
  %91 = lshr i32 %90, %88
  %92 = and i32 %91, 7
  %93 = add nsw i32 %92, -3
  %94 = icmp ult i32 %93, 3
  br i1 %94, label %116, label %95

95:                                               ; preds = %69
  %96 = load i32, ptr @page_group_by_mobility_disabled, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98, !prof !9

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %98, %95
  %100 = phi i32 [ 0, %98 ], [ 1, %95 ]
  %101 = shl nuw nsw i32 7, %88
  %102 = shl nuw nsw i32 %100, %88
  %103 = load volatile i32, ptr %89, align 4
  %104 = xor i32 %101, -1
  br label %105

105:                                              ; preds = %113, %99
  %106 = phi i32 [ %103, %99 ], [ %114, %113 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !10
  %107 = and i32 %106, %104
  %108 = or i32 %107, %102
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #31, !srcloc !11
  br label %109

109:                                              ; preds = %109, %105
  %110 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %89, i32 %106, i32 %108) #31, !srcloc !12
  %111 = extractvalue { i32, i32 } %110, 0
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %109

113:                                              ; preds = %109
  %114 = extractvalue { i32, i32 } %110, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !13
  %115 = icmp eq i32 %106, %114
  br i1 %115, label %116, label %105

116:                                              ; preds = %113, %69
  %117 = getelementptr %struct.page, ptr %70, i32 2048
  %118 = icmp ult ptr %117, %67
  br i1 %118, label %69, label %119

119:                                              ; preds = %116, %65, %51, %33
  %120 = phi i32 [ 0, %33 ], [ %64, %65 ], [ %64, %51 ], [ %64, %116 ]
  ret i32 %120
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @zone_watermark_ok(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #10 {
  %6 = getelementptr %struct.zone, ptr %0, i32 0, i32 37, i32 0
  %7 = load volatile i32, ptr %6, align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0) #31
  %9 = tail call zeroext i1 @__zone_watermark_ok(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %8)
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__putback_isolated_page(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = load i32, ptr %0, align 4
  %5 = lshr i32 %4, 30
  %6 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %5
  %7 = load ptr, ptr @mem_map, align 4
  %8 = ptrtoint ptr %0 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = ashr exact i32 %10, 5
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %13 = add i32 %11, %12
  tail call fastcc void @__free_one_page(ptr noundef %0, i32 noundef %13, ptr noundef %6, i32 noundef %1, i32 noundef %2, i32 noundef 3)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__free_one_page(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 {
  %7 = tail call ptr @llvm.thread.pointer() #31
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 119
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11, !prof !9

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 2097152
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.capture_control, ptr %9, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr inbounds %struct.compact_control, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %2
  %25 = select i1 %24, ptr %9, ptr null
  br label %26

26:                                               ; preds = %20, %16, %11, %6
  %27 = phi ptr [ null, %16 ], [ null, %11 ], [ null, %6 ], [ %25, %20 ]
  %28 = icmp eq i32 %4, 5
  br i1 %28, label %33, label %29, !prof !14

29:                                               ; preds = %26
  %30 = shl nuw i32 1, %3
  tail call void @__mod_zone_page_state(ptr noundef %2, i32 noundef 0, i32 noundef %30) #31
  %31 = icmp eq i32 %4, 4
  br i1 %31, label %32, label %33, !prof !14

32:                                               ; preds = %29
  tail call void @__mod_zone_page_state(ptr noundef %2, i32 noundef 9, i32 noundef %30) #31
  br label %33

33:                                               ; preds = %32, %29, %26
  %34 = icmp ult i32 %3, 11
  br i1 %34, label %35, label %86

35:                                               ; preds = %33
  %36 = icmp eq ptr %27, null
  %37 = icmp eq i32 %4, 4
  br label %38

38:                                               ; preds = %70, %35
  %39 = phi ptr [ %0, %35 ], [ %83, %70 ]
  %40 = phi i32 [ %1, %35 ], [ %81, %70 ]
  %41 = phi i32 [ %3, %35 ], [ %84, %70 ]
  br i1 %36, label %52, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %27, align 4
  %44 = getelementptr inbounds %struct.compact_control, ptr %43, i32 0, i32 13
  %45 = load i32, ptr %44, align 4
  %46 = icmp ne i32 %45, %41
  %47 = or i1 %37, %46
  br i1 %47, label %52, label %48, !prof !29

48:                                               ; preds = %42
  switch i32 %4, label %49 [
    i32 5, label %52
    i32 1, label %52
  ]

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.capture_control, ptr %27, i32 0, i32 1
  store ptr %39, ptr %50, align 4
  %51 = shl nsw i32 -1, %41
  tail call void @__mod_zone_page_state(ptr noundef %2, i32 noundef 0, i32 noundef %51) #31
  br label %141

52:                                               ; preds = %48, %48, %42, %38
  %53 = shl nuw nsw i32 1, %41
  %54 = xor i32 %53, %40
  %55 = sub i32 %54, %40
  %56 = getelementptr %struct.page, ptr %39, i32 %55
  %57 = getelementptr %struct.page, ptr %39, i32 %55, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, -268435328
  %60 = icmp eq i32 %59, -268435456
  br i1 %60, label %61, label %86

61:                                               ; preds = %52
  %62 = getelementptr %struct.page, ptr %39, i32 %55, i32 1, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, %41
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = load i32, ptr %39, align 4
  %67 = load i32, ptr %56, align 4
  %68 = xor i32 %67, %66
  %69 = icmp ult i32 %68, 1073741824
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  %71 = getelementptr %struct.page, ptr %39, i32 %55, i32 1
  %72 = getelementptr %struct.page, ptr %39, i32 %55, i32 1, i32 0, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = load ptr, ptr %71, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %73, ptr %75, align 4
  store volatile ptr %74, ptr %73, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %71, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %72, align 4
  %76 = load i32, ptr %57, align 4
  %77 = or i32 %76, 128
  store i32 %77, ptr %57, align 4
  store i32 0, ptr %62, align 4
  %78 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 %41, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, -1
  store i32 %80, ptr %78, align 4
  %81 = and i32 %54, %40
  %82 = sub i32 %81, %40
  %83 = getelementptr %struct.page, ptr %39, i32 %82
  %84 = add i32 %41, 1
  %85 = icmp eq i32 %84, 11
  br i1 %85, label %86, label %38

86:                                               ; preds = %70, %65, %61, %52, %33
  %87 = phi i32 [ %3, %33 ], [ %41, %61 ], [ %41, %52 ], [ 11, %70 ], [ %41, %65 ]
  %88 = phi i32 [ %1, %33 ], [ %40, %61 ], [ %40, %52 ], [ %81, %70 ], [ %40, %65 ]
  %89 = phi ptr [ %0, %33 ], [ %39, %61 ], [ %39, %52 ], [ %83, %70 ], [ %39, %65 ]
  %90 = phi i32 [ 0, %33 ], [ %54, %61 ], [ %54, %52 ], [ %54, %70 ], [ %54, %65 ]
  %91 = getelementptr inbounds %struct.page, ptr %89, i32 0, i32 1, i32 0, i32 3
  store i32 %87, ptr %91, align 4
  %92 = getelementptr inbounds %struct.page, ptr %89, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, -129
  store i32 %94, ptr %92, align 4
  %95 = and i32 %5, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %121

97:                                               ; preds = %86
  %98 = icmp ugt i32 %87, 9
  br i1 %98, label %131, label %99

99:                                               ; preds = %97
  %100 = and i32 %90, %88
  %101 = sub i32 %100, %88
  %102 = getelementptr %struct.page, ptr %89, i32 %101
  %103 = shl nuw nsw i32 2, %87
  %104 = xor i32 %100, %103
  %105 = sub i32 %104, %100
  %106 = getelementptr %struct.page, ptr %102, i32 %105
  %107 = getelementptr inbounds %struct.page, ptr %106, i32 0, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, -268435328
  %110 = icmp eq i32 %109, -268435456
  br i1 %110, label %111, label %131

111:                                              ; preds = %99
  %112 = add nuw nsw i32 %87, 1
  %113 = getelementptr inbounds %struct.page, ptr %106, i32 0, i32 1, i32 0, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, %112
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load i32, ptr %102, align 4
  %118 = load i32, ptr %106, align 4
  %119 = xor i32 %118, %117
  %120 = icmp ult i32 %119, 1073741824
  br i1 %120, label %121, label %131

121:                                              ; preds = %116, %86
  %122 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 %87
  %123 = getelementptr inbounds %struct.page, ptr %89, i32 0, i32 1
  %124 = getelementptr [6 x %struct.list_head], ptr %122, i32 0, i32 %4
  %125 = getelementptr [6 x %struct.list_head], ptr %122, i32 0, i32 %4, i32 1
  %126 = load ptr, ptr %125, align 4
  store ptr %123, ptr %125, align 4
  store ptr %124, ptr %123, align 4
  %127 = getelementptr inbounds %struct.page, ptr %89, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %126, ptr %127, align 4
  store volatile ptr %123, ptr %126, align 4
  %128 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 %87, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = add i32 %129, 1
  store i32 %130, ptr %128, align 4
  br label %141

131:                                              ; preds = %116, %111, %99, %97
  %132 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 %87
  %133 = getelementptr inbounds %struct.page, ptr %89, i32 0, i32 1
  %134 = getelementptr [6 x %struct.list_head], ptr %132, i32 0, i32 %4
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.list_head, ptr %135, i32 0, i32 1
  store ptr %133, ptr %136, align 4
  store ptr %135, ptr %133, align 4
  %137 = getelementptr inbounds %struct.page, ptr %89, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %134, ptr %137, align 4
  store volatile ptr %133, ptr %134, align 4
  %138 = getelementptr %struct.zone, ptr %2, i32 0, i32 20, i32 %87, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = add i32 %139, 1
  store i32 %140, ptr %138, align 4
  br label %141

141:                                              ; preds = %131, %121, %49
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @should_fail_alloc_page(i32 %0, i32 %1) local_unnamed_addr #11 {
  ret i1 false
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__zone_watermark_ok(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #10 {
  %7 = and i32 %4, 24
  %8 = icmp eq i32 %7, 0
  %9 = shl nsw i32 -1, %1
  %10 = xor i32 %9, -1
  br i1 %8, label %11, label %15, !prof !9

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 16
  %14 = add i32 %13, %10
  br label %15

15:                                               ; preds = %11, %6
  %16 = phi i32 [ %14, %11 ], [ %10, %6 ]
  %17 = and i32 %4, 128
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = getelementptr %struct.zone, ptr %0, i32 0, i32 37, i32 9
  %21 = load volatile i32, ptr %20, align 4
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 0) #31
  %23 = add i32 %22, %16
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi i32 [ %16, %15 ], [ %23, %19 ]
  %26 = sub i32 %5, %25
  %27 = and i32 %4, 32
  %28 = icmp eq i32 %27, 0
  %29 = sdiv i32 %2, -2
  %30 = select i1 %28, i32 0, i32 %29
  %31 = add i32 %30, %2
  br i1 %8, label %41, label %32, !prof !9

32:                                               ; preds = %24
  %33 = and i32 %4, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = sdiv i32 %31, -2
  %37 = add i32 %36, %31
  br label %41

38:                                               ; preds = %32
  %39 = sdiv i32 %31, -4
  %40 = add i32 %39, %31
  br label %41

41:                                               ; preds = %38, %35, %24
  %42 = phi i32 [ %37, %35 ], [ %40, %38 ], [ %31, %24 ]
  %43 = getelementptr %struct.zone, ptr %0, i32 0, i32 3, i32 %3
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  %46 = icmp sgt i32 %26, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %41
  %48 = icmp eq i32 %1, 0
  br i1 %48, label %81, label %49

49:                                               ; preds = %47
  %50 = icmp slt i32 %1, 12
  br i1 %50, label %51, label %81

51:                                               ; preds = %78, %49
  %52 = phi i32 [ %79, %78 ], [ %1, %49 ]
  %53 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %52
  %54 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %52, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %51
  %58 = load volatile ptr, ptr %53, align 4
  %59 = icmp eq ptr %58, %53
  br i1 %59, label %60, label %81

60:                                               ; preds = %57
  %61 = getelementptr [6 x %struct.list_head], ptr %53, i32 0, i32 1
  %62 = load volatile ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %61
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = getelementptr [6 x %struct.list_head], ptr %53, i32 0, i32 2
  %66 = load volatile ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %65
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  br i1 %18, label %73, label %69

69:                                               ; preds = %68
  %70 = getelementptr [6 x %struct.list_head], ptr %53, i32 0, i32 4
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %73, label %81

73:                                               ; preds = %69, %68
  br i1 %8, label %78, label %74

74:                                               ; preds = %73
  %75 = getelementptr [6 x %struct.list_head], ptr %53, i32 0, i32 3
  %76 = load volatile ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %75
  br i1 %77, label %78, label %81

78:                                               ; preds = %74, %73, %51
  %79 = add nsw i32 %52, 1
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %51

81:                                               ; preds = %78, %74, %69, %64, %60, %57, %49, %47, %41
  %82 = phi i1 [ false, %41 ], [ true, %47 ], [ false, %49 ], [ false, %78 ], [ true, %69 ], [ true, %74 ], [ true, %57 ], [ true, %60 ], [ true, %64 ]
  ret i1 %82
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @zone_watermark_ok_safe(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 {
  %5 = getelementptr %struct.zone, ptr %0, i32 0, i32 37, i32 0
  %6 = load volatile i32, ptr %5, align 4
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 0) #31
  %8 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 25
  %9 = load i32, ptr %8, align 64
  %10 = icmp ne i32 %9, 0
  %11 = icmp ult i32 %7, %9
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %37

13:                                               ; preds = %4
  %14 = load volatile i32, ptr %5, align 4
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %16 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #32
  %17 = icmp ult i32 %16, %15
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %22

22:                                               ; preds = %22, %18
  %23 = phi i32 [ %16, %18 ], [ %32, %22 ]
  %24 = phi i32 [ %14, %18 ], [ %31, %22 ]
  %25 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %21
  %28 = inttoptr i32 %27 to ptr
  %29 = load i8, ptr %28, align 1
  %30 = sext i8 %29 to i32
  %31 = add i32 %24, %30
  %32 = tail call i32 @cpumask_next(i32 noundef %23, ptr noundef nonnull @__cpu_online_mask) #32
  %33 = icmp ult i32 %32, %15
  br i1 %33, label %22, label %34

34:                                               ; preds = %22, %13
  %35 = phi i32 [ %14, %13 ], [ %31, %22 ]
  %36 = tail call i32 @llvm.smax.i32(i32 %35, i32 0) #31
  br label %37

37:                                               ; preds = %34, %4
  %38 = phi i32 [ %36, %34 ], [ %7, %4 ]
  %39 = shl nsw i32 -1, %1
  %40 = add nsw i32 %39, 1
  %41 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 2
  %42 = load i32, ptr %41, align 16
  %43 = getelementptr %struct.zone, ptr %0, i32 0, i32 37, i32 9
  %44 = load volatile i32, ptr %43, align 4
  %45 = tail call i32 @llvm.smax.i32(i32 %44, i32 0) #31
  %46 = add i32 %38, %40
  %47 = add i32 %42, %45
  %48 = sub i32 %46, %47
  %49 = getelementptr %struct.zone, ptr %0, i32 0, i32 3, i32 %3
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, %2
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %37
  %54 = icmp eq i32 %1, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %53
  %56 = icmp slt i32 %1, 12
  br i1 %56, label %57, label %77

57:                                               ; preds = %74, %55
  %58 = phi i32 [ %75, %74 ], [ %1, %55 ]
  %59 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %58
  %60 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %58, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %57
  %64 = load volatile ptr, ptr %59, align 4
  %65 = icmp eq ptr %64, %59
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = getelementptr [6 x %struct.list_head], ptr %59, i32 0, i32 1
  %68 = load volatile ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, %67
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = getelementptr [6 x %struct.list_head], ptr %59, i32 0, i32 2
  %72 = load volatile ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %57
  %75 = add nsw i32 %58, 1
  %76 = icmp eq i32 %75, 12
  br i1 %76, label %77, label %57

77:                                               ; preds = %74, %70, %66, %63, %55, %53, %37
  %78 = phi i1 [ false, %37 ], [ true, %53 ], [ false, %55 ], [ true, %70 ], [ true, %66 ], [ true, %63 ], [ false, %74 ]
  ret i1 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @warn_alloc(i32 noundef %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.va_format, align 8
  %6 = alloca %struct.__va_list, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #31
  store i32 0, ptr %6, align 4, !annotation !30
  %7 = and i32 %0, 8192
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %65

9:                                                ; preds = %3
  %10 = tail call i32 @___ratelimit(ptr noundef nonnull @warn_alloc.nopage_rs, ptr noundef nonnull @__func__.warn_alloc) #31
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %65, label %12

12:                                               ; preds = %9
  %13 = and i32 %0, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @first_online_pgdat() #31
  %17 = icmp eq ptr %16, null
  br i1 %17, label %65, label %18

18:                                               ; preds = %23, %15
  %19 = phi ptr [ %24, %23 ], [ %16, %15 ]
  %20 = getelementptr inbounds %struct.zone, ptr %19, i32 0, i32 11
  %21 = load volatile i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = tail call ptr @next_online_pgdat(ptr noundef nonnull %19) #31
  %25 = icmp eq ptr %24, null
  br i1 %25, label %65, label %18

26:                                               ; preds = %18, %12
  call void @llvm.va_start(ptr nonnull %6)
  store ptr %2, ptr %5, align 8
  %27 = getelementptr inbounds %struct.va_format, ptr %5, i32 0, i32 1
  store ptr %6, ptr %27, align 4
  %28 = tail call ptr @llvm.thread.pointer() #31
  %29 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 85
  %30 = icmp ne ptr %1, null
  %31 = zext i1 %30 to i32
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %29, ptr noundef nonnull %5, i32 noundef %0, ptr noundef nonnull %4, i32 noundef %31, ptr noundef %1) #33
  call void @llvm.va_end(ptr nonnull %6)
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #33
  call void @dump_stack() #33
  %34 = load i32, ptr %4, align 4
  %35 = and i32 %34, 524288
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 93
  %39 = load ptr, ptr %38, align 16
  %40 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 54
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 2052
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43, %37
  br label %49

49:                                               ; preds = %48, %43, %26
  %50 = phi i32 [ 1, %43 ], [ 0, %48 ], [ 1, %26 ]
  %51 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %52 = load volatile i32, ptr %51, align 4
  %53 = and i32 %52, 15728640
  %54 = load volatile i32, ptr %51, align 4
  %55 = and i32 %54, 983040
  %56 = or i32 %55, %53
  %57 = load volatile i32, ptr %51, align 4
  %58 = and i32 %57, 256
  %59 = or i32 %56, %58
  %60 = icmp ne i32 %59, 0
  %61 = and i32 %34, 1024
  %62 = icmp eq i32 %61, 0
  %63 = or i1 %62, %60
  %64 = select i1 %63, i32 0, i32 %50
  call void @show_mem(i32 noundef %64, ptr noundef %1) #31
  br label %65

65:                                               ; preds = %49, %23, %15, %9, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @has_managed_dma() local_unnamed_addr #1 {
  %1 = tail call ptr @first_online_pgdat() #31
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %8, %0
  %4 = phi ptr [ %9, %8 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.zone, ptr %4, i32 0, i32 11
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call ptr @next_online_pgdat(ptr noundef nonnull %4) #31
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3

11:                                               ; preds = %8, %3
  %12 = xor i1 %7, true
  br label %13

13:                                               ; preds = %11, %0
  %14 = phi i1 [ false, %0 ], [ %12, %11 ]
  ret i1 %14
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #14

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @gfp_pfmemalloc_allowed(i32 noundef %0) local_unnamed_addr #15 {
  %2 = and i32 %0, 524288
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %40, !prof !9

4:                                                ; preds = %1
  %5 = and i32 %0, 131072
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %4
  %8 = tail call ptr @llvm.thread.pointer() #31
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %13, %7
  %19 = load volatile i32, ptr %9, align 4
  %20 = and i32 %19, 15728640
  %21 = load volatile i32, ptr %9, align 4
  %22 = and i32 %21, 983040
  %23 = or i32 %22, %20
  %24 = load volatile i32, ptr %9, align 4
  %25 = and i32 %24, 65280
  %26 = or i32 %23, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 2048
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 93
  %35 = load ptr, ptr %34, align 16
  %36 = getelementptr inbounds %struct.signal_struct, ptr %35, i32 0, i32 54
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %18
  br label %40

40:                                               ; preds = %39, %33, %28, %13, %4, %1
  %41 = phi i1 [ false, %1 ], [ true, %4 ], [ true, %13 ], [ true, %28 ], [ true, %33 ], [ false, %39 ]
  ret i1 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__alloc_pages_bulk(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #1 {
  %7 = icmp ne ptr %5, null
  %8 = icmp sgt i32 %3, 0
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %15, %6
  %11 = phi i32 [ %16, %15 ], [ 0, %6 ]
  %12 = getelementptr ptr, ptr %5, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i32 %11, 1
  %17 = icmp slt i32 %16, %3
  br i1 %17, label %10, label %18

18:                                               ; preds = %15, %10, %6
  %19 = phi i32 [ 0, %6 ], [ %16, %15 ], [ %11, %10 ]
  %20 = icmp slt i32 %3, 1
  %21 = icmp eq i32 %19, %3
  %22 = select i1 %7, i1 %21, i1 false
  %23 = select i1 %20, i1 true, i1 %22
  br i1 %23, label %207, label %24, !prof !22

24:                                               ; preds = %18
  %25 = sub i32 %3, %19
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %213, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr @gfp_allowed_mask, align 4
  %29 = and i32 %28, %0
  %30 = shl i32 %29, 1
  %31 = and i32 %30, 30
  %32 = lshr i32 19988769, %31
  %33 = and i32 %32, 3
  %34 = load i32, ptr @page_group_by_mobility_disabled, align 4
  %35 = icmp eq i32 %34, 0
  %36 = lshr i32 %29, 3
  %37 = and i32 %36, 3
  %38 = select i1 %35, i32 %37, i32 0, !prof !9
  %39 = and i32 %29, 24
  %40 = icmp eq i32 %39, 8
  %41 = and i1 %35, %40
  %42 = select i1 %41, i32 129, i32 1
  %43 = icmp eq ptr %2, null
  br i1 %43, label %44, label %50, !prof !9

44:                                               ; preds = %27
  %45 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1), align 4
  %46 = icmp ugt i32 %45, %33
  br i1 %46, label %47, label %52, !prof !14

47:                                               ; preds = %44
  %48 = tail call ptr @__next_zones_zonelist(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), i32 noundef %33, ptr noundef null) #31
  %49 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1), align 4
  br label %52

50:                                               ; preds = %27
  %51 = tail call ptr @__next_zones_zonelist(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), i32 noundef %33, ptr noundef nonnull %2) #31
  br label %56

52:                                               ; preds = %47, %44
  %53 = phi i32 [ %49, %47 ], [ %45, %44 ]
  %54 = phi ptr [ %48, %47 ], [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), %44 ]
  %55 = icmp ugt i32 %53, %33
  br i1 %55, label %56, label %59, !prof !14

56:                                               ; preds = %52, %50
  %57 = phi ptr [ %54, %52 ], [ %51, %50 ]
  %58 = tail call ptr @__next_zones_zonelist(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), i32 noundef %33, ptr noundef %2) #31
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi ptr [ %57, %56 ], [ %54, %52 ]
  %61 = phi ptr [ %58, %56 ], [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), %52 ]
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %213, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.zoneref, ptr %60, i32 0, i32 1
  %66 = and i32 %42, 128
  %67 = icmp eq i32 %66, 0
  br label %68

68:                                               ; preds = %116, %64
  %69 = phi ptr [ %62, %64 ], [ %118, %116 ]
  %70 = phi ptr [ %61, %64 ], [ %117, %116 ]
  %71 = getelementptr [3 x i32], ptr %69, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.zone, ptr %69, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %72, %3
  %76 = add i32 %75, %74
  %77 = load i32, ptr %65, align 4
  %78 = getelementptr %struct.zone, ptr %69, i32 0, i32 37, i32 0
  %79 = load volatile i32, ptr %78, align 4
  %80 = tail call i32 @llvm.smax.i32(i32 %79, i32 0) #31
  %81 = getelementptr inbounds %struct.zone, ptr %69, i32 0, i32 2
  %82 = load i32, ptr %81, align 16
  br i1 %67, label %83, label %93

83:                                               ; preds = %68
  %84 = getelementptr %struct.zone, ptr %69, i32 0, i32 37, i32 9
  %85 = load volatile i32, ptr %84, align 4
  %86 = tail call i32 @llvm.smax.i32(i32 %85, i32 0) #31
  %87 = add i32 %82, %86
  %88 = sub i32 %80, %87
  %89 = getelementptr %struct.zone, ptr %69, i32 0, i32 3, i32 %77
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, %76
  %92 = icmp ugt i32 %88, %91
  br i1 %92, label %120, label %99

93:                                               ; preds = %68
  %94 = sub i32 %80, %82
  %95 = getelementptr %struct.zone, ptr %69, i32 0, i32 3, i32 %77
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, %76
  %98 = icmp ugt i32 %94, %97
  br i1 %98, label %120, label %104

99:                                               ; preds = %83
  %100 = load volatile i32, ptr %84, align 4
  %101 = tail call i32 @llvm.smax.i32(i32 %100, i32 0) #31
  %102 = add i32 %101, %82
  %103 = sub i32 %80, %102
  br label %104

104:                                              ; preds = %99, %93
  %105 = phi i32 [ %91, %99 ], [ %97, %93 ]
  %106 = phi i32 [ %103, %99 ], [ %94, %93 ]
  %107 = icmp sgt i32 %106, %105
  br i1 %107, label %120, label %108

108:                                              ; preds = %104
  %109 = getelementptr %struct.zoneref, ptr %70, i32 1
  br i1 %43, label %110, label %114, !prof !9

110:                                              ; preds = %108
  %111 = getelementptr %struct.zoneref, ptr %70, i32 1, i32 1
  %112 = load i32, ptr %111, align 4
  %113 = icmp ugt i32 %112, %33
  br i1 %113, label %114, label %116, !prof !14

114:                                              ; preds = %110, %108
  %115 = tail call ptr @__next_zones_zonelist(ptr noundef %109, i32 noundef %33, ptr noundef %2) #31
  br label %116

116:                                              ; preds = %114, %110
  %117 = phi ptr [ %115, %114 ], [ %109, %110 ]
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %213, label %68

120:                                              ; preds = %104, %93, %83
  %121 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #31, !srcloc !15
  %122 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %123 = inttoptr i32 %122 to ptr
  %124 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %123) #28, !srcloc !16
  %125 = getelementptr inbounds %struct.zone, ptr %69, i32 0, i32 5
  %126 = load ptr, ptr %125, align 8
  %127 = ptrtoint ptr %126 to i32
  %128 = add i32 %124, %127
  %129 = inttoptr i32 %128 to ptr
  %130 = getelementptr %struct.per_cpu_pages, ptr %129, i32 0, i32 4, i32 %38
  %131 = icmp slt i32 %19, %3
  br i1 %131, label %132, label %185

132:                                              ; preds = %120
  %133 = and i32 %29, 256
  %134 = icmp eq i32 %133, 0
  %135 = and i32 %29, 8388608
  %136 = icmp ne i32 %135, 0
  %137 = icmp eq ptr %4, null
  br label %138

138:                                              ; preds = %179, %132
  %139 = phi i32 [ %19, %132 ], [ %180, %179 ]
  %140 = phi i32 [ 0, %132 ], [ %157, %179 ]
  br label %141

141:                                              ; preds = %147, %138
  %142 = phi i32 [ %139, %138 ], [ %148, %147 ]
  br i1 %7, label %143, label %150

143:                                              ; preds = %141
  %144 = getelementptr ptr, ptr %5, i32 %142
  %145 = load ptr, ptr %144, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %143
  %148 = add nsw i32 %142, 1
  %149 = icmp slt i32 %148, %3
  br i1 %149, label %141, label %182

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %142, %143 ], [ %139, %141 ]
  %152 = tail call fastcc ptr @__rmqueue_pcplist(ptr noundef nonnull %69, i32 noundef 0, i32 noundef %38, i32 noundef %42, ptr noundef %129, ptr noundef %130)
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %156, !prof !14

154:                                              ; preds = %150
  %155 = icmp eq i32 %151, 0
  br i1 %155, label %209, label %185

156:                                              ; preds = %150
  %157 = add i32 %140, 1
  %158 = getelementptr inbounds %struct.page, ptr %152, i32 0, i32 1, i32 0, i32 3
  store i32 0, ptr %158, align 4
  %159 = getelementptr inbounds %struct.page, ptr %152, i32 0, i32 3
  store volatile i32 1, ptr %159, align 4
  %160 = load volatile i32, ptr @init_on_free, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %171, label %162

162:                                              ; preds = %156
  %163 = load volatile i32, ptr @init_on_alloc, align 4
  %164 = icmp slt i32 %163, 1
  %165 = and i1 %134, %164
  %166 = select i1 %165, i1 true, i1 %136
  br i1 %166, label %171, label %167

167:                                              ; preds = %162
  %168 = load i32, ptr @pgprot_kernel, align 4
  %169 = or i32 %168, 512
  %170 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %152, i32 noundef %169) #31
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %170, i8 0, i32 4096, i1 false) #31
  tail call void @kunmap_local_indexed(ptr noundef %170) #31
  br label %171

171:                                              ; preds = %167, %162, %156
  %172 = getelementptr inbounds %struct.page, ptr %152, i32 0, i32 1
  store ptr null, ptr %172, align 4
  br i1 %137, label %177, label %173

173:                                              ; preds = %171
  %174 = load ptr, ptr %4, align 4
  %175 = getelementptr inbounds %struct.list_head, ptr %174, i32 0, i32 1
  store ptr %172, ptr %175, align 4
  store ptr %174, ptr %172, align 4
  %176 = getelementptr inbounds %struct.page, ptr %152, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %4, ptr %176, align 4
  store volatile ptr %172, ptr %4, align 4
  br label %179

177:                                              ; preds = %171
  %178 = getelementptr ptr, ptr %5, i32 %151
  store ptr %152, ptr %178, align 4
  br label %179

179:                                              ; preds = %177, %173
  %180 = add i32 %151, 1
  %181 = icmp slt i32 %180, %3
  br i1 %181, label %138, label %185

182:                                              ; preds = %147
  %183 = add nsw i32 %139, 1
  %184 = call i32 @llvm.smax.i32(i32 %3, i32 %183)
  br label %185

185:                                              ; preds = %182, %179, %154, %120
  %186 = phi i32 [ %140, %154 ], [ 0, %120 ], [ %140, %182 ], [ %157, %179 ]
  %187 = phi i32 [ %151, %154 ], [ %19, %120 ], [ %184, %182 ], [ %180, %179 ]
  %188 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %189 = inttoptr i32 %188 to ptr
  %190 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %189) #28, !srcloc !16
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %121) #31, !srcloc !17
  %191 = getelementptr inbounds %struct.zone, ptr %69, i32 0, i32 4
  %192 = load ptr, ptr %191, align 4
  %193 = ptrtoint ptr %69 to i32
  %194 = ptrtoint ptr %192 to i32
  %195 = sub i32 %193, %194
  %196 = sdiv exact i32 %195, 896
  %197 = add nsw i32 %196, 4
  %198 = getelementptr [71 x i32], ptr @vm_event_states, i32 0, i32 %197
  %199 = ptrtoint ptr %198 to i32
  %200 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %201 = inttoptr i32 %200 to ptr
  %202 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %201) #28, !srcloc !16
  %203 = add i32 %202, %199
  %204 = inttoptr i32 %203 to ptr
  %205 = load i32, ptr %204, align 4
  %206 = add i32 %205, %186
  store i32 %206, ptr %204, align 4
  br label %207

207:                                              ; preds = %227, %213, %185, %18
  %208 = phi i32 [ %19, %18 ], [ %228, %227 ], [ %214, %213 ], [ %187, %185 ]
  ret i32 %208

209:                                              ; preds = %154
  %210 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %211 = inttoptr i32 %210 to ptr
  %212 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %211) #28, !srcloc !16
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %121) #31, !srcloc !17
  br label %213

213:                                              ; preds = %209, %116, %59, %24
  %214 = phi i32 [ %19, %24 ], [ 0, %209 ], [ %19, %59 ], [ %19, %116 ]
  %215 = phi i32 [ %0, %24 ], [ %29, %209 ], [ %29, %59 ], [ %29, %116 ]
  %216 = tail call ptr @__alloc_pages(i32 noundef %215, i32 noundef 0, i32 undef, ptr noundef %2)
  %217 = icmp eq ptr %216, null
  br i1 %217, label %207, label %218

218:                                              ; preds = %213
  %219 = icmp eq ptr %4, null
  br i1 %219, label %225, label %220

220:                                              ; preds = %218
  %221 = getelementptr inbounds %struct.page, ptr %216, i32 0, i32 1
  %222 = load ptr, ptr %4, align 4
  %223 = getelementptr inbounds %struct.list_head, ptr %222, i32 0, i32 1
  store ptr %221, ptr %223, align 4
  store ptr %222, ptr %221, align 4
  %224 = getelementptr inbounds %struct.page, ptr %216, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %4, ptr %224, align 4
  store volatile ptr %221, ptr %4, align 4
  br label %227

225:                                              ; preds = %218
  %226 = getelementptr ptr, ptr %5, i32 %214
  store ptr %216, ptr %226, align 4
  br label %227

227:                                              ; preds = %225, %220
  %228 = add nuw i32 %214, 1
  br label %207
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__rmqueue_pcplist(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #5 {
  %7 = alloca i32, align 4
  %8 = load volatile ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %10, label %534

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.per_cpu_pages, ptr %4, i32 0, i32 2
  %12 = load volatile i32, ptr %11, align 4
  %13 = icmp sgt i32 %12, 1
  %14 = ashr i32 %12, %1
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 2)
  %16 = select i1 %13, i32 %15, i32 %12
  %17 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 22
  tail call void @_raw_spin_lock(ptr noundef %17) #31
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %522, label %19

19:                                               ; preds = %10
  %20 = and i32 %3, 128
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr %struct.zone, ptr %0, i32 0, i32 37, i32 9
  %23 = getelementptr %struct.zone, ptr %0, i32 0, i32 37, i32 0
  %24 = icmp ult i32 %1, 12
  %25 = xor i1 %24, true
  %26 = or i1 %21, %25
  %27 = icmp sgt i32 %1, 11
  %28 = and i32 %2, 1073741822
  %29 = icmp eq i32 %28, 4
  %30 = getelementptr [6 x [3 x i32]], ptr @fallbacks, i32 0, i32 %2, i32 0
  %31 = and i32 %2, -3
  %32 = icmp eq i32 %31, 0
  %33 = icmp eq i32 %2, 1
  %34 = icmp slt i32 %1, 12
  %35 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 11
  %36 = getelementptr [3 x i32], ptr %0, i32 0, i32 2
  %37 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 1
  %38 = and i32 %3, 2048
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 21
  %41 = icmp slt i32 %2, 3
  %42 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %43 = shl nsw i32 -1, %1
  br label %44

44:                                               ; preds = %518, %19
  %45 = phi i32 [ 0, %19 ], [ %519, %518 ]
  %46 = phi i32 [ 0, %19 ], [ %520, %518 ]
  br i1 %21, label %99, label %47

47:                                               ; preds = %44
  %48 = load volatile i32, ptr %22, align 4
  %49 = call i32 @llvm.smax.i32(i32 %48, i32 0) #31
  %50 = load volatile i32, ptr %23, align 4
  %51 = call i32 @llvm.smax.i32(i32 %50, i32 0) #31
  %52 = lshr i32 %51, 1
  %53 = icmp ugt i32 %49, %52
  %54 = and i1 %24, %53
  br i1 %54, label %55, label %99

55:                                               ; preds = %96, %47
  %56 = phi i32 [ %97, %96 ], [ %1, %47 ]
  %57 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %56, i32 0, i32 4
  %58 = load volatile ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %57
  %60 = getelementptr i8, ptr %58, i32 -4
  %61 = icmp eq ptr %60, null
  %62 = or i1 %59, %61
  br i1 %62, label %96, label %63

63:                                               ; preds = %55
  %64 = getelementptr i8, ptr %58, i32 4
  %65 = load ptr, ptr %64, align 4
  %66 = load ptr, ptr %58, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  store ptr %65, ptr %67, align 4
  store volatile ptr %66, ptr %65, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %58, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %64, align 4
  %68 = getelementptr i8, ptr %58, i32 20
  %69 = load i32, ptr %68, align 4
  %70 = or i32 %69, 128
  store i32 %70, ptr %68, align 4
  %71 = getelementptr i8, ptr %58, i32 16
  store i32 0, ptr %71, align 4
  %72 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %56, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, -1
  store i32 %74, ptr %72, align 4
  %75 = icmp sgt i32 %56, %1
  br i1 %75, label %76, label %448

76:                                               ; preds = %63
  %77 = shl nuw nsw i32 1, %56
  br label %78

78:                                               ; preds = %78, %76
  %79 = phi i32 [ %81, %78 ], [ %77, %76 ]
  %80 = phi i32 [ %82, %78 ], [ %56, %76 ]
  %81 = lshr i32 %79, 1
  %82 = add nsw i32 %80, -1
  %83 = getelementptr %struct.page, ptr %60, i32 %81, i32 1
  %84 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %82, i32 0, i32 4
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  store ptr %83, ptr %86, align 4
  store ptr %85, ptr %83, align 4
  %87 = getelementptr %struct.page, ptr %60, i32 %81, i32 1, i32 0, i32 0, i32 1
  store ptr %84, ptr %87, align 4
  store volatile ptr %83, ptr %84, align 4
  %88 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %82, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 4
  %91 = getelementptr %struct.page, ptr %60, i32 %81, i32 1, i32 0, i32 3
  store i32 %82, ptr %91, align 4
  %92 = getelementptr %struct.page, ptr %60, i32 %81, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = and i32 %93, -129
  store i32 %94, ptr %92, align 4
  %95 = icmp sgt i32 %82, %1
  br i1 %95, label %78, label %448

96:                                               ; preds = %55
  %97 = add i32 %56, 1
  %98 = icmp eq i32 %97, 12
  br i1 %98, label %99, label %55

99:                                               ; preds = %96, %47, %44
  br label %100

100:                                              ; preds = %447, %99
  br i1 %24, label %101, label %192

101:                                              ; preds = %144, %100
  %102 = phi i32 [ %145, %144 ], [ %1, %100 ]
  %103 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %102
  %104 = getelementptr [6 x %struct.list_head], ptr %103, i32 0, i32 %2
  %105 = load volatile ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, %104
  %107 = getelementptr i8, ptr %105, i32 -4
  %108 = icmp eq ptr %107, null
  %109 = or i1 %106, %108
  br i1 %109, label %144, label %110

110:                                              ; preds = %101
  %111 = getelementptr i8, ptr %105, i32 4
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %105, align 4
  %114 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  store ptr %112, ptr %114, align 4
  store volatile ptr %113, ptr %112, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %105, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %111, align 4
  %115 = getelementptr i8, ptr %105, i32 20
  %116 = load i32, ptr %115, align 4
  %117 = or i32 %116, 128
  store i32 %117, ptr %115, align 4
  %118 = getelementptr i8, ptr %105, i32 16
  store i32 0, ptr %118, align 4
  %119 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %102, i32 1
  %120 = load i32, ptr %119, align 4
  %121 = add i32 %120, -1
  store i32 %121, ptr %119, align 4
  %122 = icmp sgt i32 %102, %1
  br i1 %122, label %123, label %448

123:                                              ; preds = %110
  %124 = shl nuw nsw i32 1, %102
  br label %125

125:                                              ; preds = %125, %123
  %126 = phi i32 [ %128, %125 ], [ %124, %123 ]
  %127 = phi i32 [ %129, %125 ], [ %102, %123 ]
  %128 = lshr i32 %126, 1
  %129 = add nsw i32 %127, -1
  %130 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %129
  %131 = getelementptr %struct.page, ptr %107, i32 %128, i32 1
  %132 = getelementptr [6 x %struct.list_head], ptr %130, i32 0, i32 %2
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  store ptr %131, ptr %134, align 4
  store ptr %133, ptr %131, align 4
  %135 = getelementptr %struct.page, ptr %107, i32 %128, i32 1, i32 0, i32 0, i32 1
  store ptr %132, ptr %135, align 4
  store volatile ptr %131, ptr %132, align 4
  %136 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %129, i32 1
  %137 = load i32, ptr %136, align 4
  %138 = add i32 %137, 1
  store i32 %138, ptr %136, align 4
  %139 = getelementptr %struct.page, ptr %107, i32 %128, i32 1, i32 0, i32 3
  store i32 %129, ptr %139, align 4
  %140 = getelementptr %struct.page, ptr %107, i32 %128, i32 2
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, -129
  store i32 %142, ptr %140, align 4
  %143 = icmp sgt i32 %129, %1
  br i1 %143, label %125, label %448

144:                                              ; preds = %101
  %145 = add i32 %102, 1
  %146 = icmp eq i32 %145, 12
  br i1 %146, label %147, label %101

147:                                              ; preds = %144
  br i1 %26, label %192, label %148

148:                                              ; preds = %189, %147
  %149 = phi i32 [ %190, %189 ], [ %1, %147 ]
  %150 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %149, i32 0, i32 4
  %151 = load volatile ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, %150
  %153 = getelementptr i8, ptr %151, i32 -4
  %154 = icmp eq ptr %153, null
  %155 = or i1 %152, %154
  br i1 %155, label %189, label %156

156:                                              ; preds = %148
  %157 = getelementptr i8, ptr %151, i32 4
  %158 = load ptr, ptr %157, align 4
  %159 = load ptr, ptr %151, align 4
  %160 = getelementptr inbounds %struct.list_head, ptr %159, i32 0, i32 1
  store ptr %158, ptr %160, align 4
  store volatile ptr %159, ptr %158, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %151, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %157, align 4
  %161 = getelementptr i8, ptr %151, i32 20
  %162 = load i32, ptr %161, align 4
  %163 = or i32 %162, 128
  store i32 %163, ptr %161, align 4
  %164 = getelementptr i8, ptr %151, i32 16
  store i32 0, ptr %164, align 4
  %165 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %149, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = add i32 %166, -1
  store i32 %167, ptr %165, align 4
  %168 = icmp sgt i32 %149, %1
  br i1 %168, label %169, label %448

169:                                              ; preds = %156
  %170 = shl nuw nsw i32 1, %149
  br label %171

171:                                              ; preds = %171, %169
  %172 = phi i32 [ %174, %171 ], [ %170, %169 ]
  %173 = phi i32 [ %175, %171 ], [ %149, %169 ]
  %174 = lshr i32 %172, 1
  %175 = add nsw i32 %173, -1
  %176 = getelementptr %struct.page, ptr %153, i32 %174, i32 1
  %177 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %175, i32 0, i32 4
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr inbounds %struct.list_head, ptr %178, i32 0, i32 1
  store ptr %176, ptr %179, align 4
  store ptr %178, ptr %176, align 4
  %180 = getelementptr %struct.page, ptr %153, i32 %174, i32 1, i32 0, i32 0, i32 1
  store ptr %177, ptr %180, align 4
  store volatile ptr %176, ptr %177, align 4
  %181 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %175, i32 1
  %182 = load i32, ptr %181, align 4
  %183 = add i32 %182, 1
  store i32 %183, ptr %181, align 4
  %184 = getelementptr %struct.page, ptr %153, i32 %174, i32 1, i32 0, i32 3
  store i32 %175, ptr %184, align 4
  %185 = getelementptr %struct.page, ptr %153, i32 %174, i32 2
  %186 = load i32, ptr %185, align 4
  %187 = and i32 %186, -129
  store i32 %187, ptr %185, align 4
  %188 = icmp sgt i32 %175, %1
  br i1 %188, label %171, label %448

189:                                              ; preds = %148
  %190 = add i32 %149, 1
  %191 = icmp eq i32 %190, 12
  br i1 %191, label %192, label %148

192:                                              ; preds = %189, %147, %100
  br i1 %27, label %522, label %193

193:                                              ; preds = %192
  %194 = load i32, ptr @page_group_by_mobility_disabled, align 4
  br label %195

195:                                              ; preds = %227, %193
  %196 = phi i32 [ 11, %193 ], [ %228, %227 ]
  %197 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %196
  %198 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %196, i32 1
  %199 = load i32, ptr %198, align 4
  %200 = icmp eq i32 %199, 0
  %201 = or i1 %29, %200
  br i1 %201, label %227, label %202

202:                                              ; preds = %195
  %203 = load i32, ptr %30, align 4
  br label %204

204:                                              ; preds = %212, %202
  %205 = phi i32 [ %203, %202 ], [ %215, %212 ]
  %206 = phi i32 [ 0, %202 ], [ %213, %212 ]
  %207 = getelementptr [6 x %struct.list_head], ptr %197, i32 0, i32 %205
  %208 = load volatile ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, %207
  br i1 %209, label %212, label %210

210:                                              ; preds = %204
  %211 = icmp eq i32 %205, -1
  br i1 %211, label %227, label %217

212:                                              ; preds = %204
  %213 = add i32 %206, 1
  %214 = getelementptr [6 x [3 x i32]], ptr @fallbacks, i32 0, i32 %2, i32 %213
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 6
  br i1 %216, label %227, label %204

217:                                              ; preds = %210
  %218 = icmp ugt i32 %196, 4
  %219 = or i1 %32, %218
  %220 = icmp ne i32 %194, 0
  %221 = select i1 %219, i1 true, i1 %220
  %222 = xor i1 %221, true
  %223 = and i1 %33, %222
  %224 = icmp sgt i32 %196, %1
  %225 = select i1 %223, i1 %224, i1 false
  br i1 %225, label %226, label %250

226:                                              ; preds = %217
  br i1 %34, label %230, label %250

227:                                              ; preds = %212, %210, %195
  %228 = add i32 %196, -1
  %229 = icmp slt i32 %228, %1
  br i1 %229, label %522, label %195

230:                                              ; preds = %247, %226
  %231 = phi i32 [ %248, %247 ], [ %1, %226 ]
  %232 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %231
  %233 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %231, i32 1
  %234 = load i32, ptr %233, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %247, label %236

236:                                              ; preds = %230
  %237 = getelementptr [6 x %struct.list_head], ptr %232, i32 0, i32 2
  %238 = load volatile ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, %237
  br i1 %239, label %244, label %240

240:                                              ; preds = %244, %236
  %241 = phi i32 [ 2, %236 ], [ 0, %244 ]
  %242 = icmp ugt i32 %231, 4
  %243 = select i1 %242, i1 true, i1 %220
  br label %250

244:                                              ; preds = %236
  %245 = load volatile ptr, ptr %232, align 4
  %246 = icmp eq ptr %245, %232
  br i1 %246, label %247, label %240

247:                                              ; preds = %244, %230
  %248 = add nsw i32 %231, 1
  %249 = icmp eq i32 %248, 12
  br i1 %249, label %250, label %230

250:                                              ; preds = %247, %240, %226, %217
  %251 = phi i1 [ %221, %217 ], [ false, %226 ], [ %243, %240 ], [ false, %247 ]
  %252 = phi i32 [ %196, %217 ], [ %196, %226 ], [ %231, %240 ], [ 11, %247 ]
  %253 = phi i32 [ %196, %217 ], [ 12, %226 ], [ %231, %240 ], [ 12, %247 ]
  %254 = phi i32 [ %205, %217 ], [ %205, %226 ], [ %241, %240 ], [ -1, %247 ]
  %255 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %252
  %256 = getelementptr [6 x %struct.list_head], ptr %255, i32 0, i32 %254
  %257 = load volatile ptr, ptr %256, align 4
  %258 = icmp eq ptr %257, %256
  %259 = getelementptr i8, ptr %257, i32 -4
  %260 = select i1 %258, ptr null, ptr %259
  %261 = getelementptr inbounds %struct.page, ptr %260, i32 0, i32 1, i32 0, i32 3
  %262 = load i32, ptr %261, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #31
  store i32 0, ptr %7, align 4, !annotation !30
  %263 = load ptr, ptr @mem_map, align 4
  %264 = ptrtoint ptr %260 to i32
  %265 = ptrtoint ptr %263 to i32
  %266 = sub i32 %264, %265
  %267 = ashr exact i32 %266, 5
  %268 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %269 = add i32 %267, %268
  %270 = load i32, ptr %260, align 4
  %271 = lshr i32 %270, 30
  %272 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %271, i32 9
  %273 = load ptr, ptr %272, align 8
  %274 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %271, i32 10
  %275 = load i32, ptr %274, align 4
  %276 = and i32 %275, -2048
  %277 = sub i32 %269, %276
  %278 = lshr i32 %277, 9
  %279 = lshr i32 %277, 14
  %280 = and i32 %278, 28
  %281 = getelementptr i32, ptr %273, i32 %279
  %282 = load i32, ptr %281, align 4
  %283 = lshr i32 %282, %280
  %284 = and i32 %283, 7
  %285 = icmp eq i32 %284, 3
  br i1 %285, label %421, label %286

286:                                              ; preds = %250
  %287 = icmp ugt i32 %262, 10
  br i1 %287, label %288, label %340

288:                                              ; preds = %286
  %289 = add i32 %262, -11
  %290 = shl nuw i32 1, %289
  br label %291

291:                                              ; preds = %337, %288
  %292 = phi i32 [ %194, %288 ], [ %339, %337 ]
  %293 = phi i32 [ %290, %288 ], [ %295, %337 ]
  %294 = phi ptr [ %260, %288 ], [ %338, %337 ]
  %295 = add i32 %293, -1
  %296 = icmp ne i32 %292, 0
  %297 = and i1 %41, %296
  br i1 %297, label %298, label %299, !prof !14

298:                                              ; preds = %291
  br label %299

299:                                              ; preds = %298, %291
  %300 = phi i32 [ 0, %298 ], [ %2, %291 ]
  %301 = load ptr, ptr @mem_map, align 4
  %302 = ptrtoint ptr %294 to i32
  %303 = ptrtoint ptr %301 to i32
  %304 = sub i32 %302, %303
  %305 = ashr exact i32 %304, 5
  %306 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %307 = add i32 %305, %306
  %308 = load i32, ptr %294, align 4
  %309 = lshr i32 %308, 30
  %310 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %309, i32 9
  %311 = load ptr, ptr %310, align 8
  %312 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %309, i32 10
  %313 = load i32, ptr %312, align 4
  %314 = and i32 %313, -2048
  %315 = sub i32 %307, %314
  %316 = lshr i32 %315, 9
  %317 = lshr i32 %315, 14
  %318 = and i32 %316, 28
  %319 = shl nuw nsw i32 7, %318
  %320 = shl i32 %300, %318
  %321 = getelementptr i32, ptr %311, i32 %317
  %322 = load volatile i32, ptr %321, align 4
  %323 = xor i32 %319, -1
  br label %324

324:                                              ; preds = %332, %299
  %325 = phi i32 [ %322, %299 ], [ %333, %332 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !10
  %326 = and i32 %325, %323
  %327 = or i32 %326, %320
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %321) #31, !srcloc !11
  br label %328

328:                                              ; preds = %328, %324
  %329 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %321, i32 %325, i32 %327) #31, !srcloc !12
  %330 = extractvalue { i32, i32 } %329, 0
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %328

332:                                              ; preds = %328
  %333 = extractvalue { i32, i32 } %329, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !13
  %334 = icmp eq i32 %325, %333
  br i1 %334, label %335, label %324

335:                                              ; preds = %332
  %336 = icmp eq i32 %295, 0
  br i1 %336, label %421, label %337

337:                                              ; preds = %335
  %338 = getelementptr %struct.page, ptr %294, i32 2048
  %339 = load i32, ptr @page_group_by_mobility_disabled, align 4
  br label %291

340:                                              ; preds = %286
  %341 = load i32, ptr @watermark_boost_factor, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %363, label %343

343:                                              ; preds = %340
  %344 = load volatile i32, ptr %35, align 4
  %345 = icmp ult i32 %344, 8192
  br i1 %345, label %363, label %346

346:                                              ; preds = %343
  %347 = load i32, ptr %36, align 8
  %348 = freeze i32 %347
  %349 = udiv i32 %348, 10000
  %350 = mul i32 %349, 10000
  %351 = sub i32 %348, %350
  %352 = mul i32 %349, %341
  %353 = mul i32 %351, %341
  %354 = udiv i32 %353, 10000
  %355 = add i32 %354, %352
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %363, label %357

357:                                              ; preds = %346
  %358 = call i32 @llvm.umax.i32(i32 %355, i32 2048) #31
  %359 = load i32, ptr %37, align 4
  %360 = add i32 %359, 2048
  %361 = call i32 @llvm.umin.i32(i32 %360, i32 %358) #31
  store i32 %361, ptr %37, align 4
  br i1 %39, label %363, label %362

362:                                              ; preds = %357
  call void @_set_bit(i32 noundef 0, ptr noundef %40) #31
  br label %363

363:                                              ; preds = %362, %357, %346, %343, %340
  br i1 %251, label %364, label %421

364:                                              ; preds = %363
  %365 = call i32 @move_freepages_block(ptr noundef %0, ptr noundef %260, i32 noundef %2, ptr noundef nonnull %7) #31
  br i1 %33, label %366, label %368

366:                                              ; preds = %364
  %367 = load i32, ptr %7, align 4
  br label %374

368:                                              ; preds = %364
  %369 = icmp eq i32 %284, 1
  br i1 %369, label %370, label %374

370:                                              ; preds = %368
  %371 = load i32, ptr %7, align 4
  %372 = add i32 %365, %371
  %373 = sub i32 2048, %372
  br label %374

374:                                              ; preds = %370, %368, %366
  %375 = phi i32 [ %367, %366 ], [ %373, %370 ], [ 0, %368 ]
  %376 = icmp eq i32 %365, 0
  br i1 %376, label %421, label %377

377:                                              ; preds = %374
  %378 = add i32 %375, %365
  %379 = icmp sgt i32 %378, 1023
  %380 = load i32, ptr @page_group_by_mobility_disabled, align 4
  %381 = icmp ne i32 %380, 0
  %382 = select i1 %379, i1 true, i1 %381
  br i1 %382, label %383, label %431

383:                                              ; preds = %377
  %384 = and i1 %41, %381
  br i1 %384, label %385, label %386, !prof !14

385:                                              ; preds = %383
  br label %386

386:                                              ; preds = %385, %383
  %387 = phi i32 [ 0, %385 ], [ %2, %383 ]
  %388 = load ptr, ptr @mem_map, align 4
  %389 = ptrtoint ptr %388 to i32
  %390 = sub i32 %264, %389
  %391 = ashr exact i32 %390, 5
  %392 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %393 = add i32 %391, %392
  %394 = load i32, ptr %260, align 4
  %395 = lshr i32 %394, 30
  %396 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %395, i32 9
  %397 = load ptr, ptr %396, align 8
  %398 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %395, i32 10
  %399 = load i32, ptr %398, align 4
  %400 = and i32 %399, -2048
  %401 = sub i32 %393, %400
  %402 = lshr i32 %401, 9
  %403 = lshr i32 %401, 14
  %404 = and i32 %402, 28
  %405 = shl nuw nsw i32 7, %404
  %406 = shl i32 %387, %404
  %407 = getelementptr i32, ptr %397, i32 %403
  %408 = load volatile i32, ptr %407, align 4
  %409 = xor i32 %405, -1
  br label %410

410:                                              ; preds = %418, %386
  %411 = phi i32 [ %408, %386 ], [ %419, %418 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !10
  %412 = and i32 %411, %409
  %413 = or i32 %412, %406
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %407) #31, !srcloc !11
  br label %414

414:                                              ; preds = %414, %410
  %415 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %407, i32 %411, i32 %413) #31, !srcloc !12
  %416 = extractvalue { i32, i32 } %415, 0
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %414

418:                                              ; preds = %414
  %419 = extractvalue { i32, i32 } %415, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !13
  %420 = icmp eq i32 %411, %419
  br i1 %420, label %431, label %410

421:                                              ; preds = %374, %363, %335, %250
  %422 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %262
  %423 = getelementptr inbounds %struct.page, ptr %260, i32 0, i32 1
  %424 = getelementptr [6 x %struct.list_head], ptr %422, i32 0, i32 %2
  %425 = getelementptr inbounds %struct.page, ptr %260, i32 0, i32 1, i32 0, i32 0, i32 1
  %426 = load ptr, ptr %425, align 4
  %427 = load ptr, ptr %423, align 4
  %428 = getelementptr inbounds %struct.list_head, ptr %427, i32 0, i32 1
  store ptr %426, ptr %428, align 4
  store volatile ptr %427, ptr %426, align 4
  %429 = getelementptr [6 x %struct.list_head], ptr %422, i32 0, i32 %2, i32 1
  %430 = load ptr, ptr %429, align 4
  store ptr %423, ptr %429, align 4
  store ptr %424, ptr %423, align 4
  store ptr %430, ptr %425, align 4
  store volatile ptr %423, ptr %430, align 4
  br label %431

431:                                              ; preds = %421, %418, %377
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #31
  %432 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_page_alloc_extfrag, i32 0, i32 1), align 4
  %433 = icmp sgt i32 %432, 0
  br i1 %433, label %434, label %447

434:                                              ; preds = %431
  %435 = tail call ptr @llvm.thread.pointer() #31
  %436 = getelementptr inbounds %struct.thread_info, ptr %435, i32 0, i32 2
  %437 = load i32, ptr %436, align 8
  %438 = lshr i32 %437, 5
  %439 = getelementptr i32, ptr @__cpu_online_mask, i32 %438
  %440 = load volatile i32, ptr %439, align 4
  %441 = and i32 %437, 31
  %442 = shl nuw i32 1, %441
  %443 = and i32 %442, %440
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %447, label %445

445:                                              ; preds = %434
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !31
  %446 = call i32 @__traceiter_mm_page_alloc_extfrag(ptr noundef null, ptr noundef %260, i32 noundef %1, i32 noundef %253, i32 noundef %2, i32 noundef %254) #31
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !32
  br label %447

447:                                              ; preds = %445, %434, %431
  br label %100

448:                                              ; preds = %171, %156, %125, %110, %78, %63
  %449 = phi ptr [ %58, %63 ], [ %105, %110 ], [ %151, %156 ], [ %151, %171 ], [ %105, %125 ], [ %58, %78 ]
  %450 = phi i32 [ 4, %63 ], [ %2, %110 ], [ 4, %156 ], [ 4, %171 ], [ %2, %125 ], [ 4, %78 ]
  %451 = phi ptr [ %60, %63 ], [ %107, %110 ], [ %153, %156 ], [ %153, %171 ], [ %107, %125 ], [ %60, %78 ]
  %452 = getelementptr i8, ptr %449, i32 12
  store i32 %450, ptr %452, align 4
  %453 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_page_alloc_zone_locked, i32 0, i32 1), align 4
  %454 = icmp sgt i32 %453, 0
  br i1 %454, label %455, label %468

455:                                              ; preds = %448
  %456 = tail call ptr @llvm.thread.pointer() #31
  %457 = getelementptr inbounds %struct.thread_info, ptr %456, i32 0, i32 2
  %458 = load i32, ptr %457, align 8
  %459 = lshr i32 %458, 5
  %460 = getelementptr i32, ptr @__cpu_online_mask, i32 %459
  %461 = load volatile i32, ptr %460, align 4
  %462 = and i32 %458, 31
  %463 = shl nuw i32 1, %462
  %464 = and i32 %463, %461
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %468, label %466

466:                                              ; preds = %455
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !33
  %467 = call i32 @__traceiter_mm_page_alloc_zone_locked(ptr noundef null, ptr noundef nonnull %451, i32 noundef %1, i32 noundef %2) #31
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !34
  br label %468

468:                                              ; preds = %466, %455, %448
  %469 = icmp eq ptr %451, null
  br i1 %469, label %522, label %470, !prof !14

470:                                              ; preds = %468
  %471 = getelementptr inbounds %struct.page, ptr %451, i32 0, i32 2
  %472 = load volatile i32, ptr %471, align 4
  %473 = icmp eq i32 %472, -1
  br i1 %473, label %474, label %485, !prof !9

474:                                              ; preds = %470
  %475 = getelementptr inbounds %struct.page, ptr %451, i32 0, i32 1, i32 0, i32 1
  %476 = load ptr, ptr %475, align 4
  %477 = ptrtoint ptr %476 to i32
  %478 = getelementptr inbounds %struct.page, ptr %451, i32 0, i32 3
  %479 = load volatile i32, ptr %478, align 4
  %480 = or i32 %479, %477
  %481 = load i32, ptr %451, align 4
  %482 = and i32 %481, 4194303
  %483 = or i32 %480, %482
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %509, label %485, !prof !9

485:                                              ; preds = %474, %470
  %486 = load volatile i32, ptr %471, align 4
  %487 = icmp eq i32 %486, -1
  br i1 %487, label %489, label %488, !prof !9

488:                                              ; preds = %485
  br label %489

489:                                              ; preds = %488, %485
  %490 = phi ptr [ @.str.49, %488 ], [ null, %485 ]
  %491 = getelementptr inbounds %struct.page, ptr %451, i32 0, i32 1, i32 0, i32 1
  %492 = load ptr, ptr %491, align 4
  %493 = icmp eq ptr %492, null
  br i1 %493, label %495, label %494, !prof !9

494:                                              ; preds = %489
  br label %495

495:                                              ; preds = %494, %489
  %496 = phi ptr [ @.str.50, %494 ], [ %490, %489 ]
  %497 = getelementptr inbounds %struct.page, ptr %451, i32 0, i32 3
  %498 = load volatile i32, ptr %497, align 4
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %501, label %500, !prof !9

500:                                              ; preds = %495
  br label %501

501:                                              ; preds = %500, %495
  %502 = phi ptr [ @.str.51, %500 ], [ %496, %495 ]
  %503 = load i32, ptr %451, align 4
  %504 = and i32 %503, 4194303
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %507, label %506, !prof !9

506:                                              ; preds = %501
  br label %507

507:                                              ; preds = %506, %501
  %508 = phi ptr [ %502, %501 ], [ @.str.52, %506 ]
  call fastcc void @bad_page(ptr noundef nonnull %451, ptr noundef %508) #31
  br label %518

509:                                              ; preds = %474
  %510 = getelementptr inbounds %struct.page, ptr %451, i32 0, i32 1
  %511 = load ptr, ptr %42, align 4
  store ptr %510, ptr %42, align 4
  store ptr %5, ptr %510, align 4
  %512 = getelementptr inbounds %struct.page, ptr %451, i32 0, i32 1, i32 0, i32 0, i32 1
  store ptr %511, ptr %512, align 4
  store volatile ptr %510, ptr %511, align 4
  %513 = add i32 %45, 1
  %514 = getelementptr inbounds %struct.page, ptr %451, i32 0, i32 1, i32 0, i32 2
  %515 = load i32, ptr %514, align 4
  %516 = icmp eq i32 %515, 4
  br i1 %516, label %517, label %518, !prof !14

517:                                              ; preds = %509
  call void @__mod_zone_page_state(ptr noundef %0, i32 noundef 9, i32 noundef %43) #31
  br label %518

518:                                              ; preds = %517, %509, %507
  %519 = phi i32 [ %45, %507 ], [ %513, %509 ], [ %513, %517 ]
  %520 = add nuw i32 %46, 1
  %521 = icmp eq i32 %520, %16
  br i1 %521, label %522, label %44

522:                                              ; preds = %518, %468, %227, %192, %10
  %523 = phi i32 [ 0, %10 ], [ %46, %227 ], [ %46, %192 ], [ %46, %468 ], [ %16, %518 ]
  %524 = phi i32 [ 0, %10 ], [ %45, %227 ], [ %45, %192 ], [ %45, %468 ], [ %519, %518 ]
  %525 = shl i32 %523, %1
  %526 = sub i32 0, %525
  call void @__mod_zone_page_state(ptr noundef %0, i32 noundef 0, i32 noundef %526) #31
  call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !35
  %527 = load i16, ptr %17, align 4
  %528 = add i16 %527, 1
  store i16 %528, ptr %17, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #31, !srcloc !36
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #31, !srcloc !37
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !38
  %529 = shl i32 %524, %1
  %530 = load i32, ptr %4, align 4
  %531 = add i32 %530, %529
  store i32 %531, ptr %4, align 4
  %532 = load volatile ptr, ptr %5, align 4
  %533 = icmp eq ptr %532, %5
  br i1 %533, label %544, label %534

534:                                              ; preds = %522, %6
  %535 = phi ptr [ %532, %522 ], [ %8, %6 ]
  %536 = getelementptr inbounds %struct.list_head, ptr %535, i32 0, i32 1
  %537 = load ptr, ptr %536, align 4
  %538 = load ptr, ptr %535, align 4
  %539 = getelementptr inbounds %struct.list_head, ptr %538, i32 0, i32 1
  store ptr %537, ptr %539, align 4
  store volatile ptr %538, ptr %537, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %535, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %536, align 4
  %540 = shl nsw i32 -1, %1
  %541 = load i32, ptr %4, align 4
  %542 = add i32 %541, %540
  store i32 %542, ptr %4, align 4
  %543 = getelementptr i8, ptr %535, i32 -4
  br label %544

544:                                              ; preds = %534, %522
  %545 = phi ptr [ %543, %534 ], [ null, %522 ]
  ret ptr %545
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @prep_new_page(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  store volatile i32 1, ptr %6, align 4
  %7 = shl nuw i32 1, %1
  %8 = load volatile i32, ptr @init_on_free, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %4
  %11 = load volatile i32, ptr @init_on_alloc, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = and i32 %2, 256
  %14 = icmp ne i32 %13, 0
  %15 = or i1 %14, %12
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = and i32 %2, 8388608
  %18 = icmp ne i32 %17, 0
  %19 = icmp slt i32 %7, 1
  %20 = or i1 %19, %18
  br i1 %20, label %29, label %21

21:                                               ; preds = %21, %16
  %22 = phi i32 [ %27, %21 ], [ 0, %16 ]
  %23 = getelementptr %struct.page, ptr %0, i32 %22
  %24 = load i32, ptr @pgprot_kernel, align 4
  %25 = or i32 %24, 512
  %26 = tail call ptr @__kmap_local_page_prot(ptr noundef %23, i32 noundef %25) #31
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %26, i8 0, i32 4096, i1 false) #31
  tail call void @kunmap_local_indexed(ptr noundef %26) #31
  %27 = add nuw nsw i32 %22, 1
  %28 = icmp eq i32 %27, %7
  br i1 %28, label %29, label %21

29:                                               ; preds = %21, %16, %10, %4
  %30 = icmp eq i32 %1, 0
  %31 = and i32 %2, 262144
  %32 = icmp eq i32 %31, 0
  %33 = or i1 %30, %32
  br i1 %33, label %84, label %34

34:                                               ; preds = %29
  %35 = load i32, ptr %0, align 4
  %36 = or i32 %35, 65536
  store i32 %36, ptr %0, align 4
  %37 = icmp sgt i32 %7, 1
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = ptrtoint ptr %0 to i32
  %40 = add i32 %39, 1
  br label %41

41:                                               ; preds = %41, %38
  %42 = phi i32 [ 1, %38 ], [ %45, %41 ]
  %43 = getelementptr %struct.page, ptr %0, i32 %42, i32 1, i32 0, i32 1
  store ptr inttoptr (i32 1024 to ptr), ptr %43, align 4
  %44 = getelementptr %struct.page, ptr %0, i32 %42, i32 1
  store volatile i32 %40, ptr %44, align 4
  %45 = add nuw nsw i32 %42, 1
  %46 = icmp eq i32 %45, %7
  br i1 %46, label %47, label %41

47:                                               ; preds = %41, %34
  %48 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 0, i32 1
  store i8 1, ptr %48, align 4
  %49 = trunc i32 %1 to i8
  %50 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %51 = getelementptr inbounds %struct.anon.64, ptr %50, i32 0, i32 2
  store i8 %49, ptr %51, align 1
  %52 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  store i32 %7, ptr %52, align 4
  %53 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 1
  store volatile i32 -1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58, !prof !9

58:                                               ; preds = %47
  %59 = add i32 %55, -1
  br label %62

60:                                               ; preds = %47
  %61 = ptrtoint ptr %0 to i32
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = inttoptr i32 %63 to ptr
  %65 = load volatile i32, ptr %64, align 4
  %66 = and i32 %65, 65536
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.page, ptr %64, i32 0, i32 1
  %70 = load volatile i32, ptr %69, align 4
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %68, %62
  %74 = load volatile i32, ptr %64, align 4
  %75 = and i32 %74, 65536
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = getelementptr %struct.page, ptr %64, i32 1, i32 1
  %79 = getelementptr inbounds %struct.anon.64, ptr %78, i32 0, i32 2
  %80 = load i8, ptr %79, align 1
  %81 = icmp ugt i8 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = getelementptr %struct.page, ptr %0, i32 2, i32 1, i32 0, i32 0, i32 1
  store volatile i32 0, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %77, %73, %68, %29
  %85 = and i32 %3, 4
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, ptr null, ptr inttoptr (i32 2 to ptr)
  %88 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  store ptr %87, ptr %88, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__alloc_pages(i32 noundef %0, i32 noundef %1, i32 %2, ptr noundef %3) #1 {
  %5 = alloca %struct.alloc_context, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #31
  %6 = getelementptr inbounds i8, ptr %5, i32 20
  store i32 0, ptr %6, align 4
  %7 = icmp ugt i32 %1, 11
  br i1 %7, label %8, label %15, !prof !14

8:                                                ; preds = %4
  %9 = and i32 %0, 8192
  %10 = icmp eq i32 %9, 0
  %11 = load i1, ptr @__alloc_pages.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %94, !prof !14

14:                                               ; preds = %8
  store i1 true, ptr @__alloc_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5364, i32 noundef 9, ptr noundef null) #31
  br label %94

15:                                               ; preds = %4
  %16 = load i32, ptr @gfp_allowed_mask, align 4
  %17 = and i32 %16, %0
  %18 = tail call ptr @llvm.thread.pointer() #31
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 4
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 269221888
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23, !prof !9

23:                                               ; preds = %15
  %24 = and i32 %20, 524288
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = and i32 %17, -193
  br label %33

28:                                               ; preds = %23
  %29 = and i32 %20, 262144
  %30 = icmp eq i32 %29, 0
  %31 = and i32 %17, -129
  %32 = select i1 %30, i32 %17, i32 %31
  br label %33

33:                                               ; preds = %28, %26
  %34 = phi i32 [ %27, %26 ], [ %32, %28 ]
  %35 = and i32 %20, 268435456
  %36 = icmp eq i32 %35, 0
  %37 = and i32 %34, -9
  %38 = select i1 %36, i32 %34, i32 %37
  br label %39

39:                                               ; preds = %33, %15
  %40 = phi i32 [ %17, %15 ], [ %38, %33 ]
  %41 = shl i32 %40, 1
  %42 = and i32 %41, 30
  %43 = lshr i32 19988769, %42
  %44 = and i32 %43, 3
  %45 = getelementptr inbounds %struct.alloc_context, ptr %5, i32 0, i32 4
  store i32 %44, ptr %45, align 4
  store ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), ptr %5, align 4
  %46 = getelementptr inbounds %struct.alloc_context, ptr %5, i32 0, i32 1
  store ptr %3, ptr %46, align 4
  %47 = load i32, ptr @page_group_by_mobility_disabled, align 4
  %48 = icmp eq i32 %47, 0
  %49 = lshr i32 %40, 3
  %50 = and i32 %49, 3
  %51 = select i1 %48, i32 %50, i32 0, !prof !9
  %52 = getelementptr inbounds %struct.alloc_context, ptr %5, i32 0, i32 3
  store i32 %51, ptr %52, align 4
  %53 = and i32 %40, 24
  %54 = icmp eq i32 %53, 8
  %55 = and i1 %54, %48
  %56 = select i1 %55, i32 129, i32 1
  %57 = getelementptr inbounds %struct.alloc_context, ptr %5, i32 0, i32 5
  %58 = lshr i32 %40, 12
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  store i8 %60, ptr %57, align 4
  %61 = icmp ne ptr %3, null
  %62 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1), align 4
  %63 = icmp ugt i32 %62, %44
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %65, label %67, !prof !22

65:                                               ; preds = %39
  %66 = tail call ptr @__next_zones_zonelist(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), i32 noundef %44, ptr noundef %3) #31
  br label %67

67:                                               ; preds = %65, %39
  %68 = phi ptr [ %66, %65 ], [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), %39 ]
  %69 = getelementptr inbounds %struct.alloc_context, ptr %5, i32 0, i32 2
  store ptr %68, ptr %69, align 4
  %70 = and i32 %40, 2048
  %71 = or i32 %56, %70
  %72 = call fastcc ptr @get_page_from_freelist(i32 noundef %40, i32 noundef %1, i32 noundef %71, ptr noundef nonnull %5)
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77, !prof !14

74:                                               ; preds = %67
  store i8 0, ptr %57, align 4
  store ptr %3, ptr %46, align 4
  %75 = call fastcc ptr @__alloc_pages_slowpath(i32 noundef %40, i32 noundef %1, ptr noundef nonnull %5)
  %76 = load i32, ptr %52, align 4
  br label %77

77:                                               ; preds = %74, %67
  %78 = phi i32 [ %51, %67 ], [ %76, %74 ]
  %79 = phi ptr [ %72, %67 ], [ %75, %74 ]
  %80 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_page_alloc, i32 0, i32 1), align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %84 = load i32, ptr %83, align 8
  %85 = lshr i32 %84, 5
  %86 = getelementptr i32, ptr @__cpu_online_mask, i32 %85
  %87 = load volatile i32, ptr %86, align 4
  %88 = and i32 %84, 31
  %89 = shl nuw i32 1, %88
  %90 = and i32 %89, %87
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %82
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !39
  %93 = call i32 @__traceiter_mm_page_alloc(ptr noundef null, ptr noundef %79, i32 noundef %1, i32 noundef %40, i32 noundef %78) #31
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !40
  br label %94

94:                                               ; preds = %92, %82, %77, %14, %8
  %95 = phi ptr [ null, %14 ], [ null, %8 ], [ %79, %77 ], [ %79, %82 ], [ %79, %92 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #31
  ret ptr %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_page_from_freelist(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.alloc_context, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %779, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.alloc_context, ptr %3, i32 0, i32 5
  %12 = and i32 %2, 3
  %13 = getelementptr inbounds %struct.alloc_context, ptr %3, i32 0, i32 4
  %14 = icmp eq i32 %1, 0
  %15 = and i32 %2, 24
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %2, 128
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %0, 512
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %14, %20
  %22 = icmp eq i32 %12, 0
  %23 = and i32 %2, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.alloc_context, ptr %3, i32 0, i32 3
  %26 = icmp ult i32 %1, 4
  %27 = icmp ne i32 %17, 0
  %28 = and i32 %0, 32768
  %29 = icmp ne i32 %28, 0
  %30 = icmp ugt i32 %1, 1
  %31 = and i1 %30, %29
  %32 = and i32 %2, 16
  %33 = icmp ne i32 %32, 0
  %34 = add i32 %1, -1
  %35 = icmp ult i32 %34, 11
  %36 = and i1 %35, %33
  %37 = icmp ult i32 %1, 12
  %38 = xor i1 %37, true
  %39 = or i1 %18, %38
  %40 = icmp sgt i32 %1, 11
  %41 = icmp slt i32 %1, 12
  %42 = and i32 %2, 2048
  %43 = icmp eq i32 %42, 0
  %44 = shl nuw i32 1, %1
  %45 = icmp eq i32 %1, 31
  %46 = call i32 @llvm.smax.i32(i32 %44, i32 1) #31
  %47 = sub i32 0, %44
  %48 = mul nuw nsw i32 %1, 3
  %49 = getelementptr inbounds %struct.alloc_context, ptr %3, i32 0, i32 1
  %50 = xor i1 %24, true
  br label %51

51:                                               ; preds = %775, %10
  %52 = phi ptr [ %8, %10 ], [ %777, %775 ]
  %53 = phi ptr [ null, %10 ], [ %764, %775 ]
  %54 = phi ptr [ %7, %10 ], [ %776, %775 ]
  %55 = load i8, ptr %11, align 4, !range !18
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.zone, ptr %52, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %53, %59
  br i1 %60, label %763, label %61

61:                                               ; preds = %57
  %62 = call zeroext i1 @node_dirty_ok(ptr noundef %59) #31
  br i1 %62, label %65, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr %58, align 4
  br label %763

65:                                               ; preds = %61, %51
  %66 = getelementptr [3 x i32], ptr %52, i32 0, i32 %12
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.zone, ptr %52, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, %67
  %71 = load i32, ptr %13, align 4
  %72 = getelementptr %struct.zone, ptr %52, i32 0, i32 37, i32 0
  %73 = load volatile i32, ptr %72, align 4
  %74 = call i32 @llvm.smax.i32(i32 %73, i32 0) #31
  br i1 %14, label %75, label %95

75:                                               ; preds = %65
  br i1 %16, label %76, label %79, !prof !9

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.zone, ptr %52, i32 0, i32 2
  %78 = load i32, ptr %77, align 16
  br label %79

79:                                               ; preds = %76, %75
  %80 = phi i32 [ %78, %76 ], [ 0, %75 ]
  br i1 %18, label %81, label %86

81:                                               ; preds = %79
  %82 = getelementptr %struct.zone, ptr %52, i32 0, i32 37, i32 9
  %83 = load volatile i32, ptr %82, align 4
  %84 = call i32 @llvm.smax.i32(i32 %83, i32 0) #31
  %85 = add i32 %84, %80
  br label %86

86:                                               ; preds = %81, %79
  %87 = phi i32 [ %80, %79 ], [ %85, %81 ]
  %88 = sub i32 %74, %87
  %89 = getelementptr %struct.zone, ptr %52, i32 0, i32 3, i32 %71
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, %70
  %92 = icmp ugt i32 %88, %91
  br i1 %92, label %109, label %93

93:                                               ; preds = %86
  %94 = call zeroext i1 @__zone_watermark_ok(ptr noundef nonnull %52, i32 noundef %1, i32 noundef %70, i32 noundef %71, i32 noundef %2, i32 noundef %74) #31
  br i1 %94, label %107, label %98

95:                                               ; preds = %65
  %96 = call zeroext i1 @__zone_watermark_ok(ptr noundef nonnull %52, i32 noundef %1, i32 noundef %70, i32 noundef %71, i32 noundef %2, i32 noundef %74) #31
  %97 = or i1 %96, %50
  br i1 %97, label %107, label %763

98:                                               ; preds = %93
  br i1 %21, label %99, label %106

99:                                               ; preds = %98
  %100 = load i32, ptr %68, align 4
  %101 = icmp ne i32 %100, 0
  %102 = and i1 %22, %101
  br i1 %102, label %103, label %106, !prof !41

103:                                              ; preds = %99
  %104 = load i32, ptr %52, align 64
  %105 = call zeroext i1 @__zone_watermark_ok(ptr noundef nonnull %52, i32 noundef 0, i32 noundef %104, i32 noundef %71, i32 noundef %2, i32 noundef %74) #31
  br i1 %105, label %109, label %106

106:                                              ; preds = %103, %99, %98
  br i1 %24, label %763, label %107

107:                                              ; preds = %106, %95, %93
  %108 = load i32, ptr %25, align 4
  br i1 %26, label %111, label %145, !prof !9

109:                                              ; preds = %103, %86
  %110 = load i32, ptr %25, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = icmp ne i32 %112, 1
  %114 = or i1 %27, %113
  br i1 %114, label %115, label %145

115:                                              ; preds = %111
  %116 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #31, !srcloc !15
  %117 = call i32 @llvm.read_register.i32(metadata !0) #31
  %118 = inttoptr i32 %117 to ptr
  %119 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %118) #28, !srcloc !16
  %120 = getelementptr inbounds %struct.zone, ptr %52, i32 0, i32 5
  %121 = load ptr, ptr %120, align 8
  %122 = ptrtoint ptr %121 to i32
  %123 = add i32 %119, %122
  %124 = inttoptr i32 %123 to ptr
  %125 = getelementptr inbounds %struct.per_cpu_pages, ptr %124, i32 0, i32 3
  %126 = load i16, ptr %125, align 4
  %127 = ashr i16 %126, 1
  store i16 %127, ptr %125, align 4
  %128 = add i32 %112, %48
  %129 = getelementptr %struct.per_cpu_pages, ptr %124, i32 0, i32 4, i32 %128
  %130 = call fastcc ptr @__rmqueue_pcplist(ptr noundef nonnull %52, i32 noundef %1, i32 noundef %112, i32 noundef %2, ptr noundef %124, ptr noundef %129) #31
  %131 = call i32 @llvm.read_register.i32(metadata !0) #31
  %132 = inttoptr i32 %131 to ptr
  %133 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %132) #28, !srcloc !16
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %116) #31, !srcloc !17
  %134 = icmp eq ptr %130, null
  br i1 %134, label %743, label %135

135:                                              ; preds = %115
  %136 = load i32, ptr %130, align 4
  %137 = lshr i32 %136, 30
  %138 = or i32 %137, 4
  %139 = getelementptr [71 x i32], ptr @vm_event_states, i32 0, i32 %138
  %140 = ptrtoint ptr %139 to i32
  %141 = call i32 @llvm.read_register.i32(metadata !0) #31
  %142 = inttoptr i32 %141 to ptr
  %143 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %142) #28, !srcloc !16
  %144 = add i32 %143, %140
  br label %736

145:                                              ; preds = %111, %107
  %146 = phi i32 [ 1, %111 ], [ %108, %107 ]
  %147 = load i1, ptr @rmqueue.__already_done, align 1
  %148 = xor i1 %147, true
  %149 = select i1 %31, i1 %148, i1 false
  br i1 %149, label %150, label %151, !prof !14

150:                                              ; preds = %145
  store i1 true, ptr @rmqueue.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3708, i32 noundef 9, ptr noundef null) #31
  br label %151

151:                                              ; preds = %150, %145
  %152 = getelementptr inbounds %struct.zone, ptr %52, i32 0, i32 22
  %153 = call i32 @_raw_spin_lock_irqsave(ptr noundef %152) #31
  %154 = getelementptr %struct.zone, ptr %52, i32 0, i32 37, i32 9
  %155 = and i32 %146, 1073741822
  %156 = icmp eq i32 %155, 4
  %157 = getelementptr [6 x [3 x i32]], ptr @fallbacks, i32 0, i32 %146, i32 0
  %158 = and i32 %146, -3
  %159 = icmp eq i32 %158, 0
  %160 = icmp eq i32 %146, 1
  %161 = getelementptr inbounds %struct.zone, ptr %52, i32 0, i32 11
  %162 = getelementptr [3 x i32], ptr %52, i32 0, i32 2
  %163 = getelementptr inbounds %struct.zone, ptr %52, i32 0, i32 21
  %164 = icmp slt i32 %146, 3
  br label %165

165:                                              ; preds = %720, %151
  br i1 %36, label %166, label %227

166:                                              ; preds = %207, %165
  %167 = phi i32 [ %208, %207 ], [ %1, %165 ]
  %168 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %167, i32 0, i32 3
  %169 = load volatile ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, %168
  %171 = getelementptr i8, ptr %169, i32 -4
  %172 = icmp eq ptr %171, null
  %173 = or i1 %170, %172
  br i1 %173, label %207, label %174

174:                                              ; preds = %166
  %175 = getelementptr i8, ptr %169, i32 4
  %176 = load ptr, ptr %175, align 4
  %177 = load ptr, ptr %169, align 4
  %178 = getelementptr inbounds %struct.list_head, ptr %177, i32 0, i32 1
  store ptr %176, ptr %178, align 4
  store volatile ptr %177, ptr %176, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %169, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %175, align 4
  %179 = getelementptr i8, ptr %169, i32 20
  %180 = load i32, ptr %179, align 4
  %181 = or i32 %180, 128
  store i32 %181, ptr %179, align 4
  %182 = getelementptr i8, ptr %169, i32 16
  store i32 0, ptr %182, align 4
  %183 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %167, i32 1
  %184 = load i32, ptr %183, align 4
  %185 = add i32 %184, -1
  store i32 %185, ptr %183, align 4
  %186 = icmp sgt i32 %167, %1
  br i1 %186, label %187, label %210

187:                                              ; preds = %174
  %188 = shl nuw nsw i32 1, %167
  br label %189

189:                                              ; preds = %189, %187
  %190 = phi i32 [ %192, %189 ], [ %188, %187 ]
  %191 = phi i32 [ %193, %189 ], [ %167, %187 ]
  %192 = lshr i32 %190, 1
  %193 = add nsw i32 %191, -1
  %194 = getelementptr %struct.page, ptr %171, i32 %192, i32 1
  %195 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %193, i32 0, i32 3
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.list_head, ptr %196, i32 0, i32 1
  store ptr %194, ptr %197, align 4
  store ptr %196, ptr %194, align 4
  %198 = getelementptr %struct.page, ptr %171, i32 %192, i32 1, i32 0, i32 0, i32 1
  store ptr %195, ptr %198, align 4
  store volatile ptr %194, ptr %195, align 4
  %199 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %193, i32 1
  %200 = load i32, ptr %199, align 4
  %201 = add i32 %200, 1
  store i32 %201, ptr %199, align 4
  %202 = getelementptr %struct.page, ptr %171, i32 %192, i32 1, i32 0, i32 3
  store i32 %193, ptr %202, align 4
  %203 = getelementptr %struct.page, ptr %171, i32 %192, i32 2
  %204 = load i32, ptr %203, align 4
  %205 = and i32 %204, -129
  store i32 %205, ptr %203, align 4
  %206 = icmp sgt i32 %193, %1
  br i1 %206, label %189, label %210

207:                                              ; preds = %166
  %208 = add i32 %167, 1
  %209 = icmp eq i32 %208, 12
  br i1 %209, label %227, label %166

210:                                              ; preds = %189, %174
  %211 = getelementptr i8, ptr %169, i32 12
  store i32 3, ptr %211, align 4
  %212 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_page_alloc_zone_locked, i32 0, i32 1), align 4
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %651

214:                                              ; preds = %210
  %215 = tail call ptr @llvm.thread.pointer() #31
  %216 = getelementptr inbounds %struct.thread_info, ptr %215, i32 0, i32 2
  %217 = load i32, ptr %216, align 8
  %218 = lshr i32 %217, 5
  %219 = getelementptr i32, ptr @__cpu_online_mask, i32 %218
  %220 = load volatile i32, ptr %219, align 4
  %221 = and i32 %217, 31
  %222 = shl nuw i32 1, %221
  %223 = and i32 %222, %220
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %651, label %225

225:                                              ; preds = %214
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !33
  %226 = call i32 @__traceiter_mm_page_alloc_zone_locked(ptr noundef null, ptr noundef nonnull %171, i32 noundef %1, i32 noundef %146) #31
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !34
  br label %651

227:                                              ; preds = %207, %165
  br i1 %18, label %280, label %228

228:                                              ; preds = %227
  %229 = load volatile i32, ptr %154, align 4
  %230 = call i32 @llvm.smax.i32(i32 %229, i32 0) #31
  %231 = load volatile i32, ptr %72, align 4
  %232 = call i32 @llvm.smax.i32(i32 %231, i32 0) #31
  %233 = lshr i32 %232, 1
  %234 = icmp ugt i32 %230, %233
  %235 = and i1 %37, %234
  br i1 %235, label %236, label %280

236:                                              ; preds = %277, %228
  %237 = phi i32 [ %278, %277 ], [ %1, %228 ]
  %238 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %237, i32 0, i32 4
  %239 = load volatile ptr, ptr %238, align 4
  %240 = icmp eq ptr %239, %238
  %241 = getelementptr i8, ptr %239, i32 -4
  %242 = icmp eq ptr %241, null
  %243 = or i1 %240, %242
  br i1 %243, label %277, label %244

244:                                              ; preds = %236
  %245 = getelementptr i8, ptr %239, i32 4
  %246 = load ptr, ptr %245, align 4
  %247 = load ptr, ptr %239, align 4
  %248 = getelementptr inbounds %struct.list_head, ptr %247, i32 0, i32 1
  store ptr %246, ptr %248, align 4
  store volatile ptr %247, ptr %246, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %239, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %245, align 4
  %249 = getelementptr i8, ptr %239, i32 20
  %250 = load i32, ptr %249, align 4
  %251 = or i32 %250, 128
  store i32 %251, ptr %249, align 4
  %252 = getelementptr i8, ptr %239, i32 16
  store i32 0, ptr %252, align 4
  %253 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %237, i32 1
  %254 = load i32, ptr %253, align 4
  %255 = add i32 %254, -1
  store i32 %255, ptr %253, align 4
  %256 = icmp sgt i32 %237, %1
  br i1 %256, label %257, label %629

257:                                              ; preds = %244
  %258 = shl nuw nsw i32 1, %237
  br label %259

259:                                              ; preds = %259, %257
  %260 = phi i32 [ %262, %259 ], [ %258, %257 ]
  %261 = phi i32 [ %263, %259 ], [ %237, %257 ]
  %262 = lshr i32 %260, 1
  %263 = add nsw i32 %261, -1
  %264 = getelementptr %struct.page, ptr %241, i32 %262, i32 1
  %265 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %263, i32 0, i32 4
  %266 = load ptr, ptr %265, align 4
  %267 = getelementptr inbounds %struct.list_head, ptr %266, i32 0, i32 1
  store ptr %264, ptr %267, align 4
  store ptr %266, ptr %264, align 4
  %268 = getelementptr %struct.page, ptr %241, i32 %262, i32 1, i32 0, i32 0, i32 1
  store ptr %265, ptr %268, align 4
  store volatile ptr %264, ptr %265, align 4
  %269 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %263, i32 1
  %270 = load i32, ptr %269, align 4
  %271 = add i32 %270, 1
  store i32 %271, ptr %269, align 4
  %272 = getelementptr %struct.page, ptr %241, i32 %262, i32 1, i32 0, i32 3
  store i32 %263, ptr %272, align 4
  %273 = getelementptr %struct.page, ptr %241, i32 %262, i32 2
  %274 = load i32, ptr %273, align 4
  %275 = and i32 %274, -129
  store i32 %275, ptr %273, align 4
  %276 = icmp sgt i32 %263, %1
  br i1 %276, label %259, label %629

277:                                              ; preds = %236
  %278 = add i32 %237, 1
  %279 = icmp eq i32 %278, 12
  br i1 %279, label %280, label %236

280:                                              ; preds = %277, %228, %227
  br label %281

281:                                              ; preds = %628, %280
  br i1 %37, label %282, label %373

282:                                              ; preds = %325, %281
  %283 = phi i32 [ %326, %325 ], [ %1, %281 ]
  %284 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %283
  %285 = getelementptr [6 x %struct.list_head], ptr %284, i32 0, i32 %146
  %286 = load volatile ptr, ptr %285, align 4
  %287 = icmp eq ptr %286, %285
  %288 = getelementptr i8, ptr %286, i32 -4
  %289 = icmp eq ptr %288, null
  %290 = or i1 %287, %289
  br i1 %290, label %325, label %291

291:                                              ; preds = %282
  %292 = getelementptr i8, ptr %286, i32 4
  %293 = load ptr, ptr %292, align 4
  %294 = load ptr, ptr %286, align 4
  %295 = getelementptr inbounds %struct.list_head, ptr %294, i32 0, i32 1
  store ptr %293, ptr %295, align 4
  store volatile ptr %294, ptr %293, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %286, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %292, align 4
  %296 = getelementptr i8, ptr %286, i32 20
  %297 = load i32, ptr %296, align 4
  %298 = or i32 %297, 128
  store i32 %298, ptr %296, align 4
  %299 = getelementptr i8, ptr %286, i32 16
  store i32 0, ptr %299, align 4
  %300 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %283, i32 1
  %301 = load i32, ptr %300, align 4
  %302 = add i32 %301, -1
  store i32 %302, ptr %300, align 4
  %303 = icmp sgt i32 %283, %1
  br i1 %303, label %304, label %629

304:                                              ; preds = %291
  %305 = shl nuw nsw i32 1, %283
  br label %306

306:                                              ; preds = %306, %304
  %307 = phi i32 [ %309, %306 ], [ %305, %304 ]
  %308 = phi i32 [ %310, %306 ], [ %283, %304 ]
  %309 = lshr i32 %307, 1
  %310 = add nsw i32 %308, -1
  %311 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %310
  %312 = getelementptr %struct.page, ptr %288, i32 %309, i32 1
  %313 = getelementptr [6 x %struct.list_head], ptr %311, i32 0, i32 %146
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr inbounds %struct.list_head, ptr %314, i32 0, i32 1
  store ptr %312, ptr %315, align 4
  store ptr %314, ptr %312, align 4
  %316 = getelementptr %struct.page, ptr %288, i32 %309, i32 1, i32 0, i32 0, i32 1
  store ptr %313, ptr %316, align 4
  store volatile ptr %312, ptr %313, align 4
  %317 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %310, i32 1
  %318 = load i32, ptr %317, align 4
  %319 = add i32 %318, 1
  store i32 %319, ptr %317, align 4
  %320 = getelementptr %struct.page, ptr %288, i32 %309, i32 1, i32 0, i32 3
  store i32 %310, ptr %320, align 4
  %321 = getelementptr %struct.page, ptr %288, i32 %309, i32 2
  %322 = load i32, ptr %321, align 4
  %323 = and i32 %322, -129
  store i32 %323, ptr %321, align 4
  %324 = icmp sgt i32 %310, %1
  br i1 %324, label %306, label %629

325:                                              ; preds = %282
  %326 = add i32 %283, 1
  %327 = icmp eq i32 %326, 12
  br i1 %327, label %328, label %282

328:                                              ; preds = %325
  br i1 %39, label %373, label %329

329:                                              ; preds = %370, %328
  %330 = phi i32 [ %371, %370 ], [ %1, %328 ]
  %331 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %330, i32 0, i32 4
  %332 = load volatile ptr, ptr %331, align 4
  %333 = icmp eq ptr %332, %331
  %334 = getelementptr i8, ptr %332, i32 -4
  %335 = icmp eq ptr %334, null
  %336 = or i1 %333, %335
  br i1 %336, label %370, label %337

337:                                              ; preds = %329
  %338 = getelementptr i8, ptr %332, i32 4
  %339 = load ptr, ptr %338, align 4
  %340 = load ptr, ptr %332, align 4
  %341 = getelementptr inbounds %struct.list_head, ptr %340, i32 0, i32 1
  store ptr %339, ptr %341, align 4
  store volatile ptr %340, ptr %339, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %332, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %338, align 4
  %342 = getelementptr i8, ptr %332, i32 20
  %343 = load i32, ptr %342, align 4
  %344 = or i32 %343, 128
  store i32 %344, ptr %342, align 4
  %345 = getelementptr i8, ptr %332, i32 16
  store i32 0, ptr %345, align 4
  %346 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %330, i32 1
  %347 = load i32, ptr %346, align 4
  %348 = add i32 %347, -1
  store i32 %348, ptr %346, align 4
  %349 = icmp sgt i32 %330, %1
  br i1 %349, label %350, label %629

350:                                              ; preds = %337
  %351 = shl nuw nsw i32 1, %330
  br label %352

352:                                              ; preds = %352, %350
  %353 = phi i32 [ %355, %352 ], [ %351, %350 ]
  %354 = phi i32 [ %356, %352 ], [ %330, %350 ]
  %355 = lshr i32 %353, 1
  %356 = add nsw i32 %354, -1
  %357 = getelementptr %struct.page, ptr %334, i32 %355, i32 1
  %358 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %356, i32 0, i32 4
  %359 = load ptr, ptr %358, align 4
  %360 = getelementptr inbounds %struct.list_head, ptr %359, i32 0, i32 1
  store ptr %357, ptr %360, align 4
  store ptr %359, ptr %357, align 4
  %361 = getelementptr %struct.page, ptr %334, i32 %355, i32 1, i32 0, i32 0, i32 1
  store ptr %358, ptr %361, align 4
  store volatile ptr %357, ptr %358, align 4
  %362 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %356, i32 1
  %363 = load i32, ptr %362, align 4
  %364 = add i32 %363, 1
  store i32 %364, ptr %362, align 4
  %365 = getelementptr %struct.page, ptr %334, i32 %355, i32 1, i32 0, i32 3
  store i32 %356, ptr %365, align 4
  %366 = getelementptr %struct.page, ptr %334, i32 %355, i32 2
  %367 = load i32, ptr %366, align 4
  %368 = and i32 %367, -129
  store i32 %368, ptr %366, align 4
  %369 = icmp sgt i32 %356, %1
  br i1 %369, label %352, label %629

370:                                              ; preds = %329
  %371 = add i32 %330, 1
  %372 = icmp eq i32 %371, 12
  br i1 %372, label %373, label %329

373:                                              ; preds = %370, %328, %281
  br i1 %40, label %756, label %374

374:                                              ; preds = %373
  %375 = load i32, ptr @page_group_by_mobility_disabled, align 4
  br label %376

376:                                              ; preds = %408, %374
  %377 = phi i32 [ 11, %374 ], [ %409, %408 ]
  %378 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %377
  %379 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %377, i32 1
  %380 = load i32, ptr %379, align 4
  %381 = icmp eq i32 %380, 0
  %382 = or i1 %156, %381
  br i1 %382, label %408, label %383

383:                                              ; preds = %376
  %384 = load i32, ptr %157, align 4
  br label %385

385:                                              ; preds = %393, %383
  %386 = phi i32 [ %384, %383 ], [ %396, %393 ]
  %387 = phi i32 [ 0, %383 ], [ %394, %393 ]
  %388 = getelementptr [6 x %struct.list_head], ptr %378, i32 0, i32 %386
  %389 = load volatile ptr, ptr %388, align 4
  %390 = icmp eq ptr %389, %388
  br i1 %390, label %393, label %391

391:                                              ; preds = %385
  %392 = icmp eq i32 %386, -1
  br i1 %392, label %408, label %398

393:                                              ; preds = %385
  %394 = add i32 %387, 1
  %395 = getelementptr [6 x [3 x i32]], ptr @fallbacks, i32 0, i32 %146, i32 %394
  %396 = load i32, ptr %395, align 4
  %397 = icmp eq i32 %396, 6
  br i1 %397, label %408, label %385

398:                                              ; preds = %391
  %399 = icmp ugt i32 %377, 4
  %400 = or i1 %159, %399
  %401 = icmp ne i32 %375, 0
  %402 = select i1 %400, i1 true, i1 %401
  %403 = xor i1 %402, true
  %404 = and i1 %160, %403
  %405 = icmp sgt i32 %377, %1
  %406 = select i1 %404, i1 %405, i1 false
  br i1 %406, label %407, label %431

407:                                              ; preds = %398
  br i1 %41, label %411, label %431

408:                                              ; preds = %393, %391, %376
  %409 = add i32 %377, -1
  %410 = icmp slt i32 %409, %1
  br i1 %410, label %756, label %376

411:                                              ; preds = %428, %407
  %412 = phi i32 [ %429, %428 ], [ %1, %407 ]
  %413 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %412
  %414 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %412, i32 1
  %415 = load i32, ptr %414, align 4
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %428, label %417

417:                                              ; preds = %411
  %418 = getelementptr [6 x %struct.list_head], ptr %413, i32 0, i32 2
  %419 = load volatile ptr, ptr %418, align 4
  %420 = icmp eq ptr %419, %418
  br i1 %420, label %425, label %421

421:                                              ; preds = %425, %417
  %422 = phi i32 [ 2, %417 ], [ 0, %425 ]
  %423 = icmp ugt i32 %412, 4
  %424 = select i1 %423, i1 true, i1 %401
  br label %431

425:                                              ; preds = %417
  %426 = load volatile ptr, ptr %413, align 4
  %427 = icmp eq ptr %426, %413
  br i1 %427, label %428, label %421

428:                                              ; preds = %425, %411
  %429 = add nsw i32 %412, 1
  %430 = icmp eq i32 %429, 12
  br i1 %430, label %431, label %411

431:                                              ; preds = %428, %421, %407, %398
  %432 = phi i1 [ %402, %398 ], [ false, %407 ], [ %424, %421 ], [ false, %428 ]
  %433 = phi i32 [ %377, %398 ], [ %377, %407 ], [ %412, %421 ], [ 11, %428 ]
  %434 = phi i32 [ %377, %398 ], [ 12, %407 ], [ %412, %421 ], [ 12, %428 ]
  %435 = phi i32 [ %386, %398 ], [ %386, %407 ], [ %422, %421 ], [ -1, %428 ]
  %436 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %433
  %437 = getelementptr [6 x %struct.list_head], ptr %436, i32 0, i32 %435
  %438 = load volatile ptr, ptr %437, align 4
  %439 = icmp eq ptr %438, %437
  %440 = getelementptr i8, ptr %438, i32 -4
  %441 = select i1 %439, ptr null, ptr %440
  %442 = getelementptr inbounds %struct.page, ptr %441, i32 0, i32 1, i32 0, i32 3
  %443 = load i32, ptr %442, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #31
  store i32 0, ptr %5, align 4, !annotation !30
  %444 = load ptr, ptr @mem_map, align 4
  %445 = ptrtoint ptr %441 to i32
  %446 = ptrtoint ptr %444 to i32
  %447 = sub i32 %445, %446
  %448 = ashr exact i32 %447, 5
  %449 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %450 = add i32 %448, %449
  %451 = load i32, ptr %441, align 4
  %452 = lshr i32 %451, 30
  %453 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %452, i32 9
  %454 = load ptr, ptr %453, align 8
  %455 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %452, i32 10
  %456 = load i32, ptr %455, align 4
  %457 = and i32 %456, -2048
  %458 = sub i32 %450, %457
  %459 = lshr i32 %458, 9
  %460 = lshr i32 %458, 14
  %461 = and i32 %459, 28
  %462 = getelementptr i32, ptr %454, i32 %460
  %463 = load i32, ptr %462, align 4
  %464 = lshr i32 %463, %461
  %465 = and i32 %464, 7
  %466 = icmp eq i32 %465, 3
  br i1 %466, label %602, label %467

467:                                              ; preds = %431
  %468 = icmp ugt i32 %443, 10
  br i1 %468, label %469, label %521

469:                                              ; preds = %467
  %470 = add i32 %443, -11
  %471 = shl nuw i32 1, %470
  br label %472

472:                                              ; preds = %518, %469
  %473 = phi i32 [ %375, %469 ], [ %520, %518 ]
  %474 = phi i32 [ %471, %469 ], [ %476, %518 ]
  %475 = phi ptr [ %441, %469 ], [ %519, %518 ]
  %476 = add i32 %474, -1
  %477 = icmp ne i32 %473, 0
  %478 = and i1 %164, %477
  br i1 %478, label %479, label %480, !prof !14

479:                                              ; preds = %472
  br label %480

480:                                              ; preds = %479, %472
  %481 = phi i32 [ 0, %479 ], [ %146, %472 ]
  %482 = load ptr, ptr @mem_map, align 4
  %483 = ptrtoint ptr %475 to i32
  %484 = ptrtoint ptr %482 to i32
  %485 = sub i32 %483, %484
  %486 = ashr exact i32 %485, 5
  %487 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %488 = add i32 %486, %487
  %489 = load i32, ptr %475, align 4
  %490 = lshr i32 %489, 30
  %491 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %490, i32 9
  %492 = load ptr, ptr %491, align 8
  %493 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %490, i32 10
  %494 = load i32, ptr %493, align 4
  %495 = and i32 %494, -2048
  %496 = sub i32 %488, %495
  %497 = lshr i32 %496, 9
  %498 = lshr i32 %496, 14
  %499 = and i32 %497, 28
  %500 = shl nuw nsw i32 7, %499
  %501 = shl i32 %481, %499
  %502 = getelementptr i32, ptr %492, i32 %498
  %503 = load volatile i32, ptr %502, align 4
  %504 = xor i32 %500, -1
  br label %505

505:                                              ; preds = %513, %480
  %506 = phi i32 [ %503, %480 ], [ %514, %513 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !10
  %507 = and i32 %506, %504
  %508 = or i32 %507, %501
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %502) #31, !srcloc !11
  br label %509

509:                                              ; preds = %509, %505
  %510 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %502, i32 %506, i32 %508) #31, !srcloc !12
  %511 = extractvalue { i32, i32 } %510, 0
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %509

513:                                              ; preds = %509
  %514 = extractvalue { i32, i32 } %510, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !13
  %515 = icmp eq i32 %506, %514
  br i1 %515, label %516, label %505

516:                                              ; preds = %513
  %517 = icmp eq i32 %476, 0
  br i1 %517, label %602, label %518

518:                                              ; preds = %516
  %519 = getelementptr %struct.page, ptr %475, i32 2048
  %520 = load i32, ptr @page_group_by_mobility_disabled, align 4
  br label %472

521:                                              ; preds = %467
  %522 = load i32, ptr @watermark_boost_factor, align 4
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %544, label %524

524:                                              ; preds = %521
  %525 = load volatile i32, ptr %161, align 4
  %526 = icmp ult i32 %525, 8192
  br i1 %526, label %544, label %527

527:                                              ; preds = %524
  %528 = load i32, ptr %162, align 8
  %529 = freeze i32 %528
  %530 = udiv i32 %529, 10000
  %531 = mul i32 %530, 10000
  %532 = sub i32 %529, %531
  %533 = mul i32 %530, %522
  %534 = mul i32 %532, %522
  %535 = udiv i32 %534, 10000
  %536 = add i32 %535, %533
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %544, label %538

538:                                              ; preds = %527
  %539 = call i32 @llvm.umax.i32(i32 %536, i32 2048) #31
  %540 = load i32, ptr %68, align 4
  %541 = add i32 %540, 2048
  %542 = call i32 @llvm.umin.i32(i32 %541, i32 %539) #31
  store i32 %542, ptr %68, align 4
  br i1 %43, label %544, label %543

543:                                              ; preds = %538
  call void @_set_bit(i32 noundef 0, ptr noundef %163) #31
  br label %544

544:                                              ; preds = %543, %538, %527, %524, %521
  br i1 %432, label %545, label %602

545:                                              ; preds = %544
  %546 = call i32 @move_freepages_block(ptr noundef nonnull %52, ptr noundef %441, i32 noundef %146, ptr noundef nonnull %5) #31
  br i1 %160, label %547, label %549

547:                                              ; preds = %545
  %548 = load i32, ptr %5, align 4
  br label %555

549:                                              ; preds = %545
  %550 = icmp eq i32 %465, 1
  br i1 %550, label %551, label %555

551:                                              ; preds = %549
  %552 = load i32, ptr %5, align 4
  %553 = add i32 %546, %552
  %554 = sub i32 2048, %553
  br label %555

555:                                              ; preds = %551, %549, %547
  %556 = phi i32 [ %548, %547 ], [ %554, %551 ], [ 0, %549 ]
  %557 = icmp eq i32 %546, 0
  br i1 %557, label %602, label %558

558:                                              ; preds = %555
  %559 = add i32 %556, %546
  %560 = icmp sgt i32 %559, 1023
  %561 = load i32, ptr @page_group_by_mobility_disabled, align 4
  %562 = icmp ne i32 %561, 0
  %563 = select i1 %560, i1 true, i1 %562
  br i1 %563, label %564, label %612

564:                                              ; preds = %558
  %565 = and i1 %164, %562
  br i1 %565, label %566, label %567, !prof !14

566:                                              ; preds = %564
  br label %567

567:                                              ; preds = %566, %564
  %568 = phi i32 [ 0, %566 ], [ %146, %564 ]
  %569 = load ptr, ptr @mem_map, align 4
  %570 = ptrtoint ptr %569 to i32
  %571 = sub i32 %445, %570
  %572 = ashr exact i32 %571, 5
  %573 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %574 = add i32 %572, %573
  %575 = load i32, ptr %441, align 4
  %576 = lshr i32 %575, 30
  %577 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %576, i32 9
  %578 = load ptr, ptr %577, align 8
  %579 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %576, i32 10
  %580 = load i32, ptr %579, align 4
  %581 = and i32 %580, -2048
  %582 = sub i32 %574, %581
  %583 = lshr i32 %582, 9
  %584 = lshr i32 %582, 14
  %585 = and i32 %583, 28
  %586 = shl nuw nsw i32 7, %585
  %587 = shl i32 %568, %585
  %588 = getelementptr i32, ptr %578, i32 %584
  %589 = load volatile i32, ptr %588, align 4
  %590 = xor i32 %586, -1
  br label %591

591:                                              ; preds = %599, %567
  %592 = phi i32 [ %589, %567 ], [ %600, %599 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !10
  %593 = and i32 %592, %590
  %594 = or i32 %593, %587
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %588) #31, !srcloc !11
  br label %595

595:                                              ; preds = %595, %591
  %596 = call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %588, i32 %592, i32 %594) #31, !srcloc !12
  %597 = extractvalue { i32, i32 } %596, 0
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %599, label %595

599:                                              ; preds = %595
  %600 = extractvalue { i32, i32 } %596, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !13
  %601 = icmp eq i32 %592, %600
  br i1 %601, label %612, label %591

602:                                              ; preds = %555, %544, %516, %431
  %603 = getelementptr %struct.zone, ptr %52, i32 0, i32 20, i32 %443
  %604 = getelementptr inbounds %struct.page, ptr %441, i32 0, i32 1
  %605 = getelementptr [6 x %struct.list_head], ptr %603, i32 0, i32 %146
  %606 = getelementptr inbounds %struct.page, ptr %441, i32 0, i32 1, i32 0, i32 0, i32 1
  %607 = load ptr, ptr %606, align 4
  %608 = load ptr, ptr %604, align 4
  %609 = getelementptr inbounds %struct.list_head, ptr %608, i32 0, i32 1
  store ptr %607, ptr %609, align 4
  store volatile ptr %608, ptr %607, align 4
  %610 = getelementptr [6 x %struct.list_head], ptr %603, i32 0, i32 %146, i32 1
  %611 = load ptr, ptr %610, align 4
  store ptr %604, ptr %610, align 4
  store ptr %605, ptr %604, align 4
  store ptr %611, ptr %606, align 4
  store volatile ptr %604, ptr %611, align 4
  br label %612

612:                                              ; preds = %602, %599, %558
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  %613 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_page_alloc_extfrag, i32 0, i32 1), align 4
  %614 = icmp sgt i32 %613, 0
  br i1 %614, label %615, label %628

615:                                              ; preds = %612
  %616 = tail call ptr @llvm.thread.pointer() #31
  %617 = getelementptr inbounds %struct.thread_info, ptr %616, i32 0, i32 2
  %618 = load i32, ptr %617, align 8
  %619 = lshr i32 %618, 5
  %620 = getelementptr i32, ptr @__cpu_online_mask, i32 %619
  %621 = load volatile i32, ptr %620, align 4
  %622 = and i32 %618, 31
  %623 = shl nuw i32 1, %622
  %624 = and i32 %623, %621
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %628, label %626

626:                                              ; preds = %615
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !31
  %627 = call i32 @__traceiter_mm_page_alloc_extfrag(ptr noundef null, ptr noundef %441, i32 noundef %1, i32 noundef %434, i32 noundef %146, i32 noundef %435) #31
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !32
  br label %628

628:                                              ; preds = %626, %615, %612
  br label %281

629:                                              ; preds = %352, %337, %306, %291, %259, %244
  %630 = phi ptr [ %239, %244 ], [ %286, %291 ], [ %332, %337 ], [ %332, %352 ], [ %286, %306 ], [ %239, %259 ]
  %631 = phi i32 [ 4, %244 ], [ %146, %291 ], [ 4, %337 ], [ 4, %352 ], [ %146, %306 ], [ 4, %259 ]
  %632 = phi ptr [ %241, %244 ], [ %288, %291 ], [ %334, %337 ], [ %334, %352 ], [ %288, %306 ], [ %241, %259 ]
  %633 = getelementptr i8, ptr %630, i32 12
  store i32 %631, ptr %633, align 4
  %634 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_page_alloc_zone_locked, i32 0, i32 1), align 4
  %635 = icmp sgt i32 %634, 0
  br i1 %635, label %636, label %649

636:                                              ; preds = %629
  %637 = tail call ptr @llvm.thread.pointer() #31
  %638 = getelementptr inbounds %struct.thread_info, ptr %637, i32 0, i32 2
  %639 = load i32, ptr %638, align 8
  %640 = lshr i32 %639, 5
  %641 = getelementptr i32, ptr @__cpu_online_mask, i32 %640
  %642 = load volatile i32, ptr %641, align 4
  %643 = and i32 %639, 31
  %644 = shl nuw i32 1, %643
  %645 = and i32 %644, %642
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %649, label %647

647:                                              ; preds = %636
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !33
  %648 = call i32 @__traceiter_mm_page_alloc_zone_locked(ptr noundef null, ptr noundef nonnull %632, i32 noundef %1, i32 noundef %146) #31
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !34
  br label %649

649:                                              ; preds = %647, %636, %629
  %650 = icmp eq ptr %632, null
  br i1 %650, label %756, label %651

651:                                              ; preds = %649, %225, %214, %210
  %652 = phi ptr [ %632, %649 ], [ %171, %210 ], [ %171, %214 ], [ %171, %225 ]
  br i1 %45, label %721, label %653

653:                                              ; preds = %651
  %654 = getelementptr %struct.page, ptr %652, i32 0, i32 2
  %655 = load volatile i32, ptr %654, align 4
  %656 = icmp eq i32 %655, -1
  br i1 %656, label %657, label %686, !prof !9

657:                                              ; preds = %653
  %658 = getelementptr %struct.page, ptr %652, i32 0, i32 1, i32 0, i32 1
  %659 = load ptr, ptr %658, align 4
  %660 = ptrtoint ptr %659 to i32
  %661 = getelementptr %struct.page, ptr %652, i32 0, i32 3
  %662 = load volatile i32, ptr %661, align 4
  %663 = or i32 %662, %660
  %664 = load i32, ptr %652, align 4
  %665 = and i32 %664, 4194303
  %666 = or i32 %663, %665
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %714, label %686, !prof !9

668:                                              ; preds = %714
  %669 = getelementptr %struct.page, ptr %652, i32 %716
  %670 = getelementptr %struct.page, ptr %652, i32 %716, i32 2
  %671 = load volatile i32, ptr %670, align 4
  %672 = icmp eq i32 %671, -1
  br i1 %672, label %673, label %684, !prof !9

673:                                              ; preds = %668
  %674 = getelementptr %struct.page, ptr %652, i32 %716, i32 1, i32 0, i32 1
  %675 = load ptr, ptr %674, align 4
  %676 = ptrtoint ptr %675 to i32
  %677 = getelementptr %struct.page, ptr %652, i32 %716, i32 3
  %678 = load volatile i32, ptr %677, align 4
  %679 = or i32 %678, %676
  %680 = load i32, ptr %669, align 4
  %681 = and i32 %680, 4194303
  %682 = or i32 %679, %681
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %714, label %684, !prof !9

684:                                              ; preds = %673, %668
  %685 = icmp slt i32 %716, %44
  br label %686

686:                                              ; preds = %684, %657, %653
  %687 = phi i1 [ true, %653 ], [ true, %657 ], [ %685, %684 ]
  %688 = phi i32 [ 0, %653 ], [ 0, %657 ], [ %716, %684 ]
  %689 = phi ptr [ %652, %653 ], [ %652, %657 ], [ %669, %684 ]
  %690 = phi ptr [ %654, %653 ], [ %654, %657 ], [ %670, %684 ]
  %691 = load volatile i32, ptr %690, align 4
  %692 = icmp eq i32 %691, -1
  br i1 %692, label %694, label %693, !prof !9

693:                                              ; preds = %686
  br label %694

694:                                              ; preds = %693, %686
  %695 = phi ptr [ @.str.49, %693 ], [ null, %686 ]
  %696 = getelementptr %struct.page, ptr %652, i32 %688, i32 1, i32 0, i32 1
  %697 = load ptr, ptr %696, align 4
  %698 = icmp eq ptr %697, null
  br i1 %698, label %700, label %699, !prof !9

699:                                              ; preds = %694
  br label %700

700:                                              ; preds = %699, %694
  %701 = phi ptr [ @.str.50, %699 ], [ %695, %694 ]
  %702 = getelementptr %struct.page, ptr %652, i32 %688, i32 3
  %703 = load volatile i32, ptr %702, align 4
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %706, label %705, !prof !9

705:                                              ; preds = %700
  br label %706

706:                                              ; preds = %705, %700
  %707 = phi ptr [ @.str.51, %705 ], [ %701, %700 ]
  %708 = load i32, ptr %689, align 4
  %709 = and i32 %708, 4194303
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %712, label %711, !prof !9

711:                                              ; preds = %706
  br label %712

712:                                              ; preds = %711, %706
  %713 = phi ptr [ %707, %706 ], [ @.str.52, %711 ]
  call fastcc void @bad_page(ptr noundef %689, ptr noundef %713) #31
  br i1 %687, label %720, label %721

714:                                              ; preds = %673, %657
  %715 = phi i32 [ %716, %673 ], [ 0, %657 ]
  %716 = add nuw nsw i32 %715, 1
  %717 = icmp eq i32 %716, %46
  br i1 %717, label %718, label %668

718:                                              ; preds = %714
  %719 = icmp slt i32 %716, %44
  br i1 %719, label %720, label %721

720:                                              ; preds = %718, %712
  br label %165

721:                                              ; preds = %718, %712, %651
  %722 = getelementptr inbounds %struct.page, ptr %652, i32 0, i32 1, i32 0, i32 2
  %723 = load i32, ptr %722, align 4
  call void @__mod_zone_page_state(ptr noundef nonnull %52, i32 noundef 0, i32 noundef %47) #31
  %724 = icmp eq i32 %723, 4
  br i1 %724, label %725, label %726, !prof !14

725:                                              ; preds = %721
  call void @__mod_zone_page_state(ptr noundef nonnull %52, i32 noundef 9, i32 noundef %47) #31
  br label %726

726:                                              ; preds = %725, %721
  call void @_raw_spin_unlock_irqrestore(ptr noundef %152, i32 noundef %153) #31
  %727 = load i32, ptr %652, align 4
  %728 = lshr i32 %727, 30
  %729 = or i32 %728, 4
  %730 = getelementptr [71 x i32], ptr @vm_event_states, i32 0, i32 %729
  %731 = ptrtoint ptr %730 to i32
  %732 = call i32 @llvm.read_register.i32(metadata !0) #31
  %733 = inttoptr i32 %732 to ptr
  %734 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %733) #28, !srcloc !16
  %735 = add i32 %734, %731
  br label %736

736:                                              ; preds = %726, %135
  %737 = phi i32 [ %735, %726 ], [ %144, %135 ]
  %738 = phi i32 [ %44, %726 ], [ 1, %135 ]
  %739 = phi ptr [ %652, %726 ], [ %130, %135 ]
  %740 = inttoptr i32 %737 to ptr
  %741 = load i32, ptr %740, align 4
  %742 = add i32 %741, %738
  store i32 %742, ptr %740, align 4
  br label %743

743:                                              ; preds = %736, %115
  %744 = phi ptr [ null, %115 ], [ %739, %736 ]
  %745 = getelementptr inbounds %struct.zone, ptr %52, i32 0, i32 21
  %746 = load volatile i32, ptr %745, align 4
  %747 = and i32 %746, 1
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %757, label %749

749:                                              ; preds = %743
  call void @_clear_bit(i32 noundef 0, ptr noundef %745) #31
  %750 = getelementptr inbounds %struct.zone, ptr %52, i32 0, i32 4
  %751 = load ptr, ptr %750, align 4
  %752 = ptrtoint ptr %52 to i32
  %753 = ptrtoint ptr %751 to i32
  %754 = sub i32 %752, %753
  %755 = sdiv exact i32 %754, 896
  call void @wakeup_kswapd(ptr noundef nonnull %52, i32 noundef 0, i32 noundef 0, i32 noundef %755) #31
  br label %757

756:                                              ; preds = %649, %408, %373
  call void @_raw_spin_unlock_irqrestore(ptr noundef %152, i32 noundef %153) #31
  br label %763

757:                                              ; preds = %749, %743
  %758 = icmp eq ptr %744, null
  br i1 %758, label %763, label %759

759:                                              ; preds = %757
  call fastcc void @prep_new_page(ptr noundef nonnull %744, i32 noundef %1, i32 noundef %0, i32 noundef %2)
  %760 = icmp ne i32 %1, 0
  %761 = and i1 %760, %33
  br i1 %761, label %762, label %779, !prof !14

762:                                              ; preds = %759
  call fastcc void @reserve_highatomic_pageblock(ptr noundef nonnull %744, ptr noundef nonnull %52)
  br label %779

763:                                              ; preds = %757, %756, %106, %95, %63, %57
  %764 = phi ptr [ %53, %756 ], [ %53, %757 ], [ %53, %57 ], [ %64, %63 ], [ %53, %106 ], [ %53, %95 ]
  %765 = getelementptr %struct.zoneref, ptr %54, i32 1
  %766 = load i32, ptr %13, align 4
  %767 = load ptr, ptr %49, align 4
  %768 = icmp eq ptr %767, null
  br i1 %768, label %769, label %773, !prof !9

769:                                              ; preds = %763
  %770 = getelementptr %struct.zoneref, ptr %54, i32 1, i32 1
  %771 = load i32, ptr %770, align 4
  %772 = icmp ugt i32 %771, %766
  br i1 %772, label %773, label %775, !prof !14

773:                                              ; preds = %769, %763
  %774 = call ptr @__next_zones_zonelist(ptr noundef %765, i32 noundef %766, ptr noundef %767) #31
  br label %775

775:                                              ; preds = %773, %769
  %776 = phi ptr [ %774, %773 ], [ %765, %769 ]
  %777 = load ptr, ptr %776, align 4
  %778 = icmp eq ptr %777, null
  br i1 %778, label %779, label %51

779:                                              ; preds = %775, %762, %759, %4
  %780 = phi ptr [ %744, %762 ], [ %744, %759 ], [ null, %4 ], [ null, %775 ]
  ret ptr %780
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__alloc_pages_slowpath(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 {
  %4 = alloca %struct.oom_control, align 4
  %5 = alloca i32, align 4
  %6 = and i32 %0, 1024
  %7 = icmp eq i32 %6, 0
  %8 = icmp ugt i32 %1, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #31
  store i32 0, ptr %5, align 4, !annotation !30
  %9 = and i32 %0, 1536
  %10 = icmp eq i32 %9, 1536
  %11 = load i1, ptr @__alloc_pages_slowpath.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !14

14:                                               ; preds = %3
  store i1 true, ptr @__alloc_pages_slowpath.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4887, i32 noundef 9, ptr noundef null) #31
  br label %15

15:                                               ; preds = %14, %3
  %16 = and i32 %0, -513
  %17 = select i1 %10, i32 %16, i32 %0
  %18 = and i32 %17, 2080
  %19 = or i32 %18, 64
  %20 = and i32 %17, 512
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = lshr i32 %17, 15
  %24 = and i32 %23, 16
  %25 = or i32 %24, %18
  %26 = xor i32 %25, 16
  br label %45

27:                                               ; preds = %15
  %28 = tail call ptr @llvm.thread.pointer() #31
  %29 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 14
  %30 = load i32, ptr %29, align 16
  %31 = icmp sgt i32 %30, 99
  br i1 %31, label %45, label %32, !prof !9

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %34, 15728640
  %36 = load volatile i32, ptr %33, align 4
  %37 = and i32 %36, 983040
  %38 = or i32 %37, %35
  %39 = load volatile i32, ptr %33, align 4
  %40 = and i32 %39, 256
  %41 = or i32 %38, %40
  %42 = icmp eq i32 %41, 0
  %43 = or i32 %18, 80
  %44 = select i1 %42, i32 %43, i32 %19
  br label %45

45:                                               ; preds = %32, %27, %22
  %46 = phi i32 [ %26, %22 ], [ %19, %27 ], [ %44, %32 ]
  %47 = load i32, ptr @page_group_by_mobility_disabled, align 4
  %48 = icmp eq i32 %47, 0
  %49 = and i32 %17, 24
  %50 = icmp eq i32 %49, 8
  %51 = and i1 %50, %48
  %52 = or i32 %46, 128
  %53 = select i1 %51, i32 %52, i32 %46
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr inbounds %struct.alloc_context, ptr %2, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.alloc_context, ptr %2, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %64, !prof !9

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.zoneref, ptr %54, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp ugt i32 %62, %56
  br i1 %63, label %64, label %66, !prof !14

64:                                               ; preds = %60, %45
  %65 = tail call ptr @__next_zones_zonelist(ptr noundef %54, i32 noundef %56, ptr noundef %58) #31
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi ptr [ %65, %64 ], [ %54, %60 ]
  %68 = getelementptr inbounds %struct.alloc_context, ptr %2, i32 0, i32 2
  store ptr %67, ptr %68, align 4
  %69 = load ptr, ptr %67, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %560, label %71

71:                                               ; preds = %66
  %72 = and i32 %53, 2048
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %113, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %55, align 4
  %76 = load ptr, ptr %2, align 4
  %77 = load ptr, ptr %57, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %83, !prof !9

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.zoneref, ptr %76, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp ugt i32 %81, %75
  br i1 %82, label %83, label %85, !prof !14

83:                                               ; preds = %79, %74
  %84 = tail call ptr @__next_zones_zonelist(ptr noundef %76, i32 noundef %75, ptr noundef %77) #31
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi ptr [ %84, %83 ], [ %76, %79 ]
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %113, label %89

89:                                               ; preds = %109, %85
  %90 = phi ptr [ %111, %109 ], [ %87, %85 ]
  %91 = phi ptr [ %99, %109 ], [ null, %85 ]
  %92 = phi ptr [ %110, %109 ], [ %86, %85 ]
  %93 = getelementptr inbounds %struct.zone, ptr %90, i32 0, i32 4
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %91, %94
  br i1 %95, label %98, label %96

96:                                               ; preds = %89
  tail call void @wakeup_kswapd(ptr noundef nonnull %90, i32 noundef %17, i32 noundef %1, i32 noundef %75) #31
  %97 = load ptr, ptr %93, align 4
  br label %98

98:                                               ; preds = %96, %89
  %99 = phi ptr [ %97, %96 ], [ %91, %89 ]
  %100 = getelementptr %struct.zoneref, ptr %92, i32 1
  %101 = load ptr, ptr %57, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %107, !prof !9

103:                                              ; preds = %98
  %104 = getelementptr %struct.zoneref, ptr %92, i32 1, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = icmp ugt i32 %105, %75
  br i1 %106, label %107, label %109, !prof !14

107:                                              ; preds = %103, %98
  %108 = tail call ptr @__next_zones_zonelist(ptr noundef %100, i32 noundef %75, ptr noundef %101) #31
  br label %109

109:                                              ; preds = %107, %103
  %110 = phi ptr [ %108, %107 ], [ %100, %103 ]
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %89

113:                                              ; preds = %109, %85, %71
  %114 = tail call fastcc ptr @get_page_from_freelist(i32 noundef %17, i32 noundef %1, i32 noundef %53, ptr noundef %2)
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %598

116:                                              ; preds = %113
  br i1 %7, label %173, label %117

117:                                              ; preds = %116
  br i1 %8, label %124, label %118

118:                                              ; preds = %117
  %119 = icmp eq i32 %1, 0
  br i1 %119, label %173, label %120

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.alloc_context, ptr %2, i32 0, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %173, label %124

124:                                              ; preds = %120, %117
  %125 = and i32 %17, 524288
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %162, !prof !9

127:                                              ; preds = %124
  %128 = and i32 %17, 131072
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %173

130:                                              ; preds = %127
  %131 = tail call ptr @llvm.thread.pointer() #31
  %132 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 1
  %133 = load volatile i32, ptr %132, align 4
  %134 = and i32 %133, 256
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.task_struct, ptr %131, i32 0, i32 4
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, 2048
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %173

141:                                              ; preds = %136, %130
  %142 = load volatile i32, ptr %132, align 4
  %143 = and i32 %142, 15728640
  %144 = load volatile i32, ptr %132, align 4
  %145 = and i32 %144, 983040
  %146 = or i32 %145, %143
  %147 = load volatile i32, ptr %132, align 4
  %148 = and i32 %147, 65280
  %149 = or i32 %146, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %141
  %152 = getelementptr inbounds %struct.task_struct, ptr %131, i32 0, i32 4
  %153 = load i32, ptr %152, align 4
  %154 = and i32 %153, 2048
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %173

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.task_struct, ptr %131, i32 0, i32 93
  %158 = load ptr, ptr %157, align 16
  %159 = getelementptr inbounds %struct.signal_struct, ptr %158, i32 0, i32 54
  %160 = load ptr, ptr %159, align 8
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %173

162:                                              ; preds = %156, %141, %124
  %163 = call fastcc ptr @__alloc_pages_direct_compact(i32 noundef %17, i32 noundef %1, i32 noundef %53, ptr noundef %2, i32 noundef 2, ptr noundef nonnull %5)
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %598

165:                                              ; preds = %162
  %166 = and i32 %17, 65536
  %167 = icmp ne i32 %166, 0
  %168 = and i1 %8, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = load i32, ptr %5, align 4
  %171 = add i32 %170, -1
  %172 = icmp ult i32 %171, 2
  br i1 %172, label %560, label %173

173:                                              ; preds = %594, %169, %165, %156, %151, %136, %127, %120, %118, %116
  %174 = phi i32 [ %561, %594 ], [ 1, %116 ], [ 1, %165 ], [ 1, %118 ], [ 1, %120 ], [ 2, %169 ], [ 1, %127 ], [ 1, %136 ], [ 1, %151 ], [ 1, %156 ]
  %175 = phi i32 [ %562, %594 ], [ 0, %116 ], [ 0, %165 ], [ 0, %118 ], [ 0, %120 ], [ 0, %169 ], [ 0, %127 ], [ 0, %136 ], [ 0, %151 ], [ 0, %156 ]
  %176 = phi i32 [ %563, %594 ], [ 0, %116 ], [ 0, %165 ], [ 0, %118 ], [ 0, %120 ], [ 0, %169 ], [ 0, %127 ], [ 0, %136 ], [ 0, %151 ], [ 0, %156 ]
  %177 = phi i32 [ %564, %594 ], [ %53, %116 ], [ %53, %165 ], [ %53, %118 ], [ %53, %120 ], [ %53, %169 ], [ %53, %127 ], [ %53, %136 ], [ %53, %151 ], [ %53, %156 ]
  %178 = and i32 %17, 524288
  %179 = icmp eq i32 %178, 0
  %180 = and i32 %17, 131072
  %181 = icmp eq i32 %180, 0
  %182 = and i32 %17, 65536
  %183 = icmp ne i32 %182, 0
  %184 = and i32 %17, 16384
  %185 = icmp eq i32 %184, 0
  %186 = and i1 %8, %185
  %187 = icmp ult i32 %1, 4
  %188 = icmp eq i32 %1, 0
  %189 = icmp slt i32 %1, 4
  %190 = select i1 %189, i32 16, i32 4
  %191 = icmp sgt i32 %1, 3
  %192 = zext i1 %191 to i32
  %193 = getelementptr inbounds %struct.oom_control, ptr %4, i32 0, i32 1
  %194 = getelementptr inbounds %struct.oom_control, ptr %4, i32 0, i32 2
  %195 = getelementptr inbounds %struct.oom_control, ptr %4, i32 0, i32 3
  %196 = getelementptr inbounds %struct.oom_control, ptr %4, i32 0, i32 4
  %197 = getelementptr inbounds %struct.oom_control, ptr %4, i32 0, i32 5
  %198 = and i32 %17, -1049601
  %199 = or i32 %198, 1048576
  %200 = and i32 %17, 2113536
  %201 = and i32 %17, 32768
  %202 = icmp ne i32 %201, 0
  %203 = icmp eq i32 %201, 0
  %204 = or i1 %183, %186
  br label %205

205:                                              ; preds = %551, %173
  %206 = phi i32 [ %174, %173 ], [ %552, %551 ]
  %207 = phi i32 [ %175, %173 ], [ %553, %551 ]
  %208 = phi i32 [ %176, %173 ], [ %554, %551 ]
  %209 = phi i32 [ %177, %173 ], [ %310, %551 ]
  br label %210

210:                                              ; preds = %443, %205
  %211 = phi i32 [ %208, %205 ], [ %444, %443 ]
  %212 = phi i32 [ %209, %205 ], [ %310, %443 ]
  %213 = and i32 %212, 2048
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %254, label %215

215:                                              ; preds = %210
  %216 = load i32, ptr %55, align 4
  %217 = load ptr, ptr %2, align 4
  %218 = load ptr, ptr %57, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %224, !prof !9

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.zoneref, ptr %217, i32 0, i32 1
  %222 = load i32, ptr %221, align 4
  %223 = icmp ugt i32 %222, %216
  br i1 %223, label %224, label %226, !prof !14

224:                                              ; preds = %220, %215
  %225 = call ptr @__next_zones_zonelist(ptr noundef %217, i32 noundef %216, ptr noundef %218) #31
  br label %226

226:                                              ; preds = %224, %220
  %227 = phi ptr [ %225, %224 ], [ %217, %220 ]
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %254, label %230

230:                                              ; preds = %250, %226
  %231 = phi ptr [ %252, %250 ], [ %228, %226 ]
  %232 = phi ptr [ %240, %250 ], [ null, %226 ]
  %233 = phi ptr [ %251, %250 ], [ %227, %226 ]
  %234 = getelementptr inbounds %struct.zone, ptr %231, i32 0, i32 4
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %232, %235
  br i1 %236, label %239, label %237

237:                                              ; preds = %230
  call void @wakeup_kswapd(ptr noundef nonnull %231, i32 noundef %17, i32 noundef %1, i32 noundef %216) #31
  %238 = load ptr, ptr %234, align 4
  br label %239

239:                                              ; preds = %237, %230
  %240 = phi ptr [ %238, %237 ], [ %232, %230 ]
  %241 = getelementptr %struct.zoneref, ptr %233, i32 1
  %242 = load ptr, ptr %57, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %248, !prof !9

244:                                              ; preds = %239
  %245 = getelementptr %struct.zoneref, ptr %233, i32 1, i32 1
  %246 = load i32, ptr %245, align 4
  %247 = icmp ugt i32 %246, %216
  br i1 %247, label %248, label %250, !prof !14

248:                                              ; preds = %244, %239
  %249 = call ptr @__next_zones_zonelist(ptr noundef %241, i32 noundef %216, ptr noundef %242) #31
  br label %250

250:                                              ; preds = %248, %244
  %251 = phi ptr [ %249, %248 ], [ %241, %244 ]
  %252 = load ptr, ptr %251, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %230

254:                                              ; preds = %250, %226, %210
  br i1 %179, label %255, label %295, !prof !9

255:                                              ; preds = %254
  br i1 %181, label %256, label %288

256:                                              ; preds = %255
  %257 = tail call ptr @llvm.thread.pointer() #31
  %258 = getelementptr inbounds %struct.thread_info, ptr %257, i32 0, i32 1
  %259 = load volatile i32, ptr %258, align 4
  %260 = and i32 %259, 256
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.task_struct, ptr %257, i32 0, i32 4
  %264 = load i32, ptr %263, align 4
  %265 = and i32 %264, 2048
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %288

267:                                              ; preds = %262, %256
  %268 = load volatile i32, ptr %258, align 4
  %269 = and i32 %268, 15728640
  %270 = load volatile i32, ptr %258, align 4
  %271 = and i32 %270, 983040
  %272 = or i32 %271, %269
  %273 = load volatile i32, ptr %258, align 4
  %274 = and i32 %273, 65280
  %275 = or i32 %272, %274
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %295

277:                                              ; preds = %267
  %278 = getelementptr inbounds %struct.task_struct, ptr %257, i32 0, i32 4
  %279 = load i32, ptr %278, align 4
  %280 = and i32 %279, 2048
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.task_struct, ptr %257, i32 0, i32 93
  %284 = load ptr, ptr %283, align 16
  %285 = getelementptr inbounds %struct.signal_struct, ptr %284, i32 0, i32 54
  %286 = load ptr, ptr %285, align 8
  %287 = icmp eq ptr %286, null
  br i1 %287, label %295, label %288

288:                                              ; preds = %282, %277, %262, %255
  %289 = phi i32 [ 8, %282 ], [ 4, %277 ], [ 4, %262 ], [ 4, %255 ]
  %290 = load i32, ptr @page_group_by_mobility_disabled, align 4
  %291 = icmp eq i32 %290, 0
  %292 = and i1 %50, %291
  %293 = or i32 %289, 128
  %294 = select i1 %292, i32 %293, i32 %289
  br label %298

295:                                              ; preds = %282, %267, %254
  %296 = and i32 %212, 64
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %309

298:                                              ; preds = %295, %288
  %299 = phi i32 [ %294, %288 ], [ %212, %295 ]
  store ptr null, ptr %57, align 4
  %300 = load ptr, ptr %2, align 4
  %301 = load i32, ptr %55, align 4
  %302 = getelementptr inbounds %struct.zoneref, ptr %300, i32 0, i32 1
  %303 = load i32, ptr %302, align 4
  %304 = icmp ugt i32 %303, %301
  br i1 %304, label %305, label %307, !prof !14

305:                                              ; preds = %298
  %306 = call ptr @__next_zones_zonelist(ptr noundef %300, i32 noundef %301, ptr noundef null) #31
  br label %307

307:                                              ; preds = %305, %298
  %308 = phi ptr [ %306, %305 ], [ %300, %298 ]
  store ptr %308, ptr %68, align 4
  br label %309

309:                                              ; preds = %307, %295
  %310 = phi i32 [ %212, %295 ], [ %299, %307 ]
  %311 = call fastcc ptr @get_page_from_freelist(i32 noundef %17, i32 noundef %1, i32 noundef %310, ptr noundef %2)
  %312 = icmp eq ptr %311, null
  br i1 %312, label %313, label %598

313:                                              ; preds = %309
  br i1 %7, label %555, label %314

314:                                              ; preds = %313
  %315 = tail call ptr @llvm.thread.pointer() #31
  %316 = getelementptr inbounds %struct.task_struct, ptr %315, i32 0, i32 4
  %317 = load i32, ptr %316, align 4
  %318 = and i32 %317, 2048
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %555

320:                                              ; preds = %314
  %321 = call i32 @__cond_resched() #31
  %322 = load i32, ptr %316, align 4
  %323 = and i32 %322, 2048
  %324 = or i32 %322, 2048
  store i32 %324, ptr %316, align 4
  %325 = load ptr, ptr %2, align 4
  %326 = load ptr, ptr %57, align 4
  %327 = call i32 @try_to_free_pages(ptr noundef %325, i32 noundef %1, i32 noundef %17, ptr noundef %326) #31
  %328 = load i32, ptr %316, align 4
  %329 = and i32 %328, -2049
  %330 = or i32 %329, %323
  store i32 %330, ptr %316, align 4
  %331 = call i32 @__cond_resched() #31
  %332 = icmp eq i32 %327, 0
  br i1 %332, label %340, label %333, !prof !14

333:                                              ; preds = %320
  %334 = call fastcc ptr @get_page_from_freelist(i32 noundef %17, i32 noundef %1, i32 noundef %310, ptr noundef %2) #31
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %598

336:                                              ; preds = %333
  %337 = call fastcc zeroext i1 @unreserve_highatomic_pageblock(ptr noundef %2, i1 noundef zeroext false) #31
  call fastcc void @__drain_all_pages(ptr noundef null, i1 noundef zeroext false) #31
  %338 = call fastcc ptr @get_page_from_freelist(i32 noundef %17, i32 noundef %1, i32 noundef %310, ptr noundef %2) #31
  %339 = icmp eq ptr %338, null
  br i1 %339, label %340, label %598

340:                                              ; preds = %336, %320
  %341 = call fastcc ptr @__alloc_pages_direct_compact(i32 noundef %17, i32 noundef %1, i32 noundef %310, ptr noundef %2, i32 noundef %206, ptr noundef nonnull %5)
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %598

343:                                              ; preds = %340
  br i1 %204, label %555, label %344

344:                                              ; preds = %343
  %345 = icmp ne i32 %327, 0
  %346 = and i1 %187, %345
  br i1 %346, label %352, label %347

347:                                              ; preds = %344
  %348 = add i32 %211, 1
  %349 = icmp sgt i32 %348, 16
  br i1 %349, label %350, label %352

350:                                              ; preds = %347
  %351 = call fastcc zeroext i1 @unreserve_highatomic_pageblock(ptr noundef %2, i1 noundef zeroext true) #31
  br i1 %351, label %443, label %445

352:                                              ; preds = %347, %344
  %353 = phi i32 [ %348, %347 ], [ 0, %344 ]
  %354 = load ptr, ptr %2, align 4
  %355 = load i32, ptr %55, align 4
  %356 = load ptr, ptr %57, align 4
  %357 = icmp eq ptr %356, null
  br i1 %357, label %358, label %362, !prof !9

358:                                              ; preds = %352
  %359 = getelementptr inbounds %struct.zoneref, ptr %354, i32 0, i32 1
  %360 = load i32, ptr %359, align 4
  %361 = icmp ugt i32 %360, %355
  br i1 %361, label %362, label %364, !prof !14

362:                                              ; preds = %358, %352
  %363 = call ptr @__next_zones_zonelist(ptr noundef %354, i32 noundef %355, ptr noundef %356) #31
  br label %364

364:                                              ; preds = %362, %358
  %365 = phi ptr [ %363, %362 ], [ %354, %358 ]
  %366 = load ptr, ptr %365, align 4
  %367 = icmp eq ptr %366, null
  br i1 %367, label %434, label %368

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.thread_info, ptr %315, i32 0, i32 2
  br label %370

370:                                              ; preds = %430, %368
  %371 = phi ptr [ %432, %430 ], [ %366, %368 ]
  %372 = phi ptr [ %431, %430 ], [ %365, %368 ]
  %373 = load i32, ptr %371, align 64
  %374 = getelementptr inbounds %struct.zone, ptr %371, i32 0, i32 1
  %375 = load i32, ptr %374, align 4
  %376 = add i32 %375, %373
  %377 = call i32 @zone_reclaimable_pages(ptr noundef nonnull %371) #31
  %378 = getelementptr inbounds %struct.zone, ptr %371, i32 0, i32 37
  %379 = load volatile i32, ptr %378, align 4
  %380 = load i32, ptr @nr_cpu_ids, align 4
  %381 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #32
  %382 = icmp ult i32 %381, %380
  br i1 %382, label %383, label %399

383:                                              ; preds = %370
  %384 = getelementptr inbounds %struct.zone, ptr %371, i32 0, i32 6
  %385 = load ptr, ptr %384, align 4
  %386 = ptrtoint ptr %385 to i32
  br label %387

387:                                              ; preds = %387, %383
  %388 = phi i32 [ %381, %383 ], [ %397, %387 ]
  %389 = phi i32 [ %379, %383 ], [ %396, %387 ]
  %390 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %388
  %391 = load i32, ptr %390, align 4
  %392 = add i32 %391, %386
  %393 = inttoptr i32 %392 to ptr
  %394 = load i8, ptr %393, align 1
  %395 = sext i8 %394 to i32
  %396 = add i32 %389, %395
  %397 = call i32 @cpumask_next(i32 noundef %388, ptr noundef nonnull @__cpu_online_mask) #32
  %398 = icmp ult i32 %397, %380
  br i1 %398, label %387, label %399

399:                                              ; preds = %387, %370
  %400 = phi i32 [ %379, %370 ], [ %396, %387 ]
  %401 = call i32 @llvm.smax.i32(i32 %400, i32 0) #31
  %402 = add i32 %401, %377
  %403 = load i32, ptr %55, align 4
  %404 = call zeroext i1 @__zone_watermark_ok(ptr noundef nonnull %371, i32 noundef %1, i32 noundef %376, i32 noundef %403, i32 noundef %310, i32 noundef %402) #31
  %405 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_reclaim_retry_zone, i32 0, i32 1), align 4
  %406 = icmp sgt i32 %405, 0
  br i1 %406, label %407, label %418

407:                                              ; preds = %399
  %408 = load i32, ptr %369, align 8
  %409 = lshr i32 %408, 5
  %410 = getelementptr i32, ptr @__cpu_online_mask, i32 %409
  %411 = load volatile i32, ptr %410, align 4
  %412 = and i32 %408, 31
  %413 = shl nuw i32 1, %412
  %414 = and i32 %413, %411
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %418, label %416

416:                                              ; preds = %407
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !42
  %417 = call i32 @__traceiter_reclaim_retry_zone(ptr noundef null, ptr noundef %372, i32 noundef %1, i32 noundef %377, i32 noundef %402, i32 noundef %376, i32 noundef %353, i1 noundef zeroext %404) #31
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !43
  br label %418

418:                                              ; preds = %416, %407, %399
  br i1 %404, label %434, label %419

419:                                              ; preds = %418
  %420 = getelementptr %struct.zoneref, ptr %372, i32 1
  %421 = load i32, ptr %55, align 4
  %422 = load ptr, ptr %57, align 4
  %423 = icmp eq ptr %422, null
  br i1 %423, label %424, label %428, !prof !9

424:                                              ; preds = %419
  %425 = getelementptr %struct.zoneref, ptr %372, i32 1, i32 1
  %426 = load i32, ptr %425, align 4
  %427 = icmp ugt i32 %426, %421
  br i1 %427, label %428, label %430, !prof !14

428:                                              ; preds = %424, %419
  %429 = call ptr @__next_zones_zonelist(ptr noundef %420, i32 noundef %421, ptr noundef %422) #31
  br label %430

430:                                              ; preds = %428, %424
  %431 = phi ptr [ %429, %428 ], [ %420, %424 ]
  %432 = load ptr, ptr %431, align 4
  %433 = icmp eq ptr %432, null
  br i1 %433, label %434, label %370

434:                                              ; preds = %430, %418, %364
  %435 = phi i1 [ false, %364 ], [ %404, %418 ], [ %404, %430 ]
  %436 = load i32, ptr %316, align 4
  %437 = and i32 %436, 32
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %441

439:                                              ; preds = %434
  %440 = call i32 @__cond_resched() #31
  br i1 %435, label %443, label %445

441:                                              ; preds = %434
  %442 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #31
  br i1 %435, label %443, label %445

443:                                              ; preds = %441, %439, %350
  %444 = phi i32 [ %353, %441 ], [ %348, %350 ], [ %353, %439 ]
  br label %210

445:                                              ; preds = %441, %439, %350
  %446 = phi i32 [ %348, %350 ], [ %353, %441 ], [ %353, %439 ]
  br i1 %332, label %492, label %447

447:                                              ; preds = %445
  %448 = load i32, ptr %5, align 4
  br i1 %188, label %492, label %449

449:                                              ; preds = %447
  %450 = load volatile i32, ptr %315, align 4
  %451 = and i32 %450, 1
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %458, label %453

453:                                              ; preds = %449
  %454 = getelementptr inbounds %struct.task_struct, ptr %315, i32 0, i32 98, i32 1
  %455 = load i32, ptr %454, align 4
  %456 = and i32 %455, 256
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %492

458:                                              ; preds = %453, %449
  switch i32 %448, label %463 [
    i32 8, label %459
    i32 5, label %466
    i32 1, label %461
    i32 2, label %466
    i32 7, label %466
    i32 6, label %466
  ]

459:                                              ; preds = %458
  %460 = add i32 %207, 1
  br label %463

461:                                              ; preds = %458
  %462 = call zeroext i1 @compaction_zonelist_suitable(ptr noundef %2, i32 noundef %1, i32 noundef %310) #31
  br label %472

463:                                              ; preds = %459, %458
  %464 = phi i32 [ %207, %458 ], [ %460, %459 ]
  %465 = icmp sgt i32 %464, %190
  br i1 %465, label %466, label %472

466:                                              ; preds = %463, %458, %458, %458, %458
  %467 = phi i32 [ %207, %458 ], [ %207, %458 ], [ %207, %458 ], [ %207, %458 ], [ %464, %463 ]
  %468 = phi i32 [ 16, %458 ], [ 16, %458 ], [ 16, %458 ], [ 16, %458 ], [ %190, %463 ]
  %469 = icmp ugt i32 %206, %192
  br i1 %469, label %470, label %472

470:                                              ; preds = %466
  %471 = add i32 %206, -1
  br label %472

472:                                              ; preds = %470, %466, %463, %461
  %473 = phi i32 [ %471, %470 ], [ %206, %466 ], [ %206, %463 ], [ %206, %461 ]
  %474 = phi i32 [ 0, %470 ], [ %467, %466 ], [ %464, %463 ], [ %207, %461 ]
  %475 = phi i32 [ %468, %470 ], [ %468, %466 ], [ %190, %463 ], [ 16, %461 ]
  %476 = phi i1 [ true, %470 ], [ false, %466 ], [ true, %463 ], [ %462, %461 ]
  %477 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_compact_retry, i32 0, i32 1), align 4
  %478 = icmp sgt i32 %477, 0
  br i1 %478, label %479, label %491

479:                                              ; preds = %472
  %480 = getelementptr inbounds %struct.thread_info, ptr %315, i32 0, i32 2
  %481 = load i32, ptr %480, align 8
  %482 = lshr i32 %481, 5
  %483 = getelementptr i32, ptr @__cpu_online_mask, i32 %482
  %484 = load volatile i32, ptr %483, align 4
  %485 = and i32 %481, 31
  %486 = shl nuw i32 1, %485
  %487 = and i32 %486, %484
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %491, label %489

489:                                              ; preds = %479
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !44
  %490 = call i32 @__traceiter_compact_retry(ptr noundef null, i32 noundef %1, i32 noundef %206, i32 noundef %448, i32 noundef %207, i32 noundef %475, i1 noundef zeroext %476) #31
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !45
  br i1 %476, label %551, label %492

491:                                              ; preds = %479, %472
  br i1 %476, label %551, label %492

492:                                              ; preds = %491, %489, %453, %447, %445
  %493 = phi i32 [ %206, %445 ], [ %473, %491 ], [ %473, %489 ], [ %206, %447 ], [ %206, %453 ]
  %494 = phi i32 [ %207, %445 ], [ %474, %491 ], [ %474, %489 ], [ %207, %447 ], [ %207, %453 ]
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #31
  %495 = load ptr, ptr %2, align 4
  store ptr %495, ptr %4, align 4
  %496 = load ptr, ptr %57, align 4
  store ptr %496, ptr %193, align 4
  store ptr null, ptr %194, align 4
  store i32 %17, ptr %195, align 4
  store i32 %1, ptr %196, align 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(16) %197, i8 0, i64 16, i1 false) #31
  %497 = call i32 @mutex_trylock(ptr noundef nonnull @oom_lock) #31
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %501

499:                                              ; preds = %492
  %500 = call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #31
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #31
  br label %536

501:                                              ; preds = %492
  %502 = call fastcc ptr @get_page_from_freelist(i32 noundef %199, i32 noundef %1, i32 noundef 66, ptr noundef %2) #31
  %503 = icmp eq ptr %502, null
  br i1 %503, label %504, label %531

504:                                              ; preds = %501
  %505 = load i32, ptr %316, align 4
  %506 = and i32 %505, 512
  %507 = or i32 %506, %200
  %508 = icmp eq i32 %507, 0
  %509 = and i1 %187, %508
  br i1 %509, label %510, label %529

510:                                              ; preds = %504
  %511 = load i32, ptr %55, align 4
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %529, label %513

513:                                              ; preds = %510
  %514 = load i32, ptr @gfp_allowed_mask, align 4
  %515 = and i32 %514, 192
  %516 = icmp eq i32 %515, 192
  br i1 %516, label %517, label %529

517:                                              ; preds = %513
  %518 = call zeroext i1 @out_of_memory(ptr noundef nonnull %4) #31
  br i1 %518, label %525, label %519

519:                                              ; preds = %517
  %520 = load i1, ptr @__alloc_pages_may_oom.__already_done, align 1
  %521 = xor i1 %520, true
  %522 = select i1 %202, i1 %521, i1 false
  br i1 %522, label %523, label %524, !prof !14

523:                                              ; preds = %519
  store i1 true, ptr @__alloc_pages_may_oom.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 4332, i32 noundef 9, ptr noundef null) #31
  br label %524

524:                                              ; preds = %523, %519
  br i1 %202, label %526, label %529

525:                                              ; preds = %517
  br i1 %203, label %529, label %526

526:                                              ; preds = %525, %524
  %527 = call fastcc ptr @get_page_from_freelist(i32 noundef %17, i32 noundef %1, i32 noundef 68, ptr noundef %2) #31
  %528 = icmp eq ptr %527, null
  br i1 %528, label %533, label %531

529:                                              ; preds = %525, %524, %513, %510, %504
  %530 = phi i32 [ 0, %504 ], [ 0, %513 ], [ 0, %524 ], [ 1, %525 ], [ 0, %510 ]
  call void @mutex_unlock(ptr noundef nonnull @oom_lock) #31
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #31
  br label %536

531:                                              ; preds = %526, %501
  %532 = phi ptr [ %527, %526 ], [ %502, %501 ]
  call void @mutex_unlock(ptr noundef nonnull @oom_lock) #31
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #31
  br label %598

533:                                              ; preds = %526
  %534 = call fastcc ptr @get_page_from_freelist(i32 noundef %17, i32 noundef %1, i32 noundef 4, ptr noundef %2) #31
  call void @mutex_unlock(ptr noundef nonnull @oom_lock) #31
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #31
  %535 = icmp eq ptr %534, null
  br i1 %535, label %536, label %598

536:                                              ; preds = %533, %529, %499
  %537 = phi i32 [ 1, %499 ], [ 1, %533 ], [ %530, %529 ]
  %538 = getelementptr inbounds %struct.task_struct, ptr %315, i32 0, i32 93
  %539 = load ptr, ptr %538, align 16
  %540 = getelementptr inbounds %struct.signal_struct, ptr %539, i32 0, i32 54
  %541 = load ptr, ptr %540, align 8
  %542 = icmp eq ptr %541, null
  br i1 %542, label %549, label %543

543:                                              ; preds = %536
  %544 = and i32 %310, 8
  %545 = icmp ne i32 %537, 0
  %546 = or i32 %544, %178
  %547 = icmp eq i32 %546, 0
  %548 = and i1 %547, %545
  br i1 %548, label %551, label %559

549:                                              ; preds = %536
  %550 = icmp eq i32 %537, 0
  br i1 %550, label %559, label %551

551:                                              ; preds = %549, %543, %491, %489
  %552 = phi i32 [ %473, %489 ], [ %473, %491 ], [ %493, %543 ], [ %493, %549 ]
  %553 = phi i32 [ %474, %489 ], [ %474, %491 ], [ %494, %543 ], [ %494, %549 ]
  %554 = phi i32 [ %446, %489 ], [ %446, %491 ], [ 0, %543 ], [ 0, %549 ]
  br label %205

555:                                              ; preds = %343, %314, %313
  %556 = phi i32 [ %174, %343 ], [ %206, %314 ], [ %174, %313 ]
  %557 = phi i32 [ %175, %343 ], [ %207, %314 ], [ %175, %313 ]
  %558 = phi i32 [ %176, %343 ], [ %211, %314 ], [ %176, %313 ]
  br label %560

559:                                              ; preds = %549, %543
  br label %560

560:                                              ; preds = %559, %555, %169, %66
  %561 = phi i32 [ 1, %66 ], [ 1, %169 ], [ %556, %555 ], [ %493, %559 ]
  %562 = phi i32 [ 0, %66 ], [ 0, %169 ], [ %557, %555 ], [ %494, %559 ]
  %563 = phi i32 [ 0, %66 ], [ 0, %169 ], [ %558, %555 ], [ %446, %559 ]
  %564 = phi i32 [ %53, %66 ], [ %53, %169 ], [ %310, %555 ], [ %310, %559 ]
  %565 = and i32 %17, 32768
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %596, label %567

567:                                              ; preds = %560
  %568 = load i1, ptr @__alloc_pages_slowpath.__already_done.54, align 1
  %569 = xor i1 %568, true
  %570 = select i1 %7, i1 %569, i1 false
  br i1 %570, label %571, label %572, !prof !14

571:                                              ; preds = %567
  store i1 true, ptr @__alloc_pages_slowpath.__already_done.54, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5101, i32 noundef 9, ptr noundef null) #31
  br label %572

572:                                              ; preds = %571, %567
  br i1 %7, label %596, label %573

573:                                              ; preds = %572
  %574 = tail call ptr @llvm.thread.pointer() #31
  %575 = getelementptr inbounds %struct.task_struct, ptr %574, i32 0, i32 4
  %576 = load i32, ptr %575, align 4
  %577 = and i32 %576, 2048
  %578 = icmp ne i32 %577, 0
  %579 = load i1, ptr @__alloc_pages_slowpath.__already_done.55, align 1
  %580 = xor i1 %579, true
  %581 = select i1 %578, i1 %580, i1 false
  br i1 %581, label %582, label %583, !prof !14

582:                                              ; preds = %573
  store i1 true, ptr @__alloc_pages_slowpath.__already_done.55, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5109, i32 noundef 9, ptr noundef null) #31
  br label %583

583:                                              ; preds = %582, %573
  %584 = load i1, ptr @__alloc_pages_slowpath.__already_done.56, align 1
  %585 = xor i1 %584, true
  %586 = select i1 %8, i1 %585, i1 false
  br i1 %586, label %587, label %588, !prof !14

587:                                              ; preds = %583
  store i1 true, ptr @__alloc_pages_slowpath.__already_done.56, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5117, i32 noundef 9, ptr noundef null) #31
  br label %588

588:                                              ; preds = %587, %583
  %589 = call fastcc ptr @get_page_from_freelist(i32 noundef %17, i32 noundef %1, i32 noundef 80, ptr noundef %2) #31
  %590 = icmp eq ptr %589, null
  br i1 %590, label %591, label %598

591:                                              ; preds = %588
  %592 = call fastcc ptr @get_page_from_freelist(i32 noundef %17, i32 noundef %1, i32 noundef 16, ptr noundef %2) #31
  %593 = icmp eq ptr %592, null
  br i1 %593, label %594, label %598

594:                                              ; preds = %591
  %595 = call i32 @__cond_resched() #31
  br label %173

596:                                              ; preds = %572, %560
  %597 = load ptr, ptr %57, align 4
  call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %17, ptr noundef %597, ptr noundef nonnull @.str.57, i32 noundef %1)
  br label %598

598:                                              ; preds = %596, %591, %588, %533, %531, %340, %336, %333, %309, %162, %113
  %599 = phi ptr [ null, %596 ], [ %592, %591 ], [ %114, %113 ], [ %163, %162 ], [ %532, %531 ], [ %589, %588 ], [ %311, %309 ], [ %338, %336 ], [ %341, %340 ], [ %334, %333 ], [ %534, %533 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  ret ptr %599
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__folio_alloc(i32 noundef %0, i32 noundef %1, i32 %2, ptr noundef %3) #1 {
  %5 = or i32 %0, 262144
  %6 = tail call ptr @__alloc_pages(i32 noundef %5, i32 noundef %1, i32 undef, ptr noundef %3)
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__get_free_pages(i32 noundef %0, i32 noundef %1) #1 {
  %3 = and i32 %0, -3
  %4 = tail call ptr @__alloc_pages(i32 noundef %3, i32 noundef %1, i32 undef, ptr noundef null) #31
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @page_address(ptr noundef nonnull %4) #31
  %8 = ptrtoint ptr %7 to i32
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_zeroed_page(i32 noundef %0) #1 {
  %2 = and i32 %0, -259
  %3 = or i32 %2, 256
  %4 = tail call ptr @__alloc_pages(i32 noundef %3, i32 noundef 0, i32 undef, ptr noundef null) #31
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @page_address(ptr noundef nonnull %4) #31
  %8 = ptrtoint ptr %7 to i32
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ %8, %6 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_pages(i32 noundef %0, i32 noundef %1) #1 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @mem_map, align 4
  %6 = add i32 %0, 1073741824
  %7 = lshr i32 %6, 12
  %8 = getelementptr %struct.page, ptr %5, i32 %7
  %9 = getelementptr %struct.page, ptr %5, i32 %7, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #31, !srcloc !11
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #31, !srcloc !24
  %11 = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !25
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call fastcc void @free_the_page(ptr noundef %8, i32 noundef %1) #31
  br label %26

14:                                               ; preds = %4
  %15 = load volatile i32, ptr %8, align 4
  %16 = and i32 %15, 65536
  %17 = icmp ne i32 %16, 0
  %18 = icmp eq i32 %1, 0
  %19 = or i1 %18, %17
  br i1 %19, label %26, label %20

20:                                               ; preds = %20, %14
  %21 = phi i32 [ %22, %20 ], [ %1, %14 ]
  %22 = add i32 %21, -1
  %23 = shl nuw i32 1, %22
  %24 = getelementptr %struct.page, ptr %8, i32 %23
  tail call fastcc void @free_the_page(ptr noundef %24, i32 noundef %22) #31
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %26, label %20

26:                                               ; preds = %20, %14, %13, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__page_frag_cache_drain(ptr noundef %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #31, !srcloc !11
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %1, ptr elementtype(i32) %3) #31, !srcloc !24
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !25
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load volatile i32, ptr %0, align 4
  %9 = and i32 %8, 65536
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr %struct.page, ptr %0, i32 1, i32 1
  %13 = getelementptr inbounds %struct.anon.64, ptr %12, i32 0, i32 2
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  br label %16

16:                                               ; preds = %11, %7
  %17 = phi i32 [ %15, %11 ], [ 0, %7 ]
  tail call fastcc void @free_the_page(ptr noundef %0, i32 noundef %17)
  br label %18

18:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @page_frag_alloc_align(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = load ptr, ptr %0, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !14

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.page_frag_cache, ptr %0, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  br label %27

10:                                               ; preds = %63, %37, %4
  %11 = tail call fastcc ptr @__page_frag_cache_refill(ptr noundef %0, i32 noundef %2)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %78, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.page_frag_cache, ptr %0, i32 0, i32 2
  %15 = load i16, ptr %14, align 2
  %16 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #31, !srcloc !11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 32768, ptr elementtype(i32) %16) #31, !srcloc !19
  %18 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = getelementptr inbounds %struct.page_frag_cache, ptr %0, i32 0, i32 4
  %22 = trunc i32 %20 to i8
  %23 = lshr i8 %22, 1
  %24 = and i8 %23, 1
  store i8 %24, ptr %21, align 4
  %25 = getelementptr inbounds %struct.page_frag_cache, ptr %0, i32 0, i32 3
  store i32 32769, ptr %25, align 4
  %26 = getelementptr inbounds %struct.page_frag_cache, ptr %0, i32 0, i32 1
  store i16 %15, ptr %26, align 4
  br label %27

27:                                               ; preds = %13, %7
  %28 = phi i16 [ %9, %7 ], [ %15, %13 ]
  %29 = getelementptr inbounds %struct.page_frag_cache, ptr %0, i32 0, i32 1
  %30 = zext i16 %28 to i32
  %31 = sub i32 %30, %1
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %37, label %33, !prof !14

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.page_frag_cache, ptr %0, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  br label %70

37:                                               ; preds = %27
  %38 = load ptr, ptr @mem_map, align 4
  %39 = load ptr, ptr %0, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = add i32 %40, 1073741824
  %42 = lshr i32 %41, 12
  %43 = getelementptr %struct.page, ptr %38, i32 %42
  %44 = getelementptr inbounds %struct.page_frag_cache, ptr %0, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr %struct.page, ptr %38, i32 %42, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %46) #31, !srcloc !11
  %47 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %46, ptr %46, i32 %45, ptr elementtype(i32) %46) #31, !srcloc !24
  %48 = extractvalue { i32, i32 } %47, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !25
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %10

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.page_frag_cache, ptr %0, i32 0, i32 4
  %52 = load i8, ptr %51, align 4, !range !18
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %65, label %54, !prof !9

54:                                               ; preds = %50
  %55 = load volatile i32, ptr %43, align 4
  %56 = and i32 %55, 65536
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = getelementptr %struct.page, ptr %43, i32 1, i32 1
  %60 = getelementptr inbounds %struct.anon.64, ptr %59, i32 0, i32 2
  %61 = load i8, ptr %60, align 1
  %62 = zext i8 %61 to i32
  br label %63

63:                                               ; preds = %58, %54
  %64 = phi i32 [ %62, %58 ], [ 0, %54 ]
  tail call fastcc void @free_the_page(ptr noundef %43, i32 noundef %64)
  br label %10

65:                                               ; preds = %50
  %66 = getelementptr inbounds %struct.page_frag_cache, ptr %0, i32 0, i32 2
  %67 = load i16, ptr %66, align 2
  %68 = zext i16 %67 to i32
  store volatile i32 32769, ptr %46, align 4
  %69 = sub i32 %68, %1
  br label %70

70:                                               ; preds = %65, %33
  %71 = phi i32 [ 32768, %65 ], [ %36, %33 ]
  %72 = phi i32 [ %69, %65 ], [ %31, %33 ]
  %73 = getelementptr inbounds %struct.page_frag_cache, ptr %0, i32 0, i32 3
  store i32 %71, ptr %73, align 4
  %74 = and i32 %72, %3
  %75 = trunc i32 %74 to i16
  store i16 %75, ptr %29, align 4
  %76 = load ptr, ptr %0, align 4
  %77 = getelementptr i8, ptr %76, i32 %74
  br label %78

78:                                               ; preds = %70, %10
  %79 = phi ptr [ %77, %70 ], [ null, %10 ]
  ret ptr %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__page_frag_cache_refill(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = or i32 %1, 860160
  %4 = tail call ptr @__alloc_pages(i32 noundef %3, i32 noundef 3, i32 undef, ptr noundef null) #31
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, i16 4096, i16 -32768
  %7 = getelementptr inbounds %struct.page_frag_cache, ptr %0, i32 0, i32 2
  store i16 %6, ptr %7, align 2
  br i1 %5, label %8, label %11, !prof !14

8:                                                ; preds = %2
  %9 = tail call ptr @__alloc_pages(i32 noundef %1, i32 noundef 0, i32 undef, ptr noundef null) #31
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %9, %8 ], [ %4, %2 ]
  %13 = tail call ptr @page_address(ptr noundef nonnull %12) #31
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi ptr [ %12, %11 ], [ null, %8 ]
  %16 = phi ptr [ %13, %11 ], [ null, %8 ]
  store ptr %16, ptr %0, align 4
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_frag_free(ptr noundef %0) #1 {
  %2 = load ptr, ptr @mem_map, align 4
  %3 = ptrtoint ptr %0 to i32
  %4 = add i32 %3, 1073741824
  %5 = lshr i32 %4, 12
  %6 = getelementptr %struct.page, ptr %2, i32 %5, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10, !prof !9

10:                                               ; preds = %1
  %11 = add i32 %7, -1
  br label %15

12:                                               ; preds = %1
  %13 = getelementptr %struct.page, ptr %2, i32 %5
  %14 = ptrtoint ptr %13 to i32
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi i32 [ %11, %10 ], [ %14, %12 ]
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #31, !srcloc !11
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #31, !srcloc !24
  %20 = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !25
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33, !prof !14

22:                                               ; preds = %15
  %23 = load volatile i32, ptr %17, align 4
  %24 = and i32 %23, 65536
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = getelementptr %struct.page, ptr %17, i32 1, i32 1
  %28 = getelementptr inbounds %struct.anon.64, ptr %27, i32 0, i32 2
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i32 [ %30, %26 ], [ 0, %22 ]
  tail call fastcc void @free_the_page(ptr noundef %17, i32 noundef %32)
  br label %33

33:                                               ; preds = %31, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @alloc_pages_exact(i32 noundef %0, i32 noundef %1) #16 {
  %3 = and i32 %1, 262146
  %4 = icmp ne i32 %3, 0
  %5 = load i1, ptr @alloc_pages_exact.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !14

8:                                                ; preds = %2
  store i1 true, ptr @alloc_pages_exact.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5641, i32 noundef 9, ptr noundef null) #31
  br label %9

9:                                                ; preds = %8, %2
  %10 = and i32 %1, -262147
  %11 = add i32 %0, -1
  %12 = lshr i32 %11, 12
  %13 = icmp ult i32 %11, 4096
  %14 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 false) #31, !range !46
  %15 = sub nuw nsw i32 32, %14
  %16 = select i1 %13, i32 0, i32 %15
  %17 = tail call ptr @__alloc_pages(i32 noundef %10, i32 noundef %16, i32 undef, ptr noundef null) #31
  %18 = icmp eq ptr %17, null
  br i1 %18, label %60, label %19

19:                                               ; preds = %9
  %20 = tail call ptr @page_address(ptr noundef nonnull %17) #31
  %21 = ptrtoint ptr %20 to i32
  %22 = icmp eq ptr %20, null
  br i1 %22, label %60, label %23

23:                                               ; preds = %19
  %24 = shl i32 4096, %16
  %25 = add i32 %24, %21
  %26 = add i32 %0, 4095
  %27 = and i32 %26, -4096
  %28 = add i32 %27, %21
  %29 = load ptr, ptr @mem_map, align 4
  %30 = add i32 %21, 1073741824
  %31 = lshr i32 %30, 12
  %32 = getelementptr %struct.page, ptr %29, i32 %31
  %33 = shl nuw i32 1, %16
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %35, %23
  %36 = phi i32 [ %38, %35 ], [ 1, %23 ]
  %37 = getelementptr %struct.page, ptr %32, i32 %36, i32 3
  store volatile i32 1, ptr %37, align 4
  %38 = add nuw nsw i32 %36, 1
  %39 = icmp eq i32 %38, %33
  br i1 %39, label %40, label %35

40:                                               ; preds = %35, %23
  %41 = icmp ult i32 %28, %25
  br i1 %41, label %42, label %60

42:                                               ; preds = %57, %40
  %43 = phi i32 [ %58, %57 ], [ %28, %40 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr @mem_map, align 4
  %47 = add i32 %43, 1073741824
  %48 = lshr i32 %47, 12
  %49 = getelementptr %struct.page, ptr %46, i32 %48
  %50 = getelementptr %struct.page, ptr %46, i32 %48, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #31, !srcloc !11
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #31, !srcloc !24
  %52 = extractvalue { i32, i32 } %51, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !25
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  tail call fastcc void @free_the_page(ptr noundef %49, i32 noundef 0) #31
  br label %57

55:                                               ; preds = %45
  %56 = load volatile i32, ptr %49, align 4
  br label %57

57:                                               ; preds = %55, %54, %42
  %58 = add i32 %43, 4096
  %59 = icmp ult i32 %58, %25
  br i1 %59, label %42, label %60

60:                                               ; preds = %57, %40, %19, %9
  %61 = phi i32 [ 0, %19 ], [ %21, %40 ], [ 0, %9 ], [ %21, %57 ]
  %62 = inttoptr i32 %61 to ptr
  ret ptr %62
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong allocsize(1) uwtable(sync)
define dso_local noalias ptr @alloc_pages_exact_nid(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #17 section ".meminit.text" {
  %4 = add i32 %1, -1
  %5 = lshr i32 %4, 12
  %6 = icmp ult i32 %4, 4096
  %7 = tail call i32 @llvm.ctlz.i32(i32 %5, i1 false) #31, !range !46
  %8 = sub nuw nsw i32 32, %7
  %9 = select i1 %6, i32 0, i32 %8
  %10 = and i32 %2, 262146
  %11 = icmp ne i32 %10, 0
  %12 = load i1, ptr @alloc_pages_exact_nid.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !14

15:                                               ; preds = %3
  store i1 true, ptr @alloc_pages_exact_nid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 5666, i32 noundef 9, ptr noundef null) #31
  br label %16

16:                                               ; preds = %15, %3
  %17 = and i32 %2, -262147
  %18 = tail call ptr @__alloc_pages(i32 noundef %17, i32 noundef %9, i32 undef, ptr noundef null) #31
  %19 = icmp eq ptr %18, null
  br i1 %19, label %61, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @page_address(ptr noundef nonnull %18) #31
  %22 = icmp eq ptr %21, null
  br i1 %22, label %61, label %23

23:                                               ; preds = %20
  %24 = ptrtoint ptr %21 to i32
  %25 = shl i32 4096, %9
  %26 = add i32 %25, %24
  %27 = add i32 %1, 4095
  %28 = and i32 %27, -4096
  %29 = add i32 %28, %24
  %30 = load ptr, ptr @mem_map, align 4
  %31 = add i32 %24, 1073741824
  %32 = lshr i32 %31, 12
  %33 = getelementptr %struct.page, ptr %30, i32 %32
  %34 = shl nuw i32 1, %9
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %36, %23
  %37 = phi i32 [ %39, %36 ], [ 1, %23 ]
  %38 = getelementptr %struct.page, ptr %33, i32 %37, i32 3
  store volatile i32 1, ptr %38, align 4
  %39 = add nuw nsw i32 %37, 1
  %40 = icmp eq i32 %39, %34
  br i1 %40, label %41, label %36

41:                                               ; preds = %36, %23
  %42 = icmp ult i32 %29, %26
  br i1 %42, label %43, label %61

43:                                               ; preds = %58, %41
  %44 = phi i32 [ %59, %58 ], [ %29, %41 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @mem_map, align 4
  %48 = add i32 %44, 1073741824
  %49 = lshr i32 %48, 12
  %50 = getelementptr %struct.page, ptr %47, i32 %49
  %51 = getelementptr %struct.page, ptr %47, i32 %49, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %51) #31, !srcloc !11
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %51, ptr %51, i32 1, ptr elementtype(i32) %51) #31, !srcloc !24
  %53 = extractvalue { i32, i32 } %52, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !25
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  tail call fastcc void @free_the_page(ptr noundef %50, i32 noundef 0) #31
  br label %58

56:                                               ; preds = %46
  %57 = load volatile i32, ptr %50, align 4
  br label %58

58:                                               ; preds = %56, %55, %43
  %59 = add i32 %44, 4096
  %60 = icmp ult i32 %59, %26
  br i1 %60, label %43, label %61

61:                                               ; preds = %58, %41, %20, %16
  %62 = phi ptr [ null, %16 ], [ null, %20 ], [ %21, %41 ], [ %21, %58 ]
  ret ptr %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_pages_exact(ptr noundef %0, i32 noundef %1) #1 {
  %3 = ptrtoint ptr %0 to i32
  %4 = add i32 %1, 4095
  %5 = and i32 %4, -4096
  %6 = add i32 %5, %3
  %7 = icmp ugt i32 %6, %3
  br i1 %7, label %8, label %26

8:                                                ; preds = %23, %2
  %9 = phi i32 [ %24, %23 ], [ %3, %2 ]
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @mem_map, align 4
  %13 = add i32 %9, 1073741824
  %14 = lshr i32 %13, 12
  %15 = getelementptr %struct.page, ptr %12, i32 %14
  %16 = getelementptr %struct.page, ptr %12, i32 %14, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #31, !srcloc !11
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #31, !srcloc !24
  %18 = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !25
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  tail call fastcc void @free_the_page(ptr noundef %15, i32 noundef 0) #31
  br label %23

21:                                               ; preds = %11
  %22 = load volatile i32, ptr %15, align 4
  br label %23

23:                                               ; preds = %21, %20, %8
  %24 = add i32 %9, 4096
  %25 = icmp ult i32 %24, %6
  br i1 %25, label %8, label %26

26:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nr_free_buffer_pages() #1 {
  %1 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1), align 4
  %2 = icmp ugt i32 %1, 1
  br i1 %2, label %3, label %5, !prof !14

3:                                                ; preds = %0
  %4 = tail call ptr @__next_zones_zonelist(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), i32 noundef 1, ptr noundef null) #31
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), %0 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %28, %5
  %10 = phi ptr [ %30, %28 ], [ %7, %5 ]
  %11 = phi ptr [ %29, %28 ], [ %6, %5 ]
  %12 = phi i32 [ %21, %28 ], [ 0, %5 ]
  %13 = getelementptr inbounds %struct.zone, ptr %10, i32 0, i32 11
  %14 = load volatile i32, ptr %13, align 4
  %15 = getelementptr [3 x i32], ptr %10, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.zone, ptr %10, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = tail call i32 @llvm.usub.sat.i32(i32 %14, i32 %19) #31
  %21 = add i32 %20, %12
  %22 = getelementptr %struct.zoneref, ptr %11, i32 1
  %23 = getelementptr %struct.zoneref, ptr %11, i32 1, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %24, 1
  br i1 %25, label %26, label %28, !prof !14

26:                                               ; preds = %9
  %27 = tail call ptr @__next_zones_zonelist(ptr noundef %22, i32 noundef 1, ptr noundef null) #31
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi ptr [ %27, %26 ], [ %22, %9 ]
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %9

32:                                               ; preds = %28, %5
  %33 = phi i32 [ 0, %5 ], [ %21, %28 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @si_mem_available() #1 {
  %1 = load volatile i32, ptr @vm_node_stat, align 4
  %2 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %3 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %4 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %5 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 4), align 4
  %6 = tail call ptr @first_online_pgdat() #31
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %8, %0
  %9 = phi i32 [ %16, %8 ], [ 0, %0 ]
  %10 = phi ptr [ %17, %8 ], [ %6, %0 ]
  %11 = getelementptr [3 x i32], ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.zone, ptr %10, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %12, %9
  %16 = add i32 %15, %14
  %17 = tail call ptr @next_zone(ptr noundef nonnull %10) #31
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8

19:                                               ; preds = %8, %0
  %20 = phi i32 [ 0, %0 ], [ %16, %8 ]
  %21 = tail call i32 @llvm.smax.i32(i32 %4, i32 0) #31
  %22 = tail call i32 @llvm.smax.i32(i32 %3, i32 0) #31
  %23 = load volatile i32, ptr @vm_zone_stat, align 4
  %24 = tail call i32 @llvm.smax.i32(i32 %23, i32 0) #31
  %25 = load i32, ptr @totalreserve_pages, align 4
  %26 = add nuw i32 %22, %21
  %27 = lshr i32 %26, 1
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %20)
  %29 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 5), align 4
  %30 = tail call i32 @llvm.smax.i32(i32 %29, i32 0) #31
  %31 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 34), align 4
  %32 = tail call i32 @llvm.smax.i32(i32 %31, i32 0) #31
  %33 = add nuw i32 %32, %30
  %34 = lshr i32 %33, 1
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 %20)
  %36 = add i32 %24, %26
  %37 = add i32 %25, %28
  %38 = add i32 %36, %33
  %39 = add i32 %37, %35
  %40 = sub i32 %38, %39
  %41 = tail call i32 @llvm.smax.i32(i32 %40, i32 0)
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @si_meminfo(ptr nocapture noundef writeonly %0) #1 {
  %2 = load volatile i32, ptr @_totalram_pages, align 4
  %3 = getelementptr inbounds %struct.sysinfo, ptr %0, i32 0, i32 2
  store i32 %2, ptr %3, align 4
  %4 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 23), align 4
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 0) #31
  %6 = getelementptr inbounds %struct.sysinfo, ptr %0, i32 0, i32 4
  store i32 %5, ptr %6, align 4
  %7 = load volatile i32, ptr @vm_zone_stat, align 4
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0) #31
  %9 = getelementptr inbounds %struct.sysinfo, ptr %0, i32 0, i32 3
  store i32 %8, ptr %9, align 4
  %10 = tail call i32 @nr_blockdev_pages() #31
  %11 = getelementptr inbounds %struct.sysinfo, ptr %0, i32 0, i32 5
  store i32 %10, ptr %11, align 4
  %12 = load volatile i32, ptr @_totalhigh_pages, align 4
  %13 = getelementptr inbounds %struct.sysinfo, ptr %0, i32 0, i32 10
  store i32 %12, ptr %13, align 4
  %14 = tail call i32 @__nr_free_highpages() #31
  %15 = getelementptr inbounds %struct.sysinfo, ptr %0, i32 0, i32 11
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.sysinfo, ptr %0, i32 0, i32 12
  store i32 4096, ptr %16, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_blockdev_pages() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @show_free_areas(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca [7 x i8], align 1
  %4 = alloca [12 x i32], align 4
  %5 = alloca [12 x i8], align 1
  %6 = tail call ptr @first_online_pgdat() #31
  %7 = icmp eq ptr %6, null
  br i1 %7, label %47, label %8

8:                                                ; preds = %2
  %9 = and i32 %0, 1
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq ptr %1, null
  %12 = select i1 %11, ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4), ptr %1
  br label %13

13:                                               ; preds = %43, %8
  %14 = phi i32 [ 0, %8 ], [ %44, %43 ]
  %15 = phi ptr [ %6, %8 ], [ %45, %43 ]
  %16 = getelementptr inbounds %struct.zone, ptr %15, i32 0, i32 13
  %17 = load i32, ptr %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %43, label %19

19:                                               ; preds = %13
  br i1 %10, label %24, label %20

20:                                               ; preds = %19
  %21 = load volatile i32, ptr %12, align 4
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %20, %19
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %26 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #32
  %27 = icmp ult i32 %26, %25
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.zone, ptr %15, i32 0, i32 5
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %30 to i32
  br label %32

32:                                               ; preds = %32, %28
  %33 = phi i32 [ %26, %28 ], [ %41, %32 ]
  %34 = phi i32 [ %14, %28 ], [ %40, %32 ]
  %35 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %31
  %38 = inttoptr i32 %37 to ptr
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, %34
  %41 = tail call i32 @cpumask_next(i32 noundef %33, ptr noundef nonnull @__cpu_online_mask) #32
  %42 = icmp ult i32 %41, %25
  br i1 %42, label %32, label %43

43:                                               ; preds = %32, %24, %20, %13
  %44 = phi i32 [ %14, %13 ], [ %14, %20 ], [ %14, %24 ], [ %40, %32 ]
  %45 = tail call ptr @next_zone(ptr noundef nonnull %15) #31
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %13

47:                                               ; preds = %43, %2
  %48 = phi i32 [ 0, %2 ], [ %44, %43 ]
  %49 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %50 = tail call i32 @llvm.smax.i32(i32 %49, i32 0) #31
  %51 = load volatile i32, ptr @vm_node_stat, align 4
  %52 = tail call i32 @llvm.smax.i32(i32 %51, i32 0) #31
  %53 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 7), align 4
  %54 = tail call i32 @llvm.smax.i32(i32 %53, i32 0) #31
  %55 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %56 = tail call i32 @llvm.smax.i32(i32 %55, i32 0) #31
  %57 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %58 = tail call i32 @llvm.smax.i32(i32 %57, i32 0) #31
  %59 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 8), align 4
  %60 = tail call i32 @llvm.smax.i32(i32 %59, i32 0) #31
  %61 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 4), align 4
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 0) #31
  %63 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), align 4
  %64 = tail call i32 @llvm.smax.i32(i32 %63, i32 0) #31
  %65 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 21), align 4
  %66 = tail call i32 @llvm.smax.i32(i32 %65, i32 0) #31
  %67 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 5), align 4
  %68 = tail call i32 @llvm.smax.i32(i32 %67, i32 0) #31
  %69 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 6), align 4
  %70 = tail call i32 @llvm.smax.i32(i32 %69, i32 0) #31
  %71 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 18), align 4
  %72 = tail call i32 @llvm.smax.i32(i32 %71, i32 0) #31
  %73 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 23), align 4
  %74 = tail call i32 @llvm.smax.i32(i32 %73, i32 0) #31
  %75 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 38), align 4
  %76 = tail call i32 @llvm.smax.i32(i32 %75, i32 0) #31
  %77 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 8), align 4
  %78 = tail call i32 @llvm.smax.i32(i32 %77, i32 0) #31
  %79 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 34), align 4
  %80 = tail call i32 @llvm.smax.i32(i32 %79, i32 0) #31
  %81 = load volatile i32, ptr @vm_zone_stat, align 4
  %82 = tail call i32 @llvm.smax.i32(i32 %81, i32 0) #31
  %83 = load volatile i32, ptr getelementptr inbounds ([10 x %struct.atomic_t], ptr @vm_zone_stat, i32 0, i32 9), align 4
  %84 = tail call i32 @llvm.smax.i32(i32 %83, i32 0) #31
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76, i32 noundef %78, i32 noundef %80, i32 noundef %82, i32 noundef %48, i32 noundef %84) #33
  %86 = tail call ptr @first_online_pgdat() #31
  %87 = icmp eq ptr %86, null
  br i1 %87, label %155, label %88

88:                                               ; preds = %47
  %89 = and i32 %0, 1
  %90 = icmp eq i32 %89, 0
  %91 = icmp eq ptr %1, null
  %92 = select i1 %91, ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4), ptr %1
  br label %93

93:                                               ; preds = %152, %88
  %94 = phi ptr [ %86, %88 ], [ %153, %152 ]
  %95 = getelementptr inbounds %struct.pglist_data, ptr %94, i32 0, i32 7
  %96 = load i32, ptr %95, align 4
  br i1 %90, label %105, label %97

97:                                               ; preds = %93
  %98 = lshr i32 %96, 5
  %99 = getelementptr i32, ptr %92, i32 %98
  %100 = load volatile i32, ptr %99, align 4
  %101 = and i32 %96, 31
  %102 = shl nuw i32 1, %101
  %103 = and i32 %100, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %152, label %105

105:                                              ; preds = %97, %93
  %106 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 1), align 4
  %107 = tail call i32 @llvm.smax.i32(i32 %106, i32 0) #31
  %108 = shl i32 %107, 2
  %109 = load volatile i32, ptr @vm_node_stat, align 4
  %110 = tail call i32 @llvm.smax.i32(i32 %109, i32 0) #31
  %111 = shl i32 %110, 2
  %112 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 3), align 4
  %113 = tail call i32 @llvm.smax.i32(i32 %112, i32 0) #31
  %114 = shl i32 %113, 2
  %115 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 2), align 4
  %116 = tail call i32 @llvm.smax.i32(i32 %115, i32 0) #31
  %117 = shl i32 %116, 2
  %118 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 4), align 4
  %119 = tail call i32 @llvm.smax.i32(i32 %118, i32 0) #31
  %120 = shl i32 %119, 2
  %121 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 7), align 4
  %122 = tail call i32 @llvm.smax.i32(i32 %121, i32 0) #31
  %123 = shl i32 %122, 2
  %124 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 8), align 4
  %125 = tail call i32 @llvm.smax.i32(i32 %124, i32 0) #31
  %126 = shl i32 %125, 2
  %127 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 18), align 4
  %128 = tail call i32 @llvm.smax.i32(i32 %127, i32 0) #31
  %129 = shl i32 %128, 2
  %130 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 20), align 4
  %131 = tail call i32 @llvm.smax.i32(i32 %130, i32 0) #31
  %132 = shl i32 %131, 2
  %133 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 21), align 4
  %134 = tail call i32 @llvm.smax.i32(i32 %133, i32 0) #31
  %135 = shl i32 %134, 2
  %136 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 23), align 4
  %137 = tail call i32 @llvm.smax.i32(i32 %136, i32 0) #31
  %138 = shl i32 %137, 2
  %139 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 22), align 4
  %140 = tail call i32 @llvm.smax.i32(i32 %139, i32 0) #31
  %141 = shl i32 %140, 2
  %142 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 37), align 4
  %143 = tail call i32 @llvm.smax.i32(i32 %142, i32 0) #31
  %144 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 38), align 4
  %145 = tail call i32 @llvm.smax.i32(i32 %144, i32 0) #31
  %146 = shl i32 %145, 2
  %147 = getelementptr inbounds %struct.pglist_data, ptr %94, i32 0, i32 16
  %148 = load i32, ptr %147, align 4
  %149 = icmp sgt i32 %148, 15
  %150 = select i1 %149, ptr @.str.12, ptr @.str.13
  %151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %96, i32 noundef %108, i32 noundef %111, i32 noundef %114, i32 noundef %117, i32 noundef %120, i32 noundef %123, i32 noundef %126, i32 noundef %129, i32 noundef %132, i32 noundef %135, i32 noundef %138, i32 noundef %141, i32 noundef %143, i32 noundef %146, ptr noundef nonnull %150) #33
  br label %152

152:                                              ; preds = %105, %97
  %153 = tail call ptr @next_online_pgdat(ptr noundef nonnull %94) #31
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %93

155:                                              ; preds = %152, %47
  %156 = tail call ptr @first_online_pgdat() #31
  %157 = icmp eq ptr %156, null
  br i1 %157, label %286, label %158

158:                                              ; preds = %155
  %159 = and i32 %0, 1
  %160 = icmp eq i32 %159, 0
  %161 = icmp eq ptr %1, null
  %162 = select i1 %161, ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4), ptr %1
  br label %163

163:                                              ; preds = %283, %158
  %164 = phi ptr [ %156, %158 ], [ %284, %283 ]
  %165 = getelementptr inbounds %struct.zone, ptr %164, i32 0, i32 13
  %166 = load i32, ptr %165, align 8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %283, label %168

168:                                              ; preds = %163
  br i1 %160, label %173, label %169

169:                                              ; preds = %168
  %170 = load volatile i32, ptr %162, align 4
  %171 = and i32 %170, 1
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %283, label %173

173:                                              ; preds = %169, %168
  %174 = load i32, ptr @nr_cpu_ids, align 4
  %175 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #32
  %176 = icmp ult i32 %175, %174
  br i1 %176, label %177, label %192

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.zone, ptr %164, i32 0, i32 5
  %179 = load ptr, ptr %178, align 8
  %180 = ptrtoint ptr %179 to i32
  br label %181

181:                                              ; preds = %181, %177
  %182 = phi i32 [ %175, %177 ], [ %190, %181 ]
  %183 = phi i32 [ 0, %177 ], [ %189, %181 ]
  %184 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %182
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %185, %180
  %187 = inttoptr i32 %186 to ptr
  %188 = load i32, ptr %187, align 4
  %189 = add i32 %188, %183
  %190 = tail call i32 @cpumask_next(i32 noundef %182, ptr noundef nonnull @__cpu_online_mask) #32
  %191 = icmp ult i32 %190, %174
  br i1 %191, label %181, label %192

192:                                              ; preds = %181, %173
  %193 = phi i32 [ 0, %173 ], [ %189, %181 ]
  %194 = getelementptr inbounds %struct.zone, ptr %164, i32 0, i32 15
  %195 = load ptr, ptr %194, align 16
  %196 = getelementptr %struct.zone, ptr %164, i32 0, i32 37, i32 0
  %197 = load volatile i32, ptr %196, align 4
  %198 = tail call i32 @llvm.smax.i32(i32 %197, i32 0) #31
  %199 = shl i32 %198, 2
  %200 = getelementptr inbounds %struct.zone, ptr %164, i32 0, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = shl i32 %201, 2
  %203 = load i32, ptr %164, align 64
  %204 = add i32 %203, %201
  %205 = shl i32 %204, 2
  %206 = getelementptr [3 x i32], ptr %164, i32 0, i32 1
  %207 = load i32, ptr %206, align 4
  %208 = add i32 %207, %201
  %209 = shl i32 %208, 2
  %210 = getelementptr [3 x i32], ptr %164, i32 0, i32 2
  %211 = load i32, ptr %210, align 8
  %212 = add i32 %211, %201
  %213 = shl i32 %212, 2
  %214 = getelementptr inbounds %struct.zone, ptr %164, i32 0, i32 2
  %215 = load i32, ptr %214, align 16
  %216 = shl i32 %215, 2
  %217 = getelementptr %struct.zone, ptr %164, i32 0, i32 37, i32 2
  %218 = load volatile i32, ptr %217, align 4
  %219 = tail call i32 @llvm.smax.i32(i32 %218, i32 0) #31
  %220 = shl i32 %219, 2
  %221 = getelementptr %struct.zone, ptr %164, i32 0, i32 37, i32 1
  %222 = load volatile i32, ptr %221, align 4
  %223 = tail call i32 @llvm.smax.i32(i32 %222, i32 0) #31
  %224 = shl i32 %223, 2
  %225 = getelementptr %struct.zone, ptr %164, i32 0, i32 37, i32 4
  %226 = load volatile i32, ptr %225, align 4
  %227 = tail call i32 @llvm.smax.i32(i32 %226, i32 0) #31
  %228 = shl i32 %227, 2
  %229 = getelementptr %struct.zone, ptr %164, i32 0, i32 37, i32 3
  %230 = load volatile i32, ptr %229, align 4
  %231 = tail call i32 @llvm.smax.i32(i32 %230, i32 0) #31
  %232 = shl i32 %231, 2
  %233 = getelementptr %struct.zone, ptr %164, i32 0, i32 37, i32 5
  %234 = load volatile i32, ptr %233, align 4
  %235 = tail call i32 @llvm.smax.i32(i32 %234, i32 0) #31
  %236 = shl i32 %235, 2
  %237 = getelementptr %struct.zone, ptr %164, i32 0, i32 37, i32 6
  %238 = load volatile i32, ptr %237, align 4
  %239 = tail call i32 @llvm.smax.i32(i32 %238, i32 0) #31
  %240 = shl i32 %239, 2
  %241 = shl i32 %166, 2
  %242 = getelementptr inbounds %struct.zone, ptr %164, i32 0, i32 11
  %243 = load volatile i32, ptr %242, align 4
  %244 = shl i32 %243, 2
  %245 = getelementptr %struct.zone, ptr %164, i32 0, i32 37, i32 7
  %246 = load volatile i32, ptr %245, align 4
  %247 = tail call i32 @llvm.smax.i32(i32 %246, i32 0) #31
  %248 = shl i32 %247, 2
  %249 = getelementptr %struct.zone, ptr %164, i32 0, i32 37, i32 8
  %250 = load volatile i32, ptr %249, align 4
  %251 = tail call i32 @llvm.smax.i32(i32 %250, i32 0) #31
  %252 = shl i32 %251, 2
  %253 = shl i32 %193, 2
  tail call void asm sideeffect "", "~{memory}"() #31, !srcloc !47
  %254 = getelementptr inbounds %struct.zone, ptr %164, i32 0, i32 5
  %255 = load ptr, ptr %254, align 8
  %256 = ptrtoint ptr %255 to i32
  %257 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %258 = inttoptr i32 %257 to ptr
  %259 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %258) #28, !srcloc !16
  %260 = add i32 %259, %256
  %261 = inttoptr i32 %260 to ptr
  %262 = load volatile i32, ptr %261, align 4
  tail call void asm sideeffect "", "~{memory}"() #31, !srcloc !48
  %263 = shl i32 %262, 2
  %264 = getelementptr %struct.zone, ptr %164, i32 0, i32 37, i32 9
  %265 = load volatile i32, ptr %264, align 4
  %266 = tail call i32 @llvm.smax.i32(i32 %265, i32 0) #31
  %267 = shl i32 %266, 2
  %268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %195, i32 noundef %199, i32 noundef %202, i32 noundef %205, i32 noundef %209, i32 noundef %213, i32 noundef %216, i32 noundef %220, i32 noundef %224, i32 noundef %228, i32 noundef %232, i32 noundef %236, i32 noundef %240, i32 noundef %241, i32 noundef %244, i32 noundef %248, i32 noundef %252, i32 noundef %253, i32 noundef %263, i32 noundef %267) #33
  %269 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #33
  %270 = getelementptr %struct.zone, ptr %164, i32 0, i32 3, i32 0
  %271 = load i32, ptr %270, align 4
  %272 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %271) #33
  %273 = getelementptr %struct.zone, ptr %164, i32 0, i32 3, i32 1
  %274 = load i32, ptr %273, align 4
  %275 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %274) #33
  %276 = getelementptr %struct.zone, ptr %164, i32 0, i32 3, i32 2
  %277 = load i32, ptr %276, align 4
  %278 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %277) #33
  %279 = getelementptr %struct.zone, ptr %164, i32 0, i32 3, i32 3
  %280 = load i32, ptr %279, align 4
  %281 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %280) #33
  %282 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #33
  br label %283

283:                                              ; preds = %192, %169, %163
  %284 = tail call ptr @next_zone(ptr noundef %164) #31
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %163

286:                                              ; preds = %283, %155
  %287 = tail call ptr @first_online_pgdat() #31
  %288 = icmp eq ptr %287, null
  br i1 %288, label %420, label %289

289:                                              ; preds = %286
  %290 = and i32 %0, 1
  %291 = icmp eq i32 %290, 0
  %292 = icmp eq ptr %1, null
  %293 = select i1 %292, ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4), ptr %1
  %294 = getelementptr inbounds i8, ptr %3, i32 1
  br label %295

295:                                              ; preds = %417, %289
  %296 = phi ptr [ %287, %289 ], [ %418, %417 ]
  %297 = getelementptr inbounds %struct.zone, ptr %296, i32 0, i32 13
  %298 = load i32, ptr %297, align 8
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %417, label %300

300:                                              ; preds = %295
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #31
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 48, i1 false), !annotation !30
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #31
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !30
  br i1 %291, label %305, label %301

301:                                              ; preds = %300
  %302 = load volatile i32, ptr %293, align 4
  %303 = and i32 %302, 1
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %416, label %305

305:                                              ; preds = %301, %300
  %306 = getelementptr inbounds %struct.zone, ptr %296, i32 0, i32 15
  %307 = load ptr, ptr %306, align 16
  %308 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %307) #33
  %309 = getelementptr inbounds %struct.zone, ptr %296, i32 0, i32 22
  %310 = call i32 @_raw_spin_lock_irqsave(ptr noundef %309) #31
  br label %311

311:                                              ; preds = %358, %305
  %312 = phi i32 [ 0, %305 ], [ %359, %358 ]
  %313 = phi i32 [ 0, %305 ], [ %360, %358 ]
  %314 = getelementptr %struct.zone, ptr %296, i32 0, i32 20, i32 %313
  %315 = getelementptr %struct.zone, ptr %296, i32 0, i32 20, i32 %313, i32 1
  %316 = load i32, ptr %315, align 4
  %317 = getelementptr [12 x i32], ptr %4, i32 0, i32 %313
  store i32 %316, ptr %317, align 4
  %318 = shl i32 %316, %313
  %319 = getelementptr [12 x i8], ptr %5, i32 0, i32 %313
  store i8 0, ptr %319, align 1
  %320 = load volatile ptr, ptr %314, align 4
  %321 = icmp eq ptr %320, %314
  br i1 %321, label %323, label %322

322:                                              ; preds = %311
  store i8 1, ptr %319, align 1
  br label %323

323:                                              ; preds = %322, %311
  %324 = phi i8 [ 0, %311 ], [ 1, %322 ]
  %325 = getelementptr [6 x %struct.list_head], ptr %314, i32 0, i32 1
  %326 = load volatile ptr, ptr %325, align 4
  %327 = icmp eq ptr %326, %325
  br i1 %327, label %330, label %328

328:                                              ; preds = %323
  %329 = or i8 %324, 2
  store i8 %329, ptr %319, align 1
  br label %330

330:                                              ; preds = %328, %323
  %331 = phi i8 [ %329, %328 ], [ %324, %323 ]
  %332 = getelementptr [6 x %struct.list_head], ptr %314, i32 0, i32 2
  %333 = load volatile ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, %332
  br i1 %334, label %337, label %335

335:                                              ; preds = %330
  %336 = or i8 %331, 4
  store i8 %336, ptr %319, align 1
  br label %337

337:                                              ; preds = %335, %330
  %338 = phi i8 [ %336, %335 ], [ %331, %330 ]
  %339 = getelementptr [6 x %struct.list_head], ptr %314, i32 0, i32 3
  %340 = load volatile ptr, ptr %339, align 4
  %341 = icmp eq ptr %340, %339
  br i1 %341, label %344, label %342

342:                                              ; preds = %337
  %343 = or i8 %338, 8
  store i8 %343, ptr %319, align 1
  br label %344

344:                                              ; preds = %342, %337
  %345 = phi i8 [ %343, %342 ], [ %338, %337 ]
  %346 = getelementptr [6 x %struct.list_head], ptr %314, i32 0, i32 4
  %347 = load volatile ptr, ptr %346, align 4
  %348 = icmp eq ptr %347, %346
  br i1 %348, label %351, label %349

349:                                              ; preds = %344
  %350 = or i8 %345, 16
  store i8 %350, ptr %319, align 1
  br label %351

351:                                              ; preds = %349, %344
  %352 = phi i8 [ %350, %349 ], [ %345, %344 ]
  %353 = getelementptr [6 x %struct.list_head], ptr %314, i32 0, i32 5
  %354 = load volatile ptr, ptr %353, align 4
  %355 = icmp eq ptr %354, %353
  br i1 %355, label %358, label %356

356:                                              ; preds = %351
  %357 = or i8 %352, 32
  store i8 %357, ptr %319, align 1
  br label %358

358:                                              ; preds = %356, %351
  %359 = add i32 %318, %312
  %360 = add nuw nsw i32 %313, 1
  %361 = icmp eq i32 %360, 12
  br i1 %361, label %362, label %311

362:                                              ; preds = %358
  call void @_raw_spin_unlock_irqrestore(ptr noundef %309, i32 noundef %310) #31
  br label %363

363:                                              ; preds = %410, %362
  %364 = phi i32 [ 0, %362 ], [ %411, %410 ]
  %365 = getelementptr [12 x i32], ptr %4, i32 0, i32 %364
  %366 = load i32, ptr %365, align 4
  %367 = shl nuw nsw i32 4, %364
  %368 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %366, i32 noundef %367) #33
  %369 = icmp eq i32 %366, 0
  br i1 %369, label %410, label %370

370:                                              ; preds = %363
  %371 = getelementptr [12 x i8], ptr %5, i32 0, i32 %364
  %372 = load i8, ptr %371, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #31
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %3, i8 0, i32 7, i1 false) #31, !annotation !30
  %373 = zext i8 %372 to i32
  %374 = and i32 %373, 1
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %377, label %376

376:                                              ; preds = %370
  store i8 85, ptr %3, align 1
  br label %377

377:                                              ; preds = %376, %370
  %378 = phi ptr [ %294, %376 ], [ %3, %370 ]
  %379 = and i32 %373, 2
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %383, label %381

381:                                              ; preds = %377
  %382 = getelementptr i8, ptr %378, i32 1
  store i8 77, ptr %378, align 1
  br label %383

383:                                              ; preds = %381, %377
  %384 = phi ptr [ %382, %381 ], [ %378, %377 ]
  %385 = and i32 %373, 4
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %389, label %387

387:                                              ; preds = %383
  %388 = getelementptr i8, ptr %384, i32 1
  store i8 69, ptr %384, align 1
  br label %389

389:                                              ; preds = %387, %383
  %390 = phi ptr [ %388, %387 ], [ %384, %383 ]
  %391 = and i32 %373, 8
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %395, label %393

393:                                              ; preds = %389
  %394 = getelementptr i8, ptr %390, i32 1
  store i8 72, ptr %390, align 1
  br label %395

395:                                              ; preds = %393, %389
  %396 = phi ptr [ %394, %393 ], [ %390, %389 ]
  %397 = and i32 %373, 16
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %401, label %399

399:                                              ; preds = %395
  %400 = getelementptr i8, ptr %396, i32 1
  store i8 67, ptr %396, align 1
  br label %401

401:                                              ; preds = %399, %395
  %402 = phi ptr [ %400, %399 ], [ %396, %395 ]
  %403 = and i32 %373, 32
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %407, label %405

405:                                              ; preds = %401
  %406 = getelementptr i8, ptr %402, i32 1
  store i8 73, ptr %402, align 1
  br label %407

407:                                              ; preds = %405, %401
  %408 = phi ptr [ %406, %405 ], [ %402, %401 ]
  store i8 0, ptr %408, align 1
  %409 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull %3) #33
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #31
  br label %410

410:                                              ; preds = %407, %363
  %411 = add nuw nsw i32 %364, 1
  %412 = icmp eq i32 %411, 12
  br i1 %412, label %413, label %363

413:                                              ; preds = %410
  %414 = shl i32 %359, 2
  %415 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %414) #33
  br label %416

416:                                              ; preds = %413, %301
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #31
  br label %417

417:                                              ; preds = %416, %295
  %418 = call ptr @next_zone(ptr noundef nonnull %296) #31
  %419 = icmp eq ptr %418, null
  br i1 %419, label %420, label %295

420:                                              ; preds = %417, %286
  %421 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 19), align 4
  %422 = call i32 @llvm.smax.i32(i32 %421, i32 0) #31
  %423 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %422) #33
  call void @show_swap_cache_info() #31
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_online_pgdat(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_swap_cache_info() local_unnamed_addr #3

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @build_all_zonelists(ptr noundef %0) local_unnamed_addr #19 section ".ref.text" {
  %2 = load i32, ptr @system_state, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call fastcc void @build_all_zonelists_init() #34
  br label %16

5:                                                ; preds = %1
  tail call void @_raw_spin_lock(ptr noundef nonnull @__build_all_zonelists.lock) #31
  %6 = icmp eq ptr %0, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %5
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi ptr [ @contig_page_data, %11 ], [ %0, %7 ]
  tail call fastcc void @build_zonelists(ptr noundef nonnull %13) #31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !35
  %14 = load i16, ptr @__build_all_zonelists.lock, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr @__build_all_zonelists.lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #31, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #31, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #31, !srcloc !38
  br label %16

16:                                               ; preds = %12, %4
  %17 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1), align 4
  %18 = icmp ugt i32 %17, 3
  br i1 %18, label %19, label %21, !prof !14

19:                                               ; preds = %16
  %20 = tail call ptr @__next_zones_zonelist(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), i32 noundef 3, ptr noundef null) #31
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi ptr [ %20, %19 ], [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), %16 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %48, label %25

25:                                               ; preds = %44, %21
  %26 = phi ptr [ %46, %44 ], [ %23, %21 ]
  %27 = phi ptr [ %45, %44 ], [ %22, %21 ]
  %28 = phi i32 [ %37, %44 ], [ 0, %21 ]
  %29 = getelementptr inbounds %struct.zone, ptr %26, i32 0, i32 11
  %30 = load volatile i32, ptr %29, align 4
  %31 = getelementptr [3 x i32], ptr %26, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.zone, ptr %26, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  %36 = tail call i32 @llvm.usub.sat.i32(i32 %30, i32 %35) #31
  %37 = add i32 %36, %28
  %38 = getelementptr %struct.zoneref, ptr %27, i32 1
  %39 = getelementptr %struct.zoneref, ptr %27, i32 1, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp ugt i32 %40, 3
  br i1 %41, label %42, label %44, !prof !14

42:                                               ; preds = %25
  %43 = tail call ptr @__next_zones_zonelist(ptr noundef %38, i32 noundef 3, ptr noundef null) #31
  br label %44

44:                                               ; preds = %42, %25
  %45 = phi ptr [ %43, %42 ], [ %38, %25 ]
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %25

48:                                               ; preds = %44, %21
  %49 = phi i32 [ 0, %21 ], [ %37, %44 ]
  %50 = icmp ult i32 %49, 12288
  %51 = select i1 %50, ptr @.str.22, ptr @.str.23
  %52 = zext i1 %50 to i32
  store i32 %52, ptr @page_group_by_mobility_disabled, align 4
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 1, ptr noundef nonnull %51, i32 noundef %49) #33
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @build_all_zonelists_init() unnamed_addr #20 section ".init.text" {
  tail call void @_raw_spin_lock(ptr noundef nonnull @__build_all_zonelists.lock) #31
  tail call fastcc void @build_zonelists(ptr noundef nonnull @contig_page_data) #31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !35
  %1 = load i16, ptr @__build_all_zonelists.lock, align 4
  %2 = add i16 %1, 1
  store i16 %2, ptr @__build_all_zonelists.lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #31, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #31, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #31, !srcloc !38
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #32
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %6, %0
  %7 = phi i32 [ %14, %6 ], [ %3, %0 ]
  %8 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, ptrtoint (ptr @boot_pageset to i32)
  %11 = inttoptr i32 %10 to ptr
  %12 = add i32 %9, ptrtoint (ptr @boot_zonestats to i32)
  %13 = inttoptr i32 %12 to ptr
  tail call fastcc void @per_cpu_pages_init(ptr noundef %11, ptr noundef %13)
  %14 = tail call i32 @cpumask_next(i32 noundef %7, ptr noundef nonnull @__cpu_possible_mask) #32
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %6, label %17

17:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @memmap_init_range(i32 noundef %0, i32 %1, i32 noundef %2, i32 noundef %3, i32 %4, i32 noundef %5, ptr nocapture readnone %6, i32 noundef %7) local_unnamed_addr #0 section ".meminit.text" {
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #31
  %10 = add i32 %3, %0
  %11 = load i32, ptr @highest_memmap_pfn, align 4
  %12 = add i32 %10, -1
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 %12, ptr @highest_memmap_pfn, align 4
  br label %15

15:                                               ; preds = %14, %8
  store i32 %3, ptr %9, align 4
  %16 = icmp ugt i32 %10, %3
  br i1 %16, label %17, label %49

17:                                               ; preds = %15
  %18 = icmp eq i32 %5, 0
  %19 = shl i32 %2, 30
  %20 = icmp eq i32 %5, 1
  %21 = or i32 %19, 4096
  br label %22

22:                                               ; preds = %46, %17
  %23 = phi i32 [ %3, %17 ], [ %47, %46 ]
  br i1 %18, label %24, label %27

24:                                               ; preds = %22
  %25 = call fastcc zeroext i1 @overlap_memmap_init(i32 noundef %2, ptr noundef nonnull %9) #34
  %26 = load i32, ptr %9, align 4
  br i1 %25, label %46, label %27

27:                                               ; preds = %24, %22
  %28 = phi i32 [ %23, %22 ], [ %26, %24 ]
  %29 = load ptr, ptr @mem_map, align 4
  %30 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %31 = sub i32 %28, %30
  %32 = getelementptr %struct.page, ptr %29, i32 %31
  %33 = getelementptr inbounds i8, ptr %32, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %33, i8 0, i32 12, i1 false) #31
  store i32 %19, ptr %32, align 4
  %34 = getelementptr %struct.page, ptr %29, i32 %31, i32 3
  store volatile i32 1, ptr %34, align 4
  %35 = getelementptr %struct.page, ptr %29, i32 %31, i32 2
  store volatile i32 -1, ptr %35, align 4
  %36 = getelementptr %struct.page, ptr %29, i32 %31, i32 1
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr %struct.page, ptr %29, i32 %31, i32 1, i32 0, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  br i1 %20, label %38, label %39

38:                                               ; preds = %27
  store i32 %21, ptr %32, align 4
  br label %39

39:                                               ; preds = %38, %27
  %40 = and i32 %28, 2047
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  tail call void @set_pageblock_migratetype(ptr noundef %32, i32 noundef %7)
  %43 = tail call i32 @__cond_resched() #31
  br label %44

44:                                               ; preds = %42, %39
  %45 = add i32 %28, 1
  store i32 %45, ptr %9, align 4
  br label %46

46:                                               ; preds = %44, %24
  %47 = phi i32 [ %45, %44 ], [ %26, %24 ]
  %48 = icmp ult i32 %47, %10
  br i1 %48, label %22, label %49

49:                                               ; preds = %46, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #31
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc zeroext i1 @overlap_memmap_init(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #21 section ".meminit.text" {
  %3 = load i1, ptr @mirrored_kernelcore, align 1
  %4 = icmp eq i32 %0, 3
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %54

6:                                                ; preds = %2
  %7 = load ptr, ptr @overlap_memmap_init.r, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %1, align 4
  %11 = load i32, ptr %7, align 4
  %12 = getelementptr inbounds %struct.memblock_region, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = lshr i32 %14, 12
  %16 = icmp ult i32 %10, %15
  br i1 %16, label %37, label %17

17:                                               ; preds = %9, %6
  %18 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %19 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %20 = getelementptr %struct.memblock_region, ptr %18, i32 %19
  %21 = icmp ult ptr %18, %20
  %22 = load i32, ptr %1, align 4
  br i1 %21, label %23, label %34

23:                                               ; preds = %31, %17
  %24 = phi ptr [ %32, %31 ], [ %18, %17 ]
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.memblock_region, ptr %24, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = lshr i32 %28, 12
  %30 = icmp ult i32 %22, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = getelementptr %struct.memblock_region, ptr %24, i32 1
  %33 = icmp ult ptr %32, %20
  br i1 %33, label %23, label %34

34:                                               ; preds = %31, %23, %17
  %35 = phi ptr [ %18, %17 ], [ %24, %23 ], [ %32, %31 ]
  store ptr %35, ptr @overlap_memmap_init.r, align 4
  %36 = load i32, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %9
  %38 = phi i32 [ %36, %34 ], [ %11, %9 ]
  %39 = phi ptr [ %35, %34 ], [ %7, %9 ]
  %40 = phi i32 [ %22, %34 ], [ %10, %9 ]
  %41 = add i32 %38, 4095
  %42 = lshr i32 %41, 12
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.memblock_region, ptr %39, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.memblock_region, ptr %39, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %38
  %53 = lshr i32 %52, 12
  store i32 %53, ptr %1, align 4
  br label %54

54:                                               ; preds = %49, %44, %37, %2
  %55 = phi i1 [ true, %49 ], [ false, %37 ], [ false, %44 ], [ false, %2 ]
  ret i1 %55
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @memmap_alloc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 section ".init.text" {
  br i1 %4, label %6, label %8

6:                                                ; preds = %5
  %7 = tail call ptr @memblock_alloc_exact_nid_raw(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef %3) #31
  br label %10

8:                                                ; preds = %5
  %9 = tail call ptr @memblock_alloc_try_nid_raw(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef %3) #31
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %7, %6 ], [ %9, %8 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_exact_nid_raw(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid_raw(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @setup_zone_pageset(ptr noundef %0) local_unnamed_addr #0 section ".meminit.text" {
  %2 = tail call noalias ptr @__alloc_percpu(i32 noundef 11, i32 noundef 1) #35
  %3 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 6
  store ptr %2, ptr %3, align 4
  %4 = tail call noalias ptr @__alloc_percpu(i32 noundef 112, i32 noundef 4) #35
  %5 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 5
  store ptr %4, ptr %5, align 8
  %6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #32
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = ptrtoint ptr %4 to i32
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = inttoptr i32 %13 to ptr
  %15 = load ptr, ptr %3, align 4
  %16 = ptrtoint ptr %15 to i32
  %17 = add i32 %12, %16
  %18 = inttoptr i32 %17 to ptr
  tail call fastcc void @per_cpu_pages_init(ptr noundef %14, ptr noundef %18)
  %19 = tail call i32 @cpumask_next(i32 noundef %6, ptr noundef nonnull @__cpu_possible_mask) #32
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %22, %9
  %23 = phi i32 [ %34, %22 ], [ %19, %9 ]
  %24 = load ptr, ptr %5, align 8
  %25 = ptrtoint ptr %24 to i32
  %26 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = inttoptr i32 %28 to ptr
  %30 = load ptr, ptr %3, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = add i32 %27, %31
  %33 = inttoptr i32 %32 to ptr
  tail call fastcc void @per_cpu_pages_init(ptr noundef %29, ptr noundef %33)
  %34 = tail call i32 @cpumask_next(i32 noundef %23, ptr noundef nonnull @__cpu_possible_mask) #32
  %35 = load i32, ptr @nr_cpu_ids, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %22, label %37

37:                                               ; preds = %22, %9, %1
  tail call fastcc void @zone_set_pageset_high_and_batch(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @per_cpu_pages_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 {
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(112) %0, i8 0, i32 16, i1 false)
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(11) %1, i8 0, i32 11, i1 false)
  %3 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 0
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 1
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 1, i32 1
  store ptr %5, ptr %6, align 4
  %7 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 2
  store volatile ptr %7, ptr %7, align 4
  %8 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 2, i32 1
  store ptr %7, ptr %8, align 4
  %9 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 3
  store volatile ptr %9, ptr %9, align 4
  %10 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 3, i32 1
  store ptr %9, ptr %10, align 4
  %11 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 4
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 4, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 5
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 5, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 6
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 6, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 7
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 7, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 8
  store volatile ptr %19, ptr %19, align 4
  %20 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 8, i32 1
  store ptr %19, ptr %20, align 4
  %21 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 9
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 9, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 10
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 10, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 11
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr %struct.per_cpu_pages, ptr %0, i32 0, i32 4, i32 11, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.per_cpu_pages, ptr %0, i32 0, i32 1
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.per_cpu_pages, ptr %0, i32 0, i32 2
  store i32 1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.per_cpu_pages, ptr %0, i32 0, i32 3
  store i16 0, ptr %29, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @zone_set_pageset_high_and_batch(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 11
  %4 = load volatile i32, ptr %3, align 4
  %5 = lshr i32 %4, 10
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 256) #31
  %7 = icmp ult i32 %6, 4
  %8 = lshr i32 %6, 2
  %9 = select i1 %7, i32 1, i32 %8
  %10 = lshr i32 %9, 1
  %11 = add nuw nsw i32 %10, %9
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 false) #31, !range !46
  %13 = lshr i32 -2147483648, %12
  %14 = add i32 %13, -1
  %15 = tail call i32 @llvm.smax.i32(i32 %14, i32 1)
  %16 = load i32, ptr @percpu_pagelist_high_fraction, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = getelementptr [3 x i32], ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  br label %27

24:                                               ; preds = %2
  %25 = load volatile i32, ptr %3, align 4
  %26 = udiv i32 %25, %16
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi i32 [ %26, %24 ], [ %23, %18 ]
  %29 = load i32, ptr @__cpu_online_mask, align 4
  %30 = and i32 %29, 65535
  %31 = tail call i32 @__sw_hweight32(i32 noundef %30) #31
  %32 = add i32 %31, %1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load volatile i32, ptr @__num_online_cpus, align 4
  br label %36

36:                                               ; preds = %34, %27
  %37 = phi i32 [ %32, %27 ], [ %35, %34 ]
  %38 = udiv i32 %28, %37
  %39 = shl i32 %15, 2
  %40 = tail call i32 @llvm.smax.i32(i32 %38, i32 %39) #31
  %41 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 7
  %42 = load i32, ptr %41, align 16
  %43 = icmp eq i32 %42, %40
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 8
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %15
  br i1 %47, label %67, label %48

48:                                               ; preds = %44, %36
  store i32 %40, ptr %41, align 16
  %49 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 8
  store i32 %15, ptr %49, align 4
  %50 = load i32, ptr @nr_cpu_ids, align 4
  %51 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #32
  %52 = icmp ult i32 %51, %50
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 5
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi i32 [ %51, %53 ], [ %65, %55 ]
  %57 = load ptr, ptr %54, align 8
  %58 = ptrtoint ptr %57 to i32
  %59 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, %58
  %62 = inttoptr i32 %61 to ptr
  %63 = getelementptr inbounds %struct.per_cpu_pages, ptr %62, i32 0, i32 2
  store volatile i32 %15, ptr %63, align 4
  %64 = getelementptr inbounds %struct.per_cpu_pages, ptr %62, i32 0, i32 1
  store volatile i32 %40, ptr %64, align 4
  %65 = tail call i32 @cpumask_next(i32 noundef %56, ptr noundef nonnull @__cpu_possible_mask) #32
  %66 = icmp ult i32 %65, %50
  br i1 %66, label %55, label %67

67:                                               ; preds = %55, %48, %44
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @setup_per_cpu_pageset() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @first_online_pgdat() #31
  %2 = icmp eq ptr %1, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %9, %0
  %4 = phi ptr [ %10, %9 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.zone, ptr %4, i32 0, i32 13
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @setup_zone_pageset(ptr noundef nonnull %4) #34
  br label %9

9:                                                ; preds = %8, %3
  %10 = tail call ptr @next_zone(ptr noundef nonnull %4) #31
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %3

12:                                               ; preds = %9, %0
  %13 = tail call ptr @first_online_pgdat() #31
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %15, %12
  %16 = phi ptr [ %19, %15 ], [ %13, %12 ]
  %17 = tail call noalias ptr @__alloc_percpu(i32 noundef 41, i32 noundef 1) #35
  %18 = getelementptr inbounds %struct.pglist_data, ptr %16, i32 0, i32 28
  store ptr %17, ptr %18, align 64
  %19 = tail call ptr @next_online_pgdat(ptr noundef nonnull %16) #31
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %15

21:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: cold nofree norecurse nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @init_currently_empty_zone(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #23 section ".meminit.text" {
  %4 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = ptrtoint ptr %0 to i32
  %7 = ptrtoint ptr %5 to i32
  %8 = sub i32 %6, %7
  %9 = sdiv exact i32 %8, 896
  %10 = getelementptr inbounds %struct.pglist_data, ptr %5, i32 0, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = add nsw i32 %9, 1
  store i32 %14, ptr %10, align 8
  br label %15

15:                                               ; preds = %13, %3
  %16 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 10
  store i32 %1, ptr %16, align 4
  br label %17

17:                                               ; preds = %27, %15
  %18 = phi i32 [ 0, %15 ], [ %28, %27 ]
  %19 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %18
  %20 = getelementptr %struct.zone, ptr %0, i32 0, i32 20, i32 %18, i32 1
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi i32 [ 0, %17 ], [ %25, %21 ]
  %23 = getelementptr [6 x %struct.list_head], ptr %19, i32 0, i32 %22
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr [6 x %struct.list_head], ptr %19, i32 0, i32 %22, i32 1
  store ptr %23, ptr %24, align 4
  store i32 0, ptr %20, align 4
  %25 = add nuw nsw i32 %22, 1
  %26 = icmp eq i32 %25, 6
  br i1 %26, label %27, label %21

27:                                               ; preds = %21
  %28 = add nuw nsw i32 %18, 1
  %29 = icmp eq i32 %28, 12
  br i1 %29, label %30, label %17

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 17
  store i32 1, ptr %31, align 8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @get_pfn_range_for_nid(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #31
  store i32 0, ptr %4, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #31
  store i32 0, ptr %5, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #31
  store i32 -1, ptr %1, align 4
  store i32 0, ptr %2, align 4
  store i32 -1, ptr %6, align 4
  call void @__next_mem_pfn_range(ptr noundef nonnull %6, i32 noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #31
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %18

9:                                                ; preds = %9, %3
  %10 = load i32, ptr %1, align 4
  %11 = load i32, ptr %4, align 4
  %12 = call i32 @llvm.umin.i32(i32 %10, i32 %11)
  store i32 %12, ptr %1, align 4
  %13 = load i32, ptr %2, align 4
  %14 = load i32, ptr %5, align 4
  %15 = call i32 @llvm.umax.i32(i32 %13, i32 %14)
  store i32 %15, ptr %2, align 4
  call void @__next_mem_pfn_range(ptr noundef nonnull %6, i32 noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #31
  %16 = load i32, ptr %6, align 4
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %9, label %18

18:                                               ; preds = %9, %3
  %19 = load i32, ptr %1, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, ptr %1, align 4
  br label %22

22:                                               ; preds = %21, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__next_mem_pfn_range(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @__absent_pages_in_range(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 section ".init.text" {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = sub i32 %2, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #31
  store i32 0, ptr %4, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #31
  store i32 0, ptr %5, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #31
  store i32 -1, ptr %6, align 4
  call void @__next_mem_pfn_range(ptr noundef nonnull %6, i32 noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #31
  %8 = load i32, ptr %6, align 4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %22

10:                                               ; preds = %10, %3
  %11 = phi i32 [ %19, %10 ], [ %7, %3 ]
  %12 = load i32, ptr %4, align 4
  %13 = call i32 @llvm.umax.i32(i32 %12, i32 %1)
  %14 = call i32 @llvm.umin.i32(i32 %13, i32 %2)
  store i32 %14, ptr %4, align 4
  %15 = load i32, ptr %5, align 4
  %16 = call i32 @llvm.umax.i32(i32 %15, i32 %1)
  %17 = call i32 @llvm.umin.i32(i32 %16, i32 %2)
  store i32 %17, ptr %5, align 4
  %18 = add i32 %14, %11
  %19 = sub i32 %18, %17
  call void @__next_mem_pfn_range(ptr noundef nonnull %6, i32 noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #31
  %20 = load i32, ptr %6, align 4
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %10, label %22

22:                                               ; preds = %10, %3
  %23 = phi i32 [ %7, %3 ], [ %19, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #31
  ret i32 %23
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @absent_pages_in_range(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = tail call i32 @__absent_pages_in_range(i32 noundef 1, i32 noundef %0, i32 noundef %1) #34
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define dso_local void @set_pageblock_order() local_unnamed_addr #24 section ".init.text" {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @free_area_init_memoryless_node(i32 noundef %0) local_unnamed_addr #0 section ".init.text" {
  tail call fastcc void @free_area_init_node(i32 noundef %0) #34
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @free_area_init_node(i32 noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #31
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #31
  store i32 0, ptr %3, align 4
  %4 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 2), align 8
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 15), align 8
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %10, !prof !14

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 7652, i32 noundef 9, ptr noundef null) #31
  br label %10

10:                                               ; preds = %9, %1
  call void @get_pfn_range_for_nid(i32 noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #34
  store i32 %0, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 7), align 4
  %11 = load i32, ptr %2, align 4
  store i32 %11, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 4), align 16
  store ptr null, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 28), align 64
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 12
  %14 = load i32, ptr %3, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i32 %14 to i64
  %17 = shl nuw nsw i64 %16, 12
  %18 = add nsw i64 %17, -1
  %19 = select i1 %15, i64 0, i64 %18
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %0, i64 noundef %13, i64 noundef %19) #33
  tail call fastcc void @calculate_node_totalpages(i32 noundef %11, i32 noundef %14) #34
  tail call fastcc void @alloc_node_mem_map() #34
  tail call fastcc void @free_area_init_core() #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #31
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @node_map_pfn_alignment() local_unnamed_addr #0 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #31
  store i32 0, ptr %1, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #31
  store i32 0, ptr %2, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #31
  store i32 0, ptr %4, align 4, !annotation !30
  store i32 -1, ptr %3, align 4
  call void @__next_mem_pfn_range(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4) #31
  %5 = load i32, ptr %3, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %38

7:                                                ; preds = %32, %0
  %8 = phi i32 [ %35, %32 ], [ -1, %0 ]
  %9 = phi i32 [ %34, %32 ], [ 0, %0 ]
  %10 = phi i32 [ %33, %32 ], [ 0, %0 ]
  %11 = load i32, ptr %1, align 4
  %12 = icmp eq i32 %11, 0
  %13 = icmp slt i32 %8, 0
  %14 = select i1 %12, i1 true, i1 %13
  %15 = load i32, ptr %4, align 4
  %16 = icmp eq i32 %8, %15
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %7
  %19 = load i32, ptr %2, align 4
  br label %32

20:                                               ; preds = %7
  %21 = call i32 @llvm.cttz.i32(i32 %11, i1 false) #31, !range !46
  %22 = shl nsw i32 -1, %21
  br label %23

23:                                               ; preds = %26, %20
  %24 = phi i32 [ %22, %20 ], [ %27, %26 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = shl i32 %24, 1
  %28 = and i32 %27, %11
  %29 = icmp ugt i32 %9, %28
  br i1 %29, label %30, label %23

30:                                               ; preds = %26, %23
  %31 = or i32 %24, %10
  br label %32

32:                                               ; preds = %30, %18
  %33 = phi i32 [ %10, %18 ], [ %31, %30 ]
  %34 = phi i32 [ %19, %18 ], [ %9, %30 ]
  %35 = phi i32 [ %15, %18 ], [ %8, %30 ]
  call void @__next_mem_pfn_range(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4) #31
  %36 = load i32, ptr %3, align 4
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %7, label %38

38:                                               ; preds = %32, %0
  %39 = phi i32 [ 0, %0 ], [ %33, %32 ]
  %40 = sub i32 0, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #31
  ret i32 %40
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @find_min_pfn_with_active_regions() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @memblock_start_of_DRAM() #31
  %2 = lshr i32 %1, 12
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_start_of_DRAM() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local zeroext i1 @arch_has_descending_max_zone_pfns() local_unnamed_addr #1 {
  ret i1 false
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @free_area_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #31
  store i32 0, ptr %4, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #31
  store i32 0, ptr %5, align 4, !annotation !30
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) @arch_zone_lowest_possible_pfn, i8 0, i32 16, i1 false)
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) @arch_zone_highest_possible_pfn, i8 0, i32 16, i1 false)
  %6 = tail call i32 @memblock_start_of_DRAM() #31
  %7 = lshr i32 %6, 12
  %8 = tail call zeroext i1 @arch_has_descending_max_zone_pfns()
  br label %9

9:                                                ; preds = %22, %1
  %10 = phi i32 [ 0, %1 ], [ %25, %22 ]
  %11 = phi i32 [ %7, %1 ], [ %24, %22 ]
  %12 = phi i32 [ 0, %1 ], [ %23, %22 ]
  %13 = sub nuw nsw i32 3, %10
  %14 = select i1 %8, i32 %13, i32 %10
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %22, label %16

16:                                               ; preds = %9
  %17 = getelementptr i32, ptr %0, i32 %14
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @llvm.umax.i32(i32 %18, i32 %11)
  %20 = getelementptr [4 x i32], ptr @arch_zone_lowest_possible_pfn, i32 0, i32 %14
  store i32 %11, ptr %20, align 4
  %21 = getelementptr [4 x i32], ptr @arch_zone_highest_possible_pfn, i32 0, i32 %14
  store i32 %19, ptr %21, align 4
  br label %22

22:                                               ; preds = %16, %9
  %23 = phi i32 [ %12, %9 ], [ %19, %16 ]
  %24 = phi i32 [ %11, %9 ], [ %19, %16 ]
  %25 = add nuw nsw i32 %10, 1
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %9

27:                                               ; preds = %22
  store i32 %24, ptr %2, align 4
  store i32 %23, ptr %3, align 4
  store i32 0, ptr @zone_movable_pfn, align 4
  tail call fastcc void @find_zone_movable_pfns_for_nodes() #34
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #33
  br label %29

29:                                               ; preds = %48, %27
  %30 = phi i32 [ 0, %27 ], [ %49, %48 ]
  %31 = getelementptr [4 x ptr], ptr @zone_names, i32 0, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %32) #33
  %34 = getelementptr [4 x i32], ptr @arch_zone_lowest_possible_pfn, i32 0, i32 %30
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr [4 x i32], ptr @arch_zone_highest_possible_pfn, i32 0, i32 %30
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #33
  br label %48

41:                                               ; preds = %29
  %42 = zext i32 %35 to i64
  %43 = shl nuw nsw i64 %42, 12
  %44 = zext i32 %37 to i64
  %45 = shl nuw nsw i64 %44, 12
  %46 = add nsw i64 %45, -1
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i64 noundef %43, i64 noundef %46) #33
  br label %48

48:                                               ; preds = %41, %39
  %49 = add nuw nsw i32 %30, 1
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %29

51:                                               ; preds = %48
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #33
  %53 = load i32, ptr @zone_movable_pfn, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = zext i32 %53 to i64
  %57 = shl nuw nsw i64 %56, 12
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef 0, i64 noundef %57) #33
  br label %59

59:                                               ; preds = %55, %51
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #33
  store i32 -1, ptr %4, align 4
  call void @__next_mem_pfn_range(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %5) #31
  %61 = load i32, ptr %4, align 4
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %63, label %75

63:                                               ; preds = %63, %59
  %64 = load i32, ptr %5, align 4
  %65 = load i32, ptr %2, align 4
  %66 = zext i32 %65 to i64
  %67 = shl nuw nsw i64 %66, 12
  %68 = load i32, ptr %3, align 4
  %69 = zext i32 %68 to i64
  %70 = shl nuw nsw i64 %69, 12
  %71 = add nsw i64 %70, -1
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %64, i64 noundef %67, i64 noundef %71) #33
  call void @__next_mem_pfn_range(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %5) #31
  %73 = load i32, ptr %4, align 4
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %63, label %75

75:                                               ; preds = %63, %59
  store i32 0, ptr %5, align 4
  call fastcc void @free_area_init_node(i32 noundef 0) #34
  store i32 1, ptr %5, align 4
  call fastcc void @memmap_init() #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #31
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @find_zone_movable_pfns_for_nodes() unnamed_addr #0 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #31
  %4 = load i32, ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4), align 4
  %5 = tail call fastcc i32 @early_calculate_totalpages() #34
  %6 = load i32, ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4), align 4
  %7 = and i32 %6, 1
  %8 = tail call i32 @__sw_hweight32(i32 noundef %7) #31
  br label %9

9:                                                ; preds = %18, %0
  %10 = phi i32 [ 3, %0 ], [ %19, %18 ]
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = getelementptr [4 x i32], ptr @arch_zone_highest_possible_pfn, i32 0, i32 %10
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr [4 x i32], ptr @arch_zone_lowest_possible_pfn, i32 0, i32 %10
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %12, %9
  %19 = add nsw i32 %10, -1
  %20 = icmp eq i32 %10, 0
  br i1 %20, label %21, label %9

21:                                               ; preds = %18, %12
  %22 = phi i32 [ %10, %12 ], [ -1, %18 ]
  store i32 %22, ptr @movable_zone, align 4
  %23 = load i1, ptr @mirrored_kernelcore, align 1
  br i1 %23, label %24, label %42

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %26 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %27 = getelementptr %struct.memblock_region, ptr %25, i32 %26
  %28 = icmp ult ptr %25, %27
  br i1 %28, label %29, label %125

29:                                               ; preds = %29, %24
  %30 = phi ptr [ %37, %29 ], [ %25, %24 ]
  %31 = phi i1 [ %36, %29 ], [ false, %24 ]
  %32 = getelementptr inbounds %struct.memblock_region, ptr %30, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i1 true, i1 %31
  %37 = getelementptr %struct.memblock_region, ptr %30, i32 1
  %38 = icmp ult ptr %37, %27
  br i1 %38, label %29, label %39

39:                                               ; preds = %29
  br i1 %36, label %40, label %125

40:                                               ; preds = %39
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70) #33
  br label %125

42:                                               ; preds = %21
  %43 = load i32, ptr @required_kernelcore_percent, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = mul i32 %5, 100
  %47 = mul i32 %46, %43
  %48 = udiv i32 %47, 10000
  store i32 %48, ptr @required_kernelcore, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, ptr @required_movablecore_percent, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = mul i32 %5, 100
  %54 = mul i32 %53, %50
  %55 = udiv i32 %54, 10000
  store i32 %55, ptr @required_movablecore, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, ptr @required_movablecore, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i32 [ %57, %56 ], [ %55, %52 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, ptr @required_kernelcore, align 4
  br label %70

63:                                               ; preds = %58
  %64 = add i32 %59, 2047
  %65 = and i32 %64, -2048
  %66 = tail call i32 @llvm.umin.i32(i32 %5, i32 %65)
  store i32 %66, ptr @required_movablecore, align 4
  %67 = sub i32 %5, %66
  %68 = load i32, ptr @required_kernelcore, align 4
  %69 = tail call i32 @llvm.umax.i32(i32 %68, i32 %67)
  store i32 %69, ptr @required_kernelcore, align 4
  br label %70

70:                                               ; preds = %63, %61
  %71 = phi i32 [ %62, %61 ], [ %69, %63 ]
  %72 = icmp ne i32 %71, 0
  %73 = icmp ult i32 %71, %5
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %75, label %129

75:                                               ; preds = %70
  %76 = getelementptr [4 x i32], ptr @arch_zone_lowest_possible_pfn, i32 0, i32 %22
  %77 = load i32, ptr %76, align 4
  br label %78

78:                                               ; preds = %119, %75
  %79 = phi i32 [ %71, %75 ], [ %122, %119 ]
  %80 = phi i32 [ %8, %75 ], [ %120, %119 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #31
  store i32 0, ptr %2, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #31
  store i32 0, ptr %3, align 4, !annotation !30
  store i32 -1, ptr %1, align 4
  call void @__next_mem_pfn_range(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null) #31
  %81 = load i32, ptr %1, align 4
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %83, label %119

83:                                               ; preds = %78
  %84 = udiv i32 %79, %80
  br label %85

85:                                               ; preds = %115, %83
  %86 = phi i32 [ %116, %115 ], [ %84, %83 ]
  %87 = load i32, ptr %2, align 4
  %88 = load i32, ptr @zone_movable_pfn, align 4
  %89 = call i32 @llvm.umax.i32(i32 %87, i32 %88)
  store i32 %89, ptr %2, align 4
  %90 = load i32, ptr %3, align 4
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %85
  %93 = icmp ult i32 %89, %77
  br i1 %93, label %96, label %94

94:                                               ; preds = %92
  %95 = load i32, ptr @required_kernelcore, align 4
  br label %105

96:                                               ; preds = %92
  %97 = call i32 @llvm.umin.i32(i32 %90, i32 %77)
  %98 = sub i32 %97, %89
  %99 = call i32 @llvm.usub.sat.i32(i32 %86, i32 %98)
  %100 = load i32, ptr @required_kernelcore, align 4
  %101 = call i32 @llvm.usub.sat.i32(i32 %100, i32 %98)
  store i32 %101, ptr @required_kernelcore, align 4
  %102 = icmp ugt i32 %90, %77
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 %77, ptr %2, align 4
  br label %105

104:                                              ; preds = %96
  store i32 %90, ptr @zone_movable_pfn, align 4
  br label %115

105:                                              ; preds = %103, %94
  %106 = phi i32 [ %95, %94 ], [ %101, %103 ]
  %107 = phi i32 [ %89, %94 ], [ %77, %103 ]
  %108 = phi i32 [ %86, %94 ], [ %99, %103 ]
  %109 = sub i32 %90, %107
  %110 = call i32 @llvm.umin.i32(i32 %109, i32 %108)
  %111 = add i32 %110, %107
  store i32 %111, ptr @zone_movable_pfn, align 4
  %112 = call i32 @llvm.usub.sat.i32(i32 %106, i32 %110)
  store i32 %112, ptr @required_kernelcore, align 4
  %113 = sub i32 %108, %110
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %105, %104, %85
  %116 = phi i32 [ %113, %105 ], [ %86, %85 ], [ %99, %104 ]
  call void @__next_mem_pfn_range(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef null) #31
  %117 = load i32, ptr %1, align 4
  %118 = icmp sgt i32 %117, -1
  br i1 %118, label %85, label %119

119:                                              ; preds = %115, %105, %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #31
  %120 = add i32 %80, -1
  %121 = icmp ne i32 %120, 0
  %122 = load i32, ptr @required_kernelcore, align 4
  %123 = icmp ugt i32 %122, %120
  %124 = select i1 %121, i1 %123, i1 false
  br i1 %124, label %78, label %125

125:                                              ; preds = %119, %40, %39, %24
  %126 = load i32, ptr @zone_movable_pfn, align 4
  %127 = add i32 %126, 2047
  %128 = and i32 %127, -2048
  store i32 %128, ptr @zone_movable_pfn, align 4
  br label %129

129:                                              ; preds = %125, %70
  store i32 %4, ptr getelementptr inbounds ([7 x %struct.nodemask_t], ptr @node_states, i32 0, i32 4), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #31
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @memmap_init() unnamed_addr #0 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #31
  store i32 0, ptr %1, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #31
  store i32 0, ptr %2, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #31
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #31
  store i32 0, ptr %5, align 4, !annotation !30
  store i32 -1, ptr %4, align 4
  call void @__next_mem_pfn_range(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %5) #31
  %6 = load i32, ptr %4, align 4
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %29

8:                                                ; preds = %22, %0
  %9 = phi i32 [ %19, %22 ], [ 0, %0 ]
  %10 = phi i32 [ %23, %22 ], [ 0, %0 ]
  %11 = getelementptr %struct.zone, ptr @contig_page_data, i32 %10, i32 13
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr %struct.zone, ptr @contig_page_data, i32 %10
  %16 = load i32, ptr %1, align 4
  %17 = load i32, ptr %2, align 4
  call fastcc void @memmap_init_zone_range(ptr noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef nonnull %3) #34
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi i32 [ %10, %14 ], [ %9, %8 ]
  %20 = add nuw nsw i32 %10, 1
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %24, label %22

22:                                               ; preds = %24, %18
  %23 = phi i32 [ %20, %18 ], [ 0, %24 ]
  br label %8

24:                                               ; preds = %18
  call void @__next_mem_pfn_range(ptr noundef nonnull %4, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %5) #31
  %25 = load i32, ptr %4, align 4
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %22, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %3, align 4
  br label %29

29:                                               ; preds = %27, %0
  %30 = phi i32 [ 0, %0 ], [ %28, %27 ]
  %31 = phi i32 [ 0, %0 ], [ %19, %27 ]
  %32 = load i32, ptr %2, align 4
  %33 = load i32, ptr %5, align 4
  call fastcc void @init_unavailable_range(i32 noundef %30, i32 noundef %32, i32 noundef %31, i32 noundef %33) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #31
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cmdline_parse_kernelcore(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call zeroext i1 @parse_option_str(ptr noundef %0, ptr noundef nonnull @.str.75) #31
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  store i1 true, ptr @mirrored_kernelcore, align 1
  br label %6

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @cmdline_parse_core(ptr noundef %0, ptr noundef nonnull @required_kernelcore, ptr noundef nonnull @required_kernelcore_percent) #34
  br label %6

6:                                                ; preds = %4, %3
  %7 = phi i32 [ 0, %3 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @cmdline_parse_movablecore(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc i32 @cmdline_parse_core(ptr noundef %0, ptr noundef nonnull @required_movablecore, ptr noundef nonnull @required_movablecore_percent) #34
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @free_reserved_area(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = ptrtoint ptr %0 to i32
  %6 = add i32 %5, 4095
  %7 = and i32 %6, -4096
  %8 = inttoptr i32 %7 to ptr
  %9 = ptrtoint ptr %1 to i32
  %10 = and i32 %9, -4096
  %11 = inttoptr i32 %10 to ptr
  %12 = icmp ult ptr %8, %11
  br i1 %12, label %13, label %60

13:                                               ; preds = %4
  %14 = icmp ult i32 %2, 256
  %15 = trunc i32 %2 to i8
  br label %16

16:                                               ; preds = %51, %13
  %17 = phi i32 [ 0, %13 ], [ %53, %51 ]
  %18 = phi ptr [ %8, %13 ], [ %52, %51 ]
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %18 to i32
  %21 = add i32 %20, 1073741824
  %22 = lshr i32 %21, 12
  %23 = getelementptr %struct.page, ptr %19, i32 %22
  %24 = tail call ptr @page_address(ptr noundef %23) #31
  br i1 %14, label %25, label %26

25:                                               ; preds = %16
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(4096) %24, i8 %15, i32 4096, i1 false)
  br label %26

26:                                               ; preds = %25, %16
  tail call void @_clear_bit(i32 noundef 12, ptr noundef %23) #31
  %27 = getelementptr %struct.page, ptr %19, i32 %22, i32 3
  store volatile i32 1, ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %27) #31, !srcloc !11
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %27, ptr %27, i32 1, ptr elementtype(i32) %27) #31, !srcloc !24
  %29 = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !25
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  tail call fastcc void @free_the_page(ptr noundef %23, i32 noundef 0) #31
  %32 = load i32, ptr %23, align 4
  br label %35

33:                                               ; preds = %26
  %34 = load volatile i32, ptr %23, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = lshr i32 %36, 30
  %38 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %37, i32 11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %38) #31, !srcloc !11
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %38, ptr %38, i32 1, ptr elementtype(i32) %38) #31, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @_totalram_pages) #31, !srcloc !11
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @_totalram_pages, ptr nonnull @_totalram_pages, i32 1, ptr nonnull elementtype(i32) @_totalram_pages) #31, !srcloc !19
  %41 = load i32, ptr %23, align 4
  %42 = lshr i32 %41, 30
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %49, label %44

44:                                               ; preds = %35
  %45 = icmp ne i32 %42, 3
  %46 = load i32, ptr @movable_zone, align 4
  %47 = icmp ne i32 %46, 2
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %44, %35
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @_totalhigh_pages) #31, !srcloc !11
  %50 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @_totalhigh_pages, ptr nonnull @_totalhigh_pages, i32 1, ptr nonnull elementtype(i32) @_totalhigh_pages) #31, !srcloc !19
  br label %51

51:                                               ; preds = %49, %44
  %52 = getelementptr i8, ptr %18, i32 4096
  %53 = add nuw nsw i32 %17, 1
  %54 = icmp ult ptr %52, %11
  br i1 %54, label %16, label %55

55:                                               ; preds = %51
  %56 = icmp eq ptr %3, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %55
  %58 = shl i32 %53, 2
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull %3, i32 noundef %58) #33
  br label %60

60:                                               ; preds = %57, %55, %4
  %61 = phi i32 [ %53, %57 ], [ %53, %55 ], [ 0, %4 ]
  ret i32 %61
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @mem_init_print_info() local_unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 5), align 4
  %2 = load volatile i32, ptr @vm_zone_stat, align 4
  %3 = tail call i32 @llvm.smax.i32(i32 %2, i32 0) #31
  %4 = shl i32 %3, 2
  %5 = shl i32 %1, 2
  %6 = load volatile i32, ptr @_totalram_pages, align 4
  %7 = load i32, ptr @totalcma_pages, align 4
  %8 = add i32 %6, %7
  %9 = sub i32 %1, %8
  %10 = shl i32 %9, 2
  %11 = shl i32 %7, 2
  %12 = load volatile i32, ptr @_totalhigh_pages, align 4
  %13 = shl i32 %12, 2
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %4, i32 noundef %5, i32 noundef lshr (i32 select (i1 or (i1 icmp ugt (ptr @_stext, ptr @__start_rodata), i1 icmp uge (ptr @__start_rodata, ptr @_etext)), i32 select (i1 or (i1 or (i1 icmp ugt (ptr @_stext, ptr @_sinittext), i1 icmp uge (ptr @_sinittext, ptr @_etext)), i1 icmp ule (i32 sub (i32 ptrtoint (ptr @_etext to i32), i32 ptrtoint (ptr @_stext to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))), i32 sub (i32 ptrtoint (ptr @_etext to i32), i32 ptrtoint (ptr @_stext to i32)), i32 sub (i32 sub (i32 ptrtoint (ptr @_etext to i32), i32 ptrtoint (ptr @_stext to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))), i32 select (i1 select (i1 or (i1 or (i1 icmp ugt (ptr @_stext, ptr @_sinittext), i1 icmp uge (ptr @_sinittext, ptr @_etext)), i1 icmp ule (i32 sub (i32 ptrtoint (ptr @_etext to i32), i32 ptrtoint (ptr @_stext to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))), i1 icmp ugt (i32 sub (i32 ptrtoint (ptr @_etext to i32), i32 ptrtoint (ptr @_stext to i32)), i32 sub (i32 ptrtoint (ptr @__end_rodata to i32), i32 ptrtoint (ptr @__start_rodata to i32))), i1 icmp ugt (i32 sub (i32 sub (i32 ptrtoint (ptr @_etext to i32), i32 ptrtoint (ptr @_stext to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32))), i32 sub (i32 ptrtoint (ptr @__end_rodata to i32), i32 ptrtoint (ptr @__start_rodata to i32)))), i32 sub (i32 select (i1 or (i1 or (i1 icmp ugt (ptr @_stext, ptr @_sinittext), i1 icmp uge (ptr @_sinittext, ptr @_etext)), i1 icmp ule (i32 sub (i32 ptrtoint (ptr @_etext to i32), i32 ptrtoint (ptr @_stext to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))), i32 sub (i32 ptrtoint (ptr @_etext to i32), i32 ptrtoint (ptr @_stext to i32)), i32 sub (i32 sub (i32 ptrtoint (ptr @_etext to i32), i32 ptrtoint (ptr @_stext to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))), i32 sub (i32 ptrtoint (ptr @__end_rodata to i32), i32 ptrtoint (ptr @__start_rodata to i32))), i32 select (i1 or (i1 or (i1 icmp ugt (ptr @_stext, ptr @_sinittext), i1 icmp uge (ptr @_sinittext, ptr @_etext)), i1 icmp ule (i32 sub (i32 ptrtoint (ptr @_etext to i32), i32 ptrtoint (ptr @_stext to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))), i32 sub (i32 ptrtoint (ptr @_etext to i32), i32 ptrtoint (ptr @_stext to i32)), i32 sub (i32 sub (i32 ptrtoint (ptr @_etext to i32), i32 ptrtoint (ptr @_stext to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))))), i32 10), i32 noundef lshr (i32 select (i1 select (i1 xor (i1 or (i1 icmp ugt (ptr @_sdata, ptr @__start_rodata), i1 icmp uge (ptr @__start_rodata, ptr @_edata)), i1 true), i1 icmp ugt (i32 select (i1 or (i1 or (i1 icmp ugt (ptr @_sdata, ptr @__init_begin), i1 icmp uge (ptr @__init_begin, ptr @_edata)), i1 xor (i1 select (i1 or (i1 or (i1 icmp ugt (ptr @__init_begin, ptr @_sinittext), i1 icmp uge (ptr @_sinittext, ptr @__init_end)), i1 icmp ule (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))), i1 icmp ult (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_edata to i32), i32 ptrtoint (ptr @_sdata to i32))), i1 icmp ult (i32 sub (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32))), i32 sub (i32 ptrtoint (ptr @_edata to i32), i32 ptrtoint (ptr @_sdata to i32)))), i1 true)), i32 sub (i32 ptrtoint (ptr @_edata to i32), i32 ptrtoint (ptr @_sdata to i32)), i32 sub (i32 sub (i32 ptrtoint (ptr @_edata to i32), i32 ptrtoint (ptr @_sdata to i32)), i32 select (i1 or (i1 or (i1 icmp ugt (ptr @__init_begin, ptr @_sinittext), i1 icmp uge (ptr @_sinittext, ptr @__init_end)), i1 icmp ule (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))), i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))))), i32 sub (i32 ptrtoint (ptr @__end_rodata to i32), i32 ptrtoint (ptr @__start_rodata to i32))), i1 false), i32 sub (i32 select (i1 or (i1 or (i1 icmp ugt (ptr @_sdata, ptr @__init_begin), i1 icmp uge (ptr @__init_begin, ptr @_edata)), i1 xor (i1 select (i1 or (i1 or (i1 icmp ugt (ptr @__init_begin, ptr @_sinittext), i1 icmp uge (ptr @_sinittext, ptr @__init_end)), i1 icmp ule (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))), i1 icmp ult (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_edata to i32), i32 ptrtoint (ptr @_sdata to i32))), i1 icmp ult (i32 sub (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32))), i32 sub (i32 ptrtoint (ptr @_edata to i32), i32 ptrtoint (ptr @_sdata to i32)))), i1 true)), i32 sub (i32 ptrtoint (ptr @_edata to i32), i32 ptrtoint (ptr @_sdata to i32)), i32 sub (i32 sub (i32 ptrtoint (ptr @_edata to i32), i32 ptrtoint (ptr @_sdata to i32)), i32 select (i1 or (i1 or (i1 icmp ugt (ptr @__init_begin, ptr @_sinittext), i1 icmp uge (ptr @_sinittext, ptr @__init_end)), i1 icmp ule (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))), i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))))), i32 sub (i32 ptrtoint (ptr @__end_rodata to i32), i32 ptrtoint (ptr @__start_rodata to i32))), i32 select (i1 or (i1 or (i1 icmp ugt (ptr @_sdata, ptr @__init_begin), i1 icmp uge (ptr @__init_begin, ptr @_edata)), i1 xor (i1 select (i1 or (i1 or (i1 icmp ugt (ptr @__init_begin, ptr @_sinittext), i1 icmp uge (ptr @_sinittext, ptr @__init_end)), i1 icmp ule (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))), i1 icmp ult (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_edata to i32), i32 ptrtoint (ptr @_sdata to i32))), i1 icmp ult (i32 sub (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32))), i32 sub (i32 ptrtoint (ptr @_edata to i32), i32 ptrtoint (ptr @_sdata to i32)))), i1 true)), i32 sub (i32 ptrtoint (ptr @_edata to i32), i32 ptrtoint (ptr @_sdata to i32)), i32 sub (i32 sub (i32 ptrtoint (ptr @_edata to i32), i32 ptrtoint (ptr @_sdata to i32)), i32 select (i1 or (i1 or (i1 icmp ugt (ptr @__init_begin, ptr @_sinittext), i1 icmp uge (ptr @_sinittext, ptr @__init_end)), i1 icmp ule (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))), i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32))))))), i32 10), i32 noundef lshr (i32 sub (i32 ptrtoint (ptr @__end_rodata to i32), i32 ptrtoint (ptr @__start_rodata to i32)), i32 10), i32 noundef lshr (i32 add (i32 select (i1 or (i1 or (i1 icmp ugt (ptr @__init_begin, ptr @_sinittext), i1 icmp uge (ptr @_sinittext, ptr @__init_end)), i1 icmp ule (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))), i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 sub (i32 ptrtoint (ptr @__init_end to i32), i32 ptrtoint (ptr @__init_begin to i32)), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32)))), i32 sub (i32 ptrtoint (ptr @_einittext to i32), i32 ptrtoint (ptr @_sinittext to i32))), i32 10), i32 noundef lshr (i32 sub (i32 ptrtoint (ptr @__bss_stop to i32), i32 ptrtoint (ptr @__bss_start to i32)), i32 10), i32 noundef %10, i32 noundef %11, i32 noundef %13) #33
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @set_dma_reserve(i32 noundef %0) local_unnamed_addr #25 section ".init.text" {
  store i32 %0, ptr @dma_reserve, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @page_alloc_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__cpuhp_setup_state(i32 noundef 33, ptr noundef nonnull @.str.36, i1 noundef zeroext false, ptr noundef nonnull @page_alloc_cpu_online, ptr noundef nonnull @page_alloc_cpu_dead, i1 noundef zeroext false) #31
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %3, label %4, !prof !14

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 8347, i32 noundef 9, ptr noundef null) #31
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @page_alloc_cpu_online(i32 noundef %0) #1 {
  %2 = tail call ptr @first_online_pgdat() #31
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %10, %1
  %5 = phi ptr [ %11, %10 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.zone, ptr %5, i32 0, i32 13
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @mutex_lock(ptr noundef nonnull @pcp_batch_high_lock) #31
  tail call fastcc void @zone_set_pageset_high_and_batch(ptr noundef nonnull %5, i32 noundef 1) #31
  tail call void @mutex_unlock(ptr noundef nonnull @pcp_batch_high_lock) #31
  br label %10

10:                                               ; preds = %9, %4
  %11 = tail call ptr @next_zone(ptr noundef nonnull %5) #31
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4

13:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @page_alloc_cpu_dead(i32 noundef %0) #1 {
  tail call void @lru_add_drain_cpu(i32 noundef %0) #31
  %2 = tail call ptr @first_online_pgdat() #31
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  br label %6

6:                                                ; preds = %29, %4
  %7 = phi ptr [ %2, %4 ], [ %30, %29 ]
  %8 = getelementptr inbounds %struct.zone, ptr %7, i32 0, i32 13
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %6
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #31, !srcloc !15
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #28, !srcloc !16
  %16 = getelementptr inbounds %struct.zone, ptr %7, i32 0, i32 5
  %17 = load ptr, ptr %16, align 8
  %18 = ptrtoint ptr %17 to i32
  %19 = load i32, ptr %5, align 4
  %20 = add i32 %19, %18
  %21 = inttoptr i32 %20 to ptr
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %11
  tail call fastcc void @free_pcppages_bulk(ptr noundef nonnull %7, i32 noundef %22, ptr noundef %21) #31
  br label %25

25:                                               ; preds = %24, %11
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #31
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #28, !srcloc !16
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #31, !srcloc !17
  br label %29

29:                                               ; preds = %25, %6
  %30 = tail call ptr @next_zone(ptr noundef nonnull %7) #31
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %6

32:                                               ; preds = %29, %1
  tail call void @vm_events_fold_cpu(i32 noundef %0) #31
  tail call void @cpu_vm_stats_fold(i32 noundef %0) #31
  %33 = tail call ptr @first_online_pgdat() #31
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %41, %32
  %36 = phi ptr [ %42, %41 ], [ %33, %32 ]
  %37 = getelementptr inbounds %struct.zone, ptr %36, i32 0, i32 13
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void @mutex_lock(ptr noundef nonnull @pcp_batch_high_lock) #31
  tail call fastcc void @zone_set_pageset_high_and_batch(ptr noundef nonnull %36, i32 noundef 0) #31
  tail call void @mutex_unlock(ptr noundef nonnull @pcp_batch_high_lock) #31
  br label %41

41:                                               ; preds = %40, %35
  %42 = tail call ptr @next_zone(ptr noundef nonnull %36) #31
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %35

44:                                               ; preds = %41, %32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @setup_per_zone_wmarks() local_unnamed_addr #1 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @setup_per_zone_wmarks.lock) #31
  %1 = load i32, ptr @min_free_kbytes, align 4
  %2 = ashr i32 %1, 2
  %3 = tail call ptr @first_online_pgdat() #31
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %23, %0
  %6 = phi i32 [ %24, %23 ], [ 0, %0 ]
  %7 = phi ptr [ %25, %23 ], [ %3, %0 ]
  %8 = getelementptr inbounds %struct.zone, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %7 to i32
  %11 = ptrtoint ptr %9 to i32
  %12 = sub i32 %10, %11
  %13 = icmp eq i32 %12, 1792
  br i1 %13, label %23, label %14

14:                                               ; preds = %5
  %15 = icmp ne i32 %12, 2688
  %16 = load i32, ptr @movable_zone, align 4
  %17 = icmp ne i32 %16, 2
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.zone, ptr %7, i32 0, i32 11
  %21 = load volatile i32, ptr %20, align 4
  %22 = add i32 %21, %6
  br label %23

23:                                               ; preds = %19, %14, %5
  %24 = phi i32 [ %6, %14 ], [ %22, %19 ], [ %6, %5 ]
  %25 = tail call ptr @next_zone(ptr noundef nonnull %7) #31
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %5

27:                                               ; preds = %23, %0
  %28 = phi i32 [ 0, %0 ], [ %24, %23 ]
  %29 = tail call ptr @first_online_pgdat() #31
  %30 = icmp eq ptr %29, null
  br i1 %30, label %92, label %31

31:                                               ; preds = %27
  %32 = zext i32 %2 to i64
  br label %33

33:                                               ; preds = %69, %31
  %34 = phi ptr [ %29, %31 ], [ %90, %69 ]
  %35 = getelementptr inbounds %struct.zone, ptr %34, i32 0, i32 22
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %35) #31
  %37 = getelementptr inbounds %struct.zone, ptr %34, i32 0, i32 11
  %38 = load volatile i32, ptr %37, align 4
  %39 = zext i32 %38 to i64
  %40 = mul nuw i64 %39, %32
  %41 = icmp ult i64 %40, 4294967296
  br i1 %41, label %42, label %46, !prof !9

42:                                               ; preds = %33
  %43 = trunc i64 %40 to i32
  %44 = udiv i32 %43, %28
  %45 = zext i32 %44 to i64
  br label %49

46:                                               ; preds = %33
  %47 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %28, i64 %40) #36, !srcloc !49
  %48 = extractvalue { i64, i64 } %47, 1
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi i64 [ %45, %42 ], [ %48, %46 ]
  %51 = getelementptr inbounds %struct.zone, ptr %34, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = ptrtoint ptr %34 to i32
  %54 = ptrtoint ptr %52 to i32
  %55 = sub i32 %53, %54
  %56 = icmp eq i32 %55, 1792
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = icmp ne i32 %55, 2688
  %59 = load i32, ptr @movable_zone, align 4
  %60 = icmp ne i32 %59, 2
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %57, %49
  %63 = load volatile i32, ptr %37, align 4
  %64 = lshr i32 %63, 10
  %65 = tail call i32 @llvm.umax.i32(i32 %64, i32 32) #31
  %66 = tail call i32 @llvm.umin.i32(i32 %65, i32 128) #31
  br label %69

67:                                               ; preds = %57
  %68 = trunc i64 %50 to i32
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi i32 [ %68, %67 ], [ %66, %62 ]
  store i32 %70, ptr %34, align 64
  %71 = lshr i64 %50, 2
  %72 = load volatile i32, ptr %37, align 4
  %73 = udiv i32 %72, 10000
  %74 = load volatile i32, ptr %37, align 4
  %75 = urem i32 %74, 10000
  %76 = load i32, ptr @watermark_scale_factor, align 4
  %77 = mul i32 %76, %73
  %78 = mul i32 %75, %76
  %79 = udiv i32 %78, 10000
  %80 = add i32 %79, %77
  %81 = zext i32 %80 to i64
  %82 = tail call i64 @llvm.umax.i64(i64 %71, i64 %81) #31
  %83 = getelementptr inbounds %struct.zone, ptr %34, i32 0, i32 1
  store i32 0, ptr %83, align 4
  %84 = trunc i64 %82 to i32
  %85 = add i32 %70, %84
  %86 = getelementptr [3 x i32], ptr %34, i32 0, i32 1
  store i32 %85, ptr %86, align 4
  %87 = shl i32 %84, 1
  %88 = add i32 %87, %70
  %89 = getelementptr [3 x i32], ptr %34, i32 0, i32 2
  store i32 %88, ptr %89, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %36) #31
  %90 = tail call ptr @next_zone(ptr noundef nonnull %34) #31
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %33

92:                                               ; preds = %69, %27
  tail call fastcc void @calculate_totalreserve_pages() #31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !35
  %93 = load i16, ptr @setup_per_zone_wmarks.lock, align 4
  %94 = add i16 %93, 1
  store i16 %94, ptr @setup_per_zone_wmarks.lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #31, !srcloc !36
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #31, !srcloc !37
  tail call void asm sideeffect "", "~{memory}"() #31, !srcloc !38
  %95 = tail call ptr @first_online_pgdat() #31
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %97, %92
  %98 = phi ptr [ %99, %97 ], [ %95, %92 ]
  tail call void @mutex_lock(ptr noundef nonnull @pcp_batch_high_lock) #31
  tail call fastcc void @zone_set_pageset_high_and_batch(ptr noundef nonnull %98, i32 noundef 0) #31
  tail call void @mutex_unlock(ptr noundef nonnull @pcp_batch_high_lock) #31
  %99 = tail call ptr @next_zone(ptr noundef nonnull %98) #31
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %97

101:                                              ; preds = %97, %92
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @zone_pcp_update(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  tail call void @mutex_lock(ptr noundef nonnull @pcp_batch_high_lock) #31
  tail call fastcc void @zone_set_pageset_high_and_batch(ptr noundef %0, i32 noundef %1)
  tail call void @mutex_unlock(ptr noundef nonnull @pcp_batch_high_lock) #31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @calculate_min_free_kbytes() local_unnamed_addr #1 {
  %1 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1), align 4
  %2 = icmp ugt i32 %1, 1
  br i1 %2, label %3, label %5, !prof !14

3:                                                ; preds = %0
  %4 = tail call ptr @__next_zones_zonelist(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), i32 noundef 1, ptr noundef null) #31
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), %0 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %28, %5
  %10 = phi ptr [ %30, %28 ], [ %7, %5 ]
  %11 = phi ptr [ %29, %28 ], [ %6, %5 ]
  %12 = phi i32 [ %21, %28 ], [ 0, %5 ]
  %13 = getelementptr inbounds %struct.zone, ptr %10, i32 0, i32 11
  %14 = load volatile i32, ptr %13, align 4
  %15 = getelementptr [3 x i32], ptr %10, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %struct.zone, ptr %10, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = tail call i32 @llvm.usub.sat.i32(i32 %14, i32 %19) #31
  %21 = add i32 %20, %12
  %22 = getelementptr %struct.zoneref, ptr %11, i32 1
  %23 = getelementptr %struct.zoneref, ptr %11, i32 1, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %24, 1
  br i1 %25, label %26, label %28, !prof !14

26:                                               ; preds = %9
  %27 = tail call ptr @__next_zones_zonelist(ptr noundef %22, i32 noundef 1, ptr noundef null) #31
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi ptr [ %27, %26 ], [ %22, %9 ]
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %9

32:                                               ; preds = %28
  %33 = shl i32 %21, 6
  br label %34

34:                                               ; preds = %32, %5
  %35 = phi i32 [ 0, %5 ], [ %33, %32 ]
  %36 = tail call i32 @int_sqrt(i32 noundef %35) #31
  %37 = load i32, ptr @user_min_free_kbytes, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = tail call i32 @llvm.smax.i32(i32 %36, i32 128)
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 262144)
  store i32 %41, ptr @min_free_kbytes, align 4
  br label %44

42:                                               ; preds = %34
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %36, i32 noundef %37) #33
  br label %44

44:                                               ; preds = %42, %39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_per_zone_wmark_min() #0 section ".meminit.text" {
  tail call void @calculate_min_free_kbytes()
  tail call void @setup_per_zone_wmarks()
  tail call void @refresh_zone_stat_thresholds() #31
  tail call fastcc void @setup_per_zone_lowmem_reserve()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refresh_zone_stat_thresholds() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @setup_per_zone_lowmem_reserve() unnamed_addr #1 {
  %1 = tail call ptr @first_online_pgdat() #31
  %2 = icmp eq ptr %1, null
  br i1 %2, label %81, label %3

3:                                                ; preds = %51, %0
  %4 = phi ptr [ %54, %51 ], [ %1, %0 ]
  %5 = load i32, ptr @sysctl_lowmem_reserve_ratio, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %3
  %8 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 1, i32 11
  %9 = load volatile i32, ptr %8, align 4
  br label %74

10:                                               ; preds = %74, %62
  %11 = phi i32 [ 0, %74 ], [ %73, %62 ]
  %12 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 0, i32 3, i32 3
  store i32 %11, ptr %12, align 4
  %13 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @sysctl_lowmem_reserve_ratio, i32 0, i32 1), align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 2, i32 11
  %17 = load volatile i32, ptr %16, align 4
  br label %31

18:                                               ; preds = %10
  %19 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 1, i32 11
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 2, i32 11
  %23 = load volatile i32, ptr %22, align 4
  br i1 %21, label %31, label %24

24:                                               ; preds = %18
  %25 = udiv i32 %23, %13
  %26 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 1, i32 3, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 3, i32 11
  %28 = load volatile i32, ptr %27, align 4
  %29 = add i32 %28, %23
  %30 = udiv i32 %29, %13
  br label %35

31:                                               ; preds = %18, %15
  %32 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 1, i32 3, i32 2
  store i32 0, ptr %32, align 4
  %33 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 3, i32 11
  %34 = load volatile i32, ptr %33, align 4
  br label %35

35:                                               ; preds = %31, %24
  %36 = phi i32 [ 0, %31 ], [ %30, %24 ]
  %37 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 1, i32 3, i32 3
  store i32 %36, ptr %37, align 4
  %38 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @sysctl_lowmem_reserve_ratio, i32 0, i32 2), align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 3, i32 11
  %42 = load volatile i32, ptr %41, align 4
  br label %51

43:                                               ; preds = %35
  %44 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 2, i32 11
  %45 = load volatile i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  %47 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 3, i32 11
  %48 = load volatile i32, ptr %47, align 4
  br i1 %46, label %51, label %49

49:                                               ; preds = %43
  %50 = udiv i32 %48, %38
  br label %51

51:                                               ; preds = %49, %43, %40
  %52 = phi i32 [ %50, %49 ], [ 0, %40 ], [ 0, %43 ]
  %53 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 2, i32 3, i32 3
  store i32 %52, ptr %53, align 4
  %54 = tail call ptr @next_online_pgdat(ptr noundef nonnull %4) #31
  %55 = icmp eq ptr %54, null
  br i1 %55, label %81, label %3

56:                                               ; preds = %3
  %57 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 0, i32 11
  %58 = load volatile i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  %60 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 1, i32 11
  %61 = load volatile i32, ptr %60, align 4
  br i1 %59, label %74, label %62

62:                                               ; preds = %56
  %63 = udiv i32 %61, %5
  %64 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 0, i32 3, i32 1
  store i32 %63, ptr %64, align 4
  %65 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 2, i32 11
  %66 = load volatile i32, ptr %65, align 4
  %67 = add i32 %66, %61
  %68 = udiv i32 %67, %5
  %69 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 0, i32 3, i32 2
  store i32 %68, ptr %69, align 4
  %70 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 3, i32 11
  %71 = load volatile i32, ptr %70, align 4
  %72 = add i32 %71, %67
  %73 = udiv i32 %72, %5
  br label %10

74:                                               ; preds = %56, %7
  %75 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 0, i32 3, i32 1
  store i32 0, ptr %75, align 4
  %76 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 2, i32 11
  %77 = load volatile i32, ptr %76, align 4
  %78 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 0, i32 3, i32 2
  store i32 0, ptr %78, align 4
  %79 = getelementptr [4 x %struct.zone], ptr %4, i32 0, i32 3, i32 11
  %80 = load volatile i32, ptr %79, align 4
  br label %10

81:                                               ; preds = %51, %0
  tail call fastcc void @calculate_totalreserve_pages()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @min_free_kbytes_sysctl_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = tail call i32 @proc_dointvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #31
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq i32 %1, 0
  %9 = or i1 %8, %7
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr @min_free_kbytes, align 4
  store i32 %11, ptr @user_min_free_kbytes, align 4
  tail call void @setup_per_zone_wmarks()
  br label %12

12:                                               ; preds = %10, %5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @watermark_scale_factor_sysctl_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = tail call i32 @proc_dointvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #31
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq i32 %1, 0
  %9 = or i1 %8, %7
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @setup_per_zone_wmarks()
  br label %11

11:                                               ; preds = %10, %5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lowmem_reserve_ratio_sysctl_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = tail call i32 @proc_dointvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #31
  %7 = load i32, ptr @sysctl_lowmem_reserve_ratio, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i32 0, ptr @sysctl_lowmem_reserve_ratio, align 4
  br label %10

10:                                               ; preds = %9, %5
  %11 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @sysctl_lowmem_reserve_ratio, i32 0, i32 1), align 4
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, ptr getelementptr inbounds ([4 x i32], ptr @sysctl_lowmem_reserve_ratio, i32 0, i32 1), align 4
  br label %14

14:                                               ; preds = %13, %10
  %15 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @sysctl_lowmem_reserve_ratio, i32 0, i32 2), align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, ptr getelementptr inbounds ([4 x i32], ptr @sysctl_lowmem_reserve_ratio, i32 0, i32 2), align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @sysctl_lowmem_reserve_ratio, i32 0, i32 3), align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, ptr getelementptr inbounds ([4 x i32], ptr @sysctl_lowmem_reserve_ratio, i32 0, i32 3), align 4
  br label %22

22:                                               ; preds = %21, %18
  tail call fastcc void @setup_per_zone_lowmem_reserve()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @percpu_pagelist_high_fraction_sysctl_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  tail call void @mutex_lock(ptr noundef nonnull @pcp_batch_high_lock) #31
  %6 = load i32, ptr @percpu_pagelist_high_fraction, align 4
  %7 = tail call i32 @proc_dointvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #31
  %8 = icmp eq i32 %1, 0
  %9 = icmp slt i32 %7, 0
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %31, label %11

11:                                               ; preds = %5
  %12 = load i32, ptr @percpu_pagelist_high_fraction, align 4
  %13 = icmp ne i32 %12, 0
  %14 = icmp slt i32 %12, 8
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 %6, ptr @percpu_pagelist_high_fraction, align 4
  br label %31

17:                                               ; preds = %11
  %18 = icmp eq i32 %12, %6
  br i1 %18, label %31, label %19

19:                                               ; preds = %17
  %20 = tail call ptr @first_online_pgdat() #31
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %28, %19
  %23 = phi ptr [ %29, %28 ], [ %20, %19 ]
  %24 = getelementptr inbounds %struct.zone, ptr %23, i32 0, i32 13
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  tail call fastcc void @zone_set_pageset_high_and_batch(ptr noundef nonnull %23, i32 noundef 0)
  br label %28

28:                                               ; preds = %27, %22
  %29 = tail call ptr @next_zone(ptr noundef nonnull %23) #31
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %22

31:                                               ; preds = %28, %19, %17, %16, %5
  %32 = phi i32 [ %7, %5 ], [ -22, %16 ], [ %7, %17 ], [ %7, %19 ], [ %7, %28 ]
  tail call void @mutex_unlock(ptr noundef nonnull @pcp_batch_high_lock) #31
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @alloc_large_system_hash(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef writeonly %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 section ".init.text" {
  %10 = zext i32 %8 to i64
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %9
  %13 = load i32, ptr @nr_kernel_pages, align 4
  %14 = add i32 %13, -1
  %15 = or i32 %14, 255
  %16 = add i32 %15, 1
  %17 = icmp sgt i32 %3, 12
  %18 = add i32 %3, -12
  %19 = lshr i32 %16, %18
  %20 = sub i32 12, %3
  %21 = shl i32 %16, %20
  %22 = select i1 %17, i32 %19, i32 %21
  %23 = and i32 %4, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25, !prof !9

25:                                               ; preds = %12
  %26 = and i32 %4, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29, !prof !14

28:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 8802, i32 noundef 9, ptr noundef null) #31
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, ptr %5, align 4
  %31 = lshr i32 %22, %30
  %32 = icmp eq i32 %31, 0
  %33 = shl nuw i32 1, %30
  %34 = select i1 %32, i32 %33, i32 %22
  br label %40

35:                                               ; preds = %12
  %36 = mul i32 %22, %1
  %37 = icmp ult i32 %36, 4096
  br i1 %37, label %38, label %40, !prof !14

38:                                               ; preds = %35
  %39 = udiv i32 4096, %1
  br label %40

40:                                               ; preds = %38, %35, %29, %9
  %41 = phi i32 [ %2, %9 ], [ %39, %38 ], [ %22, %35 ], [ %34, %29 ]
  %42 = add i32 %41, -1
  %43 = icmp eq i32 %42, 0
  %44 = tail call i32 @llvm.ctlz.i32(i32 %42, i1 false) #31, !range !46
  %45 = sub nuw nsw i32 32, %44
  %46 = shl nuw i32 1, %45
  %47 = select i1 %43, i32 1, i32 %46
  %48 = icmp eq i32 %8, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %40
  %50 = load i32, ptr @nr_all_pages, align 4
  %51 = zext i32 %50 to i64
  %52 = shl nuw nsw i64 %51, 8
  %53 = icmp ult i32 %50, 16777216
  br i1 %53, label %54, label %58, !prof !9

54:                                               ; preds = %49
  %55 = trunc i64 %52 to i32
  %56 = udiv i32 %55, %1
  %57 = zext i32 %56 to i64
  br label %61

58:                                               ; preds = %49
  %59 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %52) #36, !srcloc !49
  %60 = extractvalue { i64, i64 } %59, 1
  br label %61

61:                                               ; preds = %58, %54, %40
  %62 = phi i64 [ %57, %54 ], [ %60, %58 ], [ %10, %40 ]
  %63 = tail call i64 @llvm.umin.i64(i64 %62, i64 2147483648)
  %64 = tail call i32 @llvm.umax.i32(i32 %47, i32 %7)
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %63, %65
  %67 = trunc i64 %63 to i32
  %68 = select i1 %66, i32 %67, i32 %64
  %69 = icmp eq i32 %68, 0
  %70 = tail call i32 @llvm.ctlz.i32(i32 %68, i1 false) #31, !range !46
  %71 = sub nsw i32 31, %70
  %72 = select i1 %69, i32 -1, i32 %71
  %73 = and i32 %4, 4
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 2592, i32 2848
  %76 = and i32 %4, 1
  %77 = icmp eq i32 %76, 0
  br label %78

78:                                               ; preds = %100, %61
  %79 = phi i32 [ %72, %61 ], [ %101, %100 ]
  %80 = shl i32 %1, %79
  br i1 %77, label %86, label %81

81:                                               ; preds = %78
  br i1 %74, label %84, label %82

82:                                               ; preds = %81
  %83 = tail call ptr @memblock_alloc_try_nid(i32 noundef %80, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #31
  br label %94

84:                                               ; preds = %81
  %85 = tail call ptr @memblock_alloc_try_nid_raw(i32 noundef %80, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef -1) #31
  br label %94

86:                                               ; preds = %78
  %87 = add i32 %80, -8388609
  %88 = icmp ult i32 %87, -8388608
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = tail call noalias ptr @__vmalloc(i32 noundef %80, i32 noundef %75) #35
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %105

92:                                               ; preds = %86
  %93 = tail call noalias ptr @alloc_pages_exact(i32 noundef %80, i32 noundef %75) #37
  br label %94

94:                                               ; preds = %92, %89, %84, %82
  %95 = phi i1 [ false, %82 ], [ false, %84 ], [ true, %89 ], [ false, %92 ]
  %96 = phi ptr [ %83, %82 ], [ %85, %84 ], [ null, %89 ], [ %93, %92 ]
  %97 = icmp eq ptr %96, null
  %98 = icmp ugt i32 %80, 4096
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = add i32 %79, -1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %78

103:                                              ; preds = %94
  br i1 %97, label %104, label %105

104:                                              ; preds = %103, %100
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.38, ptr noundef %0) #38
  unreachable

105:                                              ; preds = %103, %89
  %106 = phi i1 [ %95, %103 ], [ true, %89 ]
  %107 = phi ptr [ %96, %103 ], [ %90, %89 ]
  %108 = shl nuw i32 1, %79
  %109 = icmp eq i32 %80, 0
  %110 = tail call i32 @llvm.ctlz.i32(i32 %80, i1 false) #31, !range !46
  %111 = sub nsw i32 19, %110
  %112 = select i1 %109, i32 -13, i32 %111
  %113 = select i1 %106, ptr @.str.41, ptr @.str.42
  %114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %0, i32 noundef %108, i32 noundef %112, i32 noundef %80, ptr noundef nonnull %113) #33
  %115 = icmp eq ptr %5, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %105
  store i32 %79, ptr %5, align 4
  br label %117

117:                                              ; preds = %116, %105
  %118 = icmp eq ptr %6, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %117
  %120 = add i32 %108, -1
  store i32 %120, ptr %6, align 4
  br label %121

121:                                              ; preds = %119, %117
  ret ptr %107
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #26

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @has_unmovable_pages(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = load ptr, ptr @mem_map, align 4
  %6 = ptrtoint ptr %1 to i32
  %7 = ptrtoint ptr %5 to i32
  %8 = sub i32 %6, %7
  %9 = ashr exact i32 %8, 5
  %10 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %11 = add i32 %9, %10
  %12 = load i32, ptr %1, align 4
  %13 = lshr i32 %12, 30
  %14 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %13, i32 9
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %13, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -2048
  %19 = sub i32 %11, %18
  %20 = lshr i32 %19, 9
  %21 = lshr i32 %19, 14
  %22 = and i32 %20, 28
  %23 = getelementptr i32, ptr %15, i32 %21
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, %22
  %26 = and i32 %25, 7
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %35, label %28

28:                                               ; preds = %4
  %29 = and i32 %11, 2047
  %30 = sub nuw nsw i32 2048, %29
  %31 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 4
  %32 = ptrtoint ptr %0 to i32
  %33 = and i32 %3, 1
  %34 = icmp eq i32 %33, 0
  br label %38

35:                                               ; preds = %4
  %36 = icmp eq i32 %2, 4
  %37 = select i1 %36, ptr null, ptr %1, !prof !14
  br label %96

38:                                               ; preds = %92, %28
  %39 = phi i32 [ 0, %28 ], [ %94, %92 ]
  %40 = add i32 %9, %39
  %41 = getelementptr %struct.page, ptr %5, i32 %40
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 4096
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %96

45:                                               ; preds = %38
  %46 = load ptr, ptr %31, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = sub i32 %32, %47
  %49 = icmp eq i32 %48, 2688
  br i1 %49, label %92, label %50

50:                                               ; preds = %45
  %51 = getelementptr %struct.page, ptr %5, i32 %40, i32 3
  %52 = load volatile i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = getelementptr %struct.page, ptr %5, i32 %40, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = and i32 %56, -268435328
  %58 = icmp eq i32 %57, -268435456
  br i1 %58, label %59, label %92

59:                                               ; preds = %54
  %60 = getelementptr %struct.page, ptr %5, i32 %40, i32 1, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = shl nsw i32 -1, %61
  %63 = xor i32 %62, -1
  %64 = add i32 %39, %63
  br label %92

65:                                               ; preds = %50
  br i1 %34, label %71, label %66

66:                                               ; preds = %65
  %67 = getelementptr %struct.page, ptr %5, i32 %40, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, -268435200
  %70 = icmp eq i32 %69, -268435456
  br i1 %70, label %92, label %71

71:                                               ; preds = %66, %65
  %72 = getelementptr %struct.page, ptr %5, i32 %40, i32 1, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = ptrtoint ptr %73 to i32
  %75 = and i32 %74, 3
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %92, label %77

77:                                               ; preds = %71
  %78 = getelementptr %struct.page, ptr %5, i32 %40, i32 1
  %79 = load volatile i32, ptr %78, align 4
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82, !prof !9

82:                                               ; preds = %77
  %83 = add i32 %79, -1
  br label %86

84:                                               ; preds = %77
  %85 = ptrtoint ptr %41 to i32
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = inttoptr i32 %87 to ptr
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %89, 16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %86, %71, %66, %59, %54, %45
  %93 = phi i32 [ %39, %45 ], [ %39, %66 ], [ %39, %71 ], [ %39, %86 ], [ %64, %59 ], [ %39, %54 ]
  %94 = add i32 %93, 1
  %95 = icmp ult i32 %94, %30
  br i1 %95, label %38, label %96

96:                                               ; preds = %92, %86, %38, %35
  %97 = phi ptr [ %37, %35 ], [ %41, %38 ], [ %41, %86 ], [ null, %92 ]
  ret ptr %97
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @alloc_contig_range(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = alloca %struct.migration_target_control, align 8
  %6 = alloca %struct.compact_control, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #31
  %7 = getelementptr inbounds %struct.compact_control, ptr %6, i32 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %6, i8 0, i64 88, i1 false)
  %8 = load ptr, ptr @mem_map, align 4
  %9 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %10 = sub i32 %0, %9
  %11 = getelementptr %struct.page, ptr %8, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 30
  %14 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %13
  store ptr %14, ptr %7, align 4
  %15 = getelementptr inbounds %struct.compact_control, ptr %6, i32 0, i32 12
  %16 = tail call ptr @llvm.thread.pointer() #31
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 4
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 269221888
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %37, label %21, !prof !9

21:                                               ; preds = %4
  %22 = and i32 %18, 524288
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = and i32 %3, -193
  br label %31

26:                                               ; preds = %21
  %27 = and i32 %18, 262144
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %3, -129
  %30 = select i1 %28, i32 %3, i32 %29
  br label %31

31:                                               ; preds = %26, %24
  %32 = phi i32 [ %25, %24 ], [ %30, %26 ]
  %33 = and i32 %18, 268435456
  %34 = icmp eq i32 %33, 0
  %35 = and i32 %32, -9
  %36 = select i1 %34, i32 %32, i32 %35
  br label %37

37:                                               ; preds = %31, %4
  %38 = phi i32 [ %3, %4 ], [ %36, %31 ]
  store i32 %38, ptr %15, align 4
  %39 = getelementptr inbounds %struct.compact_control, ptr %6, i32 0, i32 13
  store i32 -1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.compact_control, ptr %6, i32 0, i32 17
  store i32 2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.compact_control, ptr %6, i32 0, i32 18
  store i8 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.compact_control, ptr %6, i32 0, i32 19
  store i8 1, ptr %42, align 1
  %43 = getelementptr inbounds %struct.compact_control, ptr %6, i32 0, i32 26
  store i8 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.compact_control, ptr %6, i32 0, i32 1
  store volatile ptr %44, ptr %44, align 4
  %45 = getelementptr inbounds %struct.compact_control, ptr %6, i32 0, i32 1, i32 1
  store ptr %44, ptr %45, align 4
  %46 = and i32 %0, -2048
  %47 = add i32 %1, 2047
  %48 = and i32 %47, -2048
  %49 = call i32 @start_isolate_page_range(i32 noundef %46, i32 noundef %48, i32 noundef %2, i32 noundef 0) #31
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %214

51:                                               ; preds = %37
  %52 = load ptr, ptr %7, align 4
  call fastcc void @__drain_all_pages(ptr noundef %52, i1 noundef zeroext false) #31
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #31
  %53 = getelementptr inbounds %struct.migration_target_control, ptr %5, i32 0, i32 2
  store i64 0, ptr %5, align 8
  store i32 1068232, ptr %53, align 8
  call void @lru_cache_disable() #31
  %54 = getelementptr inbounds %struct.compact_control, ptr %6, i32 0, i32 3
  %55 = getelementptr inbounds %struct.compact_control, ptr %6, i32 0, i32 5
  %56 = ptrtoint ptr %5 to i32
  %57 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 98, i32 1
  br label %58

58:                                               ; preds = %84, %51
  %59 = phi i32 [ %0, %51 ], [ %85, %84 ]
  %60 = phi i32 [ 0, %51 ], [ %86, %84 ]
  %61 = phi i32 [ 0, %51 ], [ %92, %84 ]
  %62 = icmp ult i32 %59, %1
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load volatile ptr, ptr %44, align 4
  %65 = icmp eq ptr %64, %44
  br i1 %65, label %94, label %66

66:                                               ; preds = %63, %58
  %67 = load volatile i32, ptr %16, align 4
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %57, align 4
  %72 = and i32 %71, 256
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %70, %66
  %75 = load volatile ptr, ptr %44, align 4
  %76 = icmp eq ptr %75, %44
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  store i32 0, ptr %54, align 4
  %78 = call i32 @isolate_migratepages_range(ptr noundef nonnull %6, i32 noundef %59, i32 noundef %1) #31
  switch i32 %78, label %94 [
    i32 -11, label %79
    i32 0, label %79
  ]

79:                                               ; preds = %77, %77
  %80 = load i32, ptr %55, align 4
  br label %84

81:                                               ; preds = %74
  %82 = add i32 %60, 1
  %83 = icmp eq i32 %82, 5
  br i1 %83, label %94, label %84

84:                                               ; preds = %81, %79
  %85 = phi i32 [ %80, %79 ], [ %59, %81 ]
  %86 = phi i32 [ 0, %79 ], [ %82, %81 ]
  %87 = load ptr, ptr %7, align 4
  %88 = call i32 @reclaim_clean_pages_from_list(ptr noundef %87, ptr noundef %44) #31
  %89 = load i32, ptr %54, align 4
  %90 = sub i32 %89, %88
  store i32 %90, ptr %54, align 4
  %91 = load i32, ptr %40, align 4
  %92 = call i32 @migrate_pages(ptr noundef %44, ptr noundef nonnull @alloc_migration_target, ptr noundef null, i32 noundef %56, i32 noundef %91, i32 noundef 6, ptr noundef null) #31
  %93 = icmp eq i32 %92, -12
  br i1 %93, label %94, label %58

94:                                               ; preds = %84, %81, %77, %70, %63
  %95 = phi i32 [ %78, %77 ], [ -12, %84 ], [ %61, %63 ], [ -4, %70 ], [ -16, %81 ]
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @lru_disable_count) #31, !srcloc !11
  %96 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @lru_disable_count, ptr nonnull @lru_disable_count, i32 1, ptr nonnull elementtype(i32) @lru_disable_count) #31, !srcloc !50
  %97 = icmp slt i32 %95, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #31
  br label %101

99:                                               ; preds = %94
  call void @putback_movable_pages(ptr noundef %44) #31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #31
  %100 = icmp eq i32 %95, -16
  br i1 %100, label %101, label %212

101:                                              ; preds = %99, %98
  %102 = load ptr, ptr @mem_map, align 4
  %103 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %104 = sub i32 %0, %103
  %105 = getelementptr %struct.page, ptr %102, i32 %104, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, -268435328
  %108 = icmp eq i32 %107, -268435456
  br i1 %108, label %197, label %109

109:                                              ; preds = %101
  %110 = and i32 %0, -2
  %111 = sub i32 %110, %103
  %112 = getelementptr %struct.page, ptr %102, i32 %111, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, -268435328
  %115 = icmp eq i32 %114, -268435456
  br i1 %115, label %186, label %116

116:                                              ; preds = %109
  %117 = and i32 %0, -4
  %118 = sub i32 %117, %103
  %119 = getelementptr %struct.page, ptr %102, i32 %118, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, -268435328
  %122 = icmp eq i32 %121, -268435456
  br i1 %122, label %186, label %123

123:                                              ; preds = %116
  %124 = and i32 %0, -8
  %125 = sub i32 %124, %103
  %126 = getelementptr %struct.page, ptr %102, i32 %125, i32 2
  %127 = load i32, ptr %126, align 4
  %128 = and i32 %127, -268435328
  %129 = icmp eq i32 %128, -268435456
  br i1 %129, label %186, label %130

130:                                              ; preds = %123
  %131 = and i32 %0, -16
  %132 = sub i32 %131, %103
  %133 = getelementptr %struct.page, ptr %102, i32 %132, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, -268435328
  %136 = icmp eq i32 %135, -268435456
  br i1 %136, label %186, label %137

137:                                              ; preds = %130
  %138 = and i32 %0, -32
  %139 = sub i32 %138, %103
  %140 = getelementptr %struct.page, ptr %102, i32 %139, i32 2
  %141 = load i32, ptr %140, align 4
  %142 = and i32 %141, -268435328
  %143 = icmp eq i32 %142, -268435456
  br i1 %143, label %186, label %144

144:                                              ; preds = %137
  %145 = and i32 %0, -64
  %146 = sub i32 %145, %103
  %147 = getelementptr %struct.page, ptr %102, i32 %146, i32 2
  %148 = load i32, ptr %147, align 4
  %149 = and i32 %148, -268435328
  %150 = icmp eq i32 %149, -268435456
  br i1 %150, label %186, label %151

151:                                              ; preds = %144
  %152 = and i32 %0, -128
  %153 = sub i32 %152, %103
  %154 = getelementptr %struct.page, ptr %102, i32 %153, i32 2
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, -268435328
  %157 = icmp eq i32 %156, -268435456
  br i1 %157, label %186, label %158

158:                                              ; preds = %151
  %159 = and i32 %0, -256
  %160 = sub i32 %159, %103
  %161 = getelementptr %struct.page, ptr %102, i32 %160, i32 2
  %162 = load i32, ptr %161, align 4
  %163 = and i32 %162, -268435328
  %164 = icmp eq i32 %163, -268435456
  br i1 %164, label %186, label %165

165:                                              ; preds = %158
  %166 = and i32 %0, -512
  %167 = sub i32 %166, %103
  %168 = getelementptr %struct.page, ptr %102, i32 %167, i32 2
  %169 = load i32, ptr %168, align 4
  %170 = and i32 %169, -268435328
  %171 = icmp eq i32 %170, -268435456
  br i1 %171, label %186, label %172

172:                                              ; preds = %165
  %173 = and i32 %0, -1024
  %174 = sub i32 %173, %103
  %175 = getelementptr %struct.page, ptr %102, i32 %174, i32 2
  %176 = load i32, ptr %175, align 4
  %177 = and i32 %176, -268435328
  %178 = icmp eq i32 %177, -268435456
  br i1 %178, label %186, label %179

179:                                              ; preds = %172
  %180 = and i32 %0, -2048
  %181 = sub i32 %180, %103
  %182 = getelementptr %struct.page, ptr %102, i32 %181, i32 2
  %183 = load i32, ptr %182, align 4
  %184 = and i32 %183, -268435328
  %185 = icmp eq i32 %184, -268435456
  br i1 %185, label %186, label %197

186:                                              ; preds = %179, %172, %165, %158, %151, %144, %137, %130, %123, %116, %109
  %187 = phi i32 [ %110, %109 ], [ %117, %116 ], [ %124, %123 ], [ %131, %130 ], [ %138, %137 ], [ %145, %144 ], [ %152, %151 ], [ %159, %158 ], [ %166, %165 ], [ %173, %172 ], [ %180, %179 ]
  %188 = icmp eq i32 %187, %0
  br i1 %188, label %197, label %189

189:                                              ; preds = %186
  %190 = sub i32 %187, %103
  %191 = getelementptr %struct.page, ptr %102, i32 %190, i32 1, i32 0, i32 3
  %192 = load i32, ptr %191, align 4
  %193 = shl nuw i32 1, %192
  %194 = add i32 %193, %187
  %195 = icmp ugt i32 %194, %0
  %196 = select i1 %195, i32 %187, i32 %0
  br label %197

197:                                              ; preds = %189, %186, %179, %101
  %198 = phi i32 [ %0, %186 ], [ %196, %189 ], [ %0, %179 ], [ %0, %101 ]
  %199 = call i32 @test_pages_isolated(i32 noundef %198, i32 noundef %1, i32 noundef 0) #31
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %197
  %202 = call i32 @isolate_freepages_range(ptr noundef nonnull %6, i32 noundef %198, i32 noundef %1) #31
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %212, label %204

204:                                              ; preds = %201
  %205 = icmp eq i32 %198, %0
  br i1 %205, label %208, label %206

206:                                              ; preds = %204
  %207 = sub i32 %0, %198
  call void @free_contig_range(i32 noundef %198, i32 noundef %207)
  br label %208

208:                                              ; preds = %206, %204
  %209 = icmp eq i32 %202, %1
  br i1 %209, label %212, label %210

210:                                              ; preds = %208
  %211 = sub i32 %202, %1
  call void @free_contig_range(i32 noundef %1, i32 noundef %211)
  br label %212

212:                                              ; preds = %210, %208, %201, %197, %99
  %213 = phi i32 [ %95, %99 ], [ 0, %210 ], [ 0, %208 ], [ -16, %197 ], [ -16, %201 ]
  call void @undo_isolate_page_range(i32 noundef %46, i32 noundef %48, i32 noundef %2) #31
  br label %214

214:                                              ; preds = %212, %37
  %215 = phi i32 [ %213, %212 ], [ %49, %37 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #31
  ret i32 %215
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @start_isolate_page_range(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @test_pages_isolated(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isolate_freepages_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_contig_range(i32 noundef %0, i32 noundef %1) #1 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %42, label %4

4:                                                ; preds = %36, %2
  %5 = phi i32 [ %37, %36 ], [ %0, %2 ]
  %6 = phi i32 [ %8, %36 ], [ %1, %2 ]
  %7 = phi i32 [ %28, %36 ], [ 0, %2 ]
  %8 = add i32 %6, -1
  %9 = load ptr, ptr @mem_map, align 4
  %10 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %11 = sub i32 %5, %10
  %12 = getelementptr %struct.page, ptr %9, i32 %11
  %13 = getelementptr %struct.page, ptr %9, i32 %11, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17, !prof !9

17:                                               ; preds = %4
  %18 = add i32 %14, -1
  br label %21

19:                                               ; preds = %4
  %20 = ptrtoint ptr %12 to i32
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.page, ptr %23, i32 0, i32 3
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp ne i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = add i32 %7, %27
  %29 = getelementptr %struct.page, ptr %9, i32 %11, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !23
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %29) #31, !srcloc !11
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %29, ptr %29, i32 1, ptr elementtype(i32) %29) #31, !srcloc !24
  %31 = extractvalue { i32, i32 } %30, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !25
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  tail call fastcc void @free_the_page(ptr noundef %12, i32 noundef 0) #31
  br label %36

34:                                               ; preds = %21
  %35 = load volatile i32, ptr %12, align 4
  br label %36

36:                                               ; preds = %34, %33
  %37 = add i32 %5, 1
  %38 = icmp eq i32 %8, 0
  br i1 %38, label %39, label %4

39:                                               ; preds = %36
  %40 = icmp eq i32 %28, 0
  br i1 %40, label %42, label %41, !prof !9

41:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 9337, i32 noundef 9, ptr noundef nonnull @.str.43, i32 noundef %28) #31
  br label %42

42:                                               ; preds = %41, %39, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @undo_isolate_page_range(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_contig_pages(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
  %5 = shl i32 %1, 1
  %6 = and i32 %5, 30
  %7 = lshr i32 19988769, %6
  %8 = and i32 %7, 3
  %9 = icmp eq ptr %3, null
  %10 = xor i1 %9, true
  %11 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1), align 4
  %12 = icmp ugt i32 %11, %8
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %16, !prof !22

14:                                               ; preds = %4
  %15 = tail call ptr @__next_zones_zonelist(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), i32 noundef %8, ptr noundef %3) #31
  br label %16

16:                                               ; preds = %14, %4
  %17 = phi ptr [ %15, %14 ], [ getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 1), %4 ]
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %116, label %20

20:                                               ; preds = %16
  %21 = add i32 %0, -1
  %22 = sub i32 0, %0
  br label %23

23:                                               ; preds = %112, %20
  %24 = phi ptr [ %18, %20 ], [ %114, %112 ]
  %25 = phi ptr [ %17, %20 ], [ %113, %112 ]
  %26 = getelementptr inbounds %struct.zone, ptr %24, i32 0, i32 22
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #31
  %28 = getelementptr inbounds %struct.zone, ptr %24, i32 0, i32 10
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %21, %29
  %31 = and i32 %30, %22
  %32 = add i32 %21, %31
  %33 = icmp ugt i32 %29, %32
  br i1 %33, label %103, label %34

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.zone, ptr %24, i32 0, i32 12
  br label %36

36:                                               ; preds = %98, %34
  %37 = phi i32 [ %29, %34 ], [ %101, %98 ]
  %38 = phi i32 [ %32, %34 ], [ %100, %98 ]
  %39 = phi i32 [ %31, %34 ], [ %45, %98 ]
  %40 = phi i32 [ %27, %34 ], [ %99, %98 ]
  %41 = load i32, ptr %35, align 4
  %42 = add i32 %41, %37
  %43 = icmp ugt i32 %42, %38
  br i1 %43, label %44, label %103

44:                                               ; preds = %36
  %45 = add i32 %39, %0
  %46 = icmp ugt i32 %45, %39
  br i1 %46, label %47, label %88

47:                                               ; preds = %44
  %48 = tail call i32 @pfn_valid(i32 noundef %39) #31
  %49 = icmp eq i32 %48, 0
  %50 = load ptr, ptr @mem_map, align 4
  %51 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %52 = sub i32 %39, %51
  %53 = getelementptr %struct.page, ptr %50, i32 %52
  %54 = icmp eq ptr %53, null
  %55 = select i1 %49, i1 true, i1 %54
  br i1 %55, label %98, label %56

56:                                               ; preds = %47
  %57 = load i32, ptr %53, align 4
  %58 = lshr i32 %57, 30
  %59 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %58
  %60 = icmp eq ptr %59, %24
  br i1 %60, label %79, label %98

61:                                               ; preds = %79
  %62 = add i32 %81, 1
  %63 = icmp ult i32 %62, %45
  %64 = icmp eq i32 %62, %45
  br i1 %64, label %86, label %65

65:                                               ; preds = %61
  %66 = tail call i32 @pfn_valid(i32 noundef %62) #31
  %67 = icmp eq i32 %66, 0
  %68 = load ptr, ptr @mem_map, align 4
  %69 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %70 = sub i32 %62, %69
  %71 = getelementptr %struct.page, ptr %68, i32 %70
  %72 = icmp eq ptr %71, null
  %73 = select i1 %67, i1 true, i1 %72
  br i1 %73, label %86, label %74

74:                                               ; preds = %65
  %75 = load i32, ptr %71, align 4
  %76 = lshr i32 %75, 30
  %77 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %76
  %78 = icmp eq ptr %77, %24
  br i1 %78, label %79, label %86

79:                                               ; preds = %74, %56
  %80 = phi i1 [ %63, %74 ], [ true, %56 ]
  %81 = phi i32 [ %62, %74 ], [ %39, %56 ]
  %82 = phi ptr [ %71, %74 ], [ %53, %56 ]
  %83 = load volatile i32, ptr %82, align 4
  %84 = and i32 %83, 4096
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %61, label %86

86:                                               ; preds = %79, %74, %65, %61
  %87 = phi i1 [ %80, %79 ], [ %63, %74 ], [ %63, %65 ], [ %63, %61 ]
  br i1 %87, label %98, label %88

88:                                               ; preds = %86, %44
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %40) #31
  %89 = tail call i32 @alloc_contig_range(i32 noundef %39, i32 noundef %45, i32 noundef 1, i32 noundef %1) #31
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load ptr, ptr @mem_map, align 4
  %93 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %94 = sub i32 %39, %93
  %95 = getelementptr %struct.page, ptr %92, i32 %94
  br label %116

96:                                               ; preds = %88
  %97 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #31
  br label %98

98:                                               ; preds = %96, %86, %56, %47
  %99 = phi i32 [ %97, %96 ], [ %40, %86 ], [ %40, %47 ], [ %40, %56 ]
  %100 = add i32 %21, %45
  %101 = load i32, ptr %28, align 4
  %102 = icmp ugt i32 %101, %100
  br i1 %102, label %103, label %36

103:                                              ; preds = %98, %36, %23
  %104 = phi i32 [ %27, %23 ], [ %99, %98 ], [ %40, %36 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %104) #31
  %105 = getelementptr %struct.zoneref, ptr %25, i32 1
  br i1 %9, label %106, label %110, !prof !9

106:                                              ; preds = %103
  %107 = getelementptr %struct.zoneref, ptr %25, i32 1, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = icmp ugt i32 %108, %8
  br i1 %109, label %110, label %112, !prof !14

110:                                              ; preds = %106, %103
  %111 = tail call ptr @__next_zones_zonelist(ptr noundef %105, i32 noundef %8, ptr noundef %3) #31
  br label %112

112:                                              ; preds = %110, %106
  %113 = phi ptr [ %111, %110 ], [ %105, %106 ]
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %23

116:                                              ; preds = %112, %91, %16
  %117 = phi ptr [ %95, %91 ], [ null, %16 ], [ null, %112 ]
  ret ptr %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @zone_pcp_disable(ptr noundef %0) local_unnamed_addr #1 {
  tail call void @mutex_lock(ptr noundef nonnull @pcp_batch_high_lock) #31
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #32
  %4 = icmp ult i32 %3, %2
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 5
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ %3, %5 ], [ %17, %7 ]
  %9 = load ptr, ptr %6, align 8
  %10 = ptrtoint ptr %9 to i32
  %11 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.per_cpu_pages, ptr %14, i32 0, i32 2
  store volatile i32 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.per_cpu_pages, ptr %14, i32 0, i32 1
  store volatile i32 0, ptr %16, align 4
  %17 = tail call i32 @cpumask_next(i32 noundef %8, ptr noundef nonnull @__cpu_possible_mask) #32
  %18 = icmp ult i32 %17, %2
  br i1 %18, label %7, label %19

19:                                               ; preds = %7, %1
  tail call fastcc void @__drain_all_pages(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @zone_pcp_enable(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 16
  %4 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %7 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #32
  %8 = icmp ult i32 %7, %6
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 5
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ %7, %9 ], [ %21, %11 ]
  %13 = load ptr, ptr %10, align 8
  %14 = ptrtoint ptr %13 to i32
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.per_cpu_pages, ptr %18, i32 0, i32 2
  store volatile i32 %5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.per_cpu_pages, ptr %18, i32 0, i32 1
  store volatile i32 %3, ptr %20, align 4
  %21 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef nonnull @__cpu_possible_mask) #32
  %22 = icmp ult i32 %21, %6
  br i1 %22, label %11, label %23

23:                                               ; preds = %11, %1
  tail call void @mutex_unlock(ptr noundef nonnull @pcp_batch_high_lock) #31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @zone_pcp_reset(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, @boot_pageset
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #32
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 6
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ %6, %9 ], [ %19, %11 ]
  %13 = load ptr, ptr %10, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = inttoptr i32 %17 to ptr
  tail call void @drain_zonestat(ptr noundef %0, ptr noundef %18) #31
  %19 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef nonnull @__cpu_online_mask) #32
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %11, label %22

22:                                               ; preds = %11
  %23 = load ptr, ptr %2, align 8
  br label %24

24:                                               ; preds = %22, %5
  %25 = phi ptr [ %23, %22 ], [ %3, %5 ]
  tail call void @free_percpu(ptr noundef %25) #31
  %26 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  tail call void @free_percpu(ptr noundef %27) #31
  store ptr @boot_pageset, ptr %2, align 8
  store ptr @boot_zonestats, ptr %26, align 4
  br label %28

28:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drain_zonestat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @is_free_buddy_page(ptr noundef %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr @mem_map, align 4
  %3 = ptrtoint ptr %0 to i32
  %4 = ptrtoint ptr %2 to i32
  %5 = sub i32 %3, %4
  %6 = ashr exact i32 %5, 5
  %7 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %8 = add i32 %6, %7
  br label %9

9:                                                ; preds = %24, %1
  %10 = phi i1 [ true, %1 ], [ %26, %24 ]
  %11 = phi i32 [ 0, %1 ], [ %25, %24 ]
  %12 = shl nsw i32 -1, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %8, %13
  %15 = sub i32 0, %14
  %16 = getelementptr %struct.page, ptr %0, i32 %15, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, -268435328
  %19 = icmp eq i32 %18, -268435456
  br i1 %19, label %20, label %24

20:                                               ; preds = %9
  %21 = getelementptr %struct.page, ptr %0, i32 %15, i32 1, i32 0, i32 3
  %22 = load volatile i32, ptr %21, align 4
  %23 = icmp ult i32 %22, %11
  br i1 %23, label %24, label %28

24:                                               ; preds = %20, %9
  %25 = add nuw nsw i32 %11, 1
  %26 = icmp ult i32 %11, 11
  %27 = icmp eq i32 %25, 12
  br i1 %27, label %28, label %9

28:                                               ; preds = %24, %20
  %29 = phi i1 [ %10, %20 ], [ %26, %24 ]
  ret i1 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @check_free_page(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %16, !prof !9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  %10 = load volatile i32, ptr %9, align 4
  %11 = or i32 %10, %8
  %12 = load i32, ptr %0, align 4
  %13 = and i32 %12, 3207729
  %14 = or i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !9

16:                                               ; preds = %5, %1
  tail call fastcc void @check_free_page_bad(ptr noundef %0)
  br label %17

17:                                               ; preds = %16, %5
  %18 = phi i32 [ 1, %16 ], [ 0, %5 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mm_page_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @check_free_page_bad(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi ptr [ @.str.49, %5 ], [ null, %1 ]
  %8 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !9

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi ptr [ @.str.50, %11 ], [ %7, %6 ]
  %14 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 3
  %15 = load volatile i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !9

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi ptr [ @.str.51, %17 ], [ %13, %12 ]
  %20 = load i32, ptr %0, align 4
  %21 = and i32 %20, 3207729
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23, !prof !9

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi ptr [ %19, %18 ], [ @.str.53, %23 ]
  tail call fastcc void @bad_page(ptr noundef %0, ptr noundef %25)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bad_page(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = load i32, ptr @bad_page.nr_shown, align 4
  %4 = icmp eq i32 %3, 60
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = load volatile i32, ptr @jiffies, align 64
  %7 = load i32, ptr @bad_page.resume, align 4
  %8 = sub i32 %6, %7
  %9 = icmp slt i32 %8, 0
  %10 = load i32, ptr @bad_page.nr_unshown, align 4
  br i1 %9, label %11, label %13

11:                                               ; preds = %5
  %12 = add i32 %10, 1
  store i32 %12, ptr @bad_page.nr_unshown, align 4
  br label %35

13:                                               ; preds = %5
  %14 = icmp eq i32 %10, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %10) #33
  store i32 0, ptr @bad_page.nr_unshown, align 4
  br label %17

17:                                               ; preds = %15, %13
  store i32 1, ptr @bad_page.nr_shown, align 4
  br label %21

18:                                               ; preds = %2
  %19 = add i32 %3, 1
  store i32 %19, ptr @bad_page.nr_shown, align 4
  %20 = icmp eq i32 %3, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %17
  %22 = load volatile i32, ptr @jiffies, align 64
  %23 = add i32 %22, 6000
  store i32 %23, ptr @bad_page.resume, align 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = tail call ptr @llvm.thread.pointer() #31
  %26 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 85
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %0 to i32
  %29 = ptrtoint ptr %27 to i32
  %30 = sub i32 %28, %29
  %31 = ashr exact i32 %30, 5
  %32 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %33 = add i32 %31, %32
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %26, i32 noundef %33) #33
  tail call void @dump_page(ptr noundef %0, ptr noundef %1) #31
  tail call void @print_modules() #31
  tail call void @dump_stack() #33
  br label %35

35:                                               ; preds = %24, %11
  %36 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  store volatile i32 -1, ptr %36, align 4
  tail call void @add_taint(i32 noundef 5, i32 noundef 1) #31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_modules() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_taint(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #27

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_pcppages_bulk(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.list_head, align 8
  %5 = getelementptr inbounds %struct.per_cpu_pages, ptr %2, i32 0, i32 2
  %6 = load volatile i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  store ptr %4, ptr %4, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %7, align 4
  %8 = load i32, ptr %2, align 4
  %9 = call i32 @llvm.smin.i32(i32 %8, i32 %1)
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %122

11:                                               ; preds = %115, %3
  %12 = phi i32 [ %117, %115 ], [ %9, %3 ]
  %13 = phi i32 [ %23, %115 ], [ 0, %3 ]
  %14 = phi i32 [ %110, %115 ], [ 0, %3 ]
  %15 = phi i32 [ %116, %115 ], [ 0, %3 ]
  %16 = phi i32 [ %107, %115 ], [ %6, %3 ]
  br label %17

17:                                               ; preds = %17, %11
  %18 = phi i32 [ %20, %17 ], [ %14, %11 ]
  %19 = phi i32 [ %23, %17 ], [ %13, %11 ]
  %20 = add i32 %18, 1
  %21 = add i32 %19, 1
  %22 = icmp eq i32 %21, 12
  %23 = select i1 %22, i32 0, i32 %21
  %24 = getelementptr %struct.per_cpu_pages, ptr %2, i32 0, i32 4, i32 %23
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %17, label %27

27:                                               ; preds = %17
  %28 = icmp eq i32 %20, 12
  %29 = select i1 %28, i32 %12, i32 %20
  %30 = udiv i32 %23, 3
  %31 = getelementptr %struct.per_cpu_pages, ptr %2, i32 0, i32 4, i32 %23, i32 1
  %32 = shl nuw i32 1, %30
  %33 = shl i32 %29, %30
  %34 = add i32 %15, %33
  %35 = sub i32 %12, %33
  br label %36

36:                                               ; preds = %112, %27
  %37 = phi i32 [ %16, %27 ], [ %107, %112 ]
  %38 = phi i32 [ %15, %27 ], [ %47, %112 ]
  %39 = phi i32 [ %29, %27 ], [ %110, %112 ]
  %40 = phi i32 [ %12, %27 ], [ %48, %112 ]
  %41 = load ptr, ptr %31, align 4
  %42 = getelementptr i8, ptr %41, i32 -4
  %43 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %41, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %41, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %43, align 4
  %47 = add i32 %38, %32
  %48 = sub i32 %40, %32
  %49 = getelementptr i8, ptr %41, i32 20
  %50 = load volatile i32, ptr %49, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %63, !prof !9

52:                                               ; preds = %36
  %53 = getelementptr i8, ptr %41, i32 8
  %54 = load ptr, ptr %53, align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = getelementptr i8, ptr %41, i32 24
  %57 = load volatile i32, ptr %56, align 4
  %58 = or i32 %57, %55
  %59 = load i32, ptr %42, align 4
  %60 = and i32 %59, 3207729
  %61 = or i32 %58, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %87, label %63, !prof !9

63:                                               ; preds = %52, %36
  %64 = load volatile i32, ptr %49, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %67, label %66, !prof !9

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %66, %63
  %68 = phi ptr [ @.str.49, %66 ], [ null, %63 ]
  %69 = getelementptr i8, ptr %41, i32 8
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72, !prof !9

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %67
  %74 = phi ptr [ @.str.50, %72 ], [ %68, %67 ]
  %75 = getelementptr i8, ptr %41, i32 24
  %76 = load volatile i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78, !prof !9

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %73
  %80 = phi ptr [ @.str.51, %78 ], [ %74, %73 ]
  %81 = load i32, ptr %42, align 4
  %82 = and i32 %81, 3207729
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84, !prof !9

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %84, %79
  %86 = phi ptr [ %80, %79 ], [ @.str.53, %84 ]
  call fastcc void @bad_page(ptr noundef %42, ptr noundef %86) #31
  br label %106

87:                                               ; preds = %52
  %88 = getelementptr inbounds %struct.anon, ptr %41, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = shl i32 %89, 8
  %91 = or i32 %90, %30
  store i32 %91, ptr %88, align 4
  %92 = load ptr, ptr %7, align 4
  store ptr %41, ptr %7, align 4
  store ptr %4, ptr %41, align 4
  store ptr %92, ptr %43, align 4
  store volatile ptr %41, ptr %92, align 4
  %93 = icmp eq i32 %37, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %87
  %95 = load ptr, ptr @mem_map, align 4
  %96 = ptrtoint ptr %42 to i32
  %97 = ptrtoint ptr %95 to i32
  %98 = sub i32 %96, %97
  %99 = ashr exact i32 %98, 5
  %100 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %101 = add i32 %99, %100
  %102 = xor i32 %101, 1
  %103 = sub i32 %102, %101
  %104 = getelementptr %struct.page, ptr %42, i32 %103
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %104) #31, !srcloc !51
  %105 = add i32 %37, -1
  br label %106

106:                                              ; preds = %94, %87, %85
  %107 = phi i32 [ %105, %94 ], [ 0, %87 ], [ %37, %85 ]
  %108 = icmp sgt i32 %48, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = add i32 %39, -1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load volatile ptr, ptr %24, align 4
  %114 = icmp eq ptr %113, %24
  br i1 %114, label %115, label %36

115:                                              ; preds = %112, %109
  %116 = phi i32 [ %34, %109 ], [ %47, %112 ]
  %117 = phi i32 [ %35, %109 ], [ %48, %112 ]
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %11, label %119

119:                                              ; preds = %115, %106
  %120 = phi i32 [ %47, %106 ], [ %116, %115 ]
  %121 = load i32, ptr %2, align 4
  br label %122

122:                                              ; preds = %119, %3
  %123 = phi i32 [ %8, %3 ], [ %121, %119 ]
  %124 = phi i32 [ 0, %3 ], [ %120, %119 ]
  %125 = sub i32 %123, %124
  store i32 %125, ptr %2, align 4
  %126 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 22
  call void @_raw_spin_lock(ptr noundef %126) #31
  %127 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 16
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 0
  %130 = load ptr, ptr %4, align 8
  %131 = icmp eq ptr %130, %4
  br i1 %131, label %191, label %132

132:                                              ; preds = %189, %122
  %133 = phi ptr [ %135, %189 ], [ %130, %122 ]
  %134 = getelementptr i8, ptr %133, i32 -4
  %135 = load ptr, ptr %133, align 4
  %136 = getelementptr i8, ptr %133, i32 12
  %137 = load i32, ptr %136, align 4
  %138 = and i32 %137, 255
  br i1 %129, label %139, label %148, !prof !9

139:                                              ; preds = %132
  %140 = ashr i32 %137, 8
  %141 = load ptr, ptr @mem_map, align 4
  %142 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %143 = ptrtoint ptr %134 to i32
  %144 = ptrtoint ptr %141 to i32
  %145 = sub i32 %143, %144
  %146 = ashr exact i32 %145, 5
  %147 = add i32 %146, %142
  br label %171

148:                                              ; preds = %132
  %149 = load ptr, ptr @mem_map, align 4
  %150 = ptrtoint ptr %134 to i32
  %151 = ptrtoint ptr %149 to i32
  %152 = sub i32 %150, %151
  %153 = ashr exact i32 %152, 5
  %154 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %155 = add i32 %153, %154
  %156 = load i32, ptr %134, align 4
  %157 = lshr i32 %156, 30
  %158 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %157, i32 9
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %157, i32 10
  %161 = load i32, ptr %160, align 4
  %162 = and i32 %161, -2048
  %163 = sub i32 %155, %162
  %164 = lshr i32 %163, 9
  %165 = lshr i32 %163, 14
  %166 = and i32 %164, 28
  %167 = getelementptr i32, ptr %159, i32 %165
  %168 = load i32, ptr %167, align 4
  %169 = lshr i32 %168, %166
  %170 = and i32 %169, 7
  br label %171

171:                                              ; preds = %148, %139
  %172 = phi i32 [ %147, %139 ], [ %155, %148 ]
  %173 = phi i32 [ %140, %139 ], [ %170, %148 ]
  call fastcc void @__free_one_page(ptr noundef %134, i32 noundef %172, ptr noundef %0, i32 noundef %138, i32 noundef %173, i32 noundef 0)
  %174 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mm_page_pcpu_drain, i32 0, i32 1), align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %171
  %177 = tail call ptr @llvm.thread.pointer() #31
  %178 = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 2
  %179 = load i32, ptr %178, align 8
  %180 = lshr i32 %179, 5
  %181 = getelementptr i32, ptr @__cpu_online_mask, i32 %180
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %179, 31
  %184 = shl nuw i32 1, %183
  %185 = and i32 %184, %182
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %176
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !52
  %188 = call i32 @__traceiter_mm_page_pcpu_drain(ptr noundef null, ptr noundef %134, i32 noundef %138, i32 noundef %173) #31
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !53
  br label %189

189:                                              ; preds = %187, %176, %171
  %190 = icmp eq ptr %135, %4
  br i1 %190, label %191, label %132

191:                                              ; preds = %189, %122
  call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !35
  %192 = load i16, ptr %126, align 4
  %193 = add i16 %192, 1
  store i16 %193, ptr %126, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #31, !srcloc !36
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #31, !srcloc !37
  call void asm sideeffect "", "~{memory}"() #31, !srcloc !38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mm_page_pcpu_drain(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drain_local_pages_wq(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 -4
  tail call void @migrate_disable() #31
  %3 = load ptr, ptr %2, align 4
  tail call void @drain_local_pages(ptr noundef %3)
  tail call void @migrate_enable() #31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_disable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @migrate_enable() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #28

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mm_page_free_batched(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_zone_page_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_mem(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__next_zones_zonelist(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mm_page_alloc_extfrag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mm_page_alloc_zone_locked(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @node_dirty_ok(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @reserve_highatomic_pageblock(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 11
  %4 = load volatile i32, ptr %3, align 4
  %5 = udiv i32 %4, 100
  %6 = add nuw nsw i32 %5, 2048
  %7 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 16
  %9 = icmp ult i32 %8, %6
  br i1 %9, label %10, label %130

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 22
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #31
  %13 = load i32, ptr %7, align 16
  %14 = icmp ult i32 %13, %6
  br i1 %14, label %15, label %129

15:                                               ; preds = %10
  %16 = load ptr, ptr @mem_map, align 4
  %17 = ptrtoint ptr %0 to i32
  %18 = ptrtoint ptr %16 to i32
  %19 = sub i32 %17, %18
  %20 = ashr exact i32 %19, 5
  %21 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %22 = add i32 %20, %21
  %23 = load i32, ptr %0, align 4
  %24 = lshr i32 %23, 30
  %25 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %24, i32 9
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %24, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, -2048
  %30 = sub i32 %22, %29
  %31 = lshr i32 %30, 9
  %32 = lshr i32 %30, 14
  %33 = and i32 %31, 28
  %34 = getelementptr i32, ptr %26, i32 %32
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, %33
  %37 = and i32 %36, 7
  %38 = add nsw i32 %37, -3
  %39 = icmp ult i32 %38, 3
  br i1 %39, label %129, label %40

40:                                               ; preds = %15
  %41 = add i32 %13, 2048
  store i32 %41, ptr %7, align 16
  %42 = load i32, ptr %0, align 4
  %43 = lshr i32 %42, 30
  %44 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %43, i32 9
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %43, i32 10
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, -2048
  %49 = sub i32 %22, %48
  %50 = lshr i32 %49, 9
  %51 = lshr i32 %49, 14
  %52 = and i32 %50, 28
  %53 = shl nuw nsw i32 7, %52
  %54 = shl nuw nsw i32 3, %52
  %55 = getelementptr i32, ptr %45, i32 %51
  %56 = load volatile i32, ptr %55, align 4
  %57 = xor i32 %53, -1
  br label %58

58:                                               ; preds = %66, %40
  %59 = phi i32 [ %56, %40 ], [ %67, %66 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !10
  %60 = and i32 %59, %57
  %61 = or i32 %60, %54
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %55) #31, !srcloc !11
  br label %62

62:                                               ; preds = %62, %58
  %63 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %55, i32 %59, i32 %61) #31, !srcloc !12
  %64 = extractvalue { i32, i32 } %63, 0
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %62

66:                                               ; preds = %62
  %67 = extractvalue { i32, i32 } %63, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !13
  %68 = icmp eq i32 %59, %67
  br i1 %68, label %69, label %58

69:                                               ; preds = %66
  %70 = load ptr, ptr @mem_map, align 4
  %71 = ptrtoint ptr %70 to i32
  %72 = sub i32 %17, %71
  %73 = ashr exact i32 %72, 5
  %74 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %75 = add i32 %73, %74
  %76 = and i32 %75, -2048
  %77 = or i32 %75, 2047
  %78 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 10
  %79 = load i32, ptr %78, align 4
  %80 = icmp ugt i32 %79, %76
  br i1 %80, label %87, label %81

81:                                               ; preds = %69
  %82 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 12
  %83 = load i32, ptr %82, align 4
  %84 = add i32 %83, %79
  %85 = icmp ugt i32 %84, %76
  %86 = select i1 %85, i32 %76, i32 %75
  br label %87

87:                                               ; preds = %81, %69
  %88 = phi i32 [ %75, %69 ], [ %86, %81 ]
  %89 = icmp ugt i32 %79, %77
  br i1 %89, label %129, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.zone, ptr %1, i32 0, i32 12
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, %79
  %94 = icmp ule i32 %93, %77
  %95 = icmp ugt i32 %88, %77
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %129, label %97

97:                                               ; preds = %126, %90
  %98 = phi i32 [ %128, %126 ], [ %74, %90 ]
  %99 = phi ptr [ %127, %126 ], [ %70, %90 ]
  %100 = phi i32 [ %124, %126 ], [ %88, %90 ]
  br label %101

101:                                              ; preds = %108, %97
  %102 = phi i32 [ %100, %97 ], [ %109, %108 ]
  %103 = sub i32 %102, %98
  %104 = getelementptr %struct.page, ptr %99, i32 %103, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, -268435328
  %107 = icmp eq i32 %106, -268435456
  br i1 %107, label %111, label %108

108:                                              ; preds = %101
  %109 = add i32 %102, 1
  %110 = icmp ugt i32 %109, %77
  br i1 %110, label %129, label %101

111:                                              ; preds = %101
  %112 = getelementptr %struct.page, ptr %99, i32 %103, i32 1, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr %struct.zone, ptr %1, i32 0, i32 20, i32 %113
  %115 = getelementptr %struct.page, ptr %99, i32 %103, i32 1
  %116 = getelementptr [6 x %struct.list_head], ptr %114, i32 0, i32 3
  %117 = getelementptr %struct.page, ptr %99, i32 %103, i32 1, i32 0, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  %119 = load ptr, ptr %115, align 4
  %120 = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  store ptr %118, ptr %120, align 4
  store volatile ptr %119, ptr %118, align 4
  %121 = getelementptr [6 x %struct.list_head], ptr %114, i32 0, i32 3, i32 1
  %122 = load ptr, ptr %121, align 4
  store ptr %115, ptr %121, align 4
  store ptr %116, ptr %115, align 4
  store ptr %122, ptr %117, align 4
  store volatile ptr %115, ptr %122, align 4
  %123 = shl nuw i32 1, %113
  %124 = add i32 %123, %102
  %125 = icmp ugt i32 %124, %77
  br i1 %125, label %129, label %126

126:                                              ; preds = %111
  %127 = load ptr, ptr @mem_map, align 4
  %128 = load i32, ptr @__pv_phys_pfn_offset, align 4
  br label %97

129:                                              ; preds = %111, %108, %90, %87, %15, %10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #31
  br label %130

130:                                              ; preds = %129, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wakeup_kswapd(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__alloc_pages_direct_compact(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef %5) unnamed_addr #1 {
  %7 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #31
  store ptr null, ptr %7, align 4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %63, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @llvm.thread.pointer() #31
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 2048
  %14 = or i32 %12, 2048
  store i32 %14, ptr %11, align 4
  %15 = call i32 @try_to_compact_pages(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %7) #31
  store i32 %15, ptr %5, align 4
  %16 = load i32, ptr %11, align 4
  %17 = and i32 %16, -2049
  %18 = or i32 %17, %13
  store i32 %18, ptr %11, align 4
  %19 = load i32, ptr %5, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %63, label %21

21:                                               ; preds = %9
  %22 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #31, !srcloc !15
  %23 = call i32 @llvm.read_register.i32(metadata !0) #31
  %24 = inttoptr i32 %23 to ptr
  %25 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %24) #28, !srcloc !16
  %26 = add i32 %25, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 54) to i32)
  %27 = inttoptr i32 %26 to ptr
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #31, !srcloc !17
  %30 = load ptr, ptr %7, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  call fastcc void @prep_new_page(ptr noundef nonnull %30, i32 noundef %1, i32 noundef %0, i32 noundef %2)
  %33 = load ptr, ptr %7, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %21
  %36 = call fastcc ptr @get_page_from_freelist(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  store ptr %36, ptr %7, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %35, %32
  %39 = phi ptr [ %36, %35 ], [ %33, %32 ]
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 30
  %42 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %41
  %43 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %41, i32 33
  store i8 0, ptr %43, align 4
  call void @compaction_defer_reset(ptr noundef %42, i32 noundef %1, i1 noundef zeroext true) #31
  %44 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #31, !srcloc !15
  %45 = call i32 @llvm.read_register.i32(metadata !0) #31
  %46 = inttoptr i32 %45 to ptr
  %47 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %46) #28, !srcloc !16
  %48 = add i32 %47, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 56) to i32)
  %49 = inttoptr i32 %48 to ptr
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %44) #31, !srcloc !17
  %52 = load ptr, ptr %7, align 4
  br label %63

53:                                               ; preds = %35
  %54 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #31, !srcloc !15
  %55 = call i32 @llvm.read_register.i32(metadata !0) #31
  %56 = inttoptr i32 %55 to ptr
  %57 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %56) #28, !srcloc !16
  %58 = add i32 %57, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 55) to i32)
  %59 = inttoptr i32 %58 to ptr
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %54) #31, !srcloc !17
  %62 = call i32 @__cond_resched() #31
  br label %63

63:                                               ; preds = %53, %38, %9, %6
  %64 = phi ptr [ %52, %38 ], [ null, %53 ], [ null, %6 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #31
  ret ptr %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_compact_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @compaction_defer_reset(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @unreserve_highatomic_pageblock(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.alloc_context, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.alloc_context, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13, !prof !9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.zoneref, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, %5
  br i1 %12, label %13, label %15, !prof !14

13:                                               ; preds = %9, %2
  %14 = tail call ptr @__next_zones_zonelist(ptr noundef %3, i32 noundef %5, ptr noundef %7) #31
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi ptr [ %14, %13 ], [ %3, %9 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %127, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.alloc_context, ptr %0, i32 0, i32 3
  br label %21

21:                                               ; preds = %123, %19
  %22 = phi ptr [ %17, %19 ], [ %125, %123 ]
  %23 = phi ptr [ %16, %19 ], [ %124, %123 ]
  br i1 %1, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.zone, ptr %22, i32 0, i32 2
  %26 = load i32, ptr %25, align 16
  %27 = icmp ult i32 %26, 2049
  br i1 %27, label %112, label %28

28:                                               ; preds = %24, %21
  %29 = getelementptr inbounds %struct.zone, ptr %22, i32 0, i32 22
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #31
  %31 = getelementptr inbounds %struct.zone, ptr %22, i32 0, i32 2
  br label %32

32:                                               ; preds = %108, %28
  %33 = phi i32 [ 0, %28 ], [ %109, %108 ]
  %34 = getelementptr %struct.zone, ptr %22, i32 0, i32 20, i32 %33, i32 0, i32 3
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  %37 = getelementptr i8, ptr %35, i32 -4
  %38 = icmp eq ptr %37, null
  %39 = or i1 %36, %38
  br i1 %39, label %108, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr @mem_map, align 4
  %42 = ptrtoint ptr %37 to i32
  %43 = ptrtoint ptr %41 to i32
  %44 = sub i32 %42, %43
  %45 = ashr exact i32 %44, 5
  %46 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %47 = add i32 %45, %46
  %48 = load i32, ptr %37, align 4
  %49 = lshr i32 %48, 30
  %50 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %49, i32 9
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %49, i32 10
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, -2048
  %55 = sub i32 %47, %54
  %56 = lshr i32 %55, 9
  %57 = lshr i32 %55, 14
  %58 = and i32 %56, 28
  %59 = getelementptr i32, ptr %51, i32 %57
  %60 = load i32, ptr %59, align 4
  %61 = lshr i32 %60, %58
  %62 = and i32 %61, 7
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %67

64:                                               ; preds = %40
  %65 = load i32, ptr %31, align 16
  %66 = tail call i32 @llvm.usub.sat.i32(i32 %65, i32 2048)
  store i32 %66, ptr %31, align 16
  br label %67

67:                                               ; preds = %64, %40
  %68 = load i32, ptr %20, align 4
  %69 = load i32, ptr @page_group_by_mobility_disabled, align 4
  %70 = icmp ne i32 %69, 0
  %71 = icmp slt i32 %68, 3
  %72 = and i1 %71, %70
  br i1 %72, label %73, label %74, !prof !14

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %67
  %75 = phi i32 [ 0, %73 ], [ %68, %67 ]
  %76 = load i32, ptr %37, align 4
  %77 = lshr i32 %76, 30
  %78 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %77, i32 9
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %77, i32 10
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, -2048
  %83 = sub i32 %47, %82
  %84 = lshr i32 %83, 9
  %85 = lshr i32 %83, 14
  %86 = and i32 %84, 28
  %87 = shl nuw nsw i32 7, %86
  %88 = shl i32 %75, %86
  %89 = getelementptr i32, ptr %79, i32 %85
  %90 = load volatile i32, ptr %89, align 4
  %91 = xor i32 %87, -1
  br label %92

92:                                               ; preds = %100, %74
  %93 = phi i32 [ %90, %74 ], [ %101, %100 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !10
  %94 = and i32 %93, %91
  %95 = or i32 %94, %88
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %89) #31, !srcloc !11
  br label %96

96:                                               ; preds = %96, %92
  %97 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %89, i32 %93, i32 %95) #31, !srcloc !12
  %98 = extractvalue { i32, i32 } %97, 0
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %96

100:                                              ; preds = %96
  %101 = extractvalue { i32, i32 } %97, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #31, !srcloc !13
  %102 = icmp eq i32 %93, %101
  br i1 %102, label %103, label %92

103:                                              ; preds = %100
  %104 = load i32, ptr %20, align 4
  %105 = tail call i32 @move_freepages_block(ptr noundef nonnull %22, ptr noundef nonnull %37, i32 noundef %104, ptr noundef null)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #31
  br label %127

108:                                              ; preds = %103, %32
  %109 = add nuw nsw i32 %33, 1
  %110 = icmp eq i32 %109, 12
  br i1 %110, label %111, label %32

111:                                              ; preds = %108
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #31
  br label %112

112:                                              ; preds = %111, %24
  %113 = getelementptr %struct.zoneref, ptr %23, i32 1
  %114 = load i32, ptr %4, align 4
  %115 = load ptr, ptr %6, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %121, !prof !9

117:                                              ; preds = %112
  %118 = getelementptr %struct.zoneref, ptr %23, i32 1, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = icmp ugt i32 %119, %114
  br i1 %120, label %121, label %123, !prof !14

121:                                              ; preds = %117, %112
  %122 = tail call ptr @__next_zones_zonelist(ptr noundef %113, i32 noundef %114, ptr noundef %115) #31
  br label %123

123:                                              ; preds = %121, %117
  %124 = phi ptr [ %122, %121 ], [ %113, %117 ]
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %21

127:                                              ; preds = %123, %107, %15
  %128 = phi i1 [ true, %107 ], [ false, %15 ], [ false, %123 ]
  ret i1 %128
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @try_to_free_pages(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zone_reclaimable_pages(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_reclaim_retry_zone(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @compaction_zonelist_suitable(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_compact_retry(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @out_of_memory(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mm_page_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #29

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nr_free_highpages() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @build_zonelists(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 7
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.pglist_data, ptr %0, i32 0, i32 1
  %5 = getelementptr %struct.zone, ptr %0, i32 3, i32 11
  %6 = load volatile i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr %struct.zone, ptr %0, i32 3
  store ptr %9, ptr %4, align 4
  %10 = getelementptr %struct.zone, ptr %0, i32 3, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %9 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = sdiv exact i32 %14, 896
  %16 = getelementptr %struct.pglist_data, ptr %0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %8, %1
  %18 = phi i32 [ 1, %8 ], [ 0, %1 ]
  %19 = getelementptr %struct.zone, ptr %0, i32 2, i32 11
  %20 = load volatile i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = getelementptr %struct.zone, ptr %0, i32 2
  %24 = add nuw nsw i32 %18, 1
  %25 = getelementptr %struct.zoneref, ptr %4, i32 %18
  store ptr %23, ptr %25, align 4
  %26 = getelementptr %struct.zone, ptr %0, i32 2, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = ptrtoint ptr %23 to i32
  %29 = ptrtoint ptr %27 to i32
  %30 = sub i32 %28, %29
  %31 = sdiv exact i32 %30, 896
  %32 = getelementptr %struct.zoneref, ptr %4, i32 %18, i32 1
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %22, %17
  %34 = phi i32 [ %24, %22 ], [ %18, %17 ]
  %35 = getelementptr %struct.zone, ptr %0, i32 1, i32 11
  %36 = load volatile i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = getelementptr %struct.zone, ptr %0, i32 1
  %40 = add nuw nsw i32 %34, 1
  %41 = getelementptr %struct.zoneref, ptr %4, i32 %34
  store ptr %39, ptr %41, align 4
  %42 = getelementptr %struct.zone, ptr %0, i32 1, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = ptrtoint ptr %39 to i32
  %45 = ptrtoint ptr %43 to i32
  %46 = sub i32 %44, %45
  %47 = sdiv exact i32 %46, 896
  %48 = getelementptr %struct.zoneref, ptr %4, i32 %34, i32 1
  store i32 %47, ptr %48, align 4
  br label %49

49:                                               ; preds = %38, %33
  %50 = phi i32 [ %40, %38 ], [ %34, %33 ]
  %51 = getelementptr %struct.zone, ptr %0, i32 0, i32 11
  %52 = load volatile i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = add nuw nsw i32 %50, 1
  %56 = getelementptr %struct.zoneref, ptr %4, i32 %50
  store ptr %0, ptr %56, align 4
  %57 = getelementptr %struct.zone, ptr %0, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = ptrtoint ptr %0 to i32
  %60 = ptrtoint ptr %58 to i32
  %61 = sub i32 %59, %60
  %62 = sdiv exact i32 %61, 896
  %63 = getelementptr %struct.zoneref, ptr %4, i32 %50, i32 1
  store i32 %62, ptr %63, align 4
  br label %64

64:                                               ; preds = %54, %49
  %65 = phi i32 [ %55, %54 ], [ %50, %49 ]
  %66 = getelementptr %struct.zoneref, ptr %4, i32 %65
  %67 = icmp ugt i32 %3, 2147483646
  br i1 %67, label %119, label %68

68:                                               ; preds = %164, %64
  %69 = phi ptr [ %66, %64 ], [ %166, %164 ]
  %70 = icmp sgt i32 %3, 0
  br i1 %70, label %71, label %167

71:                                               ; preds = %68
  %72 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 11), align 64
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  store ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3), ptr %69, align 4
  %75 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 4), align 4
  %76 = ptrtoint ptr %75 to i32
  %77 = sub i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3) to i32), %76
  %78 = sdiv exact i32 %77, 896
  %79 = getelementptr %struct.zoneref, ptr %69, i32 0, i32 1
  store i32 %78, ptr %79, align 4
  br label %80

80:                                               ; preds = %74, %71
  %81 = phi i32 [ 1, %74 ], [ 0, %71 ]
  %82 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 11), align 64
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = add nuw nsw i32 %81, 1
  %86 = getelementptr %struct.zoneref, ptr %69, i32 %81
  store ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2), ptr %86, align 4
  %87 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 4), align 4
  %88 = ptrtoint ptr %87 to i32
  %89 = sub i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2) to i32), %88
  %90 = sdiv exact i32 %89, 896
  %91 = getelementptr %struct.zoneref, ptr %69, i32 %81, i32 1
  store i32 %90, ptr %91, align 4
  br label %92

92:                                               ; preds = %84, %80
  %93 = phi i32 [ %85, %84 ], [ %81, %80 ]
  %94 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 1, i32 11), align 64
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %92
  %97 = add nuw nsw i32 %93, 1
  %98 = getelementptr %struct.zoneref, ptr %69, i32 %93
  store ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 1), ptr %98, align 4
  %99 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 1, i32 4), align 4
  %100 = ptrtoint ptr %99 to i32
  %101 = sub i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 1) to i32), %100
  %102 = sdiv exact i32 %101, 896
  %103 = getelementptr %struct.zoneref, ptr %69, i32 %93, i32 1
  store i32 %102, ptr %103, align 4
  br label %104

104:                                              ; preds = %96, %92
  %105 = phi i32 [ %97, %96 ], [ %93, %92 ]
  %106 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 0, i32 11), align 64
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = add nuw nsw i32 %105, 1
  %110 = getelementptr %struct.zoneref, ptr %69, i32 %105
  store ptr @contig_page_data, ptr %110, align 4
  %111 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 0, i32 4), align 4
  %112 = ptrtoint ptr %111 to i32
  %113 = sub i32 ptrtoint (ptr @contig_page_data to i32), %112
  %114 = sdiv exact i32 %113, 896
  %115 = getelementptr %struct.zoneref, ptr %69, i32 %105, i32 1
  store i32 %114, ptr %115, align 4
  br label %116

116:                                              ; preds = %108, %104
  %117 = phi i32 [ %109, %108 ], [ %105, %104 ]
  %118 = getelementptr %struct.zoneref, ptr %69, i32 %117
  br label %167

119:                                              ; preds = %64
  %120 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 11), align 64
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  store ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3), ptr %66, align 4
  %123 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3, i32 4), align 4
  %124 = ptrtoint ptr %123 to i32
  %125 = sub i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 3) to i32), %124
  %126 = sdiv exact i32 %125, 896
  %127 = getelementptr %struct.zoneref, ptr %4, i32 %65, i32 1
  store i32 %126, ptr %127, align 4
  br label %128

128:                                              ; preds = %122, %119
  %129 = phi i32 [ 1, %122 ], [ 0, %119 ]
  %130 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 11), align 64
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = add nuw nsw i32 %129, 1
  %134 = getelementptr %struct.zoneref, ptr %66, i32 %129
  store ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2), ptr %134, align 4
  %135 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2, i32 4), align 4
  %136 = ptrtoint ptr %135 to i32
  %137 = sub i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 2) to i32), %136
  %138 = sdiv exact i32 %137, 896
  %139 = getelementptr %struct.zoneref, ptr %66, i32 %129, i32 1
  store i32 %138, ptr %139, align 4
  br label %140

140:                                              ; preds = %132, %128
  %141 = phi i32 [ %133, %132 ], [ %129, %128 ]
  %142 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 1, i32 11), align 64
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %140
  %145 = add nuw nsw i32 %141, 1
  %146 = getelementptr %struct.zoneref, ptr %66, i32 %141
  store ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 1), ptr %146, align 4
  %147 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 1, i32 4), align 4
  %148 = ptrtoint ptr %147 to i32
  %149 = sub i32 ptrtoint (ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 1) to i32), %148
  %150 = sdiv exact i32 %149, 896
  %151 = getelementptr %struct.zoneref, ptr %66, i32 %141, i32 1
  store i32 %150, ptr %151, align 4
  br label %152

152:                                              ; preds = %144, %140
  %153 = phi i32 [ %145, %144 ], [ %141, %140 ]
  %154 = load volatile i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 0, i32 11), align 64
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %152
  %157 = add nuw nsw i32 %153, 1
  %158 = getelementptr %struct.zoneref, ptr %66, i32 %153
  store ptr @contig_page_data, ptr %158, align 4
  %159 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 0, i32 0, i32 4), align 4
  %160 = ptrtoint ptr %159 to i32
  %161 = sub i32 ptrtoint (ptr @contig_page_data to i32), %160
  %162 = sdiv exact i32 %161, 896
  %163 = getelementptr %struct.zoneref, ptr %66, i32 %153, i32 1
  store i32 %162, ptr %163, align 4
  br label %164

164:                                              ; preds = %156, %152
  %165 = phi i32 [ %157, %156 ], [ %153, %152 ]
  %166 = getelementptr %struct.zoneref, ptr %66, i32 %165
  br label %68

167:                                              ; preds = %116, %68
  %168 = phi ptr [ %69, %68 ], [ %118, %116 ]
  store ptr null, ptr %168, align 4
  %169 = getelementptr inbounds %struct.zoneref, ptr %168, i32 0, i32 1
  store i32 0, ptr %169, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @calculate_node_totalpages(i32 noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i32 [ 0, %2 ], [ %21, %5 ]
  %7 = phi i32 [ 0, %2 ], [ %20, %5 ]
  %8 = phi i32 [ 0, %2 ], [ %22, %5 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #31
  store i32 0, ptr %3, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #31
  store i32 0, ptr %4, align 4, !annotation !30
  %9 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 7), align 4
  %10 = call fastcc i32 @zone_spanned_pages_in_node(i32 noundef %9, i32 noundef %8, i32 noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #34
  %11 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 7), align 4
  %12 = tail call fastcc i32 @zone_absent_pages_in_node(i32 noundef %11, i32 noundef %8, i32 noundef %0, i32 noundef %1) #34
  %13 = sub i32 %10, %12
  %14 = icmp eq i32 %10, 0
  %15 = load i32, ptr %3, align 4
  %16 = select i1 %14, i32 0, i32 %15
  %17 = getelementptr %struct.zone, ptr @contig_page_data, i32 %8, i32 10
  store i32 %16, ptr %17, align 4
  %18 = getelementptr %struct.zone, ptr @contig_page_data, i32 %8, i32 12
  store i32 %10, ptr %18, align 4
  %19 = getelementptr %struct.zone, ptr @contig_page_data, i32 %8, i32 13
  store i32 %13, ptr %19, align 8
  %20 = add i32 %10, %7
  %21 = add i32 %13, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  %22 = add nuw nsw i32 %8, 1
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %5

24:                                               ; preds = %5
  store i32 %20, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 6), align 8
  store i32 %21, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 5), align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @alloc_node_mem_map() unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 6), align 8
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %31, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 4), align 16
  %5 = and i32 %4, 2047
  %6 = load ptr, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 3), align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = and i32 %4, 134215680
  %10 = add i32 %1, 2047
  %11 = add i32 %10, %4
  %12 = and i32 %11, 134215680
  %13 = sub nsw i32 %12, %9
  %14 = shl i32 %13, 5
  %15 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 7), align 4
  %16 = tail call ptr @memblock_alloc_try_nid_raw(i32 noundef %14, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef %15) #31
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  %19 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 7), align 4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.61, i32 noundef %14, i32 noundef %19) #38
  unreachable

20:                                               ; preds = %8
  %21 = getelementptr %struct.page, ptr %16, i32 %5
  store ptr %21, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 3), align 4
  %22 = load i32, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 4), align 16
  br label %23

23:                                               ; preds = %20, %3
  %24 = phi i32 [ %22, %20 ], [ %4, %3 ]
  %25 = phi ptr [ %21, %20 ], [ %6, %3 ]
  store ptr %25, ptr @mem_map, align 4
  %26 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %27 = icmp eq i32 %26, %24
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = sub nsw i32 0, %5
  %30 = getelementptr %struct.page, ptr %25, i32 %29
  store ptr %30, ptr @mem_map, align 4
  br label %31

31:                                               ; preds = %28, %23, %0
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @free_area_init_core() unnamed_addr #0 section ".init.text" {
  tail call fastcc void @pgdat_init_internals() #34
  store ptr @boot_nodestats, ptr getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 28), align 64
  br label %1

1:                                                ; preds = %68, %0
  %2 = phi i32 [ 0, %0 ], [ %69, %68 ]
  %3 = getelementptr %struct.zone, ptr @contig_page_data, i32 %2
  %4 = getelementptr %struct.zone, ptr @contig_page_data, i32 %2, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.zone, ptr @contig_page_data, i32 %2, i32 13
  %7 = load i32, ptr %6, align 8
  %8 = shl i32 %5, 5
  %9 = add i32 %8, 4095
  %10 = lshr i32 %9, 12
  %11 = icmp eq i32 %2, 2
  br i1 %11, label %40, label %12

12:                                               ; preds = %1
  %13 = icmp ne i32 %2, 3
  %14 = load i32, ptr @movable_zone, align 4
  %15 = icmp ne i32 %14, 2
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = icmp ult i32 %7, %10
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = sub i32 %7, %10
  br label %26

21:                                               ; preds = %17
  %22 = getelementptr [4 x ptr], ptr @zone_names, i32 0, i32 %2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %23, i32 noundef %10, i32 noundef %7) #33
  %25 = load i32, ptr @movable_zone, align 4
  br label %26

26:                                               ; preds = %21, %19, %12
  %27 = phi i32 [ %14, %19 ], [ %25, %21 ], [ 2, %12 ]
  %28 = phi i32 [ %20, %19 ], [ %7, %21 ], [ %7, %12 ]
  %29 = icmp eq i32 %2, 0
  %30 = load i32, ptr @dma_reserve, align 4
  %31 = icmp ugt i32 %28, %30
  %32 = select i1 %29, i1 %31, i1 false
  %33 = select i1 %32, i32 %30, i32 0
  %34 = sub i32 %28, %33
  %35 = icmp ne i32 %27, 2
  %36 = select i1 %13, i1 true, i1 %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, ptr @nr_kernel_pages, align 4
  %39 = add i32 %38, %34
  br label %47

40:                                               ; preds = %26, %1
  %41 = phi i32 [ %34, %26 ], [ %7, %1 ]
  %42 = load i32, ptr @nr_kernel_pages, align 4
  %43 = shl nuw nsw i32 %10, 1
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = sub i32 %42, %10
  br label %47

47:                                               ; preds = %45, %37
  %48 = phi i32 [ %46, %45 ], [ %39, %37 ]
  %49 = phi i32 [ %41, %45 ], [ %34, %37 ]
  store i32 %48, ptr @nr_kernel_pages, align 4
  br label %50

50:                                               ; preds = %47, %40
  %51 = phi i32 [ %41, %40 ], [ %49, %47 ]
  %52 = load i32, ptr @nr_all_pages, align 4
  %53 = add i32 %52, %51
  store i32 %53, ptr @nr_all_pages, align 4
  %54 = getelementptr %struct.zone, ptr @contig_page_data, i32 %2, i32 11
  store volatile i32 %51, ptr %54, align 64
  %55 = getelementptr [4 x ptr], ptr @zone_names, i32 0, i32 %2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr %struct.zone, ptr @contig_page_data, i32 %2, i32 15
  store ptr %56, ptr %57, align 16
  %58 = getelementptr %struct.zone, ptr @contig_page_data, i32 %2, i32 4
  store ptr @contig_page_data, ptr %58, align 4
  %59 = getelementptr %struct.zone, ptr @contig_page_data, i32 %2, i32 22
  store i32 0, ptr %59, align 4
  %60 = getelementptr %struct.zone, ptr @contig_page_data, i32 %2, i32 5
  store ptr @boot_pageset, ptr %60, align 8
  %61 = getelementptr %struct.zone, ptr @contig_page_data, i32 %2, i32 6
  store ptr @boot_zonestats, ptr %61, align 4
  %62 = getelementptr %struct.zone, ptr @contig_page_data, i32 %2, i32 7
  store i32 0, ptr %62, align 16
  %63 = getelementptr %struct.zone, ptr @contig_page_data, i32 %2, i32 8
  store i32 1, ptr %63, align 4
  %64 = icmp eq i32 %5, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %50
  tail call fastcc void @setup_usemap(ptr noundef %3)
  %66 = getelementptr %struct.zone, ptr @contig_page_data, i32 %2, i32 10
  %67 = load i32, ptr %66, align 4
  tail call void @init_currently_empty_zone(ptr noundef %3, i32 noundef %67, i32 noundef %5) #34
  br label %68

68:                                               ; preds = %65, %50
  %69 = add nuw nsw i32 %2, 1
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %71, label %1

71:                                               ; preds = %68
  ret void
}

; Function Attrs: cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal fastcc i32 @zone_spanned_pages_in_node(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) unnamed_addr #30 section ".init.text" {
  %7 = or i32 %3, %2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %6
  %10 = getelementptr [4 x i32], ptr @arch_zone_highest_possible_pfn, i32 0, i32 %1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr [4 x i32], ptr @arch_zone_lowest_possible_pfn, i32 0, i32 %1
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 %2)
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %11)
  store i32 %15, ptr %4, align 4
  %16 = tail call i32 @llvm.umax.i32(i32 %13, i32 %3)
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %11)
  store i32 %17, ptr %5, align 4
  tail call fastcc void @adjust_zone_range_for_zone_movable(i32 noundef %0, i32 noundef %1, i32 noundef %3, ptr noundef %4, ptr noundef %5) #34
  %18 = load i32, ptr %5, align 4
  %19 = icmp ult i32 %18, %2
  br i1 %19, label %29, label %20

20:                                               ; preds = %9
  %21 = load i32, ptr %4, align 4
  %22 = icmp ugt i32 %21, %3
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @llvm.umin.i32(i32 %18, i32 %3)
  store i32 %24, ptr %5, align 4
  %25 = load i32, ptr %4, align 4
  %26 = tail call i32 @llvm.umax.i32(i32 %25, i32 %2)
  store i32 %26, ptr %4, align 4
  %27 = load i32, ptr %5, align 4
  %28 = sub i32 %27, %26
  br label %29

29:                                               ; preds = %23, %20, %9, %6
  %30 = phi i32 [ %28, %23 ], [ 0, %6 ], [ 0, %20 ], [ 0, %9 ]
  ret i32 %30
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @zone_absent_pages_in_node(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 section ".init.text" {
  %5 = or i32 %3, %2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %83, label %7

7:                                                ; preds = %4
  %8 = getelementptr [4 x i32], ptr @arch_zone_highest_possible_pfn, i32 0, i32 %1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [4 x i32], ptr @arch_zone_lowest_possible_pfn, i32 0, i32 %1
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %11, i32 %2)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %9)
  %14 = tail call i32 @llvm.umax.i32(i32 %11, i32 %3)
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %9)
  %16 = getelementptr [1 x i32], ptr @zone_movable_pfn, i32 0, i32 %0
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %7
  %20 = icmp eq i32 %1, 3
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = load i32, ptr @movable_zone, align 4
  %23 = getelementptr [4 x i32], ptr @arch_zone_highest_possible_pfn, i32 0, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 %3) #31
  br label %36

26:                                               ; preds = %19
  %27 = load i1, ptr @mirrored_kernelcore, align 1
  %28 = xor i1 %27, true
  %29 = icmp ult i32 %13, %17
  %30 = select i1 %28, i1 %29, i1 false
  %31 = icmp ugt i32 %15, %17
  %32 = select i1 %30, i1 %31, i1 false
  %33 = select i1 %32, i1 true, i1 %29
  %34 = select i1 %33, i32 %13, i32 %15
  %35 = select i1 %32, i32 %17, i32 %15
  br label %36

36:                                               ; preds = %26, %21, %7
  %37 = phi i32 [ %13, %7 ], [ %17, %21 ], [ %34, %26 ]
  %38 = phi i32 [ %15, %7 ], [ %25, %21 ], [ %35, %26 ]
  %39 = tail call i32 @__absent_pages_in_range(i32 noundef %0, i32 noundef %37, i32 noundef %38) #34
  %40 = load i1, ptr @mirrored_kernelcore, align 1
  br i1 %40, label %41, label %83

41:                                               ; preds = %36
  %42 = load i32, ptr %16, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %83, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2, i32 3), align 4
  %46 = load i32, ptr getelementptr inbounds (%struct.memblock, ptr @memblock, i32 0, i32 2), align 4
  %47 = getelementptr %struct.memblock_region, ptr %45, i32 %46
  %48 = icmp ult ptr %45, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %79, %44
  %50 = phi i32 [ %80, %79 ], [ %39, %44 ]
  %51 = phi ptr [ %81, %79 ], [ %45, %44 ]
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, 4095
  %54 = lshr i32 %53, 12
  %55 = tail call i32 @llvm.umax.i32(i32 %54, i32 %37)
  %56 = tail call i32 @llvm.umin.i32(i32 %55, i32 %38)
  %57 = getelementptr inbounds %struct.memblock_region, ptr %51, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, %52
  %60 = lshr i32 %59, 12
  %61 = tail call i32 @llvm.umax.i32(i32 %60, i32 %37)
  %62 = tail call i32 @llvm.umin.i32(i32 %61, i32 %38)
  switch i32 %1, label %79 [
    i32 3, label %63
    i32 1, label %71
  ]

63:                                               ; preds = %49
  %64 = getelementptr inbounds %struct.memblock_region, ptr %51, i32 0, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 2
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %63
  %69 = sub i32 %50, %56
  %70 = add i32 %69, %62
  br label %79

71:                                               ; preds = %49
  %72 = getelementptr inbounds %struct.memblock_region, ptr %51, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = sub i32 %50, %56
  %78 = add i32 %77, %62
  br label %79

79:                                               ; preds = %76, %71, %68, %63, %49
  %80 = phi i32 [ %50, %71 ], [ %78, %76 ], [ %50, %63 ], [ %70, %68 ], [ %50, %49 ]
  %81 = getelementptr %struct.memblock_region, ptr %51, i32 1
  %82 = icmp ult ptr %81, %47
  br i1 %82, label %49, label %83

83:                                               ; preds = %79, %44, %41, %36, %4
  %84 = phi i32 [ 0, %4 ], [ %39, %41 ], [ %39, %36 ], [ %39, %44 ], [ %80, %79 ]
  ret i32 %84
}

; Function Attrs: cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal fastcc void @adjust_zone_range_for_zone_movable(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #30 section ".init.text" {
  %6 = getelementptr [1 x i32], ptr @zone_movable_pfn, i32 0, i32 %0
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %5
  %10 = icmp eq i32 %1, 3
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  store i32 %7, ptr %3, align 4
  %12 = load i32, ptr @movable_zone, align 4
  %13 = getelementptr [4 x i32], ptr @arch_zone_highest_possible_pfn, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %2)
  store i32 %15, ptr %4, align 4
  br label %30

16:                                               ; preds = %9
  %17 = load i1, ptr @mirrored_kernelcore, align 1
  %18 = load i32, ptr %3, align 4
  %19 = xor i1 %17, true
  %20 = icmp ult i32 %18, %7
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, ptr %4, align 4
  %24 = icmp ugt i32 %23, %7
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 %7, ptr %4, align 4
  br label %30

26:                                               ; preds = %22, %16
  %27 = icmp ult i32 %18, %7
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  %29 = load i32, ptr %4, align 4
  store i32 %29, ptr %3, align 4
  br label %30

30:                                               ; preds = %28, %26, %25, %11, %5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @pgdat_init_internals() unnamed_addr #0 section ".meminit.text" {
  tail call void @__init_waitqueue_head(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 19), ptr noundef nonnull @.str.68, ptr noundef nonnull @pgdat_init_kcompactd.__key) #31
  tail call void @__init_waitqueue_head(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 8), ptr noundef nonnull @.str.63, ptr noundef nonnull @pgdat_init_internals.__key) #31
  tail call void @__init_waitqueue_head(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 9), ptr noundef nonnull @.str.65, ptr noundef nonnull @pgdat_init_internals.__key.64) #31
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %3 = getelementptr %struct.pglist_data, ptr @contig_page_data, i32 0, i32 10, i32 %2
  tail call void @__init_waitqueue_head(ptr noundef %3, ptr noundef nonnull @.str.67, ptr noundef nonnull @pgdat_init_internals.__key.66) #31
  %4 = add nuw nsw i32 %2, 1
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %6, label %1

6:                                                ; preds = %1
  tail call void @lruvec_init(ptr noundef getelementptr inbounds (%struct.pglist_data, ptr @contig_page_data, i32 0, i32 24)) #31
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @setup_usemap(ptr nocapture noundef %0) unnamed_addr #19 section ".ref.text" {
  %2 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 12
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %3, 2047
  %7 = add i32 %5, 2047
  %8 = add i32 %7, %6
  %9 = lshr i32 %8, 9
  %10 = and i32 %9, 8388604
  %11 = add nuw nsw i32 %10, 31
  %12 = lshr i32 %11, 3
  %13 = and i32 %12, 2097148
  %14 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 9
  store ptr null, ptr %14, align 8
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = tail call ptr @memblock_alloc_try_nid(i32 noundef %13, i32 noundef 64, i32 noundef 0, i32 noundef 0, i32 noundef 0) #31
  store ptr %17, ptr %14, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 15
  %21 = load ptr, ptr %20, align 16
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.69, i32 noundef %13, ptr noundef %21, i32 noundef 0) #38
  unreachable

22:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lruvec_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #29

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @early_calculate_totalpages() unnamed_addr #0 section ".init.text" {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #31
  store i32 0, ptr %1, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #31
  store i32 0, ptr %2, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #31
  store i32 0, ptr %4, align 4, !annotation !30
  store i32 -1, ptr %3, align 4
  call void @__next_mem_pfn_range(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4) #31
  %5 = load i32, ptr %3, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %15

7:                                                ; preds = %7, %0
  %8 = phi i32 [ %12, %7 ], [ 0, %0 ]
  %9 = load i32, ptr %2, align 4
  %10 = load i32, ptr %1, align 4
  %11 = add i32 %9, %8
  %12 = sub i32 %11, %10
  call void @__next_mem_pfn_range(ptr noundef nonnull %3, i32 noundef 1, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4) #31
  %13 = load i32, ptr %3, align 4
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %7, label %15

15:                                               ; preds = %7, %0
  %16 = phi i32 [ 0, %0 ], [ %12, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #31
  ret i32 %16
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @memmap_init_zone_range(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 section ".init.text" {
  %5 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 12
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %6
  %10 = getelementptr inbounds %struct.zone, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %0 to i32
  %13 = ptrtoint ptr %11 to i32
  %14 = sub i32 %12, %13
  %15 = sdiv exact i32 %14, 896
  %16 = tail call i32 @llvm.umax.i32(i32 %6, i32 %1)
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %9)
  %18 = tail call i32 @llvm.umax.i32(i32 %6, i32 %2)
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 %9)
  %20 = icmp ugt i32 %19, %17
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = sub i32 %19, %17
  tail call void @memmap_init_range(i32 noundef %22, i32 undef, i32 noundef %15, i32 noundef %17, i32 undef, i32 noundef 0, ptr undef, i32 noundef 1) #34
  %23 = load i32, ptr %3, align 4
  %24 = icmp ult i32 %23, %17
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  tail call fastcc void @init_unavailable_range(i32 noundef %23, i32 noundef %17, i32 noundef %15, i32 noundef 0) #34
  br label %26

26:                                               ; preds = %25, %21
  store i32 %19, ptr %3, align 4
  br label %27

27:                                               ; preds = %26, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @init_unavailable_range(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 section ".init.text" {
  %5 = icmp ult i32 %0, %1
  br i1 %5, label %6, label %44

6:                                                ; preds = %4
  %7 = shl i32 %2, 30
  br label %8

8:                                                ; preds = %33, %6
  %9 = phi i32 [ %0, %6 ], [ %36, %33 ]
  %10 = phi i64 [ 0, %6 ], [ %34, %33 ]
  %11 = and i32 %9, -2048
  %12 = tail call i32 @pfn_valid(i32 noundef %11) #31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = or i32 %9, 2047
  br label %33

16:                                               ; preds = %8
  %17 = load ptr, ptr @mem_map, align 4
  %18 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %19 = sub i32 %9, %18
  %20 = getelementptr %struct.page, ptr %17, i32 %19
  %21 = getelementptr inbounds i8, ptr %20, i32 12
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(32) %21, i8 0, i32 12, i1 false) #31
  store i32 %7, ptr %20, align 4
  %22 = getelementptr %struct.page, ptr %17, i32 %19, i32 3
  store volatile i32 1, ptr %22, align 4
  %23 = getelementptr %struct.page, ptr %17, i32 %19, i32 2
  store volatile i32 -1, ptr %23, align 4
  %24 = getelementptr %struct.page, ptr %17, i32 %19, i32 1
  store volatile ptr %24, ptr %24, align 4
  %25 = getelementptr %struct.page, ptr %17, i32 %19, i32 1, i32 0, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = load ptr, ptr @mem_map, align 4
  %27 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %28 = sub i32 %9, %27
  %29 = getelementptr %struct.page, ptr %26, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, 4096
  store i32 %31, ptr %29, align 4
  %32 = add i64 %10, 1
  br label %33

33:                                               ; preds = %16, %14
  %34 = phi i64 [ %32, %16 ], [ %10, %14 ]
  %35 = phi i32 [ %9, %16 ], [ %15, %14 ]
  %36 = add i32 %35, 1
  %37 = icmp ult i32 %36, %1
  br i1 %37, label %8, label %38

38:                                               ; preds = %33
  %39 = icmp eq i64 %34, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %38
  %41 = getelementptr [4 x ptr], ptr @zone_names, i32 0, i32 %2
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %3, ptr noundef %42, i64 noundef %34) #33
  br label %44

44:                                               ; preds = %40, %38, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @parse_option_str(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @cmdline_parse_core(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  store ptr %0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #31
  store ptr null, ptr %5, align 4, !annotation !30
  %6 = icmp eq ptr %0, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = call i64 @simple_strtoull(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 0) #31
  %9 = load ptr, ptr %5, align 4
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 37
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = icmp ugt i64 %8, 100
  br i1 %13, label %14, label %15, !prof !14

14:                                               ; preds = %12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 8125, i32 noundef 9, ptr noundef null) #31
  br label %15

15:                                               ; preds = %14, %12
  %16 = trunc i64 %8 to i32
  br label %24

17:                                               ; preds = %7
  %18 = call i64 @memparse(ptr noundef nonnull %0, ptr noundef nonnull %4) #31
  %19 = lshr i64 %18, 12
  %20 = icmp ugt i64 %18, 17592186044415
  br i1 %20, label %21, label %22, !prof !14

21:                                               ; preds = %17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 8131, i32 noundef 9, ptr noundef null) #31
  br label %22

22:                                               ; preds = %21, %17
  %23 = trunc i64 %19 to i32
  store i32 %23, ptr %1, align 4
  br label %24

24:                                               ; preds = %22, %15
  %25 = phi i32 [ 0, %22 ], [ %16, %15 ]
  store i32 %25, ptr %2, align 4
  br label %26

26:                                               ; preds = %24, %3
  %27 = phi i32 [ 0, %24 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_add_drain_cpu(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_events_fold_cpu(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_vm_stats_fold(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @calculate_totalreserve_pages() unnamed_addr #1 {
  %1 = tail call ptr @first_online_pgdat() #31
  %2 = icmp eq ptr %1, null
  br i1 %2, label %82, label %3

3:                                                ; preds = %3, %0
  %4 = phi i32 [ %79, %3 ], [ 0, %0 ]
  %5 = phi ptr [ %80, %3 ], [ %1, %0 ]
  %6 = getelementptr inbounds %struct.pglist_data, ptr %5, i32 0, i32 22
  %7 = getelementptr %struct.zone, ptr %5, i32 0, i32 11
  %8 = load volatile i32, ptr %7, align 4
  %9 = getelementptr %struct.zone, ptr %5, i32 0, i32 3, i32 0
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.zone, ptr %5, i32 0, i32 3, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = call i32 @llvm.smax.i32(i32 %10, i32 %12)
  %14 = getelementptr %struct.zone, ptr %5, i32 0, i32 3, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = call i32 @llvm.smax.i32(i32 %13, i32 %15)
  %17 = getelementptr %struct.zone, ptr %5, i32 0, i32 3, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = call i32 @llvm.smax.i32(i32 %16, i32 %18)
  %20 = call i32 @llvm.smax.i32(i32 %19, i32 0)
  %21 = getelementptr %struct.zone, ptr %5, i32 0, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr %struct.zone, ptr %5, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %22, %20
  %26 = add i32 %25, %24
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %8)
  %28 = add i32 %27, %4
  %29 = getelementptr %struct.zone, ptr %5, i32 1, i32 11
  %30 = load volatile i32, ptr %29, align 4
  %31 = getelementptr %struct.zone, ptr %5, i32 1, i32 3, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.zone, ptr %5, i32 1, i32 3, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = call i32 @llvm.smax.i32(i32 %32, i32 %34)
  %36 = getelementptr %struct.zone, ptr %5, i32 1, i32 3, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = call i32 @llvm.smax.i32(i32 %35, i32 %37)
  %39 = call i32 @llvm.smax.i32(i32 %38, i32 0)
  %40 = getelementptr %struct.zone, ptr %5, i32 1, i32 0, i32 2
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr %struct.zone, ptr %5, i32 1, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %41, %39
  %45 = add i32 %44, %43
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 %30)
  %47 = add i32 %46, %27
  %48 = add i32 %46, %28
  %49 = getelementptr %struct.zone, ptr %5, i32 2, i32 11
  %50 = load volatile i32, ptr %49, align 4
  %51 = getelementptr %struct.zone, ptr %5, i32 2, i32 3, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr %struct.zone, ptr %5, i32 2, i32 3, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = call i32 @llvm.smax.i32(i32 %52, i32 %54)
  %56 = call i32 @llvm.smax.i32(i32 %55, i32 0)
  %57 = getelementptr %struct.zone, ptr %5, i32 2, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr %struct.zone, ptr %5, i32 2, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %58, %56
  %62 = add i32 %61, %60
  %63 = tail call i32 @llvm.umin.i32(i32 %62, i32 %50)
  %64 = add i32 %63, %47
  %65 = add i32 %63, %48
  %66 = getelementptr %struct.zone, ptr %5, i32 3, i32 11
  %67 = load volatile i32, ptr %66, align 4
  %68 = getelementptr %struct.zone, ptr %5, i32 3, i32 3, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = tail call i32 @llvm.smax.i32(i32 %69, i32 0)
  %71 = getelementptr %struct.zone, ptr %5, i32 3, i32 0, i32 2
  %72 = load i32, ptr %71, align 8
  %73 = getelementptr %struct.zone, ptr %5, i32 3, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = add i32 %72, %70
  %76 = add i32 %75, %74
  %77 = tail call i32 @llvm.umin.i32(i32 %76, i32 %67)
  %78 = add i32 %77, %64
  store i32 %78, ptr %6, align 4
  %79 = add i32 %77, %65
  %80 = tail call ptr @next_online_pgdat(ptr noundef nonnull %5) #31
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %3

82:                                               ; preds = %3, %0
  %83 = phi i32 [ 0, %0 ], [ %79, %3 ]
  store i32 %83, ptr @totalreserve_pages, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lru_cache_disable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isolate_migratepages_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reclaim_clean_pages_from_list(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @migrate_pages(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_migration_target(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @putback_movable_pages(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #29

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #29

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nocallback nofree nosync nounwind willreturn }
attributes #15 = { mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { cold nounwind null_pointer_is_valid optsize sspstrong allocsize(1) uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { noinline nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { cold noinline nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { cold nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #22 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #23 = { cold nofree norecurse nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #24 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #25 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #26 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #27 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #28 = { nounwind readonly }
attributes #29 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #30 = { cold mustprogress nofree nosync nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #31 = { nounwind }
attributes #32 = { nounwind readonly willreturn }
attributes #33 = { cold nounwind }
attributes #34 = { cold }
attributes #35 = { nounwind allocsize(0) }
attributes #36 = { nounwind readnone }
attributes #37 = { allocsize(0) }
attributes #38 = { cold noreturn nounwind }

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
!10 = !{i64 2155113467}
!11 = !{i64 1110321, i64 2148600292, i64 2148600318, i64 2148600365, i64 2148600387, i64 2148600415, i64 2148600435}
!12 = !{i64 1121695, i64 1121716, i64 1121739, i64 1121758, i64 1121777}
!13 = !{i64 2155113866}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 1015999, i64 1016060}
!16 = !{i64 1034699}
!17 = !{i64 1019016}
!18 = !{i8 0, i8 2}
!19 = !{i64 2148611707, i64 2148611733, i64 2148611762, i64 2148611796, i64 2148611827, i64 2148611850}
!20 = !{i64 2154210290}
!21 = !{i64 2154210448}
!22 = !{!"branch_weights", i32 4001, i32 4000000}
!23 = !{i64 2148712386}
!24 = !{i64 2148614748, i64 2148614780, i64 2148614809, i64 2148614843, i64 2148614874, i64 2148614897}
!25 = !{i64 2148712589}
!26 = !{i64 2154230232}
!27 = !{i64 2154230392}
!28 = !{i64 2155225655, i64 2155226136, i64 2155225692, i64 2155225748, i64 2155225782, i64 2155225806, i64 2155225847, i64 2155225868, i64 2155225896, i64 2155225930}
!29 = !{!"branch_weights", i32 2002, i32 2000}
!30 = !{!"auto-init"}
!31 = !{i64 2154304060}
!32 = !{i64 2154304370}
!33 = !{i64 2154264349}
!34 = !{i64 2154264559}
!35 = !{i64 2149277387}
!36 = !{i64 2149273211}
!37 = !{i64 2149273286, i64 2149273313, i64 2149273360, i64 2149273382, i64 2149273410, i64 2149273430}
!38 = !{i64 2149300390}
!39 = !{i64 2154247260}
!40 = !{i64 2154247468}
!41 = !{!"branch_weights", i32 1, i32 4001}
!42 = !{i64 2154393700}
!43 = !{i64 2154394010}
!44 = !{i64 2154498394}
!45 = !{i64 2154498632}
!46 = !{i32 0, i32 33}
!47 = !{i64 2155413862}
!48 = !{i64 2155418949}
!49 = !{i64 2148461104, i64 2148461384, i64 2148461718, i64 2148462052}
!50 = !{i64 2148614064, i64 2148614090, i64 2148614119, i64 2148614153, i64 2148614184, i64 2148614207}
!51 = !{i64 1110139}
!52 = !{i64 2154281692}
!53 = !{i64 2154281888}
