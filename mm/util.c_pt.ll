; ModuleID = '/llk/IR/mm/util.c_pt.bc'
source_filename = "../mm/util.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kfree_const:\09\09\09\09\09"
module asm "\09.asciz \09\22kfree_const\22\09\09\09\09\09"
module asm "__kstrtabns_kfree_const:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrdup:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrdup\22\09\09\09\09\09"
module asm "__kstrtabns_kstrdup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrdup_const:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrdup_const\22\09\09\09\09\09"
module asm "__kstrtabns_kstrdup_const:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kstrndup:\09\09\09\09\09"
module asm "\09.asciz \09\22kstrndup\22\09\09\09\09\09"
module asm "__kstrtabns_kstrndup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemdup:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemdup\22\09\09\09\09\09"
module asm "__kstrtabns_kmemdup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kmemdup_nul:\09\09\09\09\09"
module asm "\09.asciz \09\22kmemdup_nul\22\09\09\09\09\09"
module asm "__kstrtabns_kmemdup_nul:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memdup_user:\09\09\09\09\09"
module asm "\09.asciz \09\22memdup_user\22\09\09\09\09\09"
module asm "__kstrtabns_memdup_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmemdup_user:\09\09\09\09\09"
module asm "\09.asciz \09\22vmemdup_user\22\09\09\09\09\09"
module asm "__kstrtabns_vmemdup_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_strndup_user:\09\09\09\09\09"
module asm "\09.asciz \09\22strndup_user\22\09\09\09\09\09"
module asm "__kstrtabns_strndup_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memdup_user_nul:\09\09\09\09\09"
module asm "\09.asciz \09\22memdup_user_nul\22\09\09\09\09\09"
module asm "__kstrtabns_memdup_user_nul:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vma_set_file:\09\09\09\09\09"
module asm "\09.asciz \09\22vma_set_file\22\09\09\09\09\09"
module asm "__kstrtabns_vma_set_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___account_locked_vm:\09\09\09\09\09"
module asm "\09.asciz \09\22__account_locked_vm\22\09\09\09\09\09"
module asm "__kstrtabns___account_locked_vm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_account_locked_vm:\09\09\09\09\09"
module asm "\09.asciz \09\22account_locked_vm\22\09\09\09\09\09"
module asm "__kstrtabns_account_locked_vm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_mmap\22\09\09\09\09\09"
module asm "__kstrtabns_vm_mmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22kvmalloc_node\22\09\09\09\09\09"
module asm "__kstrtabns_kvmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvfree:\09\09\09\09\09"
module asm "\09.asciz \09\22kvfree\22\09\09\09\09\09"
module asm "__kstrtabns_kvfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvfree_sensitive:\09\09\09\09\09"
module asm "\09.asciz \09\22kvfree_sensitive\22\09\09\09\09\09"
module asm "__kstrtabns_kvfree_sensitive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvrealloc:\09\09\09\09\09"
module asm "\09.asciz \09\22kvrealloc\22\09\09\09\09\09"
module asm "__kstrtabns_kvrealloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_mapped:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_mapped\22\09\09\09\09\09"
module asm "__kstrtabns_folio_mapped:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_folio_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22folio_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_folio_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___page_mapcount:\09\09\09\09\09"
module asm "\09.asciz \09\22__page_mapcount\22\09\09\09\09\09"
module asm "__kstrtabns___page_mapcount:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_memory_committed:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_memory_committed\22\09\09\09\09\09"
module asm "__kstrtabns_vm_memory_committed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mem_dump_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22mem_dump_obj\22\09\09\09\09\09"
module asm "__kstrtabns_mem_dump_obj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_offline_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22page_offline_begin\22\09\09\09\09\09"
module asm "__kstrtabns_page_offline_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_page_offline_end:\09\09\09\09\09"
module asm "\09.asciz \09\22page_offline_end\22\09\09\09\09\09"
module asm "__kstrtabns_page_offline_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_flush_dcache_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22flush_dcache_folio\22\09\09\09\09\09"
module asm "__kstrtabns_flush_dcache_folio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.15 }
%struct.llist_node = type { ptr }
%union.anon.15 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.16 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.file = type { %union.anon.7, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.rlimit = type { i32, i32 }
%struct.page = type { i32, %union.anon.3, %union.anon.67, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }
%struct.anon.73 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_kfree_const = external dso_local constant [0 x i8], align 1
@__kstrtabns_kfree_const = external dso_local constant [0 x i8], align 1
@__ksymtab_kfree_const = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kfree_const to i32), ptr @__kstrtab_kfree_const, ptr @__kstrtabns_kfree_const }, section "___ksymtab+kfree_const", align 4
@__kstrtab_kstrdup = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrdup = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrdup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrdup to i32), ptr @__kstrtab_kstrdup, ptr @__kstrtabns_kstrdup }, section "___ksymtab+kstrdup", align 4
@__kstrtab_kstrdup_const = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrdup_const = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrdup_const = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrdup_const to i32), ptr @__kstrtab_kstrdup_const, ptr @__kstrtabns_kstrdup_const }, section "___ksymtab+kstrdup_const", align 4
@__kstrtab_kstrndup = external dso_local constant [0 x i8], align 1
@__kstrtabns_kstrndup = external dso_local constant [0 x i8], align 1
@__ksymtab_kstrndup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kstrndup to i32), ptr @__kstrtab_kstrndup, ptr @__kstrtabns_kstrndup }, section "___ksymtab+kstrndup", align 4
@__kstrtab_kmemdup = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemdup = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemdup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemdup to i32), ptr @__kstrtab_kmemdup, ptr @__kstrtabns_kmemdup }, section "___ksymtab+kmemdup", align 4
@__kstrtab_kmemdup_nul = external dso_local constant [0 x i8], align 1
@__kstrtabns_kmemdup_nul = external dso_local constant [0 x i8], align 1
@__ksymtab_kmemdup_nul = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kmemdup_nul to i32), ptr @__kstrtab_kmemdup_nul, ptr @__kstrtabns_kmemdup_nul }, section "___ksymtab+kmemdup_nul", align 4
@__kstrtab_memdup_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_memdup_user = external dso_local constant [0 x i8], align 1
@__ksymtab_memdup_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memdup_user to i32), ptr @__kstrtab_memdup_user, ptr @__kstrtabns_memdup_user }, section "___ksymtab+memdup_user", align 4
@__kstrtab_vmemdup_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmemdup_user = external dso_local constant [0 x i8], align 1
@__ksymtab_vmemdup_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmemdup_user to i32), ptr @__kstrtab_vmemdup_user, ptr @__kstrtabns_vmemdup_user }, section "___ksymtab+vmemdup_user", align 4
@__kstrtab_strndup_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_strndup_user = external dso_local constant [0 x i8], align 1
@__ksymtab_strndup_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @strndup_user to i32), ptr @__kstrtab_strndup_user, ptr @__kstrtabns_strndup_user }, section "___ksymtab+strndup_user", align 4
@__kstrtab_memdup_user_nul = external dso_local constant [0 x i8], align 1
@__kstrtabns_memdup_user_nul = external dso_local constant [0 x i8], align 1
@__ksymtab_memdup_user_nul = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memdup_user_nul to i32), ptr @__kstrtab_memdup_user_nul, ptr @__kstrtabns_memdup_user_nul }, section "___ksymtab+memdup_user_nul", align 4
@__kstrtab_vma_set_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_vma_set_file = external dso_local constant [0 x i8], align 1
@__ksymtab_vma_set_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vma_set_file to i32), ptr @__kstrtab_vma_set_file, ptr @__kstrtabns_vma_set_file }, section "___ksymtab+vma_set_file", align 4
@mmap_rnd_bits = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@__account_locked_vm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [10 x i8] c"mm/util.c\00", align 1
@__kstrtab___account_locked_vm = external dso_local constant [0 x i8], align 1
@__kstrtabns___account_locked_vm = external dso_local constant [0 x i8], align 1
@__ksymtab___account_locked_vm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__account_locked_vm to i32), ptr @__kstrtab___account_locked_vm, ptr @__kstrtabns___account_locked_vm }, section "___ksymtab_gpl+__account_locked_vm", align 4
@__kstrtab_account_locked_vm = external dso_local constant [0 x i8], align 1
@__kstrtabns_account_locked_vm = external dso_local constant [0 x i8], align 1
@__ksymtab_account_locked_vm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @account_locked_vm to i32), ptr @__kstrtab_account_locked_vm, ptr @__kstrtabns_account_locked_vm }, section "___ksymtab_gpl+account_locked_vm", align 4
@__kstrtab_vm_mmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_mmap = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_mmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_mmap to i32), ptr @__kstrtab_vm_mmap, ptr @__kstrtabns_vm_mmap }, section "___ksymtab+vm_mmap", align 4
@kvmalloc_node.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_kvmalloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvmalloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab_kvmalloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvmalloc_node to i32), ptr @__kstrtab_kvmalloc_node, ptr @__kstrtabns_kvmalloc_node }, section "___ksymtab+kvmalloc_node", align 4
@__kstrtab_kvfree = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvfree = external dso_local constant [0 x i8], align 1
@__ksymtab_kvfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvfree to i32), ptr @__kstrtab_kvfree, ptr @__kstrtabns_kvfree }, section "___ksymtab+kvfree", align 4
@__kstrtab_kvfree_sensitive = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvfree_sensitive = external dso_local constant [0 x i8], align 1
@__ksymtab_kvfree_sensitive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvfree_sensitive to i32), ptr @__kstrtab_kvfree_sensitive, ptr @__kstrtabns_kvfree_sensitive }, section "___ksymtab+kvfree_sensitive", align 4
@__kstrtab_kvrealloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvrealloc = external dso_local constant [0 x i8], align 1
@__ksymtab_kvrealloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvrealloc to i32), ptr @__kstrtab_kvrealloc, ptr @__kstrtabns_kvrealloc }, section "___ksymtab+kvrealloc", align 4
@__kstrtab_folio_mapped = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_mapped = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_mapped = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_mapped to i32), ptr @__kstrtab_folio_mapped, ptr @__kstrtabns_folio_mapped }, section "___ksymtab+folio_mapped", align 4
@swapper_spaces = external dso_local local_unnamed_addr global [0 x ptr], align 4
@__kstrtab_folio_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_folio_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_folio_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @folio_mapping to i32), ptr @__kstrtab_folio_mapping, ptr @__kstrtabns_folio_mapping }, section "___ksymtab+folio_mapping", align 4
@__kstrtab___page_mapcount = external dso_local constant [0 x i8], align 1
@__kstrtabns___page_mapcount = external dso_local constant [0 x i8], align 1
@__ksymtab___page_mapcount = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__page_mapcount to i32), ptr @__kstrtab___page_mapcount, ptr @__kstrtabns___page_mapcount }, section "___ksymtab_gpl+__page_mapcount", align 4
@sysctl_overcommit_memory = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@sysctl_overcommit_ratio = dso_local local_unnamed_addr global i32 50, section ".data..read_mostly", align 4
@sysctl_max_map_count = dso_local local_unnamed_addr global i32 65530, section ".data..read_mostly", align 4
@sysctl_user_reserve_kbytes = dso_local local_unnamed_addr global i32 131072, section ".data..read_mostly", align 4
@sysctl_admin_reserve_kbytes = dso_local local_unnamed_addr global i32 8192, section ".data..read_mostly", align 4
@sysctl_overcommit_kbytes = dso_local local_unnamed_addr global i32 0, section ".data..read_mostly", align 4
@total_swap_pages = external dso_local local_unnamed_addr global i32, align 4
@vm_committed_as = dso_local global %struct.percpu_counter zeroinitializer, align 64
@__kstrtab_vm_memory_committed = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_memory_committed = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_memory_committed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_memory_committed to i32), ptr @__kstrtab_vm_memory_committed, ptr @__kstrtabns_vm_memory_committed }, section "___ksymtab_gpl+vm_memory_committed", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"non-slab/vmalloc memory\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"NULL pointer\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"zero-size pointer\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"non-paged memory\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\01c %s\0A\00", align 1
@__kstrtab_mem_dump_obj = external dso_local constant [0 x i8], align 1
@__kstrtabns_mem_dump_obj = external dso_local constant [0 x i8], align 1
@__ksymtab_mem_dump_obj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mem_dump_obj to i32), ptr @__kstrtab_mem_dump_obj, ptr @__kstrtabns_mem_dump_obj }, section "___ksymtab_gpl+mem_dump_obj", align 4
@page_offline_rwsem = internal global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @page_offline_rwsem, i64 16), ptr getelementptr (i8, ptr @page_offline_rwsem, i64 16) } }, align 4
@__kstrtab_page_offline_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_offline_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_page_offline_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_offline_begin to i32), ptr @__kstrtab_page_offline_begin, ptr @__kstrtabns_page_offline_begin }, section "___ksymtab+page_offline_begin", align 4
@__kstrtab_page_offline_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_page_offline_end = external dso_local constant [0 x i8], align 1
@__ksymtab_page_offline_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @page_offline_end to i32), ptr @__kstrtab_page_offline_end, ptr @__kstrtabns_page_offline_end }, section "___ksymtab+page_offline_end", align 4
@__kstrtab_flush_dcache_folio = external dso_local constant [0 x i8], align 1
@__kstrtabns_flush_dcache_folio = external dso_local constant [0 x i8], align 1
@__ksymtab_flush_dcache_folio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @flush_dcache_folio to i32), ptr @__kstrtab_flush_dcache_folio, ptr @__kstrtabns_flush_dcache_folio }, section "___ksymtab+flush_dcache_folio", align 4
@__start_rodata = external dso_local global [0 x i8], align 1
@__end_rodata = external dso_local global [0 x i8], align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@sysctl_legacy_va_layout = external dso_local local_unnamed_addr global i32, align 4
@stack_guard_gap = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab___account_locked_vm, ptr @__ksymtab___page_mapcount, ptr @__ksymtab_account_locked_vm, ptr @__ksymtab_flush_dcache_folio, ptr @__ksymtab_folio_mapped, ptr @__ksymtab_folio_mapping, ptr @__ksymtab_kfree_const, ptr @__ksymtab_kmemdup, ptr @__ksymtab_kmemdup_nul, ptr @__ksymtab_kstrdup, ptr @__ksymtab_kstrdup_const, ptr @__ksymtab_kstrndup, ptr @__ksymtab_kvfree, ptr @__ksymtab_kvfree_sensitive, ptr @__ksymtab_kvmalloc_node, ptr @__ksymtab_kvrealloc, ptr @__ksymtab_mem_dump_obj, ptr @__ksymtab_memdup_user, ptr @__ksymtab_memdup_user_nul, ptr @__ksymtab_page_offline_begin, ptr @__ksymtab_page_offline_end, ptr @__ksymtab_strndup_user, ptr @__ksymtab_vm_memory_committed, ptr @__ksymtab_vm_mmap, ptr @__ksymtab_vma_set_file, ptr @__ksymtab_vmemdup_user], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kfree_const(ptr noundef %0) #0 {
  %2 = icmp uge ptr %0, @__start_rodata
  %3 = icmp ult ptr %0, @__end_rodata
  %4 = and i1 %2, %3
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @kfree(ptr noundef %0) #16
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @kstrdup(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @strlen(ptr noundef nonnull %0)
  %6 = add i32 %5, 1
  %7 = tail call ptr @llvm.returnaddress(i32 0)
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call ptr @__kmalloc_track_caller(i32 noundef %6, i32 noundef %1, i32 noundef %8) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %9, ptr nonnull align 1 %0, i32 %6, i1 false)
  br label %12

12:                                               ; preds = %11, %4, %2
  %13 = phi ptr [ null, %2 ], [ %9, %11 ], [ null, %4 ]
  ret ptr %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kstrdup_const(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp uge ptr %0, @__start_rodata
  %4 = icmp ult ptr %0, @__end_rodata
  %5 = and i1 %3, %4
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %0, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %6
  %9 = tail call i32 @strlen(ptr noundef nonnull %0) #16
  %10 = add i32 %9, 1
  %11 = tail call ptr @llvm.returnaddress(i32 0) #16
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call ptr @__kmalloc_track_caller(i32 noundef %10, i32 noundef %1, i32 noundef %12) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %13, ptr nonnull align 1 %0, i32 %10, i1 false) #16
  br label %16

16:                                               ; preds = %15, %8, %6, %2
  %17 = phi ptr [ %0, %2 ], [ null, %6 ], [ %13, %15 ], [ null, %8 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kstrndup(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @strnlen(ptr noundef nonnull %0, i32 noundef %1)
  %7 = add i32 %6, 1
  %8 = tail call ptr @llvm.returnaddress(i32 0)
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call ptr @__kmalloc_track_caller(i32 noundef %7, i32 noundef %2, i32 noundef %9) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %10, ptr nonnull align 1 %0, i32 %6, i1 false)
  %13 = getelementptr i8, ptr %10, i32 %6
  store i8 0, ptr %13, align 1
  br label %14

14:                                               ; preds = %12, %5, %3
  %15 = phi ptr [ null, %3 ], [ %10, %12 ], [ null, %5 ]
  ret ptr %15
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kmemdup(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call ptr @__kmalloc_track_caller(i32 noundef %1, i32 noundef %2, i32 noundef %5) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %6, ptr align 1 %0, i32 %1, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kmemdup_nul(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = add i32 %1, 1
  %7 = tail call ptr @llvm.returnaddress(i32 0)
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call ptr @__kmalloc_track_caller(i32 noundef %6, i32 noundef %2, i32 noundef %8) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %9, ptr nonnull align 1 %0, i32 %1, i1 false)
  %12 = getelementptr i8, ptr %9, i32 %1
  store i8 0, ptr %12, align 1
  br label %13

13:                                               ; preds = %11, %5, %3
  %14 = phi ptr [ null, %3 ], [ %9, %11 ], [ null, %5 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @memdup_user(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call ptr @__kmalloc_track_caller(i32 noundef %1, i32 noundef 1060032, i32 noundef %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = icmp slt i32 %1, 0
  %9 = load i1, ptr @check_copy_size.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %7
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %13

13:                                               ; preds = %12, %7
  br i1 %8, label %31, label %14, !prof !8

14:                                               ; preds = %13
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %1, i32 -1090519040) #17, !srcloc !9
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25, !prof !10

18:                                               ; preds = %14
  %19 = tail call ptr @llvm.thread.pointer() #16
  %20 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %21 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %20) #18, !srcloc !11
  %22 = and i32 %21, -13
  %23 = or i32 %22, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #16, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !13
  %24 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %1) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #16, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !13
  br label %25

25:                                               ; preds = %18, %14
  %26 = phi i32 [ %24, %18 ], [ %1, %14 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !10

28:                                               ; preds = %25
  %29 = sub i32 %1, %26
  %30 = getelementptr i8, ptr %5, i32 %29
  tail call void @llvm.memset.p0.i32(ptr align 1 %30, i8 0, i32 %26, i1 false) #16
  br label %31

31:                                               ; preds = %28, %13
  tail call void @kfree(ptr noundef nonnull %5) #16
  br label %32

32:                                               ; preds = %31, %25, %2
  %33 = phi ptr [ inttoptr (i32 -14 to ptr), %31 ], [ inttoptr (i32 -12 to ptr), %2 ], [ %5, %25 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vmemdup_user(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp ugt i32 %1, 4096
  %4 = select i1 %3, i32 1125568, i32 1051840
  %5 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %1, i32 noundef %4) #19
  %6 = icmp ne ptr %5, null
  %7 = icmp ult i32 %1, 4097
  %8 = or i1 %7, %6
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = icmp slt i32 %1, 0
  br i1 %10, label %11, label %14, !prof !8

11:                                               ; preds = %9
  %12 = load i1, ptr @kvmalloc_node.__already_done, align 1
  br i1 %12, label %48, label %13, !prof !10

13:                                               ; preds = %11
  store i1 true, ptr @kvmalloc_node.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 591, i32 noundef 9, ptr noundef null) #16
  br label %48

14:                                               ; preds = %9
  %15 = tail call ptr @llvm.returnaddress(i32 0) #16
  %16 = tail call noalias ptr @__vmalloc_node(i32 noundef %1, i32 noundef 1, i32 noundef 1051840, i32 noundef -1, ptr noundef %15) #19
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi ptr [ %16, %14 ], [ %5, %2 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %48, label %20

20:                                               ; preds = %17
  %21 = icmp slt i32 %1, 0
  %22 = load i1, ptr @check_copy_size.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %20
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %26

26:                                               ; preds = %25, %20
  br i1 %21, label %44, label %27, !prof !8

27:                                               ; preds = %26
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %1, i32 -1090519040) #17, !srcloc !9
  %29 = extractvalue { i32, i32 } %28, 0
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38, !prof !10

31:                                               ; preds = %27
  %32 = tail call ptr @llvm.thread.pointer() #16
  %33 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %33) #18, !srcloc !11
  %35 = and i32 %34, -13
  %36 = or i32 %35, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #16, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !13
  %37 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %18, ptr noundef %0, i32 noundef %1) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #16, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !13
  br label %38

38:                                               ; preds = %31, %27
  %39 = phi i32 [ %37, %31 ], [ %1, %27 ]
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41, !prof !10

41:                                               ; preds = %38
  %42 = sub i32 %1, %39
  %43 = getelementptr i8, ptr %18, i32 %42
  tail call void @llvm.memset.p0.i32(ptr align 1 %43, i8 0, i32 %39, i1 false) #16
  br label %44

44:                                               ; preds = %41, %26
  %45 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %18) #16
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  tail call void @vfree(ptr noundef nonnull %18) #16
  br label %48

47:                                               ; preds = %44
  tail call void @kfree(ptr noundef nonnull %18) #16
  br label %48

48:                                               ; preds = %47, %46, %38, %17, %13, %11
  %49 = phi ptr [ inttoptr (i32 -12 to ptr), %17 ], [ %18, %38 ], [ inttoptr (i32 -14 to ptr), %46 ], [ inttoptr (i32 -14 to ptr), %47 ], [ inttoptr (i32 -12 to ptr), %13 ], [ inttoptr (i32 -12 to ptr), %11 ]
  ret ptr %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kvfree(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %0) #16
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @vfree(ptr noundef %0) #16
  br label %5

4:                                                ; preds = %1
  tail call void @kfree(ptr noundef %0) #16
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @strndup_user(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @strnlen_user(ptr noundef %0, i32 noundef %1) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = icmp sgt i32 %3, %1
  br i1 %6, label %13, label %7

7:                                                ; preds = %5
  %8 = tail call ptr @memdup_user(ptr noundef %0, i32 noundef %3)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = add i32 %3, -1
  %12 = getelementptr i8, ptr %8, i32 %11
  store i8 0, ptr %12, align 1
  br label %13

13:                                               ; preds = %10, %7, %5, %2
  %14 = phi ptr [ %8, %10 ], [ %8, %7 ], [ inttoptr (i32 -14 to ptr), %2 ], [ inttoptr (i32 -22 to ptr), %5 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strnlen_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @memdup_user_nul(ptr noundef %0, i32 noundef %1) #0 {
  %3 = add i32 %1, 1
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call ptr @__kmalloc_track_caller(i32 noundef %3, i32 noundef 3264, i32 noundef %5) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %35, label %8

8:                                                ; preds = %2
  %9 = icmp slt i32 %1, 0
  %10 = load i1, ptr @check_copy_size.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %14

14:                                               ; preds = %13, %8
  br i1 %9, label %32, label %15, !prof !8

15:                                               ; preds = %14
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %1, i32 -1090519040) #17, !srcloc !9
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26, !prof !10

19:                                               ; preds = %15
  %20 = tail call ptr @llvm.thread.pointer() #16
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %21) #18, !srcloc !11
  %23 = and i32 %22, -13
  %24 = or i32 %23, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #16, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !13
  %25 = tail call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %0, i32 noundef %1) #16
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #16, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #16, !srcloc !13
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i32 [ %25, %19 ], [ %1, %15 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29, !prof !10

29:                                               ; preds = %26
  %30 = sub i32 %1, %27
  %31 = getelementptr i8, ptr %6, i32 %30
  tail call void @llvm.memset.p0.i32(ptr align 1 %31, i8 0, i32 %27, i1 false) #16
  br label %32

32:                                               ; preds = %29, %14
  tail call void @kfree(ptr noundef nonnull %6) #16
  br label %35

33:                                               ; preds = %26
  %34 = getelementptr i8, ptr %6, i32 %1
  store i8 0, ptr %34, align 1
  br label %35

35:                                               ; preds = %33, %32, %2
  %36 = phi ptr [ inttoptr (i32 -14 to ptr), %32 ], [ %6, %33 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @__vma_link_list(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 3
  store ptr %2, ptr %4, align 4
  %5 = icmp eq ptr %2, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  store ptr %1, ptr %7, align 4
  br label %11

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8
  store ptr %1, ptr %0, align 8
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %8, %6 ], [ %10, %9 ]
  %13 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 2
  store ptr %12, ptr %13, align 4
  %14 = icmp eq ptr %12, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %12, i32 0, i32 3
  store ptr %1, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @__vma_unlink_list(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.vm_area_struct, ptr %6, i32 0, i32 2
  store ptr %4, ptr %9, align 4
  br label %11

10:                                               ; preds = %2
  store ptr %4, ptr %0, align 8
  br label %11

11:                                               ; preds = %10, %8
  %12 = icmp eq ptr %4, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 3
  store ptr %6, ptr %14, align 4
  br label %15

15:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @vma_is_stack_for_current(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = load i32, ptr %0, align 4
  %4 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 8164
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %3, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp uge i32 %11, %7
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i32 [ 0, %1 ], [ %13, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vma_set_file(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #16, !srcloc !14
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #16, !srcloc !15
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  store ptr %1, ptr %5, align 4
  tail call void @fput(ptr noundef %6) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @randomize_stack_top(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @llvm.thread.pointer() #16
  %3 = getelementptr inbounds %struct.task_struct, ptr %2, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 4194304
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @get_random_u32() #16
  %9 = and i32 %8, 2047
  %10 = mul nsw i32 %9, -4096
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i32 [ %10, %7 ], [ 0, %1 ]
  %13 = add i32 %0, 4095
  %14 = and i32 %13, -4096
  %15 = add i32 %12, %14
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arch_randomize_brk(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 33
  %3 = load i32, ptr %2, align 4
  %4 = tail call i32 @randomize_page(i32 noundef %3, i32 noundef 33554432) #16
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @randomize_page(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arch_mmap_rnd() local_unnamed_addr #0 {
  %1 = tail call i32 @get_random_u32() #16
  %2 = load i32, ptr @mmap_rnd_bits, align 4
  %3 = shl nsw i32 -1, %2
  %4 = xor i32 %3, -1
  %5 = and i32 %1, %4
  %6 = shl i32 %5, 12
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @arch_pick_mmap_layout(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #16
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 4194304
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @get_random_u32() #16
  %10 = load i32, ptr @mmap_rnd_bits, align 4
  %11 = shl nsw i32 -1, %10
  %12 = xor i32 %11, -1
  %13 = and i32 %9, %12
  %14 = shl i32 %13, 12
  br label %15

15:                                               ; preds = %8, %2
  %16 = phi i32 [ %14, %8 ], [ 0, %2 ]
  %17 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 46
  %18 = load i32, ptr %17, align 16
  %19 = and i32 %18, 2097152
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i32, ptr %1, align 4
  %23 = icmp ne i32 %22, -1
  %24 = load i32, ptr @sysctl_legacy_va_layout, align 4
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %29, label %27

27:                                               ; preds = %21, %15
  %28 = add i32 %16, 1073741824
  br label %48

29:                                               ; preds = %21
  %30 = load i32, ptr @stack_guard_gap, align 4
  %31 = load i32, ptr %4, align 4
  %32 = and i32 %31, 4194304
  %33 = icmp eq i32 %32, 0
  %34 = add i32 %30, 8384512
  %35 = select i1 %33, i32 %30, i32 %34
  %36 = add i32 %35, %22
  %37 = tail call i32 @llvm.umax.i32(i32 %36, i32 %22) #16
  %38 = icmp ult i32 %37, 134217728
  %39 = and i32 %18, 8388608
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 55924050, i32 -1624593751
  %42 = tail call i32 @llvm.umin.i32(i32 %37, i32 %41) #16
  %43 = select i1 %38, i32 134217728, i32 %42
  %44 = select i1 %40, i32 67112959, i32 -1090514945
  %45 = add i32 %16, %43
  %46 = sub i32 %44, %45
  %47 = and i32 %46, -4096
  br label %48

48:                                               ; preds = %29, %27
  %49 = phi i32 [ %47, %29 ], [ %28, %27 ]
  %50 = phi ptr [ @arch_get_unmapped_area_topdown, %29 ], [ @arch_get_unmapped_area, %27 ]
  %51 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 4
  store i32 %49, ptr %51, align 4
  %52 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 3
  store ptr %50, ptr %52, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_get_unmapped_area(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arch_get_unmapped_area_topdown(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__account_locked_vm(ptr nocapture noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef readonly %3, i1 noundef zeroext %4) #0 {
  %6 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  br i1 %2, label %8, label %19

8:                                                ; preds = %5
  br i1 %4, label %9, label %11

9:                                                ; preds = %8
  %10 = add i32 %7, %1
  br label %27

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 93
  %13 = load ptr, ptr %12, align 16
  %14 = getelementptr %struct.signal_struct, ptr %13, i32 0, i32 50, i32 8
  %15 = load volatile i32, ptr %14, align 8
  %16 = lshr i32 %15, 12
  %17 = add i32 %7, %1
  %18 = icmp ugt i32 %17, %16
  br i1 %18, label %29, label %27

19:                                               ; preds = %5
  %20 = icmp ult i32 %7, %1
  %21 = load i1, ptr @__account_locked_vm.__already_done, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %19
  store i1 true, ptr @__account_locked_vm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #16
  br label %25

25:                                               ; preds = %24, %19
  %26 = sub i32 %7, %1
  br label %27

27:                                               ; preds = %25, %11, %9
  %28 = phi i32 [ %26, %25 ], [ %10, %9 ], [ %17, %11 ]
  store i32 %28, ptr %6, align 4
  br label %29

29:                                               ; preds = %27, %11
  %30 = phi i32 [ -12, %11 ], [ 0, %27 ]
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @account_locked_vm(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = icmp ne i32 %1, 0
  %5 = icmp ne ptr %0, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %48

7:                                                ; preds = %3
  %8 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %0, i1 noundef zeroext true) #16
  br label %11

11:                                               ; preds = %10, %7
  %12 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 15
  tail call void @down_write(ptr noundef %12) #16
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %0, i1 noundef zeroext true, i1 noundef zeroext true) #16
  br label %16

16:                                               ; preds = %15, %11
  %17 = tail call ptr @llvm.thread.pointer() #16
  %18 = tail call zeroext i1 @capable(i32 noundef 14) #16
  %19 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 20
  %20 = load i32, ptr %19, align 4
  br i1 %2, label %21, label %32

21:                                               ; preds = %16
  br i1 %18, label %22, label %24

22:                                               ; preds = %21
  %23 = add i32 %20, %1
  br label %40

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 93
  %26 = load ptr, ptr %25, align 16
  %27 = getelementptr %struct.signal_struct, ptr %26, i32 0, i32 50, i32 8
  %28 = load volatile i32, ptr %27, align 8
  %29 = lshr i32 %28, 12
  %30 = add i32 %20, %1
  %31 = icmp ugt i32 %30, %29
  br i1 %31, label %42, label %40

32:                                               ; preds = %16
  %33 = icmp ult i32 %20, %1
  %34 = load i1, ptr @__account_locked_vm.__already_done, align 1
  %35 = xor i1 %34, true
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %38, !prof !8

37:                                               ; preds = %32
  store i1 true, ptr @__account_locked_vm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 465, i32 noundef 9, ptr noundef null) #16
  br label %38

38:                                               ; preds = %37, %32
  %39 = sub i32 %20, %1
  br label %40

40:                                               ; preds = %38, %24, %22
  %41 = phi i32 [ %39, %38 ], [ %23, %22 ], [ %30, %24 ]
  store i32 %41, ptr %19, align 4
  br label %42

42:                                               ; preds = %40, %24
  %43 = phi i32 [ -12, %24 ], [ 0, %40 ]
  %44 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call void @__mmap_lock_do_trace_released(ptr noundef nonnull %0, i1 noundef zeroext true) #16
  br label %47

47:                                               ; preds = %46, %42
  tail call void @up_write(ptr noundef %12) #16
  br label %48

48:                                               ; preds = %47, %3
  %49 = phi i32 [ %43, %47 ], [ 0, %3 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vm_mmap_pgoff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.list_head, align 8
  %9 = tail call ptr @llvm.thread.pointer() #16
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 37
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store ptr %8, ptr %8, align 8
  %12 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %8, ptr %12, align 4
  %13 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %11, i1 noundef zeroext true) #16
  br label %16

16:                                               ; preds = %15, %6
  %17 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 15
  %18 = call i32 @down_write_killable(ptr noundef %17) #16
  %19 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = icmp eq i32 %18, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %11, i1 noundef zeroext true, i1 noundef zeroext %22) #16
  br label %23

23:                                               ; preds = %21, %16
  %24 = icmp eq i32 %18, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %23
  %26 = call i32 @do_mmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  call void @__mmap_lock_do_trace_released(ptr noundef %11, i1 noundef zeroext true) #16
  br label %30

30:                                               ; preds = %29, %25
  call void @up_write(ptr noundef %17) #16
  %31 = load i32, ptr %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 @__mm_populate(i32 noundef %26, i32 noundef %31, i32 noundef 1) #16
  br label %35

35:                                               ; preds = %33, %30, %23
  %36 = phi i32 [ -4, %23 ], [ %26, %30 ], [ %26, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret i32 %36
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_mmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vm_mmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = add i32 %2, 4095
  %8 = and i32 %7, -4096
  %9 = xor i32 %5, -1
  %10 = icmp ule i32 %8, %9
  %11 = and i32 %5, 4095
  %12 = icmp eq i32 %11, 0
  %13 = and i1 %10, %12
  br i1 %13, label %14, label %17, !prof !17

14:                                               ; preds = %6
  %15 = lshr i32 %5, 12
  %16 = tail call i32 @vm_mmap_pgoff(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %15)
  br label %17

17:                                               ; preds = %14, %6
  %18 = phi i32 [ %16, %14 ], [ -22, %6 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @kvmalloc_node(i32 noundef %0, i32 noundef %1, i32 noundef %2) #9 {
  %4 = icmp ugt i32 %0, 4096
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = and i32 %1, 16384
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 73728, i32 8192
  %9 = and i32 %1, -32769
  %10 = or i32 %8, %9
  br label %11

11:                                               ; preds = %5, %3
  %12 = phi i32 [ %10, %5 ], [ %1, %3 ]
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %0, i32 noundef %12) #19
  %14 = icmp ne ptr %13, null
  %15 = icmp ult i32 %0, 4097
  %16 = or i1 %15, %14
  br i1 %16, label %29, label %17

17:                                               ; preds = %11
  %18 = icmp slt i32 %0, 0
  br i1 %18, label %19, label %26, !prof !8

19:                                               ; preds = %17
  %20 = and i32 %1, 8192
  %21 = icmp eq i32 %20, 0
  %22 = load i1, ptr @kvmalloc_node.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %29, !prof !8

25:                                               ; preds = %19
  store i1 true, ptr @kvmalloc_node.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 591, i32 noundef 9, ptr noundef null) #16
  br label %29

26:                                               ; preds = %17
  %27 = tail call ptr @llvm.returnaddress(i32 0)
  %28 = tail call noalias ptr @__vmalloc_node(i32 noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, ptr noundef %27) #19
  br label %29

29:                                               ; preds = %26, %25, %19, %11
  %30 = phi ptr [ %28, %26 ], [ %13, %11 ], [ null, %25 ], [ null, %19 ]
  ret ptr %30
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc_node(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @kvfree_sensitive(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp ult ptr %0, inttoptr (i32 17 to ptr)
  br i1 %3, label %8, label %4, !prof !8

4:                                                ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr align 1 %0, i8 0, i32 %1, i1 false) #16
  tail call void asm sideeffect "", "r,~{memory}"(ptr %0) #16, !srcloc !18
  %5 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %0) #16
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  tail call void @vfree(ptr noundef %0) #16
  br label %8

7:                                                ; preds = %4
  tail call void @kfree(ptr noundef %0) #16
  br label %8

8:                                                ; preds = %7, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(2) uwtable(sync)
define dso_local noalias ptr @kvrealloc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #11 {
  %5 = icmp ult i32 %1, %2
  br i1 %5, label %6, label %39

6:                                                ; preds = %4
  %7 = icmp ugt i32 %2, 4096
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = and i32 %3, 16384
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 73728, i32 8192
  %12 = and i32 %3, -32769
  %13 = or i32 %11, %12
  br label %14

14:                                               ; preds = %8, %6
  %15 = phi i32 [ %13, %8 ], [ %3, %6 ]
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef %15) #19
  %17 = icmp ne ptr %16, null
  %18 = icmp ult i32 %2, 4097
  %19 = or i1 %18, %17
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = icmp slt i32 %2, 0
  br i1 %21, label %22, label %29, !prof !8

22:                                               ; preds = %20
  %23 = and i32 %3, 8192
  %24 = icmp eq i32 %23, 0
  %25 = load i1, ptr @kvmalloc_node.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %39, !prof !8

28:                                               ; preds = %22
  store i1 true, ptr @kvmalloc_node.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 591, i32 noundef 9, ptr noundef null) #16
  br label %39

29:                                               ; preds = %20
  %30 = tail call ptr @llvm.returnaddress(i32 0) #16
  %31 = tail call noalias ptr @__vmalloc_node(i32 noundef %2, i32 noundef 1, i32 noundef %3, i32 noundef -1, ptr noundef %30) #19
  br label %32

32:                                               ; preds = %29, %14
  %33 = phi ptr [ %31, %29 ], [ %16, %14 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %33, ptr align 1 %0, i32 %1, i1 false)
  %36 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %0) #16
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  tail call void @vfree(ptr noundef %0) #16
  br label %39

38:                                               ; preds = %35
  tail call void @kfree(ptr noundef %0) #16
  br label %39

39:                                               ; preds = %38, %37, %32, %28, %22, %4
  %40 = phi ptr [ %0, %4 ], [ null, %32 ], [ %33, %37 ], [ %33, %38 ], [ null, %28 ], [ null, %22 ]
  ret ptr %40
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @page_rmapping(ptr noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !10

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.anon.73, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = and i32 %15, -4
  %17 = inttoptr i32 %16 to ptr
  ret ptr %17
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @folio_mapped(ptr noundef %0) #13 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 65536
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.anon.73, ptr %0, i32 0, i32 5
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, -1
  br label %31

9:                                                ; preds = %1
  %10 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = load volatile i32, ptr %0, align 4
  %15 = and i32 %14, 65536
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %19, %17 ], [ 1, %13 ]
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ 0, %21 ], [ %28, %23 ]
  %25 = getelementptr %struct.page, ptr %0, i32 %24, i32 2
  %26 = load volatile i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, -1
  %28 = add nuw nsw i32 %24, 1
  %29 = icmp eq i32 %28, %22
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %31, label %23

31:                                               ; preds = %23, %17, %9, %5
  %32 = phi i1 [ %8, %5 ], [ true, %9 ], [ false, %17 ], [ %27, %23 ]
  ret i1 %32
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @page_anon_vma(ptr noundef %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !10

6:                                                ; preds = %1
  %7 = add i32 %3, -1
  br label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %0 to i32
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.anon.73, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 1
  %18 = add i32 %15, -1
  %19 = inttoptr i32 %18 to ptr
  %20 = select i1 %17, ptr %19, ptr null
  ret ptr %20
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @folio_mapping(ptr noundef %0) #12 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 512
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %31, !prof !10

5:                                                ; preds = %1
  %6 = load volatile i32, ptr %0, align 4
  %7 = and i32 %6, 524288
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = load volatile i32, ptr %0, align 4
  %11 = and i32 %10, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13, !prof !10

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 26
  %17 = getelementptr [0 x ptr], ptr @swapper_spaces, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = lshr i32 %15, 14
  %20 = and i32 %19, 4095
  %21 = getelementptr %struct.address_space, ptr %18, i32 %20
  br label %31

22:                                               ; preds = %9, %5
  %23 = getelementptr inbounds %struct.anon.73, ptr %0, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = and i32 %25, -4
  %30 = inttoptr i32 %29 to ptr
  br label %31

31:                                               ; preds = %28, %22, %13, %1
  %32 = phi ptr [ %21, %13 ], [ %30, %28 ], [ null, %1 ], [ null, %22 ]
  ret ptr %32
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @__page_mapcount(ptr noundef %0) #12 {
  %2 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 2
  %3 = load volatile i32, ptr %2, align 4
  %4 = add i32 %3, 1
  %5 = getelementptr inbounds %struct.page, ptr %0, i32 0, i32 1
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !10

9:                                                ; preds = %1
  %10 = add i32 %6, -1
  br label %13

11:                                               ; preds = %1
  %12 = ptrtoint ptr %0 to i32
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.anon.73, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %13
  %22 = load volatile i32, ptr %5, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !10

25:                                               ; preds = %21
  %26 = add i32 %22, -1
  br label %29

27:                                               ; preds = %21
  %28 = ptrtoint ptr %0 to i32
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr %struct.page, ptr %31, i32 1, i32 1, i32 0, i32 1
  %33 = load volatile i32, ptr %32, align 4
  %34 = add i32 %3, 2
  %35 = add i32 %34, %33
  br label %36

36:                                               ; preds = %29, %13
  %37 = phi i32 [ %35, %29 ], [ %4, %13 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @folio_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load volatile i32, ptr %1, align 4
  %4 = and i32 %3, 65536
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.page, ptr %1, i32 1, i32 1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %8, %6 ], [ 1, %2 ]
  br label %11

11:                                               ; preds = %23, %9
  %12 = phi i32 [ 0, %9 ], [ %21, %23 ]
  %13 = getelementptr %struct.page, ptr %0, i32 %12
  %14 = getelementptr %struct.page, ptr %1, i32 %12
  %15 = load i32, ptr @pgprot_kernel, align 4
  %16 = or i32 %15, 512
  %17 = tail call ptr @__kmap_local_page_prot(ptr noundef %14, i32 noundef %16) #16
  %18 = load i32, ptr @pgprot_kernel, align 4
  %19 = or i32 %18, 512
  %20 = tail call ptr @__kmap_local_page_prot(ptr noundef %13, i32 noundef %19) #16
  tail call void @copy_page(ptr noundef %20, ptr noundef %17) #16
  tail call void @kunmap_local_indexed(ptr noundef %20) #16
  tail call void @kunmap_local_indexed(ptr noundef %17) #16
  %21 = add i32 %12, 1
  %22 = icmp eq i32 %21, %10
  br i1 %22, label %25, label %23

23:                                               ; preds = %11
  %24 = tail call i32 @__cond_resched() #16
  br label %11

25:                                               ; preds = %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @overcommit_ratio_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  %7 = icmp eq i32 %6, 0
  %8 = icmp ne i32 %1, 0
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  store i32 0, ptr @sysctl_overcommit_kbytes, align 4
  br label %11

11:                                               ; preds = %10, %5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @overcommit_policy_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.ctl_table, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 -1, ptr %7, align 4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef align 4 dereferenceable(36) %0, i32 36, i1 false)
  %10 = getelementptr inbounds %struct.ctl_table, ptr %6, i32 0, i32 1
  store ptr %7, ptr %10, align 4
  %11 = call i32 @proc_dointvec_minmax(ptr noundef nonnull %6, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  %12 = icmp ne i32 %11, 0
  %13 = load i32, ptr %7, align 4
  %14 = icmp eq i32 %13, -1
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %9
  call void @mm_compute_batch(i32 noundef %13) #16
  %17 = load i32, ptr %7, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = call i32 @schedule_on_each_cpu(ptr noundef nonnull @sync_overcommit_as) #16
  %21 = load i32, ptr %7, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i32 [ %21, %19 ], [ %17, %16 ]
  store i32 %23, ptr @sysctl_overcommit_memory, align 4
  br label %26

24:                                               ; preds = %5
  %25 = tail call i32 @proc_dointvec_minmax(ptr noundef %0, i32 noundef 0, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  br label %26

26:                                               ; preds = %24, %22, %9
  %27 = phi i32 [ %11, %9 ], [ 0, %22 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #16
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_compute_batch(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_on_each_cpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sync_overcommit_as(ptr nocapture noundef readnone %0) #0 {
  tail call void @percpu_counter_sync(ptr noundef nonnull @vm_committed_as) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @overcommit_kbytes_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @proc_doulongvec_minmax(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  %7 = icmp eq i32 %6, 0
  %8 = icmp ne i32 %1, 0
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  store i32 0, ptr @sysctl_overcommit_ratio, align 4
  br label %11

11:                                               ; preds = %10, %5
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @vm_commit_limit() local_unnamed_addr #12 {
  %1 = load i32, ptr @sysctl_overcommit_kbytes, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = lshr i32 %1, 2
  br label %10

5:                                                ; preds = %0
  %6 = load volatile i32, ptr @_totalram_pages, align 4
  %7 = load i32, ptr @sysctl_overcommit_ratio, align 4
  %8 = mul i32 %7, %6
  %9 = udiv i32 %8, 100
  br label %10

10:                                               ; preds = %5, %3
  %11 = phi i32 [ %4, %3 ], [ %9, %5 ]
  %12 = load i32, ptr @total_swap_pages, align 4
  %13 = add i32 %12, %11
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vm_memory_committed() #0 {
  %1 = tail call i64 @__percpu_counter_sum(ptr noundef nonnull @vm_committed_as) #16
  %2 = tail call i64 @llvm.smax.i64(i64 %1, i64 0) #16
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__vm_enough_memory(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %4, i32 noundef %5) #16
  %6 = load i32, ptr @sysctl_overcommit_memory, align 4
  switch i32 %6, label %12 [
    i32 1, label %50
    i32 0, label %7
  ]

7:                                                ; preds = %3
  %8 = load volatile i32, ptr @_totalram_pages, align 4
  %9 = load i32, ptr @total_swap_pages, align 4
  %10 = add i32 %9, %8
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %46, label %50

12:                                               ; preds = %3
  %13 = load i32, ptr @sysctl_overcommit_kbytes, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = lshr i32 %13, 2
  br label %22

17:                                               ; preds = %12
  %18 = load volatile i32, ptr @_totalram_pages, align 4
  %19 = load i32, ptr @sysctl_overcommit_ratio, align 4
  %20 = mul i32 %19, %18
  %21 = udiv i32 %20, 100
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi i32 [ %16, %15 ], [ %21, %17 ]
  %24 = load i32, ptr @total_swap_pages, align 4
  %25 = add i32 %24, %23
  %26 = icmp eq i32 %2, 0
  %27 = load i32, ptr @sysctl_admin_reserve_kbytes, align 4
  %28 = lshr i32 %27, 2
  %29 = select i1 %26, i32 %28, i32 0
  %30 = sub i32 %25, %29
  %31 = icmp eq ptr %0, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %22
  %33 = load i32, ptr @sysctl_user_reserve_kbytes, align 4
  %34 = lshr i32 %33, 2
  %35 = getelementptr inbounds %struct.anon, ptr %0, i32 0, i32 19
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 5
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 %34)
  %39 = sub i32 %30, %38
  br label %40

40:                                               ; preds = %32, %22
  %41 = phi i32 [ %39, %32 ], [ %30, %22 ]
  %42 = load volatile i64, ptr getelementptr inbounds (%struct.percpu_counter, ptr @vm_committed_as, i32 0, i32 1), align 8
  %43 = tail call i64 @llvm.smax.i64(i64 %42, i64 0) #16
  %44 = sext i32 %41 to i64
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %40, %7
  %47 = sub i32 0, %1
  %48 = sext i32 %47 to i64
  %49 = load i32, ptr @vm_committed_as_batch, align 4
  tail call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %48, i32 noundef %49) #16
  br label %50

50:                                               ; preds = %46, %40, %7, %3
  %51 = phi i32 [ -12, %46 ], [ 0, %3 ], [ 0, %7 ], [ 0, %40 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_cmdline(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @get_task_mm(ptr noundef %0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 36
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 27
  tail call void @_raw_spin_lock(ptr noundef %11) #16
  %12 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 35
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %7, align 8
  %15 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 37
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 38
  %18 = load i32, ptr %17, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #16, !srcloc !19
  %19 = load i16, ptr %11, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #16, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #16, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !22
  %21 = sub i32 %14, %13
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %2)
  %23 = tail call i32 @access_process_vm(ptr noundef %0, i32 noundef %13, ptr noundef %1, i32 noundef %22, i32 noundef 16) #16
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %10
  %26 = add nsw i32 %23, -1
  %27 = getelementptr i8, ptr %1, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = icmp ne i8 %28, 0
  %30 = icmp ult i32 %21, %2
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = tail call i32 @strnlen(ptr noundef %1, i32 noundef %23)
  %34 = icmp ult i32 %33, %23
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = sub i32 %18, %16
  %37 = sub i32 %2, %23
  %38 = tail call i32 @llvm.umin.i32(i32 %36, i32 %37)
  %39 = getelementptr i8, ptr %1, i32 %23
  %40 = tail call i32 @access_process_vm(ptr noundef %0, i32 noundef %16, ptr noundef %39, i32 noundef %38, i32 noundef 16) #16
  %41 = add i32 %40, %23
  %42 = tail call i32 @strnlen(ptr noundef %1, i32 noundef %41)
  br label %43

43:                                               ; preds = %35, %32, %25, %10, %6
  %44 = phi i32 [ %42, %35 ], [ %23, %25 ], [ %23, %10 ], [ 0, %6 ], [ %33, %32 ]
  tail call void @mmput(ptr noundef nonnull %4) #16
  br label %45

45:                                               ; preds = %43, %3
  %46 = phi i32 [ %44, %43 ], [ 0, %3 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_task_mm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @access_process_vm(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @memcmp_pages(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @pgprot_kernel, align 4
  %4 = or i32 %3, 512
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  %5 = tail call ptr @llvm.thread.pointer() #16
  %6 = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 149
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %9 = tail call ptr @__kmap_local_page_prot(ptr noundef %0, i32 noundef %4) #16
  %10 = load i32, ptr @pgprot_kernel, align 4
  %11 = or i32 %10, 512
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !23
  %12 = load i32, ptr %6, align 8
  %13 = add i32 %12, 1
  store i32 %13, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !24
  %14 = tail call ptr @__kmap_local_page_prot(ptr noundef %1, i32 noundef %11) #16
  %15 = tail call i32 @memcmp(ptr noundef dereferenceable(4096) %9, ptr noundef dereferenceable(4096) %14, i32 noundef 4096)
  tail call void @kunmap_local_indexed(ptr noundef %14) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  %16 = load i32, ptr %6, align 8
  %17 = add i32 %16, -1
  store i32 %17, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  tail call void @kunmap_local_indexed(ptr noundef %9) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !25
  %18 = load i32, ptr %6, align 8
  %19 = add i32 %18, -1
  store i32 %19, ptr %6, align 8
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !26
  ret i32 %15
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mem_dump_obj(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @kmem_valid_obj(ptr noundef %0) #16
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @kmem_dump_obj(ptr noundef %0) #16
  br label %27

4:                                                ; preds = %1
  %5 = tail call zeroext i1 @vmalloc_dump_obj(ptr noundef %0) #16
  br i1 %5, label %27, label %6

6:                                                ; preds = %4
  %7 = icmp ugt ptr %0, inttoptr (i32 -1073741825 to ptr)
  %8 = load ptr, ptr @high_memory, align 4
  %9 = icmp ugt ptr %8, %0
  %10 = select i1 %7, i1 %9, i1 false
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = ptrtoint ptr %0 to i32
  %13 = add i32 %12, 1073741824
  %14 = lshr i32 %13, 12
  %15 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %16 = add i32 %15, %14
  %17 = tail call i32 @pfn_valid(i32 noundef %16) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11, %6
  %20 = icmp eq ptr %0, inttoptr (i32 16 to ptr)
  %21 = select i1 %20, ptr @.str.3, ptr @.str.4
  %22 = icmp eq ptr %0, null
  %23 = select i1 %22, ptr @.str.2, ptr %21
  br label %24

24:                                               ; preds = %19, %11
  %25 = phi ptr [ @.str.1, %11 ], [ %23, %19 ]
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %25) #20
  br label %27

27:                                               ; preds = %24, %4, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kmem_valid_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_dump_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vmalloc_dump_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_offline_freeze() local_unnamed_addr #0 {
  tail call void @down_read(ptr noundef nonnull @page_offline_rwsem) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_offline_thaw() local_unnamed_addr #0 {
  tail call void @up_read(ptr noundef nonnull @page_offline_rwsem) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_offline_begin() #0 {
  tail call void @down_write(ptr noundef nonnull @page_offline_rwsem) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @page_offline_end() #0 {
  tail call void @up_write(ptr noundef nonnull @page_offline_rwsem) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flush_dcache_folio(ptr noundef %0) #0 {
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 65536
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr %struct.page, ptr %0, i32 1, i32 1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %7, %5 ], [ 1, %1 ]
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ %14, %11 ], [ 0, %9 ]
  %13 = getelementptr %struct.page, ptr %0, i32 %12
  tail call void @flush_dcache_page(ptr noundef %13) #16
  %14 = add nuw nsw i32 %12, 1
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %16, label %11

16:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mm_populate(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @copy_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__percpu_counter_sum(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind null_pointer_is_valid sspstrong allocsize(2) uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nounwind readonly }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2151527607, i64 2151527632}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 4023719}
!12 = !{i64 4023916}
!13 = !{i64 2151509195}
!14 = !{i64 866378, i64 2148356349, i64 2148356375, i64 2148356422, i64 2148356444, i64 2148356472, i64 2148356492}
!15 = !{i64 2148367764, i64 2148367790, i64 2148367819, i64 2148367853, i64 2148367884, i64 2148367907}
!16 = !{!"auto-init"}
!17 = !{!"branch_weights", i32 4000000, i32 4001}
!18 = !{i64 2148972838}
!19 = !{i64 2149033444}
!20 = !{i64 2149029268}
!21 = !{i64 2149029343, i64 2149029370, i64 2149029417, i64 2149029439, i64 2149029467, i64 2149029487}
!22 = !{i64 2149056447}
!23 = !{i64 2153004092}
!24 = !{i64 2151530113}
!25 = !{i64 2151530320}
!26 = !{i64 2153006717}
