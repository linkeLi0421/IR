; ModuleID = '/llk/IR/mm/vmalloc.c_pt.bc'
source_filename = "../mm/vmalloc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_vmalloc_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22is_vmalloc_addr\22\09\09\09\09\09"
module asm "__kstrtabns_is_vmalloc_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmalloc_to_page:\09\09\09\09\09"
module asm "\09.asciz \09\22vmalloc_to_page\22\09\09\09\09\09"
module asm "__kstrtabns_vmalloc_to_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmalloc_to_pfn:\09\09\09\09\09"
module asm "\09.asciz \09\22vmalloc_to_pfn\22\09\09\09\09\09"
module asm "__kstrtabns_vmalloc_to_pfn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_vmap_purge_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_vmap_purge_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_vmap_purge_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_vmap_purge_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_vmap_purge_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_vmap_purge_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_unmap_aliases:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_unmap_aliases\22\09\09\09\09\09"
module asm "__kstrtabns_vm_unmap_aliases:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_unmap_ram:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_unmap_ram\22\09\09\09\09\09"
module asm "__kstrtabns_vm_unmap_ram:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vm_map_ram:\09\09\09\09\09"
module asm "\09.asciz \09\22vm_map_ram\22\09\09\09\09\09"
module asm "__kstrtabns_vm_map_ram:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vfree:\09\09\09\09\09"
module asm "\09.asciz \09\22vfree\22\09\09\09\09\09"
module asm "__kstrtabns_vfree:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22vunmap\22\09\09\09\09\09"
module asm "__kstrtabns_vunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmap:\09\09\09\09\09"
module asm "\09.asciz \09\22vmap\22\09\09\09\09\09"
module asm "__kstrtabns_vmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___vmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22__vmalloc\22\09\09\09\09\09"
module asm "__kstrtabns___vmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22vmalloc\22\09\09\09\09\09"
module asm "__kstrtabns_vmalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmalloc_no_huge:\09\09\09\09\09"
module asm "\09.asciz \09\22vmalloc_no_huge\22\09\09\09\09\09"
module asm "__kstrtabns_vmalloc_no_huge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vzalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22vzalloc\22\09\09\09\09\09"
module asm "__kstrtabns_vzalloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmalloc_user:\09\09\09\09\09"
module asm "\09.asciz \09\22vmalloc_user\22\09\09\09\09\09"
module asm "__kstrtabns_vmalloc_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22vmalloc_node\22\09\09\09\09\09"
module asm "__kstrtabns_vmalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vzalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22vzalloc_node\22\09\09\09\09\09"
module asm "__kstrtabns_vzalloc_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmalloc_32:\09\09\09\09\09"
module asm "\09.asciz \09\22vmalloc_32\22\09\09\09\09\09"
module asm "__kstrtabns_vmalloc_32:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vmalloc_32_user:\09\09\09\09\09"
module asm "\09.asciz \09\22vmalloc_32_user\22\09\09\09\09\09"
module asm "__kstrtabns_vmalloc_32_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_remap_vmalloc_range:\09\09\09\09\09"
module asm "\09.asciz \09\22remap_vmalloc_range\22\09\09\09\09\09"
module asm "__kstrtabns_remap_vmalloc_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_vm_area:\09\09\09\09\09"
module asm "\09.asciz \09\22free_vm_area\22\09\09\09\09\09"
module asm "__kstrtabns_free_vm_area:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.vmap_block_queue = type { %struct.spinlock, %struct.list_head }
%struct.vfree_deferred = type { %struct.llist_head, %struct.work_struct }
%struct.llist_head = type { ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.3, %union.anon.64, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vmap_block = type { %struct.spinlock, ptr, i32, i32, i32, i32, %struct.list_head, %struct.callback_head, %struct.list_head }
%struct.vmap_area = type { i32, i32, %struct.rb_node, %struct.list_head, %union.anon.71 }
%union.anon.71 = type { i32 }
%struct.vm_struct = type { ptr, ptr, i32, i32, ptr, i32, i32, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}

@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_is_vmalloc_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_vmalloc_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_is_vmalloc_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_vmalloc_addr to i32), ptr @__kstrtab_is_vmalloc_addr, ptr @__kstrtabns_is_vmalloc_addr }, section "___ksymtab+is_vmalloc_addr", align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@.str = private unnamed_addr constant [13 x i8] c"mm/vmalloc.c\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_vmalloc_to_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmalloc_to_page = external dso_local constant [0 x i8], align 1
@__ksymtab_vmalloc_to_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmalloc_to_page to i32), ptr @__kstrtab_vmalloc_to_page, ptr @__kstrtabns_vmalloc_to_page }, section "___ksymtab+vmalloc_to_page", align 4
@__kstrtab_vmalloc_to_pfn = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmalloc_to_pfn = external dso_local constant [0 x i8], align 1
@__ksymtab_vmalloc_to_pfn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmalloc_to_pfn to i32), ptr @__kstrtab_vmalloc_to_pfn, ptr @__kstrtabns_vmalloc_to_pfn }, section "___ksymtab+vmalloc_to_pfn", align 4
@vmap_area_list = dso_local global %struct.list_head { ptr @vmap_area_list, ptr @vmap_area_list }, align 4
@nr_vmalloc_pages = internal global %struct.atomic_t zeroinitializer, align 4
@vmap_notify_list = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vmap_notify_list, i64 16), ptr getelementptr (i8, ptr @vmap_notify_list, i64 16) } }, ptr null }, align 4
@__kstrtab_register_vmap_purge_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_vmap_purge_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_vmap_purge_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_vmap_purge_notifier to i32), ptr @__kstrtab_register_vmap_purge_notifier, ptr @__kstrtabns_register_vmap_purge_notifier }, section "___ksymtab_gpl+register_vmap_purge_notifier", align 4
@__kstrtab_unregister_vmap_purge_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_vmap_purge_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_vmap_purge_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_vmap_purge_notifier to i32), ptr @__kstrtab_unregister_vmap_purge_notifier, ptr @__kstrtabns_unregister_vmap_purge_notifier }, section "___ksymtab_gpl+unregister_vmap_purge_notifier", align 4
@__kstrtab_vm_unmap_aliases = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_unmap_aliases = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_unmap_aliases = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_unmap_aliases to i32), ptr @__kstrtab_vm_unmap_aliases, ptr @__kstrtabns_vm_unmap_aliases }, section "___ksymtab_gpl+vm_unmap_aliases", align 4
@__kstrtab_vm_unmap_ram = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_unmap_ram = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_unmap_ram = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_unmap_ram to i32), ptr @__kstrtab_vm_unmap_ram, ptr @__kstrtabns_vm_unmap_ram }, section "___ksymtab+vm_unmap_ram", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_vm_map_ram = external dso_local constant [0 x i8], align 1
@__kstrtabns_vm_map_ram = external dso_local constant [0 x i8], align 1
@__ksymtab_vm_map_ram = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vm_map_ram to i32), ptr @__kstrtab_vm_map_ram, ptr @__kstrtabns_vm_map_ram }, section "___ksymtab+vm_map_ram", align 4
@vmap_initialized = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@vmlist = internal unnamed_addr global ptr null, section ".init.data", align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"vmap_area\00", align 1
@vmap_area_cachep = internal unnamed_addr global ptr null, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@vmap_block_queue = internal global %struct.vmap_block_queue zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@vfree_deferred = internal global %struct.vfree_deferred zeroinitializer, section ".data..percpu", align 4
@vmalloc_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vmap_area_root = internal global %struct.rb_root zeroinitializer, align 4
@vmap_area_lock = internal global %struct.spinlock zeroinitializer, align 4
@__kstrtab_vfree = external dso_local constant [0 x i8], align 1
@__kstrtabns_vfree = external dso_local constant [0 x i8], align 1
@__ksymtab_vfree = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vfree to i32), ptr @__kstrtab_vfree, ptr @__kstrtabns_vfree }, section "___ksymtab+vfree", align 4
@__kstrtab_vunmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_vunmap = external dso_local constant [0 x i8], align 1
@__ksymtab_vunmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vunmap to i32), ptr @__kstrtab_vunmap, ptr @__kstrtabns_vunmap }, section "___ksymtab+vunmap", align 4
@vmap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_vmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmap = external dso_local constant [0 x i8], align 1
@__ksymtab_vmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmap to i32), ptr @__kstrtab_vmap, ptr @__kstrtabns_vmap }, section "___ksymtab+vmap", align 4
@__vmalloc_node_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"vmalloc error: size %lu, exceeds total pages\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"vmalloc error: size %lu, vm_struct allocation failed%s\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c". Retrying.\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__kstrtab___vmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns___vmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab___vmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__vmalloc to i32), ptr @__kstrtab___vmalloc, ptr @__kstrtabns___vmalloc }, section "___ksymtab+__vmalloc", align 4
@__kstrtab_vmalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_vmalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmalloc to i32), ptr @__kstrtab_vmalloc, ptr @__kstrtabns_vmalloc }, section "___ksymtab+vmalloc", align 4
@__kstrtab_vmalloc_no_huge = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmalloc_no_huge = external dso_local constant [0 x i8], align 1
@__ksymtab_vmalloc_no_huge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmalloc_no_huge to i32), ptr @__kstrtab_vmalloc_no_huge, ptr @__kstrtabns_vmalloc_no_huge }, section "___ksymtab+vmalloc_no_huge", align 4
@__kstrtab_vzalloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_vzalloc = external dso_local constant [0 x i8], align 1
@__ksymtab_vzalloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vzalloc to i32), ptr @__kstrtab_vzalloc, ptr @__kstrtabns_vzalloc }, section "___ksymtab+vzalloc", align 4
@__kstrtab_vmalloc_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmalloc_user = external dso_local constant [0 x i8], align 1
@__ksymtab_vmalloc_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmalloc_user to i32), ptr @__kstrtab_vmalloc_user, ptr @__kstrtabns_vmalloc_user }, section "___ksymtab+vmalloc_user", align 4
@__kstrtab_vmalloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmalloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab_vmalloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmalloc_node to i32), ptr @__kstrtab_vmalloc_node, ptr @__kstrtabns_vmalloc_node }, section "___ksymtab+vmalloc_node", align 4
@__kstrtab_vzalloc_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_vzalloc_node = external dso_local constant [0 x i8], align 1
@__ksymtab_vzalloc_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vzalloc_node to i32), ptr @__kstrtab_vzalloc_node, ptr @__kstrtabns_vzalloc_node }, section "___ksymtab+vzalloc_node", align 4
@__kstrtab_vmalloc_32 = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmalloc_32 = external dso_local constant [0 x i8], align 1
@__ksymtab_vmalloc_32 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmalloc_32 to i32), ptr @__kstrtab_vmalloc_32, ptr @__kstrtabns_vmalloc_32 }, section "___ksymtab+vmalloc_32", align 4
@__kstrtab_vmalloc_32_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_vmalloc_32_user = external dso_local constant [0 x i8], align 1
@__ksymtab_vmalloc_32_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vmalloc_32_user to i32), ptr @__kstrtab_vmalloc_32_user, ptr @__kstrtabns_vmalloc_32_user }, section "___ksymtab+vmalloc_32_user", align 4
@__kstrtab_remap_vmalloc_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_remap_vmalloc_range = external dso_local constant [0 x i8], align 1
@__ksymtab_remap_vmalloc_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @remap_vmalloc_range to i32), ptr @__kstrtab_remap_vmalloc_range, ptr @__kstrtabns_remap_vmalloc_range }, section "___ksymtab+remap_vmalloc_range", align 4
@__kstrtab_free_vm_area = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_vm_area = external dso_local constant [0 x i8], align 1
@__ksymtab_free_vm_area = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_vm_area to i32), ptr @__kstrtab_free_vm_area, ptr @__kstrtabns_free_vm_area }, section "___ksymtab_gpl+free_vm_area", align 4
@free_vmap_area_lock = internal global %struct.spinlock zeroinitializer, align 4
@pcpu_get_vm_areas.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pcpu_get_vm_areas.__already_done.10 = internal unnamed_addr global i1 false, section ".data.once", align 1
@free_vmap_area_root = internal global %struct.rb_root zeroinitializer, align 4
@free_vmap_area_list = internal global %struct.list_head { ptr @free_vmap_area_list, ptr @free_vmap_area_list }, align 4
@.str.11 = private unnamed_addr constant [61 x i8] c"\01c %u-page vmalloc region starting at %#lx allocated at %pS\0A\00", align 1
@__initcall__kmod_vmalloc__309_4058_proc_vmalloc_init6 = internal global ptr @proc_vmalloc_init, section ".initcall6.init", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@vmap_purge_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vmap_purge_lock, i64 12), ptr getelementptr (i8, ptr @vmap_purge_lock, i64 12) } }, align 4
@vmap_blocks = internal global %struct.xarray zeroinitializer, align 4
@vmap_lazy_nr = internal global %struct.atomic_t zeroinitializer, align 4
@purge_vmap_area_lock = internal global %struct.spinlock zeroinitializer, align 4
@purge_vmap_area_root = internal global %struct.rb_root zeroinitializer, align 4
@purge_vmap_area_list = internal global %struct.list_head { ptr @purge_vmap_area_list, ptr @purge_vmap_area_list }, align 4
@.str.12 = private unnamed_addr constant [52 x i8] c"vmalloc bug: 0x%lx-0x%lx overlaps with 0x%lx-0x%lx\0A\00", align 1
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.alloc_vmap_area = private unnamed_addr constant [16 x i8] c"alloc_vmap_area\00", align 1
@.str.13 = private unnamed_addr constant [76 x i8] c"\014vmap allocation for size %lu failed: use vmalloc=<size> to increase size\0A\00", align 1
@ne_fit_preload_node = internal global ptr null, section ".data..percpu", align 4
@__alloc_vmap_area.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vmap_init_free_space.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vmap_init_free_space.__already_done.15 = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.16 = private unnamed_addr constant [36 x i8] c"Trying to vfree() bad address (%p)\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"\013Trying to vfree() nonexistent vm area (%p)\0A\00", align 1
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@.str.18 = private unnamed_addr constant [65 x i8] c"vmalloc error: size %lu, failed to allocated page array size %lu\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"vmalloc error: size %lu, page order %u, failed to allocate pages\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"vmalloc error: size %lu, failed to map pages\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"vmallocinfo\00", align 1
@vmalloc_op = internal constant %struct.seq_operations { ptr @s_start, ptr @s_stop, ptr @s_next, ptr @s_show }, align 4
@.str.23 = private unnamed_addr constant [29 x i8] c"0x%pK-0x%pK %7ld vm_map_ram\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"0x%pK-0x%pK %7ld\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c" %pS\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c" pages=%d\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c" phys=%pa\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c" ioremap\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c" vmalloc\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c" vmap\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c" user\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c" dma-coherent\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c" vpages\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"0x%pK-0x%pK %7ld unpurged vm_area\0A\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__initcall__kmod_vmalloc__309_4058_proc_vmalloc_init6, ptr @__ksymtab___vmalloc, ptr @__ksymtab_free_vm_area, ptr @__ksymtab_is_vmalloc_addr, ptr @__ksymtab_register_vmap_purge_notifier, ptr @__ksymtab_remap_vmalloc_range, ptr @__ksymtab_unregister_vmap_purge_notifier, ptr @__ksymtab_vfree, ptr @__ksymtab_vm_map_ram, ptr @__ksymtab_vm_unmap_aliases, ptr @__ksymtab_vm_unmap_ram, ptr @__ksymtab_vmalloc, ptr @__ksymtab_vmalloc_32, ptr @__ksymtab_vmalloc_32_user, ptr @__ksymtab_vmalloc_no_huge, ptr @__ksymtab_vmalloc_node, ptr @__ksymtab_vmalloc_to_page, ptr @__ksymtab_vmalloc_to_pfn, ptr @__ksymtab_vmalloc_user, ptr @__ksymtab_vmap, ptr @__ksymtab_vunmap, ptr @__ksymtab_vzalloc, ptr @__ksymtab_vzalloc_node], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @is_vmalloc_addr(ptr noundef %0) #0 {
  %2 = ptrtoint ptr %0 to i32
  %3 = load ptr, ptr @high_memory, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = add i32 %4, 8388608
  %6 = and i32 %5, -8388608
  %7 = icmp ule i32 %6, %2
  %8 = icmp ult ptr %0, inttoptr (i32 -8388608 to ptr)
  %9 = and i1 %8, %7
  ret i1 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ioremap_page_range(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = icmp ult i32 %0, %1
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #18, !srcloc !10
  unreachable

7:                                                ; preds = %4
  %8 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %9 = lshr i32 %0, 21
  %10 = getelementptr [2 x i32], ptr %8, i32 %9
  %11 = add i32 %1, -1
  br label %12

12:                                               ; preds = %56, %7
  %13 = phi ptr [ %10, %7 ], [ %57, %56 ]
  %14 = phi i32 [ %2, %7 ], [ %59, %56 ]
  %15 = phi i32 [ %0, %7 ], [ %20, %56 ]
  %16 = add i32 %15, 2097152
  %17 = and i32 %16, -2097152
  %18 = add i32 %17, -1
  %19 = icmp ult i32 %18, %11
  %20 = select i1 %19, i32 %17, i32 %1
  %21 = icmp eq ptr %13, null
  br i1 %21, label %61, label %22

22:                                               ; preds = %12
  %23 = lshr i32 %14, 12
  %24 = zext i32 %23 to i64
  %25 = load i32, ptr %13, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32, !prof !11

27:                                               ; preds = %22
  %28 = tail call i32 @__pte_alloc_kernel(ptr noundef nonnull %13) #18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %27
  %31 = load i32, ptr %13, align 4
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi i32 [ %31, %30 ], [ %25, %22 ]
  %34 = and i32 %33, -4096
  %35 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %34, i32 -2130706432, i32 8454144) #19, !srcloc !12
  %36 = inttoptr i32 %35 to ptr
  %37 = lshr i32 %15, 12
  %38 = and i32 %37, 511
  %39 = getelementptr i32, ptr %36, i32 %38
  %40 = icmp eq ptr %39, null
  br i1 %40, label %61, label %41

41:                                               ; preds = %48, %32
  %42 = phi i32 [ %54, %48 ], [ %15, %32 ]
  %43 = phi ptr [ %53, %48 ], [ %39, %32 ]
  %44 = phi i64 [ %52, %48 ], [ %24, %32 ]
  %45 = load i32, ptr %43, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47, !prof !9

47:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #18, !srcloc !13
  unreachable

48:                                               ; preds = %41
  %49 = trunc i64 %44 to i32
  %50 = shl i32 %49, 12
  %51 = or i32 %50, %3
  tail call void @set_pte_at(ptr noundef nonnull @init_mm, i32 noundef %42, ptr noundef %43, i32 noundef %51) #18
  %52 = add i64 %44, 1
  %53 = getelementptr i32, ptr %43, i32 1
  %54 = add i32 %42, 4096
  %55 = icmp eq i32 %54, %20
  br i1 %55, label %56, label %41

56:                                               ; preds = %48
  %57 = getelementptr [2 x i32], ptr %13, i32 1
  %58 = sub i32 %14, %15
  %59 = add i32 %58, %20
  %60 = icmp eq i32 %20, %1
  br i1 %60, label %61, label %12

61:                                               ; preds = %56, %32, %27, %12
  %62 = phi i32 [ 0, %56 ], [ -12, %12 ], [ -12, %32 ], [ -12, %27 ]
  %63 = load i32, ptr @cacheid, align 4
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %67() #18
  br label %69

68:                                               ; preds = %61
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !14
  br label %69

69:                                               ; preds = %68, %66
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vunmap_range_noflush(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp ult i32 %0, %1
  br i1 %3, label %5, label %4, !prof !9

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 430, 0\0A.popsection", ""() #18, !srcloc !15
  unreachable

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %7 = lshr i32 %0, 21
  %8 = getelementptr [2 x i32], ptr %6, i32 %7
  %9 = add i32 %1, -1
  br label %10

10:                                               ; preds = %47, %5
  %11 = phi i32 [ %0, %5 ], [ %17, %47 ]
  %12 = phi ptr [ %8, %5 ], [ %48, %47 ]
  %13 = add i32 %11, 2097152
  %14 = and i32 %13, -2097152
  %15 = add i32 %14, -1
  %16 = icmp ult i32 %15, %9
  %17 = select i1 %16, i32 %14, i32 %1
  %18 = load i32, ptr %12, align 4
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %10
  %22 = icmp eq i32 %18, 0
  br i1 %22, label %47, label %24

23:                                               ; preds = %10
  tail call void @pmd_clear_bad(ptr noundef %12) #18
  br label %47

24:                                               ; preds = %21
  %25 = and i32 %18, -4096
  %26 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %25, i32 -2130706432, i32 8454144) #19, !srcloc !12
  %27 = inttoptr i32 %26 to ptr
  %28 = lshr i32 %11, 12
  %29 = and i32 %28, 511
  %30 = getelementptr i32, ptr %27, i32 %29
  br label %31

31:                                               ; preds = %41, %24
  %32 = phi ptr [ %30, %24 ], [ %42, %41 ]
  %33 = phi i32 [ %11, %24 ], [ %43, %41 ]
  %34 = load i32, ptr %32, align 4
  %35 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  tail call void %35(ptr noundef %32, i32 noundef 0, i32 noundef 0) #18
  %36 = icmp ne i32 %34, 0
  %37 = and i32 %34, 1
  %38 = icmp eq i32 %37, 0
  %39 = and i1 %36, %38
  br i1 %39, label %40, label %41, !prof !11

40:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 335, i32 noundef 9, ptr noundef null) #18
  br label %41

41:                                               ; preds = %40, %31
  %42 = getelementptr i32, ptr %32, i32 1
  %43 = add i32 %33, 4096
  %44 = icmp eq i32 %43, %17
  br i1 %44, label %45, label %31

45:                                               ; preds = %41
  %46 = tail call i32 @__cond_resched() #18
  br label %47

47:                                               ; preds = %45, %23, %21
  %48 = getelementptr [2 x i32], ptr %12, i32 1
  %49 = icmp eq i32 %17, %1
  br i1 %49, label %50, label %10

50:                                               ; preds = %47
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vunmap_range(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load i32, ptr @cacheid, align 4
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %7() #18
  br label %8

8:                                                ; preds = %6, %2
  tail call void @vunmap_range_noflush(i32 noundef %0, i32 noundef %1)
  tail call void @flush_tlb_kernel_range(i32 noundef %0, i32 noundef %1) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_kernel_range(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vmap_pages_range_noflush(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = icmp ult i32 %4, 12
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 584, i32 noundef 9, ptr noundef null) #18
  br label %8

8:                                                ; preds = %7, %5
  %9 = icmp ult i32 %0, %1
  br i1 %9, label %11, label %10, !prof !9

10:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 553, 0\0A.popsection", ""() #18, !srcloc !16
  unreachable

11:                                               ; preds = %8
  %12 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %13 = lshr i32 %0, 21
  %14 = getelementptr [2 x i32], ptr %12, i32 %13
  %15 = add i32 %1, -1
  br label %16

16:                                               ; preds = %67, %11
  %17 = phi i32 [ 0, %11 ], [ %63, %67 ]
  %18 = phi ptr [ %14, %11 ], [ %68, %67 ]
  %19 = phi i32 [ %0, %11 ], [ %24, %67 ]
  %20 = add i32 %19, 2097152
  %21 = and i32 %20, -2097152
  %22 = add i32 %21, -1
  %23 = icmp ult i32 %22, %15
  %24 = select i1 %23, i32 %21, i32 %1
  %25 = icmp eq ptr %18, null
  br i1 %25, label %72, label %26

26:                                               ; preds = %16
  %27 = load i32, ptr %18, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34, !prof !11

29:                                               ; preds = %26
  %30 = tail call i32 @__pte_alloc_kernel(ptr noundef nonnull %18) #18
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %29
  %33 = load i32, ptr %18, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi i32 [ %33, %32 ], [ %27, %26 ]
  %36 = and i32 %35, -4096
  %37 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %36, i32 -2130706432, i32 8454144) #19, !srcloc !12
  %38 = inttoptr i32 %37 to ptr
  %39 = lshr i32 %19, 12
  %40 = and i32 %39, 511
  %41 = getelementptr i32, ptr %38, i32 %40
  %42 = icmp eq ptr %41, null
  br i1 %42, label %72, label %43

43:                                               ; preds = %53, %34
  %44 = phi i32 [ %63, %53 ], [ %17, %34 ]
  %45 = phi ptr [ %64, %53 ], [ %41, %34 ]
  %46 = phi i32 [ %65, %53 ], [ %19, %34 ]
  %47 = getelementptr ptr, ptr %3, i32 %44
  %48 = load ptr, ptr %47, align 4
  %49 = load i32, ptr %45, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %70, !prof !9

51:                                               ; preds = %43
  %52 = icmp eq ptr %48, null
  br i1 %52, label %70, label %53, !prof !11

53:                                               ; preds = %51
  %54 = load ptr, ptr @mem_map, align 4
  %55 = ptrtoint ptr %48 to i32
  %56 = ptrtoint ptr %54 to i32
  %57 = sub i32 %55, %56
  %58 = lshr exact i32 %57, 5
  %59 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %60 = add i32 %58, %59
  %61 = shl i32 %60, 12
  %62 = or i32 %61, %2
  tail call void @set_pte_at(ptr noundef nonnull @init_mm, i32 noundef %46, ptr noundef %45, i32 noundef %62) #18
  %63 = add i32 %44, 1
  %64 = getelementptr i32, ptr %45, i32 1
  %65 = add i32 %46, 4096
  %66 = icmp eq i32 %65, %24
  br i1 %66, label %67, label %43

67:                                               ; preds = %53
  %68 = getelementptr [2 x i32], ptr %18, i32 1
  %69 = icmp eq i32 %24, %1
  br i1 %69, label %72, label %16

70:                                               ; preds = %51, %43
  %71 = phi i32 [ 478, %43 ], [ 480, %51 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %71, i32 noundef 9, ptr noundef null) #18
  br label %72

72:                                               ; preds = %70, %67, %34, %29, %16
  %73 = phi i32 [ -12, %70 ], [ 0, %67 ], [ -12, %16 ], [ -12, %34 ], [ -12, %29 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @is_vmalloc_or_module_addr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt ptr %0, inttoptr (i32 -1090519041 to ptr)
  %3 = icmp ult ptr %0, inttoptr (i32 -1075838976 to ptr)
  %4 = and i1 %2, %3
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = ptrtoint ptr %0 to i32
  %7 = load ptr, ptr @high_memory, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = add i32 %8, 8388608
  %10 = and i32 %9, -8388608
  %11 = icmp ule i32 %10, %6
  %12 = icmp ult ptr %0, inttoptr (i32 -8388608 to ptr)
  %13 = and i1 %12, %11
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %5, %1
  %16 = phi i32 [ %14, %5 ], [ 1, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vmalloc_to_page(ptr noundef %0) #2 {
  %2 = ptrtoint ptr %0 to i32
  %3 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %4 = lshr i32 %2, 21
  %5 = getelementptr [2 x i32], ptr %3, i32 %4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 2
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr @mem_map, align 4
  %12 = lshr i32 %6, 12
  %13 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %14 = sub i32 %12, %13
  %15 = getelementptr %struct.page, ptr %11, i32 %14
  br i1 %10, label %20, label %16

16:                                               ; preds = %8
  %17 = lshr i32 %2, 12
  %18 = and i32 %17, 511
  %19 = getelementptr %struct.page, ptr %15, i32 %18
  br label %42

20:                                               ; preds = %8
  %21 = load i32, ptr @pgprot_kernel, align 4
  %22 = or i32 %21, 512
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  %23 = tail call ptr @llvm.thread.pointer() #18
  %24 = getelementptr inbounds %struct.task_struct, ptr %23, i32 0, i32 149
  %25 = load i32, ptr %24, align 8
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !18
  %27 = tail call ptr @__kmap_local_page_prot(ptr noundef %15, i32 noundef %22) #18
  %28 = lshr i32 %2, 12
  %29 = and i32 %28, 511
  %30 = getelementptr i32, ptr %27, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  %34 = load ptr, ptr @mem_map, align 4
  %35 = lshr i32 %31, 12
  %36 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %37 = sub i32 %35, %36
  %38 = getelementptr %struct.page, ptr %34, i32 %37
  %39 = select i1 %33, ptr null, ptr %38
  tail call void @kunmap_local_indexed(ptr noundef %30) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !19
  %40 = load i32, ptr %24, align 8
  %41 = add i32 %40, -1
  store i32 %41, ptr %24, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !20
  br label %42

42:                                               ; preds = %20, %16, %1
  %43 = phi ptr [ %19, %16 ], [ %39, %20 ], [ null, %1 ]
  ret ptr %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vmalloc_to_pfn(ptr noundef %0) #2 {
  %2 = tail call ptr @vmalloc_to_page(ptr noundef %0)
  %3 = load ptr, ptr @mem_map, align 4
  %4 = ptrtoint ptr %2 to i32
  %5 = ptrtoint ptr %3 to i32
  %6 = sub i32 %4, %5
  %7 = ashr exact i32 %6, 5
  %8 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %9 = add i32 %7, %8
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @vmalloc_nr_pages() local_unnamed_addr #4 {
  %1 = load volatile i32, ptr @nr_vmalloc_pages, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_vmap_purge_notifier(ptr noundef %0) #2 {
  %2 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @vmap_notify_list, ptr noundef %0) #18
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_vmap_purge_notifier(ptr noundef %0) #2 {
  %2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @vmap_notify_list, ptr noundef %0) #18
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vm_unmap_aliases() #2 {
  tail call fastcc void @_vm_unmap_aliases(i32 noundef -1, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_vm_unmap_aliases(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = load i1, ptr @vmap_initialized, align 1
  br i1 %4, label %5, label %68, !prof !9

5:                                                ; preds = %3
  %6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %58

9:                                                ; preds = %51, %5
  %10 = phi i32 [ %55, %51 ], [ %6, %5 ]
  %11 = phi i32 [ %54, %51 ], [ %0, %5 ]
  %12 = phi i32 [ %53, %51 ], [ %1, %5 ]
  %13 = phi i32 [ %52, %51 ], [ %2, %5 ]
  %14 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, ptrtoint (ptr @vmap_block_queue to i32)
  %17 = inttoptr i32 %16 to ptr
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !21
  %18 = getelementptr inbounds %struct.vmap_block_queue, ptr %17, i32 0, i32 1
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %51, label %21

21:                                               ; preds = %43, %9
  %22 = phi ptr [ %49, %43 ], [ %19, %9 ]
  %23 = phi i32 [ %46, %43 ], [ %11, %9 ]
  %24 = phi i32 [ %45, %43 ], [ %12, %9 ]
  %25 = phi i32 [ %44, %43 ], [ %13, %9 ]
  %26 = getelementptr i8, ptr %22, i32 -24
  tail call void @_raw_spin_lock(ptr noundef %26) #18
  %27 = getelementptr i8, ptr %22, i32 -12
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %29 [
    i32 0, label %43
    i32 128, label %43
  ]

29:                                               ; preds = %21
  %30 = getelementptr i8, ptr %22, i32 -20
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr i8, ptr %22, i32 -8
  %34 = load i32, ptr %33, align 4
  %35 = shl i32 %34, 12
  %36 = add i32 %35, %32
  %37 = getelementptr i8, ptr %22, i32 -4
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 12
  %40 = add i32 %39, %32
  %41 = tail call i32 @llvm.umin.i32(i32 %36, i32 %23)
  %42 = tail call i32 @llvm.umax.i32(i32 %40, i32 %24)
  br label %43

43:                                               ; preds = %29, %21, %21
  %44 = phi i32 [ 1, %29 ], [ %25, %21 ], [ %25, %21 ]
  %45 = phi i32 [ %42, %29 ], [ %24, %21 ], [ %24, %21 ]
  %46 = phi i32 [ %41, %29 ], [ %23, %21 ], [ %23, %21 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %47 = load i16, ptr %26, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %26, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %49 = load volatile ptr, ptr %22, align 4
  %50 = icmp eq ptr %49, %18
  br i1 %50, label %51, label %21

51:                                               ; preds = %43, %9
  %52 = phi i32 [ %13, %9 ], [ %44, %43 ]
  %53 = phi i32 [ %12, %9 ], [ %45, %43 ]
  %54 = phi i32 [ %11, %9 ], [ %46, %43 ]
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %55 = tail call i32 @cpumask_next(i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #20
  %56 = load i32, ptr @nr_cpu_ids, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %9, label %58

58:                                               ; preds = %51, %5
  %59 = phi i32 [ %2, %5 ], [ %52, %51 ]
  %60 = phi i32 [ %1, %5 ], [ %53, %51 ]
  %61 = phi i32 [ %0, %5 ], [ %54, %51 ]
  tail call void @mutex_lock(ptr noundef nonnull @vmap_purge_lock) #18
  tail call fastcc void @purge_fragmented_blocks_allcpus()
  %62 = tail call fastcc zeroext i1 @__purge_vmap_area_lazy(i32 noundef %61, i32 noundef %60)
  %63 = xor i1 %62, true
  %64 = icmp ne i32 %59, 0
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  tail call void @flush_tlb_kernel_range(i32 noundef %61, i32 noundef %60) #18
  br label %67

67:                                               ; preds = %66, %58
  tail call void @mutex_unlock(ptr noundef nonnull @vmap_purge_lock) #18
  br label %68

68:                                               ; preds = %67, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vm_unmap_ram(ptr noundef %0, i32 noundef %1) #2 {
  %3 = shl i32 %1, 12
  %4 = ptrtoint ptr %0 to i32
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7, !prof !11

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2152, 0\0A.popsection", ""() #18, !srcloc !27
  unreachable

7:                                                ; preds = %2
  %8 = load ptr, ptr @high_memory, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = add i32 %9, 8388608
  %11 = and i32 %10, -8388608
  %12 = icmp ugt i32 %11, %4
  br i1 %12, label %13, label %14, !prof !11

13:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2153, 0\0A.popsection", ""() #18, !srcloc !28
  unreachable

14:                                               ; preds = %7
  %15 = icmp ugt ptr %0, inttoptr (i32 -8388608 to ptr)
  br i1 %15, label %16, label %17, !prof !11

16:                                               ; preds = %14
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2154, 0\0A.popsection", ""() #18, !srcloc !29
  unreachable

17:                                               ; preds = %14
  %18 = and i32 %4, 4095
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20, !prof !9

20:                                               ; preds = %17
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2155, 0\0A.popsection", ""() #18, !srcloc !30
  unreachable

21:                                               ; preds = %17
  %22 = icmp ult i32 %1, 33
  br i1 %22, label %23, label %90, !prof !9

23:                                               ; preds = %21
  %24 = icmp ugt i32 %3, 131072
  br i1 %24, label %25, label %26, !prof !11

25:                                               ; preds = %23
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2050, 0\0A.popsection", ""() #18, !srcloc !31
  unreachable

26:                                               ; preds = %23
  %27 = add i32 %3, %4
  %28 = load i32, ptr @cacheid, align 4
  %29 = and i32 %28, 2
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %32() #18
  %33 = load ptr, ptr @high_memory, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = add i32 %34, 8388608
  %36 = and i32 %35, -8388608
  br label %37

37:                                               ; preds = %31, %26
  %38 = phi i32 [ %36, %31 ], [ %11, %26 ]
  %39 = sub i32 %4, %38
  %40 = lshr i32 %39, 19
  %41 = tail call ptr @xa_load(ptr noundef nonnull @vmap_blocks, i32 noundef %40) #18
  tail call void @vunmap_range_noflush(i32 noundef %4, i32 noundef %27) #18
  %42 = lshr i32 %4, 12
  %43 = and i32 %42, 127
  %44 = add nsw i32 %3, -1
  %45 = icmp eq i32 %44, 4095
  %46 = lshr i32 %44, 12
  %47 = tail call i32 @llvm.ctlz.i32(i32 %46, i1 false) #18, !range !32
  %48 = sub nuw nsw i32 32, %47
  tail call void @_raw_spin_lock(ptr noundef %41) #18
  %49 = getelementptr inbounds %struct.vmap_block, ptr %41, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 @llvm.umin.i32(i32 %50, i32 %43) #18
  store i32 %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.vmap_block, ptr %41, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = shl nuw i32 1, %48
  %55 = select i1 %45, i32 1, i32 %54
  %56 = add nuw i32 %55, %43
  %57 = tail call i32 @llvm.umax.i32(i32 %53, i32 %56) #18
  store i32 %57, ptr %52, align 4
  %58 = getelementptr inbounds %struct.vmap_block, ptr %41, i32 0, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %55
  store i32 %60, ptr %58, align 4
  %61 = icmp eq i32 %60, 128
  br i1 %61, label %62, label %87

62:                                               ; preds = %37
  %63 = getelementptr inbounds %struct.vmap_block, ptr %41, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66, !prof !9

66:                                               ; preds = %62
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2071, 0\0A.popsection", ""() #18, !srcloc !33
  unreachable

67:                                               ; preds = %62
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %68 = load i16, ptr %41, align 4
  %69 = add i16 %68, 1
  store i16 %69, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %70 = getelementptr inbounds %struct.vmap_block, ptr %41, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = load i32, ptr %71, align 4
  %73 = load ptr, ptr @high_memory, align 4
  %74 = ptrtoint ptr %73 to i32
  %75 = add i32 %74, 8388608
  %76 = and i32 %75, -8388608
  %77 = sub i32 %72, %76
  %78 = lshr i32 %77, 19
  %79 = tail call ptr @xa_erase(ptr noundef nonnull @vmap_blocks, i32 noundef %78) #18
  %80 = icmp eq ptr %79, %41
  br i1 %80, label %82, label %81, !prof !9

81:                                               ; preds = %67
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1941, 0\0A.popsection", ""() #18, !srcloc !34
  unreachable

82:                                               ; preds = %67
  %83 = load ptr, ptr %70, align 4
  tail call fastcc void @free_vmap_area_noflush(ptr noundef %83) #18
  %84 = icmp eq ptr %41, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.vmap_block, ptr %41, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %86, ptr noundef nonnull inttoptr (i32 32 to ptr)) #18
  br label %95

87:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %88 = load i16, ptr %41, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  br label %95

90:                                               ; preds = %21
  %91 = tail call fastcc ptr @find_vmap_area(i32 noundef %4)
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %94, !prof !11

93:                                               ; preds = %90
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2166, 0\0A.popsection", ""() #18, !srcloc !35
  unreachable

94:                                               ; preds = %90
  tail call fastcc void @free_unmap_vmap_area(ptr noundef nonnull %91)
  br label %95

95:                                               ; preds = %94, %87, %85, %82
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @find_vmap_area(i32 noundef %0) unnamed_addr #2 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #18
  %2 = load ptr, ptr @vmap_area_root, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %17, %1
  %5 = phi ptr [ %19, %17 ], [ %2, %1 ]
  %6 = getelementptr i8, ptr %5, i32 -8
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, %0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  br label %17

11:                                               ; preds = %4
  %12 = getelementptr i8, ptr %5, i32 -4
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, %0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi ptr [ %10, %9 ], [ %16, %15 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %4

21:                                               ; preds = %11
  %22 = getelementptr i8, ptr %5, i32 -8
  br label %23

23:                                               ; preds = %21, %17, %1
  %24 = phi ptr [ null, %1 ], [ %22, %21 ], [ null, %17 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %25 = load i16, ptr @vmap_area_lock, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr @vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  ret ptr %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_unmap_vmap_area(ptr noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr @cacheid, align 4
  %3 = and i32 %2, 2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %6() #18
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %0, align 4
  %10 = load i32, ptr %8, align 4
  tail call void @vunmap_range_noflush(i32 noundef %9, i32 noundef %10)
  tail call fastcc void @free_vmap_area_noflush(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vm_map_ram(ptr nocapture noundef readonly %0, i32 noundef %1, i32 %2) #2 {
  %4 = shl i32 %1, 12
  %5 = icmp ult i32 %1, 33
  br i1 %5, label %6, label %452, !prof !9

6:                                                ; preds = %3
  %7 = icmp ugt i32 %4, 131072
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1998, 0\0A.popsection", ""() #18, !srcloc !36
  unreachable

9:                                                ; preds = %6
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %11, label %12, !prof !11

11:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1999, i32 noundef 9, ptr noundef null) #18
  br label %449

12:                                               ; preds = %9
  %13 = add nsw i32 %4, -1
  %14 = lshr i32 %13, 12
  %15 = icmp eq i32 %13, 4095
  %16 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 false) #18, !range !32
  %17 = sub nuw nsw i32 32, %16
  %18 = select i1 %15, i32 0, i32 %17
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !37
  %19 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %20) #15, !srcloc !38
  %22 = add i32 %21, ptrtoint (ptr @vmap_block_queue to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.vmap_block_queue, ptr %23, i32 0, i32 1
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %71, label %27

27:                                               ; preds = %12
  %28 = shl nuw i32 1, %18
  br label %29

29:                                               ; preds = %66, %27
  %30 = phi ptr [ %25, %27 ], [ %69, %66 ]
  %31 = getelementptr i8, ptr %30, i32 -24
  tail call void @_raw_spin_lock(ptr noundef %31) #18
  %32 = getelementptr i8, ptr %30, i32 -16
  %33 = load i32, ptr %32, align 4
  %34 = icmp ult i32 %33, %28
  br i1 %34, label %66, label %35

35:                                               ; preds = %29
  %36 = getelementptr i8, ptr %30, i32 -20
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %37, align 4
  %39 = mul i32 %33, -4096
  %40 = add i32 %39, 524288
  %41 = add i32 %40, %38
  %42 = load ptr, ptr @high_memory, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = add i32 %43, 8388608
  %45 = and i32 %44, -8388608
  %46 = sub i32 %41, %45
  %47 = sub i32 %38, %45
  %48 = xor i32 %46, %47
  %49 = icmp ult i32 %48, 524288
  br i1 %49, label %51, label %50, !prof !9

50:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1872, 0\0A.popsection", ""() #18, !srcloc !39
  unreachable

51:                                               ; preds = %35
  %52 = getelementptr i8, ptr %30, i32 -16
  %53 = inttoptr i32 %41 to ptr
  %54 = sub i32 %33, %28
  store i32 %54, ptr %52, align 4
  %55 = icmp eq i32 %33, %28
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  tail call void @_raw_spin_lock(ptr noundef %23) #18
  %57 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %30, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %58, ptr %60, align 4
  store volatile ptr %59, ptr %58, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %57, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %61 = load i16, ptr %23, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  br label %63

63:                                               ; preds = %56, %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %64 = load i16, ptr %31, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  br label %71

66:                                               ; preds = %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %67 = load i16, ptr %31, align 4
  %68 = add i16 %67, 1
  store i16 %68, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %69 = load volatile ptr, ptr %30, align 4
  %70 = icmp eq ptr %69, %24
  br i1 %70, label %71, label %29

71:                                               ; preds = %66, %63, %12
  %72 = phi ptr [ %53, %63 ], [ null, %12 ], [ null, %66 ]
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !40
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %446

74:                                               ; preds = %71
  %75 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %76 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3264, i32 noundef 48) #21
  %77 = icmp eq ptr %76, null
  br i1 %77, label %478, label %78, !prof !11

78:                                               ; preds = %74
  %79 = load ptr, ptr @high_memory, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = add i32 %80, 8388608
  %82 = and i32 %81, -8388608
  %83 = tail call fastcc ptr @alloc_vmap_area(i32 noundef 524288, i32 noundef 524288, i32 noundef %82, i32 noundef -8388608, i32 noundef 3264) #18
  %84 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  tail call void @kfree(ptr noundef nonnull %76) #18
  br label %446

86:                                               ; preds = %78
  %87 = load i32, ptr %83, align 4
  %88 = load ptr, ptr @high_memory, align 4
  %89 = inttoptr i32 %87 to ptr
  store i32 0, ptr %76, align 8
  %90 = getelementptr inbounds %struct.vmap_block, ptr %76, i32 0, i32 1
  store ptr %83, ptr %90, align 4
  %91 = icmp ugt i32 %18, 6
  br i1 %91, label %92, label %93, !prof !11

92:                                               ; preds = %86
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1912, 0\0A.popsection", ""() #18, !srcloc !41
  unreachable

93:                                               ; preds = %86
  %94 = ptrtoint ptr %88 to i32
  %95 = add i32 %94, 8388608
  %96 = and i32 %95, -8388608
  %97 = shl nsw i32 -1, %18
  %98 = add nsw i32 %97, 128
  %99 = getelementptr inbounds %struct.vmap_block, ptr %76, i32 0, i32 2
  store i32 %98, ptr %99, align 8
  %100 = getelementptr inbounds %struct.vmap_block, ptr %76, i32 0, i32 3
  store i32 0, ptr %100, align 4
  %101 = getelementptr inbounds %struct.vmap_block, ptr %76, i32 0, i32 4
  store i32 128, ptr %101, align 8
  %102 = getelementptr inbounds %struct.vmap_block, ptr %76, i32 0, i32 5
  store i32 0, ptr %102, align 4
  %103 = getelementptr inbounds %struct.vmap_block, ptr %76, i32 0, i32 6
  store volatile ptr %103, ptr %103, align 8
  %104 = getelementptr inbounds %struct.vmap_block, ptr %76, i32 0, i32 6, i32 1
  store ptr %103, ptr %104, align 4
  %105 = load i32, ptr %83, align 4
  %106 = sub i32 %105, %96
  %107 = lshr i32 %106, 19
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_blocks) #18
  %108 = tail call i32 @__xa_insert(ptr noundef nonnull @vmap_blocks, i32 noundef %107, ptr noundef nonnull %76, i32 noundef 3264) #18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %109 = load i16, ptr @vmap_blocks, align 4
  %110 = add i16 %109, 1
  store i16 %110, ptr @vmap_blocks, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %111 = icmp eq i32 %108, 0
  br i1 %111, label %435, label %112

112:                                              ; preds = %93
  tail call void @kfree(ptr noundef nonnull %76) #18
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #18
  %113 = getelementptr inbounds %struct.vmap_area, ptr %83, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = ptrtoint ptr %113 to i32
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118, !prof !11

117:                                              ; preds = %112
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #18
  br label %124

118:                                              ; preds = %112
  tail call void @rb_erase(ptr noundef %113, ptr noundef nonnull @vmap_area_root) #18
  %119 = getelementptr inbounds %struct.vmap_area, ptr %83, i32 0, i32 3
  %120 = getelementptr inbounds %struct.vmap_area, ptr %83, i32 0, i32 3, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %119, align 4
  %123 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  store ptr %121, ptr %123, align 4
  store volatile ptr %122, ptr %121, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %119, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %120, align 4
  store i32 %115, ptr %113, align 4
  br label %124

124:                                              ; preds = %118, %117
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %125 = load i16, ptr @vmap_area_lock, align 4
  %126 = add i16 %125, 1
  store i16 %126, ptr @vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  tail call void @_raw_spin_lock(ptr noundef nonnull @free_vmap_area_lock) #18
  %127 = load ptr, ptr @free_vmap_area_root, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %379, label %129, !prof !11

129:                                              ; preds = %124
  %130 = load i32, ptr %83, align 4
  %131 = getelementptr inbounds %struct.vmap_area, ptr %83, i32 0, i32 1
  %132 = load i32, ptr %131, align 4
  br label %133

133:                                              ; preds = %148, %129
  %134 = phi ptr [ %127, %129 ], [ %150, %148 ]
  %135 = getelementptr i8, ptr %134, i32 -8
  %136 = getelementptr i8, ptr %134, i32 -4
  %137 = load i32, ptr %136, align 4
  %138 = icmp ult i32 %130, %137
  %139 = load i32, ptr %135, align 4
  %140 = icmp ugt i32 %132, %139
  br i1 %138, label %141, label %144

141:                                              ; preds = %133
  br i1 %140, label %147, label %142

142:                                              ; preds = %141
  %143 = getelementptr inbounds %struct.rb_node, ptr %134, i32 0, i32 2
  br label %148

144:                                              ; preds = %133
  br i1 %140, label %145, label %147

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct.rb_node, ptr %134, i32 0, i32 1
  br label %148

147:                                              ; preds = %144, %141
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %130, i32 noundef %132, i32 noundef %139, i32 noundef %137) #18
  br label %431

148:                                              ; preds = %145, %142
  %149 = phi ptr [ %143, %142 ], [ %146, %145 ]
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %133

152:                                              ; preds = %148
  %153 = icmp eq ptr %149, null
  br i1 %153, label %431, label %154

154:                                              ; preds = %152
  %155 = getelementptr i8, ptr %134, i32 12
  %156 = getelementptr inbounds %struct.rb_node, ptr %134, i32 0, i32 1
  %157 = icmp eq ptr %156, %149
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load ptr, ptr %155, align 4
  br label %160

160:                                              ; preds = %158, %154
  %161 = phi ptr [ %159, %158 ], [ %155, %154 ]
  %162 = icmp eq ptr %161, null
  br i1 %162, label %374, label %163, !prof !11

163:                                              ; preds = %160
  %164 = icmp eq ptr %161, @free_vmap_area_list
  br i1 %164, label %171, label %165

165:                                              ; preds = %163
  %166 = getelementptr i8, ptr %161, i32 -20
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, %132
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  store i32 %130, ptr %166, align 4
  %170 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %170, ptr noundef %83) #18
  br label %171

171:                                              ; preds = %169, %165, %163
  %172 = phi i1 [ true, %169 ], [ false, %165 ], [ false, %163 ]
  %173 = phi ptr [ %166, %169 ], [ %83, %165 ], [ %83, %163 ]
  %174 = getelementptr inbounds %struct.list_head, ptr %161, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = icmp eq ptr %175, @free_vmap_area_list
  br i1 %176, label %373, label %177

177:                                              ; preds = %171
  %178 = getelementptr i8, ptr %175, i32 -20
  %179 = getelementptr i8, ptr %175, i32 -16
  %180 = load i32, ptr %179, align 4
  %181 = load i32, ptr %173, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %373

183:                                              ; preds = %177
  br i1 %172, label %184, label %369

184:                                              ; preds = %183
  %185 = getelementptr inbounds %struct.vmap_area, ptr %173, i32 0, i32 2
  %186 = load i32, ptr %185, align 4
  %187 = ptrtoint ptr %185 to i32
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %190, !prof !11

189:                                              ; preds = %184
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #18
  br label %369

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.vmap_area, ptr %173, i32 0, i32 2, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.vmap_area, ptr %173, i32 0, i32 2, i32 2
  %194 = load ptr, ptr %193, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %214

196:                                              ; preds = %190
  %197 = and i32 %186, -4
  %198 = inttoptr i32 %197 to ptr
  %199 = icmp eq i32 %197, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.rb_node, ptr %198, i32 0, i32 2
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, %185
  %204 = getelementptr inbounds %struct.rb_node, ptr %198, i32 0, i32 1
  %205 = select i1 %203, ptr %201, ptr %204
  br label %206

206:                                              ; preds = %200, %196
  %207 = phi ptr [ @free_vmap_area_root, %196 ], [ %205, %200 ]
  store volatile ptr %192, ptr %207, align 4
  %208 = icmp eq ptr %192, null
  br i1 %208, label %210, label %209

209:                                              ; preds = %206
  store i32 %186, ptr %192, align 4
  br label %323

210:                                              ; preds = %206
  %211 = and i32 %186, 1
  %212 = icmp eq i32 %211, 0
  %213 = select i1 %212, ptr null, ptr %198
  br label %323

214:                                              ; preds = %190
  %215 = icmp eq ptr %192, null
  br i1 %215, label %216, label %228

216:                                              ; preds = %214
  store i32 %186, ptr %194, align 4
  %217 = and i32 %186, -4
  %218 = inttoptr i32 %217 to ptr
  %219 = icmp eq i32 %217, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.rb_node, ptr %218, i32 0, i32 2
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, %185
  %224 = getelementptr inbounds %struct.rb_node, ptr %218, i32 0, i32 1
  %225 = select i1 %223, ptr %221, ptr %224
  br label %226

226:                                              ; preds = %220, %216
  %227 = phi ptr [ @free_vmap_area_root, %216 ], [ %225, %220 ]
  store volatile ptr %194, ptr %227, align 4
  br label %323

228:                                              ; preds = %214
  %229 = getelementptr inbounds %struct.rb_node, ptr %192, i32 0, i32 2
  %230 = load ptr, ptr %229, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %239

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.rb_node, ptr %192, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  %235 = getelementptr %struct.vmap_area, ptr %173, i32 0, i32 4
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr i8, ptr %192, i32 20
  store i32 %236, ptr %237, align 4
  %238 = ptrtoint ptr %192 to i32
  br label %290

239:                                              ; preds = %239, %228
  %240 = phi ptr [ %243, %239 ], [ %230, %228 ]
  %241 = phi ptr [ %240, %239 ], [ %192, %228 ]
  %242 = getelementptr inbounds %struct.rb_node, ptr %240, i32 0, i32 2
  %243 = load ptr, ptr %242, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %239

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.rb_node, ptr %240, i32 0, i32 1
  %247 = load ptr, ptr %246, align 4
  %248 = getelementptr inbounds %struct.rb_node, ptr %241, i32 0, i32 2
  store volatile ptr %247, ptr %248, align 4
  store volatile ptr %192, ptr %246, align 4
  %249 = load i32, ptr %192, align 4
  %250 = and i32 %249, 1
  %251 = ptrtoint ptr %240 to i32
  %252 = or i32 %250, %251
  store i32 %252, ptr %192, align 4
  %253 = getelementptr %struct.vmap_area, ptr %173, i32 0, i32 4
  %254 = load i32, ptr %253, align 4
  %255 = getelementptr i8, ptr %240, i32 20
  store i32 %254, ptr %255, align 4
  %256 = icmp eq ptr %241, %240
  br i1 %256, label %290, label %257

257:                                              ; preds = %285, %245
  %258 = phi ptr [ %288, %285 ], [ %241, %245 ]
  %259 = getelementptr i8, ptr %258, i32 -8
  %260 = getelementptr i8, ptr %258, i32 -4
  %261 = load i32, ptr %260, align 4
  %262 = load i32, ptr %259, align 4
  %263 = sub i32 %261, %262
  %264 = getelementptr i8, ptr %258, i32 8
  %265 = load ptr, ptr %264, align 4
  %266 = icmp eq ptr %265, null
  br i1 %266, label %271, label %267

267:                                              ; preds = %257
  %268 = getelementptr i8, ptr %265, i32 20
  %269 = load i32, ptr %268, align 4
  %270 = tail call i32 @llvm.umax.i32(i32 %269, i32 %263) #18
  br label %271

271:                                              ; preds = %267, %257
  %272 = phi i32 [ %263, %257 ], [ %270, %267 ]
  %273 = getelementptr i8, ptr %258, i32 4
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %280, label %276

276:                                              ; preds = %271
  %277 = getelementptr i8, ptr %274, i32 20
  %278 = load i32, ptr %277, align 4
  %279 = tail call i32 @llvm.umax.i32(i32 %278, i32 %272) #18
  br label %280

280:                                              ; preds = %276, %271
  %281 = phi i32 [ %272, %271 ], [ %279, %276 ]
  %282 = getelementptr i8, ptr %258, i32 20
  %283 = load i32, ptr %282, align 4
  %284 = icmp eq i32 %283, %281
  br i1 %284, label %290, label %285

285:                                              ; preds = %280
  store i32 %281, ptr %282, align 4
  %286 = load i32, ptr %258, align 4
  %287 = and i32 %286, -4
  %288 = inttoptr i32 %287 to ptr
  %289 = icmp eq ptr %240, %288
  br i1 %289, label %290, label %257

290:                                              ; preds = %285, %280, %245, %232
  %291 = phi i32 [ %251, %245 ], [ %238, %232 ], [ %251, %280 ], [ %251, %285 ]
  %292 = phi ptr [ %240, %245 ], [ %192, %232 ], [ %241, %280 ], [ %241, %285 ]
  %293 = phi ptr [ %240, %245 ], [ %192, %232 ], [ %240, %280 ], [ %240, %285 ]
  %294 = phi ptr [ %247, %245 ], [ %234, %232 ], [ %247, %280 ], [ %247, %285 ]
  %295 = load ptr, ptr %193, align 4
  %296 = getelementptr inbounds %struct.rb_node, ptr %293, i32 0, i32 2
  store volatile ptr %295, ptr %296, align 4
  %297 = load i32, ptr %295, align 4
  %298 = and i32 %297, 1
  %299 = or i32 %298, %291
  store i32 %299, ptr %295, align 4
  %300 = load i32, ptr %185, align 4
  %301 = and i32 %300, -4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %310, label %303

303:                                              ; preds = %290
  %304 = inttoptr i32 %301 to ptr
  %305 = getelementptr inbounds %struct.rb_node, ptr %304, i32 0, i32 2
  %306 = load ptr, ptr %305, align 4
  %307 = icmp eq ptr %306, %185
  %308 = getelementptr inbounds %struct.rb_node, ptr %304, i32 0, i32 1
  %309 = select i1 %307, ptr %305, ptr %308
  br label %310

310:                                              ; preds = %303, %290
  %311 = phi ptr [ @free_vmap_area_root, %290 ], [ %309, %303 ]
  store volatile ptr %293, ptr %311, align 4
  %312 = icmp eq ptr %294, null
  br i1 %312, label %316, label %313

313:                                              ; preds = %310
  %314 = ptrtoint ptr %292 to i32
  %315 = or i32 %314, 1
  store i32 %315, ptr %294, align 4
  br label %321

316:                                              ; preds = %310
  %317 = load i32, ptr %293, align 4
  %318 = and i32 %317, 1
  %319 = icmp eq i32 %318, 0
  %320 = select i1 %319, ptr null, ptr %292
  br label %321

321:                                              ; preds = %316, %313
  %322 = phi ptr [ null, %313 ], [ %320, %316 ]
  store i32 %300, ptr %293, align 4
  br label %323

323:                                              ; preds = %321, %226, %210, %209
  %324 = phi ptr [ %293, %321 ], [ %218, %226 ], [ %198, %210 ], [ %198, %209 ]
  %325 = phi ptr [ %322, %321 ], [ null, %226 ], [ %213, %210 ], [ null, %209 ]
  %326 = icmp eq ptr %324, null
  br i1 %326, label %360, label %327

327:                                              ; preds = %355, %323
  %328 = phi ptr [ %358, %355 ], [ %324, %323 ]
  %329 = getelementptr i8, ptr %328, i32 -8
  %330 = getelementptr i8, ptr %328, i32 -4
  %331 = load i32, ptr %330, align 4
  %332 = load i32, ptr %329, align 4
  %333 = sub i32 %331, %332
  %334 = getelementptr i8, ptr %328, i32 8
  %335 = load ptr, ptr %334, align 4
  %336 = icmp eq ptr %335, null
  br i1 %336, label %341, label %337

337:                                              ; preds = %327
  %338 = getelementptr i8, ptr %335, i32 20
  %339 = load i32, ptr %338, align 4
  %340 = tail call i32 @llvm.umax.i32(i32 %339, i32 %333) #18
  br label %341

341:                                              ; preds = %337, %327
  %342 = phi i32 [ %333, %327 ], [ %340, %337 ]
  %343 = getelementptr i8, ptr %328, i32 4
  %344 = load ptr, ptr %343, align 4
  %345 = icmp eq ptr %344, null
  br i1 %345, label %350, label %346

346:                                              ; preds = %341
  %347 = getelementptr i8, ptr %344, i32 20
  %348 = load i32, ptr %347, align 4
  %349 = tail call i32 @llvm.umax.i32(i32 %348, i32 %342) #18
  br label %350

350:                                              ; preds = %346, %341
  %351 = phi i32 [ %342, %341 ], [ %349, %346 ]
  %352 = getelementptr i8, ptr %328, i32 20
  %353 = load i32, ptr %352, align 4
  %354 = icmp eq i32 %353, %351
  br i1 %354, label %360, label %355

355:                                              ; preds = %350
  store i32 %351, ptr %352, align 4
  %356 = load i32, ptr %328, align 4
  %357 = and i32 %356, -4
  %358 = inttoptr i32 %357 to ptr
  %359 = icmp eq i32 %357, 0
  br i1 %359, label %360, label %327

360:                                              ; preds = %355, %350, %323
  %361 = icmp eq ptr %325, null
  br i1 %361, label %363, label %362

362:                                              ; preds = %360
  tail call void @__rb_erase_color(ptr noundef nonnull %325, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #18
  br label %363

363:                                              ; preds = %362, %360
  %364 = getelementptr inbounds %struct.vmap_area, ptr %173, i32 0, i32 3
  %365 = getelementptr inbounds %struct.vmap_area, ptr %173, i32 0, i32 3, i32 1
  %366 = load ptr, ptr %365, align 4
  %367 = load ptr, ptr %364, align 4
  %368 = getelementptr inbounds %struct.list_head, ptr %367, i32 0, i32 1
  store ptr %366, ptr %368, align 4
  store volatile ptr %367, ptr %366, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %364, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %365, align 4
  store i32 %187, ptr %185, align 4
  br label %369

369:                                              ; preds = %363, %189, %183
  %370 = getelementptr inbounds %struct.vmap_area, ptr %173, i32 0, i32 1
  %371 = load i32, ptr %370, align 4
  store i32 %371, ptr %179, align 4
  %372 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %372, ptr noundef %173) #18
  br label %393

373:                                              ; preds = %177, %171
  br i1 %172, label %393, label %374

374:                                              ; preds = %373, %160
  %375 = phi ptr [ %83, %160 ], [ %173, %373 ]
  br i1 %157, label %379, label %376

376:                                              ; preds = %374
  %377 = getelementptr i8, ptr %134, i32 16
  %378 = load ptr, ptr %377, align 4
  br label %379

379:                                              ; preds = %376, %374, %124
  %380 = phi ptr [ %375, %376 ], [ %375, %374 ], [ %83, %124 ]
  %381 = phi ptr [ %149, %376 ], [ %156, %374 ], [ @free_vmap_area_root, %124 ]
  %382 = phi ptr [ %134, %376 ], [ %134, %374 ], [ null, %124 ]
  %383 = phi ptr [ %378, %376 ], [ %155, %374 ], [ @free_vmap_area_list, %124 ]
  %384 = getelementptr inbounds %struct.vmap_area, ptr %380, i32 0, i32 2
  %385 = ptrtoint ptr %382 to i32
  store i32 %385, ptr %384, align 4
  %386 = getelementptr inbounds %struct.vmap_area, ptr %380, i32 0, i32 2, i32 1
  store ptr null, ptr %386, align 4
  %387 = getelementptr inbounds %struct.vmap_area, ptr %380, i32 0, i32 2, i32 2
  store ptr null, ptr %387, align 4
  store ptr %384, ptr %381, align 4
  tail call void @__rb_insert_augmented(ptr noundef %384, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #18
  %388 = getelementptr inbounds %struct.vmap_area, ptr %380, i32 0, i32 4
  store i32 0, ptr %388, align 4
  %389 = getelementptr inbounds %struct.vmap_area, ptr %380, i32 0, i32 3
  %390 = load ptr, ptr %383, align 4
  %391 = getelementptr inbounds %struct.list_head, ptr %390, i32 0, i32 1
  store ptr %389, ptr %391, align 4
  store ptr %390, ptr %389, align 4
  %392 = getelementptr inbounds %struct.vmap_area, ptr %380, i32 0, i32 3, i32 1
  store ptr %383, ptr %392, align 4
  store volatile ptr %389, ptr %383, align 4
  br label %393

393:                                              ; preds = %379, %373, %369
  %394 = phi ptr [ %380, %379 ], [ %173, %373 ], [ %178, %369 ]
  %395 = icmp eq ptr %394, null
  br i1 %395, label %431, label %396

396:                                              ; preds = %393
  %397 = getelementptr inbounds %struct.vmap_area, ptr %394, i32 0, i32 2
  br label %398

398:                                              ; preds = %426, %396
  %399 = phi ptr [ %429, %426 ], [ %397, %396 ]
  %400 = getelementptr i8, ptr %399, i32 -8
  %401 = getelementptr i8, ptr %399, i32 -4
  %402 = load i32, ptr %401, align 4
  %403 = load i32, ptr %400, align 4
  %404 = sub i32 %402, %403
  %405 = getelementptr i8, ptr %399, i32 8
  %406 = load ptr, ptr %405, align 4
  %407 = icmp eq ptr %406, null
  br i1 %407, label %412, label %408

408:                                              ; preds = %398
  %409 = getelementptr i8, ptr %406, i32 20
  %410 = load i32, ptr %409, align 4
  %411 = tail call i32 @llvm.umax.i32(i32 %410, i32 %404) #18
  br label %412

412:                                              ; preds = %408, %398
  %413 = phi i32 [ %404, %398 ], [ %411, %408 ]
  %414 = getelementptr i8, ptr %399, i32 4
  %415 = load ptr, ptr %414, align 4
  %416 = icmp eq ptr %415, null
  br i1 %416, label %421, label %417

417:                                              ; preds = %412
  %418 = getelementptr i8, ptr %415, i32 20
  %419 = load i32, ptr %418, align 4
  %420 = tail call i32 @llvm.umax.i32(i32 %419, i32 %413) #18
  br label %421

421:                                              ; preds = %417, %412
  %422 = phi i32 [ %413, %412 ], [ %420, %417 ]
  %423 = getelementptr i8, ptr %399, i32 20
  %424 = load i32, ptr %423, align 4
  %425 = icmp eq i32 %424, %422
  br i1 %425, label %431, label %426

426:                                              ; preds = %421
  store i32 %422, ptr %423, align 4
  %427 = load i32, ptr %399, align 4
  %428 = and i32 %427, -4
  %429 = inttoptr i32 %428 to ptr
  %430 = icmp eq i32 %428, 0
  br i1 %430, label %431, label %398

431:                                              ; preds = %426, %421, %393, %152, %147
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %432 = load i16, ptr @free_vmap_area_lock, align 4
  %433 = add i16 %432, 1
  store i16 %433, ptr @free_vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %434 = inttoptr i32 %108 to ptr
  br label %446

435:                                              ; preds = %93
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !42
  %436 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %437 = inttoptr i32 %436 to ptr
  %438 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %437) #15, !srcloc !38
  %439 = add i32 %438, ptrtoint (ptr @vmap_block_queue to i32)
  %440 = inttoptr i32 %439 to ptr
  tail call void @_raw_spin_lock(ptr noundef %440) #18
  %441 = getelementptr inbounds %struct.vmap_block_queue, ptr %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.vmap_block_queue, ptr %440, i32 0, i32 1, i32 1
  %443 = load ptr, ptr %442, align 4
  store ptr %441, ptr %103, align 8
  store ptr %443, ptr %104, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !43
  store volatile ptr %103, ptr %443, align 4
  store ptr %103, ptr %442, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %444 = load i16, ptr %440, align 4
  %445 = add i16 %444, 1
  store i16 %445, ptr %440, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !44
  br label %446

446:                                              ; preds = %435, %431, %85, %71
  %447 = phi ptr [ %72, %71 ], [ %83, %85 ], [ %434, %431 ], [ %89, %435 ]
  %448 = icmp ugt ptr %447, inttoptr (i32 -4096 to ptr)
  br i1 %448, label %478, label %449

449:                                              ; preds = %446, %11
  %450 = phi ptr [ null, %11 ], [ %447, %446 ]
  %451 = ptrtoint ptr %450 to i32
  br label %462

452:                                              ; preds = %3
  %453 = load ptr, ptr @high_memory, align 4
  %454 = ptrtoint ptr %453 to i32
  %455 = add i32 %454, 8388608
  %456 = and i32 %455, -8388608
  %457 = tail call fastcc ptr @alloc_vmap_area(i32 noundef %4, i32 noundef 4096, i32 noundef %456, i32 noundef -8388608, i32 noundef 3264)
  %458 = icmp ugt ptr %457, inttoptr (i32 -4096 to ptr)
  br i1 %458, label %478, label %459

459:                                              ; preds = %452
  %460 = load i32, ptr %457, align 4
  %461 = inttoptr i32 %460 to ptr
  br label %462

462:                                              ; preds = %459, %449
  %463 = phi i32 [ %451, %449 ], [ %460, %459 ]
  %464 = phi ptr [ %450, %449 ], [ %461, %459 ]
  %465 = add i32 %463, %4
  %466 = load i32, ptr @pgprot_kernel, align 4
  %467 = or i32 %466, 512
  %468 = tail call i32 @vmap_pages_range_noflush(i32 noundef %463, i32 noundef %465, i32 noundef %467, ptr noundef %0, i32 noundef 12) #18
  %469 = load i32, ptr @cacheid, align 4
  %470 = and i32 %469, 2
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %474

472:                                              ; preds = %462
  %473 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %473() #18
  br label %475

474:                                              ; preds = %462
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !14
  br label %475

475:                                              ; preds = %474, %472
  %476 = icmp slt i32 %468, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %475
  tail call void @vm_unmap_ram(ptr noundef %464, i32 noundef %1)
  br label %478

478:                                              ; preds = %477, %475, %452, %446, %74
  %479 = phi ptr [ null, %477 ], [ null, %446 ], [ %464, %475 ], [ null, %74 ], [ null, %452 ]
  ret ptr %479
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @alloc_vmap_area(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !annotation !45
  %7 = icmp eq i32 %0, 0
  br i1 %7, label %8, label %9, !prof !11

8:                                                ; preds = %5
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1527, 0\0A.popsection", ""() #18, !srcloc !46
  unreachable

9:                                                ; preds = %5
  %10 = and i32 %0, 4095
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12, !prof !9

12:                                               ; preds = %9
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1528, 0\0A.popsection", ""() #18, !srcloc !47
  unreachable

13:                                               ; preds = %9
  %14 = tail call i32 @llvm.ctpop.i32(i32 %1) #18, !range !32
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %17, label %16, !prof !48

16:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1529, 0\0A.popsection", ""() #18, !srcloc !49
  unreachable

17:                                               ; preds = %13
  %18 = load i1, ptr @vmap_initialized, align 1
  br i1 %18, label %19, label %499, !prof !9

19:                                               ; preds = %17
  %20 = and i32 %4, 782048
  %21 = load ptr, ptr @vmap_area_cachep, align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %21, i32 noundef %20) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %499, label %24, !prof !11

24:                                               ; preds = %19
  %25 = add i32 %1, -1
  %26 = sub i32 0, %1
  br label %27

27:                                               ; preds = %483, %24
  %28 = phi i1 [ true, %24 ], [ %484, %483 ]
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !50
  %29 = call i32 @llvm.read_register.i32(metadata !0) #18
  %30 = inttoptr i32 %29 to ptr
  %31 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %30) #15, !srcloc !38
  %32 = add i32 %31, ptrtoint (ptr @ne_fit_preload_node to i32)
  %33 = inttoptr i32 %32 to ptr
  %34 = load volatile ptr, ptr %33, align 4
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !51
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  call void @_raw_spin_lock(ptr noundef nonnull @free_vmap_area_lock) #18
  br label %52

37:                                               ; preds = %27
  %38 = load ptr, ptr @vmap_area_cachep, align 4
  %39 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %38, i32 noundef %20) #18
  call void @_raw_spin_lock(ptr noundef nonnull @free_vmap_area_lock) #18
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = call i32 @llvm.read_register.i32(metadata !0) #18
  %43 = inttoptr i32 %42 to ptr
  %44 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %43) #15, !srcloc !38
  %45 = add i32 %44, ptrtoint (ptr @ne_fit_preload_node to i32)
  %46 = inttoptr i32 %45 to ptr
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store ptr %39, ptr %46, align 4
  br label %52

50:                                               ; preds = %41
  %51 = load ptr, ptr @vmap_area_cachep, align 4
  call void @kmem_cache_free(ptr noundef %51, ptr noundef nonnull %39) #18
  br label %52

52:                                               ; preds = %50, %49, %37, %36
  %53 = load ptr, ptr @free_vmap_area_root, align 4
  br label %54

54:                                               ; preds = %141, %52
  %55 = phi ptr [ %128, %141 ], [ %53, %52 ]
  %56 = phi i32 [ %142, %141 ], [ %2, %52 ]
  br label %59

57:                                               ; preds = %106, %75
  %58 = phi ptr [ null, %106 ], [ %67, %75 ]
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi ptr [ %55, %54 ], [ %58, %57 ]
  br label %61

61:                                               ; preds = %103, %59
  %62 = phi ptr [ %95, %103 ], [ %60, %59 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %416, label %64

64:                                               ; preds = %61
  %65 = getelementptr i8, ptr %62, i32 -8
  %66 = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  %69 = getelementptr i8, ptr %67, i32 -8
  %70 = icmp eq ptr %69, null
  %71 = or i1 %68, %70
  br i1 %71, label %75, label %72

72:                                               ; preds = %64
  %73 = getelementptr i8, ptr %67, i32 20
  %74 = load i32, ptr %73, align 4
  br label %75

75:                                               ; preds = %72, %64
  %76 = phi i32 [ %74, %72 ], [ 0, %64 ]
  %77 = icmp uge i32 %76, %0
  %78 = load i32, ptr %65, align 4
  %79 = icmp ult i32 %56, %78
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %57, label %81

81:                                               ; preds = %75
  %82 = call i32 @llvm.umax.i32(i32 %78, i32 %56) #18
  %83 = add i32 %82, %25
  %84 = and i32 %83, %26
  %85 = add i32 %84, %0
  %86 = icmp ult i32 %85, %84
  %87 = icmp ult i32 %84, %56
  %88 = or i1 %87, %86
  br i1 %88, label %93, label %89

89:                                               ; preds = %81
  %90 = getelementptr i8, ptr %62, i32 -4
  %91 = load i32, ptr %90, align 4
  %92 = icmp ugt i32 %85, %91
  br i1 %92, label %93, label %146

93:                                               ; preds = %89, %81
  %94 = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  %97 = getelementptr i8, ptr %95, i32 -8
  %98 = icmp eq ptr %97, null
  %99 = or i1 %96, %98
  br i1 %99, label %103, label %100

100:                                              ; preds = %93
  %101 = getelementptr i8, ptr %95, i32 20
  %102 = load i32, ptr %101, align 4
  br label %103

103:                                              ; preds = %100, %93
  %104 = phi i32 [ %102, %100 ], [ 0, %93 ]
  %105 = icmp ult i32 %104, %0
  br i1 %105, label %106, label %61

106:                                              ; preds = %136, %103
  %107 = phi ptr [ %110, %136 ], [ %62, %103 ]
  %108 = load i32, ptr %107, align 4
  %109 = and i32 %108, -4
  %110 = inttoptr i32 %109 to ptr
  %111 = icmp eq i32 %109, 0
  br i1 %111, label %57, label %112

112:                                              ; preds = %106
  %113 = getelementptr i8, ptr %110, i32 -8
  %114 = load i32, ptr %113, align 4
  %115 = call i32 @llvm.umax.i32(i32 %114, i32 %56) #18
  %116 = add i32 %115, %25
  %117 = and i32 %116, %26
  %118 = add i32 %117, %0
  %119 = icmp ult i32 %118, %117
  %120 = icmp ult i32 %117, %56
  %121 = or i1 %120, %119
  br i1 %121, label %126, label %122

122:                                              ; preds = %112
  %123 = getelementptr i8, ptr %110, i32 -4
  %124 = load i32, ptr %123, align 4
  %125 = icmp ugt i32 %118, %124
  br i1 %125, label %126, label %143

126:                                              ; preds = %122, %112
  %127 = getelementptr inbounds %struct.rb_node, ptr %110, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  %130 = getelementptr i8, ptr %128, i32 -8
  %131 = icmp eq ptr %130, null
  %132 = or i1 %129, %131
  br i1 %132, label %136, label %133

133:                                              ; preds = %126
  %134 = getelementptr i8, ptr %128, i32 20
  %135 = load i32, ptr %134, align 4
  br label %136

136:                                              ; preds = %133, %126
  %137 = phi i32 [ %135, %133 ], [ 0, %126 ]
  %138 = icmp ult i32 %137, %0
  %139 = icmp ugt i32 %56, %114
  %140 = select i1 %138, i1 true, i1 %139
  br i1 %140, label %106, label %141

141:                                              ; preds = %136
  %142 = add i32 %114, 1
  br label %54

143:                                              ; preds = %122
  %144 = inttoptr i32 %109 to ptr
  %145 = getelementptr i8, ptr %144, i32 -8
  br label %146

146:                                              ; preds = %143, %89
  %147 = phi i32 [ %114, %143 ], [ %78, %89 ]
  %148 = phi ptr [ %145, %143 ], [ %65, %89 ]
  %149 = icmp eq ptr %148, null
  br i1 %149, label %416, label %150, !prof !11

150:                                              ; preds = %146
  %151 = call i32 @llvm.umax.i32(i32 %147, i32 %2) #18
  %152 = add i32 %151, %25
  %153 = and i32 %152, %26
  %154 = add i32 %153, %0
  %155 = icmp ugt i32 %154, %3
  br i1 %155, label %416, label %156

156:                                              ; preds = %150
  %157 = icmp ugt i32 %147, %153
  br i1 %157, label %162, label %158

158:                                              ; preds = %156
  %159 = getelementptr inbounds %struct.vmap_area, ptr %148, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = icmp ugt i32 %154, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %158, %156
  %163 = load i1, ptr @__alloc_vmap_area.__already_done, align 1
  br i1 %163, label %416, label %164, !prof !9

164:                                              ; preds = %162
  store i1 true, ptr @__alloc_vmap_area.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1454, i32 noundef 9, ptr noundef null) #18
  br label %416

165:                                              ; preds = %158
  %166 = icmp eq i32 %147, %153
  %167 = icmp eq i32 %160, %154
  %168 = select i1 %167, i32 1, i32 2
  %169 = select i1 %167, i32 3, i32 4
  %170 = select i1 %166, i32 %168, i32 %169
  switch i32 %170, label %354 [
    i32 1, label %171
    i32 2, label %351
    i32 3, label %353
  ]

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.vmap_area, ptr %148, i32 0, i32 2
  %173 = load i32, ptr %172, align 4
  %174 = ptrtoint ptr %172 to i32
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %178, !prof !11

176:                                              ; preds = %171
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #18
  %177 = load ptr, ptr @vmap_area_cachep, align 4
  call void @kmem_cache_free(ptr noundef %177, ptr noundef nonnull %148) #18
  br label %416

178:                                              ; preds = %171
  %179 = getelementptr inbounds %struct.vmap_area, ptr %148, i32 0, i32 2, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.vmap_area, ptr %148, i32 0, i32 2, i32 2
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %202

184:                                              ; preds = %178
  %185 = and i32 %173, -4
  %186 = inttoptr i32 %185 to ptr
  %187 = icmp eq i32 %185, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.rb_node, ptr %186, i32 0, i32 2
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, %172
  %192 = getelementptr inbounds %struct.rb_node, ptr %186, i32 0, i32 1
  %193 = select i1 %191, ptr %189, ptr %192
  br label %194

194:                                              ; preds = %188, %184
  %195 = phi ptr [ @free_vmap_area_root, %184 ], [ %193, %188 ]
  store volatile ptr %180, ptr %195, align 4
  %196 = icmp eq ptr %180, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %194
  store i32 %173, ptr %180, align 4
  br label %311

198:                                              ; preds = %194
  %199 = and i32 %173, 1
  %200 = icmp eq i32 %199, 0
  %201 = select i1 %200, ptr null, ptr %186
  br label %311

202:                                              ; preds = %178
  %203 = icmp eq ptr %180, null
  br i1 %203, label %204, label %216

204:                                              ; preds = %202
  store i32 %173, ptr %182, align 4
  %205 = and i32 %173, -4
  %206 = inttoptr i32 %205 to ptr
  %207 = icmp eq i32 %205, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.rb_node, ptr %206, i32 0, i32 2
  %210 = load ptr, ptr %209, align 4
  %211 = icmp eq ptr %210, %172
  %212 = getelementptr inbounds %struct.rb_node, ptr %206, i32 0, i32 1
  %213 = select i1 %211, ptr %209, ptr %212
  br label %214

214:                                              ; preds = %208, %204
  %215 = phi ptr [ @free_vmap_area_root, %204 ], [ %213, %208 ]
  store volatile ptr %182, ptr %215, align 4
  br label %311

216:                                              ; preds = %202
  %217 = getelementptr inbounds %struct.rb_node, ptr %180, i32 0, i32 2
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %227

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.rb_node, ptr %180, i32 0, i32 1
  %222 = load ptr, ptr %221, align 4
  %223 = getelementptr %struct.vmap_area, ptr %148, i32 0, i32 4
  %224 = load i32, ptr %223, align 4
  %225 = getelementptr i8, ptr %180, i32 20
  store i32 %224, ptr %225, align 4
  %226 = ptrtoint ptr %180 to i32
  br label %278

227:                                              ; preds = %227, %216
  %228 = phi ptr [ %231, %227 ], [ %218, %216 ]
  %229 = phi ptr [ %228, %227 ], [ %180, %216 ]
  %230 = getelementptr inbounds %struct.rb_node, ptr %228, i32 0, i32 2
  %231 = load ptr, ptr %230, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %227

233:                                              ; preds = %227
  %234 = getelementptr inbounds %struct.rb_node, ptr %228, i32 0, i32 1
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.rb_node, ptr %229, i32 0, i32 2
  store volatile ptr %235, ptr %236, align 4
  store volatile ptr %180, ptr %234, align 4
  %237 = load i32, ptr %180, align 4
  %238 = and i32 %237, 1
  %239 = ptrtoint ptr %228 to i32
  %240 = or i32 %238, %239
  store i32 %240, ptr %180, align 4
  %241 = getelementptr %struct.vmap_area, ptr %148, i32 0, i32 4
  %242 = load i32, ptr %241, align 4
  %243 = getelementptr i8, ptr %228, i32 20
  store i32 %242, ptr %243, align 4
  %244 = icmp eq ptr %229, %228
  br i1 %244, label %278, label %245

245:                                              ; preds = %273, %233
  %246 = phi ptr [ %276, %273 ], [ %229, %233 ]
  %247 = getelementptr i8, ptr %246, i32 -8
  %248 = getelementptr i8, ptr %246, i32 -4
  %249 = load i32, ptr %248, align 4
  %250 = load i32, ptr %247, align 4
  %251 = sub i32 %249, %250
  %252 = getelementptr i8, ptr %246, i32 8
  %253 = load ptr, ptr %252, align 4
  %254 = icmp eq ptr %253, null
  br i1 %254, label %259, label %255

255:                                              ; preds = %245
  %256 = getelementptr i8, ptr %253, i32 20
  %257 = load i32, ptr %256, align 4
  %258 = call i32 @llvm.umax.i32(i32 %257, i32 %251) #18
  br label %259

259:                                              ; preds = %255, %245
  %260 = phi i32 [ %251, %245 ], [ %258, %255 ]
  %261 = getelementptr i8, ptr %246, i32 4
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %268, label %264

264:                                              ; preds = %259
  %265 = getelementptr i8, ptr %262, i32 20
  %266 = load i32, ptr %265, align 4
  %267 = call i32 @llvm.umax.i32(i32 %266, i32 %260) #18
  br label %268

268:                                              ; preds = %264, %259
  %269 = phi i32 [ %260, %259 ], [ %267, %264 ]
  %270 = getelementptr i8, ptr %246, i32 20
  %271 = load i32, ptr %270, align 4
  %272 = icmp eq i32 %271, %269
  br i1 %272, label %278, label %273

273:                                              ; preds = %268
  store i32 %269, ptr %270, align 4
  %274 = load i32, ptr %246, align 4
  %275 = and i32 %274, -4
  %276 = inttoptr i32 %275 to ptr
  %277 = icmp eq ptr %228, %276
  br i1 %277, label %278, label %245

278:                                              ; preds = %273, %268, %233, %220
  %279 = phi i32 [ %239, %233 ], [ %226, %220 ], [ %239, %268 ], [ %239, %273 ]
  %280 = phi ptr [ %228, %233 ], [ %180, %220 ], [ %229, %268 ], [ %229, %273 ]
  %281 = phi ptr [ %228, %233 ], [ %180, %220 ], [ %228, %268 ], [ %228, %273 ]
  %282 = phi ptr [ %235, %233 ], [ %222, %220 ], [ %235, %268 ], [ %235, %273 ]
  %283 = load ptr, ptr %181, align 4
  %284 = getelementptr inbounds %struct.rb_node, ptr %281, i32 0, i32 2
  store volatile ptr %283, ptr %284, align 4
  %285 = load i32, ptr %283, align 4
  %286 = and i32 %285, 1
  %287 = or i32 %286, %279
  store i32 %287, ptr %283, align 4
  %288 = load i32, ptr %172, align 4
  %289 = and i32 %288, -4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %298, label %291

291:                                              ; preds = %278
  %292 = inttoptr i32 %289 to ptr
  %293 = getelementptr inbounds %struct.rb_node, ptr %292, i32 0, i32 2
  %294 = load ptr, ptr %293, align 4
  %295 = icmp eq ptr %294, %172
  %296 = getelementptr inbounds %struct.rb_node, ptr %292, i32 0, i32 1
  %297 = select i1 %295, ptr %293, ptr %296
  br label %298

298:                                              ; preds = %291, %278
  %299 = phi ptr [ @free_vmap_area_root, %278 ], [ %297, %291 ]
  store volatile ptr %281, ptr %299, align 4
  %300 = icmp eq ptr %282, null
  br i1 %300, label %304, label %301

301:                                              ; preds = %298
  %302 = ptrtoint ptr %280 to i32
  %303 = or i32 %302, 1
  store i32 %303, ptr %282, align 4
  br label %309

304:                                              ; preds = %298
  %305 = load i32, ptr %281, align 4
  %306 = and i32 %305, 1
  %307 = icmp eq i32 %306, 0
  %308 = select i1 %307, ptr null, ptr %280
  br label %309

309:                                              ; preds = %304, %301
  %310 = phi ptr [ null, %301 ], [ %308, %304 ]
  store i32 %288, ptr %281, align 4
  br label %311

311:                                              ; preds = %309, %214, %198, %197
  %312 = phi ptr [ %281, %309 ], [ %206, %214 ], [ %186, %198 ], [ %186, %197 ]
  %313 = phi ptr [ %310, %309 ], [ null, %214 ], [ %201, %198 ], [ null, %197 ]
  %314 = icmp eq ptr %312, null
  br i1 %314, label %348, label %315

315:                                              ; preds = %343, %311
  %316 = phi ptr [ %346, %343 ], [ %312, %311 ]
  %317 = getelementptr i8, ptr %316, i32 -8
  %318 = getelementptr i8, ptr %316, i32 -4
  %319 = load i32, ptr %318, align 4
  %320 = load i32, ptr %317, align 4
  %321 = sub i32 %319, %320
  %322 = getelementptr i8, ptr %316, i32 8
  %323 = load ptr, ptr %322, align 4
  %324 = icmp eq ptr %323, null
  br i1 %324, label %329, label %325

325:                                              ; preds = %315
  %326 = getelementptr i8, ptr %323, i32 20
  %327 = load i32, ptr %326, align 4
  %328 = call i32 @llvm.umax.i32(i32 %327, i32 %321) #18
  br label %329

329:                                              ; preds = %325, %315
  %330 = phi i32 [ %321, %315 ], [ %328, %325 ]
  %331 = getelementptr i8, ptr %316, i32 4
  %332 = load ptr, ptr %331, align 4
  %333 = icmp eq ptr %332, null
  br i1 %333, label %338, label %334

334:                                              ; preds = %329
  %335 = getelementptr i8, ptr %332, i32 20
  %336 = load i32, ptr %335, align 4
  %337 = call i32 @llvm.umax.i32(i32 %336, i32 %330) #18
  br label %338

338:                                              ; preds = %334, %329
  %339 = phi i32 [ %330, %329 ], [ %337, %334 ]
  %340 = getelementptr i8, ptr %316, i32 20
  %341 = load i32, ptr %340, align 4
  %342 = icmp eq i32 %341, %339
  br i1 %342, label %348, label %343

343:                                              ; preds = %338
  store i32 %339, ptr %340, align 4
  %344 = load i32, ptr %316, align 4
  %345 = and i32 %344, -4
  %346 = inttoptr i32 %345 to ptr
  %347 = icmp eq i32 %345, 0
  br i1 %347, label %348, label %315

348:                                              ; preds = %343, %338, %311
  %349 = icmp eq ptr %313, null
  br i1 %349, label %370, label %350

350:                                              ; preds = %348
  call void @__rb_erase_color(ptr noundef nonnull %313, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #18
  br label %370

351:                                              ; preds = %165
  %352 = add i32 %147, %0
  store i32 %352, ptr %148, align 4
  br label %377

353:                                              ; preds = %165
  store i32 %153, ptr %159, align 4
  br label %377

354:                                              ; preds = %165
  %355 = call i32 @llvm.read_register.i32(metadata !0) #18
  %356 = inttoptr i32 %355 to ptr
  %357 = call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %356) #15, !srcloc !38
  %358 = add i32 %357, ptrtoint (ptr @ne_fit_preload_node to i32)
  %359 = inttoptr i32 %358 to ptr
  %360 = load ptr, ptr %359, align 4
  store ptr null, ptr %359, align 4
  %361 = icmp eq ptr %360, null
  br i1 %361, label %362, label %366, !prof !11

362:                                              ; preds = %354
  %363 = load ptr, ptr @vmap_area_cachep, align 4
  %364 = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %363, i32 noundef 2048) #18
  %365 = icmp eq ptr %364, null
  br i1 %365, label %416, label %366

366:                                              ; preds = %362, %354
  %367 = phi ptr [ %364, %362 ], [ %360, %354 ]
  %368 = load i32, ptr %148, align 4
  store i32 %368, ptr %367, align 4
  %369 = getelementptr inbounds %struct.vmap_area, ptr %367, i32 0, i32 1
  store i32 %153, ptr %369, align 4
  store i32 %154, ptr %148, align 4
  br label %377

370:                                              ; preds = %350, %348
  %371 = getelementptr inbounds %struct.vmap_area, ptr %148, i32 0, i32 3
  %372 = getelementptr inbounds %struct.vmap_area, ptr %148, i32 0, i32 3, i32 1
  %373 = load ptr, ptr %372, align 4
  %374 = load ptr, ptr %371, align 4
  %375 = getelementptr inbounds %struct.list_head, ptr %374, i32 0, i32 1
  store ptr %373, ptr %375, align 4
  store volatile ptr %374, ptr %373, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %371, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %372, align 4
  store i32 %174, ptr %172, align 4
  %376 = load ptr, ptr @vmap_area_cachep, align 4
  call void @kmem_cache_free(ptr noundef %376, ptr noundef nonnull %148) #18
  br label %416

377:                                              ; preds = %366, %353, %351
  %378 = phi ptr [ %367, %366 ], [ null, %353 ], [ null, %351 ]
  %379 = getelementptr inbounds %struct.vmap_area, ptr %148, i32 0, i32 2
  br label %380

380:                                              ; preds = %408, %377
  %381 = phi ptr [ %411, %408 ], [ %379, %377 ]
  %382 = getelementptr i8, ptr %381, i32 -8
  %383 = getelementptr i8, ptr %381, i32 -4
  %384 = load i32, ptr %383, align 4
  %385 = load i32, ptr %382, align 4
  %386 = sub i32 %384, %385
  %387 = getelementptr i8, ptr %381, i32 8
  %388 = load ptr, ptr %387, align 4
  %389 = icmp eq ptr %388, null
  br i1 %389, label %394, label %390

390:                                              ; preds = %380
  %391 = getelementptr i8, ptr %388, i32 20
  %392 = load i32, ptr %391, align 4
  %393 = call i32 @llvm.umax.i32(i32 %392, i32 %386) #18
  br label %394

394:                                              ; preds = %390, %380
  %395 = phi i32 [ %386, %380 ], [ %393, %390 ]
  %396 = getelementptr i8, ptr %381, i32 4
  %397 = load ptr, ptr %396, align 4
  %398 = icmp eq ptr %397, null
  br i1 %398, label %403, label %399

399:                                              ; preds = %394
  %400 = getelementptr i8, ptr %397, i32 20
  %401 = load i32, ptr %400, align 4
  %402 = call i32 @llvm.umax.i32(i32 %401, i32 %395) #18
  br label %403

403:                                              ; preds = %399, %394
  %404 = phi i32 [ %395, %394 ], [ %402, %399 ]
  %405 = getelementptr i8, ptr %381, i32 20
  %406 = load i32, ptr %405, align 4
  %407 = icmp eq i32 %406, %404
  br i1 %407, label %413, label %408

408:                                              ; preds = %403
  store i32 %404, ptr %405, align 4
  %409 = load i32, ptr %381, align 4
  %410 = and i32 %409, -4
  %411 = inttoptr i32 %410 to ptr
  %412 = icmp eq i32 %410, 0
  br i1 %412, label %413, label %380

413:                                              ; preds = %408, %403
  %414 = icmp eq ptr %378, null
  br i1 %414, label %416, label %415

415:                                              ; preds = %413
  call fastcc void @insert_vmap_area_augment(ptr noundef nonnull %378, ptr noundef %379) #18
  br label %416

416:                                              ; preds = %415, %413, %370, %362, %176, %164, %162, %150, %146, %61
  %417 = phi i32 [ %3, %146 ], [ %3, %150 ], [ %3, %164 ], [ %3, %362 ], [ %153, %413 ], [ %153, %415 ], [ %153, %370 ], [ %153, %176 ], [ %3, %162 ], [ %3, %61 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %418 = load i16, ptr @free_vmap_area_lock, align 4
  %419 = add i16 %418, 1
  store i16 %419, ptr @free_vmap_area_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %420 = icmp eq i32 %417, %3
  br i1 %420, label %481, label %421, !prof !11

421:                                              ; preds = %416
  store i32 %417, ptr %22, align 8
  %422 = add i32 %417, %0
  %423 = getelementptr inbounds %struct.vmap_area, ptr %22, i32 0, i32 1
  store i32 %422, ptr %423, align 4
  %424 = getelementptr inbounds %struct.vmap_area, ptr %22, i32 0, i32 4
  store ptr null, ptr %424, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #18
  %425 = load ptr, ptr @vmap_area_root, align 4
  %426 = icmp eq ptr %425, null
  br i1 %426, label %455, label %427, !prof !11

427:                                              ; preds = %442, %421
  %428 = phi ptr [ %444, %442 ], [ %425, %421 ]
  %429 = getelementptr i8, ptr %428, i32 -8
  %430 = getelementptr i8, ptr %428, i32 -4
  %431 = load i32, ptr %430, align 4
  %432 = icmp ult i32 %417, %431
  %433 = load i32, ptr %429, align 4
  %434 = icmp ugt i32 %422, %433
  br i1 %432, label %435, label %438

435:                                              ; preds = %427
  br i1 %434, label %441, label %436

436:                                              ; preds = %435
  %437 = getelementptr inbounds %struct.rb_node, ptr %428, i32 0, i32 2
  br label %442

438:                                              ; preds = %427
  br i1 %434, label %439, label %441

439:                                              ; preds = %438
  %440 = getelementptr inbounds %struct.rb_node, ptr %428, i32 0, i32 1
  br label %442

441:                                              ; preds = %438, %435
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %417, i32 noundef %422, i32 noundef %433, i32 noundef %431) #18
  br label %467

442:                                              ; preds = %439, %436
  %443 = phi ptr [ %437, %436 ], [ %440, %439 ]
  %444 = load ptr, ptr %443, align 4
  %445 = icmp eq ptr %444, null
  br i1 %445, label %446, label %427

446:                                              ; preds = %442
  %447 = icmp eq ptr %443, null
  br i1 %447, label %467, label %448

448:                                              ; preds = %446
  %449 = getelementptr i8, ptr %428, i32 12
  %450 = getelementptr inbounds %struct.rb_node, ptr %428, i32 0, i32 1
  %451 = icmp eq ptr %450, %443
  br i1 %451, label %455, label %452

452:                                              ; preds = %448
  %453 = getelementptr i8, ptr %428, i32 16
  %454 = load ptr, ptr %453, align 4
  br label %455

455:                                              ; preds = %452, %448, %421
  %456 = phi ptr [ %443, %452 ], [ %450, %448 ], [ @vmap_area_root, %421 ]
  %457 = phi ptr [ %428, %452 ], [ %428, %448 ], [ null, %421 ]
  %458 = phi ptr [ %454, %452 ], [ %449, %448 ], [ @vmap_area_list, %421 ]
  %459 = getelementptr inbounds %struct.vmap_area, ptr %22, i32 0, i32 2
  %460 = ptrtoint ptr %457 to i32
  store i32 %460, ptr %459, align 8
  %461 = getelementptr inbounds %struct.vmap_area, ptr %22, i32 0, i32 2, i32 1
  store ptr null, ptr %461, align 4
  %462 = getelementptr inbounds %struct.vmap_area, ptr %22, i32 0, i32 2, i32 2
  store ptr null, ptr %462, align 8
  store ptr %459, ptr %456, align 4
  call void @rb_insert_color(ptr noundef %459, ptr noundef nonnull @vmap_area_root) #18
  %463 = getelementptr inbounds %struct.vmap_area, ptr %22, i32 0, i32 3
  %464 = load ptr, ptr %458, align 4
  %465 = getelementptr inbounds %struct.list_head, ptr %464, i32 0, i32 1
  store ptr %463, ptr %465, align 4
  store ptr %464, ptr %463, align 4
  %466 = getelementptr inbounds %struct.vmap_area, ptr %22, i32 0, i32 3, i32 1
  store ptr %458, ptr %466, align 8
  store volatile ptr %463, ptr %458, align 4
  br label %467

467:                                              ; preds = %455, %446, %441
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %468 = load i16, ptr @vmap_area_lock, align 4
  %469 = add i16 %468, 1
  store i16 %469, ptr @vmap_area_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %470 = load i32, ptr %22, align 8
  %471 = and i32 %470, %25
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %474, label %473, !prof !9

473:                                              ; preds = %467
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1567, 0\0A.popsection", ""() #18, !srcloc !52
  unreachable

474:                                              ; preds = %467
  %475 = icmp ult i32 %470, %2
  br i1 %475, label %476, label %477, !prof !11

476:                                              ; preds = %474
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1568, 0\0A.popsection", ""() #18, !srcloc !53
  unreachable

477:                                              ; preds = %474
  %478 = load i32, ptr %423, align 4
  %479 = icmp ugt i32 %478, %3
  br i1 %479, label %480, label %499, !prof !11

480:                                              ; preds = %477
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1569, 0\0A.popsection", ""() #18, !srcloc !54
  unreachable

481:                                              ; preds = %416
  br i1 %28, label %482, label %485

482:                                              ; preds = %481
  call fastcc void @purge_vmap_area_lazy()
  br label %483

483:                                              ; preds = %485, %482
  %484 = xor i1 %28, true
  br label %27

485:                                              ; preds = %481
  store i32 0, ptr %6, align 4
  %486 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @vmap_notify_list, i32 noundef 0, ptr noundef nonnull %6) #18
  %487 = load i32, ptr %6, align 4
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %483

489:                                              ; preds = %485
  %490 = and i32 %4, 8192
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %492, label %497

492:                                              ; preds = %489
  %493 = call i32 @__printk_ratelimit(ptr noundef nonnull @__func__.alloc_vmap_area) #18
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %497, label %495

495:                                              ; preds = %492
  %496 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %0) #22
  br label %497

497:                                              ; preds = %495, %492, %489
  %498 = load ptr, ptr @vmap_area_cachep, align 4
  call void @kmem_cache_free(ptr noundef %498, ptr noundef nonnull %22) #18
  br label %499

499:                                              ; preds = %497, %477, %19, %17
  %500 = phi ptr [ inttoptr (i32 -16 to ptr), %497 ], [ inttoptr (i32 -16 to ptr), %17 ], [ inttoptr (i32 -12 to ptr), %19 ], [ %22, %477 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  ret ptr %500
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @vm_area_add_early(ptr noundef %0) local_unnamed_addr #5 section ".init.text" {
  %2 = load i1, ptr @vmap_initialized, align 1
  br i1 %2, label %5, label %3, !prof !11

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.vm_struct, ptr %0, i32 0, i32 1
  br label %6

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2255, 0\0A.popsection", ""() #18, !srcloc !55
  unreachable

6:                                                ; preds = %21, %3
  %7 = phi ptr [ %8, %21 ], [ @vmlist, %3 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.vm_struct, ptr %8, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %4, align 4
  %14 = icmp ult ptr %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.vm_struct, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr i8, ptr %13, i32 %17
  %19 = icmp ult ptr %12, %18
  br i1 %19, label %20, label %27, !prof !11

20:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2258, 0\0A.popsection", ""() #18, !srcloc !56
  unreachable

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.vm_struct, ptr %8, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr i8, ptr %12, i32 %23
  %25 = icmp ugt ptr %24, %13
  br i1 %25, label %26, label %6, !prof !11

26:                                               ; preds = %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2261, 0\0A.popsection", ""() #18, !srcloc !57
  unreachable

27:                                               ; preds = %15, %6
  store ptr %8, ptr %0, align 4
  store ptr %0, ptr %7, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @vm_area_register_early(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 section ".init.text" {
  %3 = add i32 %1, -1
  %4 = sub i32 0, %1
  %5 = load i1, ptr @vmap_initialized, align 1
  br i1 %5, label %6, label %7, !prof !11

6:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2284, 0\0A.popsection", ""() #18, !srcloc !58
  unreachable

7:                                                ; preds = %2
  %8 = load ptr, ptr @high_memory, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = add i32 %9, 8388608
  %11 = and i32 %10, -8388608
  %12 = add i32 %3, %11
  %13 = and i32 %12, %4
  %14 = load ptr, ptr @vmlist, align 4
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.vm_struct, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  br i1 %15, label %40, label %18

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.vm_struct, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = sub i32 %21, %13
  %23 = icmp ult i32 %22, %17
  br i1 %23, label %30, label %40

24:                                               ; preds = %30
  %25 = getelementptr inbounds %struct.vm_struct, ptr %38, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = sub i32 %27, %37
  %29 = icmp ult i32 %28, %17
  br i1 %29, label %30, label %40

30:                                               ; preds = %24, %18
  %31 = phi i32 [ %27, %24 ], [ %21, %18 ]
  %32 = phi ptr [ %38, %24 ], [ %14, %18 ]
  %33 = getelementptr inbounds %struct.vm_struct, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %31
  %36 = add i32 %3, %35
  %37 = and i32 %36, %4
  %38 = load ptr, ptr %32, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %24

40:                                               ; preds = %30, %24, %18, %7
  %41 = phi ptr [ @vmlist, %7 ], [ @vmlist, %18 ], [ %32, %24 ], [ %32, %30 ]
  %42 = phi i32 [ %13, %7 ], [ %13, %18 ], [ %37, %24 ], [ %37, %30 ]
  %43 = sub i32 -8388608, %17
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %46, !prof !11

45:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2292, 0\0A.popsection", ""() #18, !srcloc !59
  unreachable

46:                                               ; preds = %40
  %47 = inttoptr i32 %42 to ptr
  %48 = getelementptr inbounds %struct.vm_struct, ptr %0, i32 0, i32 1
  store ptr %47, ptr %48, align 4
  %49 = load ptr, ptr %41, align 4
  store ptr %49, ptr %0, align 4
  store ptr %0, ptr %41, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @vmalloc_init() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.5, i32 noundef 32, i32 noundef 4, i32 noundef 262144, ptr noundef null) #18
  store ptr %1, ptr @vmap_area_cachep, align 4
  %2 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %8, label %5

5:                                                ; preds = %8, %0
  %6 = load ptr, ptr @vmlist, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %48, label %26

8:                                                ; preds = %8, %0
  %9 = phi i32 [ %23, %8 ], [ %2, %0 ]
  %10 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, ptrtoint (ptr @vmap_block_queue to i32)
  %13 = inttoptr i32 %12 to ptr
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.vmap_block_queue, ptr %13, i32 0, i32 1
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.vmap_block_queue, ptr %13, i32 0, i32 1, i32 1
  store ptr %14, ptr %15, align 4
  %16 = load i32, ptr %10, align 4
  %17 = add i32 %16, ptrtoint (ptr @vfree_deferred to i32)
  %18 = inttoptr i32 %17 to ptr
  store ptr null, ptr %18, align 4
  %19 = getelementptr inbounds %struct.vfree_deferred, ptr %18, i32 0, i32 1
  store i32 -32, ptr %19, align 4
  %20 = getelementptr inbounds %struct.vfree_deferred, ptr %18, i32 0, i32 1, i32 1
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.vfree_deferred, ptr %18, i32 0, i32 1, i32 1, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.vfree_deferred, ptr %18, i32 0, i32 1, i32 2
  store ptr @free_work, ptr %22, align 4
  %23 = tail call i32 @cpumask_next(i32 noundef %9, ptr noundef nonnull @__cpu_possible_mask) #20
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %8, label %5

26:                                               ; preds = %45, %5
  %27 = phi ptr [ %46, %45 ], [ %6, %5 ]
  %28 = load ptr, ptr @vmap_area_cachep, align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %28, i32 noundef 2304) #18
  %30 = icmp eq ptr %29, null
  %31 = load i1, ptr @vmalloc_init.__already_done, align 1
  %32 = xor i1 %31, true
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35, !prof !11

34:                                               ; preds = %26
  store i1 true, ptr @vmalloc_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2366, i32 noundef 9, ptr noundef null) #18
  br label %35

35:                                               ; preds = %34, %26
  br i1 %30, label %45, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.vm_struct, ptr %27, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = ptrtoint ptr %38 to i32
  store i32 %39, ptr %29, align 8
  %40 = getelementptr inbounds %struct.vm_struct, ptr %27, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %39
  %43 = getelementptr inbounds %struct.vmap_area, ptr %29, i32 0, i32 1
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.vmap_area, ptr %29, i32 0, i32 4
  store ptr %27, ptr %44, align 4
  tail call fastcc void @insert_vmap_area(ptr noundef nonnull %29)
  br label %45

45:                                               ; preds = %36, %35
  %46 = load ptr, ptr %27, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %26

48:                                               ; preds = %45, %5
  %49 = load ptr, ptr @vmap_area_list, align 4
  %50 = icmp eq ptr %49, @vmap_area_list
  br i1 %50, label %76, label %51

51:                                               ; preds = %69, %48
  %52 = phi ptr [ %72, %69 ], [ %49, %48 ]
  %53 = phi i32 [ %71, %69 ], [ 1, %48 ]
  %54 = getelementptr i8, ptr %52, i32 -20
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, %53
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr @vmap_area_cachep, align 4
  %59 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %58, i32 noundef 2304) #18
  %60 = icmp eq ptr %59, null
  %61 = load i1, ptr @vmap_init_free_space.__already_done, align 1
  %62 = xor i1 %61, true
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %65, !prof !11

64:                                               ; preds = %57
  store i1 true, ptr @vmap_init_free_space.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2314, i32 noundef 9, ptr noundef null) #18
  br label %65

65:                                               ; preds = %64, %57
  br i1 %60, label %69, label %66

66:                                               ; preds = %65
  store i32 %53, ptr %59, align 8
  %67 = load i32, ptr %54, align 4
  %68 = getelementptr inbounds %struct.vmap_area, ptr %59, i32 0, i32 1
  store i32 %67, ptr %68, align 4
  tail call fastcc void @insert_vmap_area_augment(ptr noundef nonnull %59, ptr noundef null) #18
  br label %69

69:                                               ; preds = %66, %65, %51
  %70 = getelementptr i8, ptr %52, i32 -16
  %71 = load i32, ptr %70, align 4
  %72 = load ptr, ptr %52, align 4
  %73 = icmp eq ptr %72, @vmap_area_list
  br i1 %73, label %74, label %51

74:                                               ; preds = %69
  %75 = icmp eq i32 %71, -1
  br i1 %75, label %88, label %76

76:                                               ; preds = %74, %48
  %77 = phi i32 [ %71, %74 ], [ 1, %48 ]
  %78 = load ptr, ptr @vmap_area_cachep, align 4
  %79 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %78, i32 noundef 2304) #18
  %80 = icmp eq ptr %79, null
  %81 = load i1, ptr @vmap_init_free_space.__already_done.15, align 1
  %82 = xor i1 %81, true
  %83 = select i1 %80, i1 %82, i1 false
  br i1 %83, label %84, label %85, !prof !11

84:                                               ; preds = %76
  store i1 true, ptr @vmap_init_free_space.__already_done.15, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2329, i32 noundef 9, ptr noundef null) #18
  br label %85

85:                                               ; preds = %84, %76
  br i1 %80, label %88, label %86

86:                                               ; preds = %85
  store i32 %77, ptr %79, align 8
  %87 = getelementptr inbounds %struct.vmap_area, ptr %79, i32 0, i32 1
  store i32 -1, ptr %87, align 4
  tail call fastcc void @insert_vmap_area_augment(ptr noundef nonnull %79, ptr noundef null) #18
  br label %88

88:                                               ; preds = %86, %85, %74
  store i1 true, ptr @vmap_initialized, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @free_work(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !60
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #18, !srcloc !61
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %2) #18, !srcloc !62
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !63
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = inttoptr i32 %4 to ptr
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %10, %8 ], [ %7, %6 ]
  %10 = load ptr, ptr %9, align 4
  tail call fastcc void @__vunmap(ptr noundef nonnull %9, i32 noundef 1)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8

12:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @insert_vmap_area(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr @vmap_area_root, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %36, label %4, !prof !11

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %23, %4
  %9 = phi ptr [ %2, %4 ], [ %25, %23 ]
  %10 = getelementptr i8, ptr %9, i32 -8
  %11 = getelementptr i8, ptr %9, i32 -4
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %5, %12
  %14 = load i32, ptr %10, align 4
  %15 = icmp ugt i32 %7, %14
  br i1 %13, label %16, label %19

16:                                               ; preds = %8
  br i1 %15, label %22, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  br label %23

19:                                               ; preds = %8
  br i1 %15, label %20, label %22

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  br label %23

22:                                               ; preds = %19, %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %5, i32 noundef %7, i32 noundef %14, i32 noundef %12) #18
  br label %48

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %18, %17 ], [ %21, %20 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8

27:                                               ; preds = %23
  %28 = icmp eq ptr %24, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %27
  %30 = getelementptr i8, ptr %9, i32 12
  %31 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  %32 = icmp eq ptr %31, %24
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %9, i32 16
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %29, %1
  %37 = phi ptr [ %24, %33 ], [ %31, %29 ], [ @vmap_area_root, %1 ]
  %38 = phi ptr [ %9, %33 ], [ %9, %29 ], [ null, %1 ]
  %39 = phi ptr [ %35, %33 ], [ %30, %29 ], [ @vmap_area_list, %1 ]
  %40 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 2
  %41 = ptrtoint ptr %38 to i32
  store i32 %41, ptr %40, align 4
  %42 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 2, i32 1
  store ptr null, ptr %42, align 4
  %43 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 2, i32 2
  store ptr null, ptr %43, align 4
  store ptr %40, ptr %37, align 4
  tail call void @rb_insert_color(ptr noundef %40, ptr noundef nonnull @vmap_area_root) #18
  %44 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 3
  %45 = load ptr, ptr %39, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store ptr %45, ptr %44, align 4
  %47 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 3, i32 1
  store ptr %39, ptr %47, align 4
  store volatile ptr %44, ptr %39, align 4
  br label %48

48:                                               ; preds = %36, %27, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__get_vm_area_caller(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
  %6 = tail call fastcc ptr @__get_vm_area_node(i32 noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 3264, ptr noundef %4)
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__get_vm_area_node(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #2 {
  %8 = tail call ptr @llvm.thread.pointer() #18
  %9 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 15728640
  %12 = load volatile i32, ptr %9, align 4
  %13 = and i32 %12, 983040
  %14 = or i32 %13, %11
  %15 = load volatile i32, ptr %9, align 4
  %16 = and i32 %15, 65280
  %17 = or i32 %14, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19, !prof !9

19:                                               ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2420, 0\0A.popsection", ""() #18, !srcloc !64
  unreachable

20:                                               ; preds = %7
  %21 = add i32 %0, 4095
  %22 = and i32 %21, -4096
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %63, label %24, !prof !11

24:                                               ; preds = %20
  %25 = and i32 %2, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = add i32 %22, -1
  %29 = tail call i32 @llvm.ctlz.i32(i32 %28, i1 true) #18, !range !32
  %30 = sub nuw nsw i32 32, %29
  %31 = tail call i32 @llvm.smax.i32(i32 %30, i32 12)
  %32 = tail call i32 @llvm.umin.i32(i32 %31, i32 19)
  %33 = shl nuw nsw i32 1, %32
  br label %34

34:                                               ; preds = %27, %24
  %35 = phi i32 [ %33, %27 ], [ %1, %24 ]
  %36 = and i32 %5, 782048
  %37 = or i32 %36, 256
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef %37, i32 noundef 32) #21
  %40 = icmp eq ptr %39, null
  br i1 %40, label %63, label %41, !prof !11

41:                                               ; preds = %34
  %42 = and i32 %2, 64
  %43 = icmp eq i32 %42, 0
  %44 = add i32 %22, 4096
  %45 = select i1 %43, i32 %44, i32 %22
  %46 = tail call fastcc ptr @alloc_vmap_area(i32 noundef %45, i32 noundef %35, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  tail call void @kfree(ptr noundef nonnull %39) #18
  br label %63

49:                                               ; preds = %41
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #18
  %50 = getelementptr inbounds %struct.vm_struct, ptr %39, i32 0, i32 3
  store i32 %2, ptr %50, align 4
  %51 = load i32, ptr %46, align 4
  %52 = inttoptr i32 %51 to ptr
  %53 = getelementptr inbounds %struct.vm_struct, ptr %39, i32 0, i32 1
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.vmap_area, ptr %46, i32 0, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %46, align 4
  %57 = sub i32 %55, %56
  %58 = getelementptr inbounds %struct.vm_struct, ptr %39, i32 0, i32 2
  store i32 %57, ptr %58, align 8
  %59 = getelementptr inbounds %struct.vm_struct, ptr %39, i32 0, i32 7
  store ptr %6, ptr %59, align 4
  %60 = getelementptr inbounds %struct.vmap_area, ptr %46, i32 0, i32 4
  store ptr %39, ptr %60, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %61 = load i16, ptr @vmap_area_lock, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr @vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  br label %63

63:                                               ; preds = %49, %48, %34, %20
  %64 = phi ptr [ null, %48 ], [ %39, %49 ], [ null, %20 ], [ null, %34 ]
  ret ptr %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_vm_area(i32 noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @high_memory, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = add i32 %4, 8388608
  %6 = and i32 %5, -8388608
  %7 = tail call ptr @llvm.returnaddress(i32 0)
  %8 = tail call fastcc ptr @__get_vm_area_node(i32 noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %6, i32 noundef -8388608, i32 noundef 3264, ptr noundef %7)
  ret ptr %8
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_vm_area_caller(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr @high_memory, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = add i32 %5, 8388608
  %7 = and i32 %6, -8388608
  %8 = tail call fastcc ptr @__get_vm_area_node(i32 noundef %0, i32 noundef 1, i32 noundef %1, i32 noundef %7, i32 noundef -8388608, i32 noundef 3264, ptr noundef %2)
  ret ptr %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_vm_area(ptr noundef %0) local_unnamed_addr #2 {
  %2 = ptrtoint ptr %0 to i32
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #18
  %3 = load ptr, ptr @vmap_area_root, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %18, %1
  %6 = phi ptr [ %20, %18 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -8
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %2
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  br label %18

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %6, i32 -4
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %2
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ %11, %10 ], [ %17, %16 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %5

22:                                               ; preds = %12
  %23 = getelementptr i8, ptr %6, i32 -8
  br label %24

24:                                               ; preds = %22, %18, %1
  %25 = phi ptr [ null, %1 ], [ %23, %22 ], [ null, %18 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %26 = load i16, ptr @vmap_area_lock, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr @vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %28 = icmp eq ptr %25, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.vmap_area, ptr %25, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi ptr [ %31, %29 ], [ null, %24 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @remove_vm_area(ptr noundef %0) local_unnamed_addr #2 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #18
  %2 = ptrtoint ptr %0 to i32
  %3 = load ptr, ptr @vmap_area_root, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %41, label %5

5:                                                ; preds = %18, %1
  %6 = phi ptr [ %20, %18 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -8
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %2
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 2
  br label %18

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %6, i32 -4
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %2
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.rb_node, ptr %6, i32 0, i32 1
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ %11, %10 ], [ %17, %16 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %5

22:                                               ; preds = %12
  %23 = getelementptr i8, ptr %6, i32 -8
  %24 = getelementptr i8, ptr %6, i32 -4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %6, i32 20
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  store ptr null, ptr %27, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %31 = load i16, ptr @vmap_area_lock, align 4
  %32 = add i16 %31, 1
  store i16 %32, ptr @vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %33 = load i32, ptr @cacheid, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %37() #18
  br label %38

38:                                               ; preds = %36, %30
  %39 = load i32, ptr %23, align 4
  %40 = load i32, ptr %24, align 4
  tail call void @vunmap_range_noflush(i32 noundef %39, i32 noundef %40) #18
  tail call fastcc void @free_vmap_area_noflush(ptr noundef nonnull %23) #18
  br label %44

41:                                               ; preds = %26, %22, %18, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %42 = load i16, ptr @vmap_area_lock, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr @vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi ptr [ %28, %38 ], [ null, %41 ]
  ret ptr %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vfree_atomic(ptr noundef %0) local_unnamed_addr #2 {
  %2 = tail call ptr @llvm.thread.pointer() #18
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 15728640
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2669, 0\0A.popsection", ""() #18, !srcloc !65
  unreachable

8:                                                ; preds = %1
  %9 = icmp eq ptr %0, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %8
  %11 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %12 = inttoptr i32 %11 to ptr
  %13 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %12) #15, !srcloc !38
  %14 = add i32 %13, ptrtoint (ptr @vfree_deferred to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call zeroext i1 @llist_add_batch(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef %15) #18
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.vfree_deferred, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr @system_wq, align 4
  %20 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %19, ptr noundef %18) #18
  br label %21

21:                                               ; preds = %17, %10, %8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__vfree_deferred(ptr noundef %0) unnamed_addr #9 {
  %2 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %3 = inttoptr i32 %2 to ptr
  %4 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %3) #15, !srcloc !38
  %5 = add i32 %4, ptrtoint (ptr @vfree_deferred to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call zeroext i1 @llist_add_batch(ptr noundef %0, ptr noundef %0, ptr noundef %6) #18
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.vfree_deferred, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr @system_wq, align 4
  %11 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %10, ptr noundef %9) #18
  br label %12

12:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vfree(ptr noundef %0) #2 {
  %2 = tail call ptr @llvm.thread.pointer() #18
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 15728640
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2705, 0\0A.popsection", ""() #18, !srcloc !66
  unreachable

8:                                                ; preds = %1
  %9 = load volatile i32, ptr %3, align 4
  %10 = load volatile i32, ptr %3, align 4
  %11 = load volatile i32, ptr %3, align 4
  %12 = icmp eq ptr %0, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = load volatile i32, ptr %3, align 4
  %15 = and i32 %14, 15728640
  %16 = load volatile i32, ptr %3, align 4
  %17 = and i32 %16, 983040
  %18 = or i32 %17, %15
  %19 = load volatile i32, ptr %3, align 4
  %20 = and i32 %19, 65280
  %21 = or i32 %18, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23, !prof !9

23:                                               ; preds = %13
  tail call fastcc void @__vfree_deferred(ptr noundef nonnull %0) #18
  br label %25

24:                                               ; preds = %13
  tail call fastcc void @__vunmap(ptr noundef nonnull %0, i32 noundef 1) #18
  br label %25

25:                                               ; preds = %24, %23, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vunmap(ptr noundef %0) #2 {
  %2 = tail call ptr @llvm.thread.pointer() #18
  %3 = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 15728640
  %6 = load volatile i32, ptr %3, align 4
  %7 = and i32 %6, 983040
  %8 = or i32 %7, %5
  %9 = load volatile i32, ptr %3, align 4
  %10 = and i32 %9, 65280
  %11 = or i32 %8, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !9

13:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2729, 0\0A.popsection", ""() #18, !srcloc !67
  unreachable

14:                                               ; preds = %1
  %15 = icmp eq ptr %0, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call fastcc void @__vunmap(ptr noundef nonnull %0, i32 noundef 0)
  br label %17

17:                                               ; preds = %16, %14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__vunmap(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %134, label %4

4:                                                ; preds = %2
  %5 = ptrtoint ptr %0 to i32
  %6 = and i32 %5, 4095
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !9

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2609, i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef nonnull %0) #18
  br label %134

9:                                                ; preds = %4
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #18
  %10 = load ptr, ptr @vmap_area_root, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %25, %9
  %13 = phi ptr [ %27, %25 ], [ %10, %9 ]
  %14 = getelementptr i8, ptr %13, i32 -8
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %5
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 2
  br label %25

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %13, i32 -4
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, %5
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rb_node, ptr %13, i32 0, i32 1
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi ptr [ %18, %17 ], [ %24, %23 ]
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %12

29:                                               ; preds = %19
  %30 = getelementptr i8, ptr %13, i32 -8
  br label %31

31:                                               ; preds = %29, %25, %9
  %32 = phi ptr [ null, %9 ], [ %30, %29 ], [ null, %25 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %33 = load i16, ptr @vmap_area_lock, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr @vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %35 = icmp eq ptr %32, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.vmap_area, ptr %32, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41, !prof !11

40:                                               ; preds = %36, %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2615, i32 noundef 9, ptr noundef nonnull @.str.17, ptr noundef nonnull %0) #18
  br label %134

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.vm_struct, ptr %38, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 256
  %45 = getelementptr inbounds %struct.vm_struct, ptr %38, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = tail call ptr @remove_vm_area(ptr noundef %46) #18
  %48 = icmp eq i32 %44, 0
  br i1 %48, label %108, label %49

49:                                               ; preds = %41
  %50 = icmp eq i32 %1, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.vm_struct, ptr %38, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %91, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.vm_struct, ptr %38, i32 0, i32 4
  br label %58

57:                                               ; preds = %49
  tail call fastcc void @_vm_unmap_aliases(i32 noundef -1, i32 noundef 0, i32 noundef 0) #18
  br label %133

58:                                               ; preds = %73, %55
  %59 = phi i32 [ -1, %55 ], [ %76, %73 ]
  %60 = phi i32 [ 0, %55 ], [ %75, %73 ]
  %61 = phi i32 [ 0, %55 ], [ %74, %73 ]
  %62 = phi i32 [ 0, %55 ], [ %77, %73 ]
  %63 = load ptr, ptr %56, align 4
  %64 = getelementptr ptr, ptr %63, i32 %62
  %65 = load ptr, ptr %64, align 4
  %66 = tail call ptr @page_address(ptr noundef %65) #18
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %58
  %69 = ptrtoint ptr %66 to i32
  %70 = tail call i32 @llvm.umin.i32(i32 %59, i32 %69) #18
  %71 = add i32 %69, 4096
  %72 = tail call i32 @llvm.umax.i32(i32 %71, i32 %60) #18
  br label %73

73:                                               ; preds = %68, %58
  %74 = phi i32 [ 1, %68 ], [ %61, %58 ]
  %75 = phi i32 [ %72, %68 ], [ %60, %58 ]
  %76 = phi i32 [ %70, %68 ], [ %59, %58 ]
  %77 = add nuw i32 %62, 1
  %78 = load i32, ptr %52, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %58, label %80

80:                                               ; preds = %73
  %81 = icmp eq i32 %78, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %82, %80
  %83 = phi i32 [ %88, %82 ], [ 0, %80 ]
  %84 = load ptr, ptr %56, align 4
  %85 = getelementptr ptr, ptr %84, i32 %83
  %86 = load ptr, ptr %85, align 4
  %87 = tail call ptr @page_address(ptr noundef %86) #18
  %88 = add nuw i32 %83, 1
  %89 = load i32, ptr %52, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %82, label %91

91:                                               ; preds = %82, %80, %51
  %92 = phi i32 [ %76, %80 ], [ -1, %51 ], [ %76, %82 ]
  %93 = phi i32 [ %75, %80 ], [ 0, %51 ], [ %75, %82 ]
  %94 = phi i32 [ %74, %80 ], [ 0, %51 ], [ %74, %82 ]
  tail call fastcc void @_vm_unmap_aliases(i32 noundef %92, i32 noundef %93, i32 noundef %94) #18
  %95 = load i32, ptr %52, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.vm_struct, ptr %38, i32 0, i32 4
  br label %99

99:                                               ; preds = %99, %97
  %100 = phi i32 [ 0, %97 ], [ %105, %99 ]
  %101 = load ptr, ptr %98, align 4
  %102 = getelementptr ptr, ptr %101, i32 %100
  %103 = load ptr, ptr %102, align 4
  %104 = tail call ptr @page_address(ptr noundef %103) #18
  %105 = add nuw i32 %100, 1
  %106 = load i32, ptr %52, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %99, label %108

108:                                              ; preds = %99, %91, %41
  %109 = icmp eq i32 %1, 0
  br i1 %109, label %133, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.vm_struct, ptr %38, i32 0, i32 5
  %112 = load i32, ptr %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.vm_struct, ptr %38, i32 0, i32 4
  br label %116

116:                                              ; preds = %123, %114
  %117 = phi i32 [ 0, %114 ], [ %125, %123 ]
  %118 = load ptr, ptr %115, align 4
  %119 = getelementptr ptr, ptr %118, i32 %117
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %123, !prof !11

122:                                              ; preds = %116
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2633, 0\0A.popsection", ""() #18, !srcloc !68
  unreachable

123:                                              ; preds = %116
  tail call void @__free_pages(ptr noundef nonnull %120, i32 noundef 0) #18
  %124 = tail call i32 @__cond_resched() #18
  %125 = add nuw i32 %117, 1
  %126 = load i32, ptr %111, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %116, label %128

128:                                              ; preds = %123, %110
  %129 = phi i32 [ 0, %110 ], [ %126, %123 ]
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nr_vmalloc_pages) #18, !srcloc !61
  %130 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_vmalloc_pages, ptr nonnull @nr_vmalloc_pages, i32 %129, ptr nonnull elementtype(i32) @nr_vmalloc_pages) #18, !srcloc !69
  %131 = getelementptr inbounds %struct.vm_struct, ptr %38, i32 0, i32 4
  %132 = load ptr, ptr %131, align 4
  tail call void @kvfree(ptr noundef %132) #18
  br label %133

133:                                              ; preds = %128, %108, %57
  tail call void @kfree(ptr noundef nonnull %38) #18
  br label %134

134:                                              ; preds = %133, %40, %8, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vmap(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = and i32 %2, 64
  %6 = icmp ne i32 %5, 0
  %7 = load i1, ptr @vmap.__already_done, align 1
  %8 = xor i1 %7, true
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %11, !prof !11

10:                                               ; preds = %4
  store i1 true, ptr @vmap.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2764, i32 noundef 9, ptr noundef null) #18
  br label %11

11:                                               ; preds = %10, %4
  %12 = load volatile i32, ptr @_totalram_pages, align 4
  %13 = icmp ult i32 %12, %1
  br i1 %13, label %63, label %14

14:                                               ; preds = %11
  %15 = and i32 %2, -65
  %16 = shl i32 %1, 12
  %17 = tail call ptr @llvm.returnaddress(i32 0)
  %18 = load ptr, ptr @high_memory, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = add i32 %19, 8388608
  %21 = and i32 %20, -8388608
  %22 = tail call fastcc ptr @__get_vm_area_node(i32 noundef %16, i32 noundef 1, i32 noundef %15, i32 noundef %21, i32 noundef -8388608, i32 noundef 3264, ptr noundef %17) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %63, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.vm_struct, ptr %22, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = add i32 %16, %27
  %29 = tail call i32 @vmap_pages_range_noflush(i32 noundef %27, i32 noundef %28, i32 noundef %3, ptr noundef %0, i32 noundef 12) #18
  %30 = load i32, ptr @cacheid, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %34() #18
  br label %36

35:                                               ; preds = %24
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !14
  br label %36

36:                                               ; preds = %35, %33
  %37 = icmp slt i32 %29, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %36
  %39 = load ptr, ptr %25, align 4
  %40 = tail call ptr @llvm.thread.pointer() #18
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 15728640
  %44 = load volatile i32, ptr %41, align 4
  %45 = and i32 %44, 983040
  %46 = or i32 %45, %43
  %47 = load volatile i32, ptr %41, align 4
  %48 = and i32 %47, 65280
  %49 = or i32 %46, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51, !prof !9

51:                                               ; preds = %38
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2729, 0\0A.popsection", ""() #18, !srcloc !67
  unreachable

52:                                               ; preds = %38
  %53 = icmp eq ptr %39, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %52
  tail call fastcc void @__vunmap(ptr noundef nonnull %39, i32 noundef 0) #18
  br label %63

55:                                               ; preds = %36
  %56 = and i32 %2, 512
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.vm_struct, ptr %22, i32 0, i32 4
  store ptr %0, ptr %59, align 4
  %60 = getelementptr inbounds %struct.vm_struct, ptr %22, i32 0, i32 5
  store i32 %1, ptr %60, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load ptr, ptr %25, align 4
  br label %63

63:                                               ; preds = %61, %54, %52, %14, %11
  %64 = phi ptr [ %62, %61 ], [ null, %11 ], [ null, %14 ], [ null, %52 ], [ null, %54 ]
  ret ptr %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @__vmalloc_node_range(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) local_unnamed_addr #10 {
  %10 = icmp eq i32 %0, 0
  %11 = load i1, ptr @__vmalloc_node_range.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !11

14:                                               ; preds = %9
  store i1 true, ptr @__vmalloc_node_range.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3059, i32 noundef 9, ptr noundef null) #18
  br label %15

15:                                               ; preds = %14, %9
  br i1 %10, label %199, label %16

16:                                               ; preds = %15
  %17 = lshr i32 %0, 12
  %18 = load volatile i32, ptr @_totalram_pages, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = or i32 %6, 34
  %22 = tail call fastcc ptr @__get_vm_area_node(i32 noundef %0, i32 noundef %1, i32 noundef %21, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %8)
  %23 = icmp eq ptr %22, null
  %24 = and i32 %4, 32768
  br i1 %23, label %25, label %37

25:                                               ; preds = %20
  %26 = icmp eq i32 %24, 0
  %27 = select i1 %26, ptr @.str.9, ptr @.str.8
  tail call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %4, ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef %0, ptr noundef nonnull %27) #18
  br i1 %26, label %199, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #18
  %30 = tail call fastcc ptr @__get_vm_area_node(i32 noundef %0, i32 noundef %1, i32 noundef %21, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %8)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %37

32:                                               ; preds = %16
  tail call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %4, ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef %0) #18
  br label %199

33:                                               ; preds = %33, %28
  tail call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %4, ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef %0, ptr noundef nonnull %27) #18
  %34 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #18
  %35 = tail call fastcc ptr @__get_vm_area_node(i32 noundef %0, i32 noundef %1, i32 noundef %21, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %8)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %33, label %37

37:                                               ; preds = %33, %28, %20
  %38 = phi i32 [ %24, %20 ], [ 1, %28 ], [ 1, %33 ]
  %39 = phi ptr [ %22, %20 ], [ %30, %28 ], [ %35, %33 ]
  %40 = and i32 %4, 782048
  %41 = or i32 %40, 256
  %42 = icmp ne i32 %38, 0
  %43 = getelementptr inbounds %struct.vm_struct, ptr %39, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = getelementptr inbounds %struct.vm_struct, ptr %39, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 64
  %49 = icmp eq i32 %48, 0
  %50 = getelementptr inbounds %struct.vm_struct, ptr %39, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, -4096
  %53 = select i1 %49, i32 %52, i32 %51
  %54 = lshr i32 %53, 12
  %55 = shl nuw nsw i32 %54, 2
  %56 = and i32 %4, 5
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i32 8194, i32 8192
  %59 = or i32 %58, %4
  %60 = icmp ugt i32 %53, 4198399
  br i1 %60, label %61, label %71

61:                                               ; preds = %37
  %62 = getelementptr inbounds %struct.vm_struct, ptr %39, i32 0, i32 7
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr @high_memory, align 4
  %65 = ptrtoint ptr %64 to i32
  %66 = add i32 %65, 8388608
  %67 = and i32 %66, -8388608
  %68 = load i32, ptr @pgprot_kernel, align 4
  %69 = or i32 %68, 512
  %70 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %55, i32 noundef 1, i32 noundef %67, i32 noundef -8388608, i32 noundef %41, i32 noundef %69, i32 noundef 0, i32 noundef %7, ptr noundef %63) #23
  br label %73

71:                                               ; preds = %37
  %72 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %55, i32 noundef %41) #23
  br label %73

73:                                               ; preds = %71, %61
  %74 = phi ptr [ %70, %61 ], [ %72, %71 ]
  %75 = getelementptr inbounds %struct.vm_struct, ptr %39, i32 0, i32 4
  store ptr %74, ptr %75, align 4
  %76 = icmp eq ptr %74, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = and i32 %53, -4096
  tail call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %4, ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef %78, i32 noundef %55) #18
  %79 = load ptr, ptr %43, align 4
  %80 = tail call ptr @remove_vm_area(ptr noundef %79) #18
  %81 = icmp eq ptr %80, %39
  br i1 %81, label %83, label %82, !prof !9

82:                                               ; preds = %77
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3552, 0\0A.popsection", ""() #18, !srcloc !70
  unreachable

83:                                               ; preds = %77
  tail call void @kfree(ptr noundef nonnull %39) #18
  br label %199

84:                                               ; preds = %73
  %85 = and i32 %59, -32769
  %86 = icmp eq i32 %7, -1
  %87 = select i1 %86, i32 0, i32 %7
  br label %88

88:                                               ; preds = %91, %84
  %89 = phi i32 [ 0, %84 ], [ %96, %91 ]
  %90 = icmp ugt i32 %54, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = sub i32 %54, %89
  %93 = tail call i32 @llvm.umin.i32(i32 %92, i32 100) #18
  %94 = getelementptr ptr, ptr %74, i32 %89
  %95 = tail call i32 @__alloc_pages_bulk(i32 noundef %85, i32 noundef %87, ptr noundef null, i32 noundef %93, ptr noundef null, ptr noundef %94) #18
  %96 = add i32 %95, %89
  %97 = tail call i32 @__cond_resched() #18
  %98 = icmp eq i32 %95, %93
  br i1 %98, label %88, label %99

99:                                               ; preds = %91, %88
  %100 = phi i32 [ %96, %91 ], [ %89, %88 ]
  %101 = icmp ult i32 %100, %54
  br i1 %101, label %102, label %122

102:                                              ; preds = %99
  %103 = tail call ptr @llvm.thread.pointer() #18
  %104 = getelementptr inbounds %struct.task_struct, ptr %103, i32 0, i32 98, i32 1
  br label %105

105:                                              ; preds = %117, %102
  %106 = phi i32 [ %100, %102 ], [ %120, %117 ]
  %107 = load volatile i32, ptr %103, align 4
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = load i32, ptr %104, align 4
  %112 = and i32 %111, 256
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %110, %105
  %115 = tail call ptr @__alloc_pages(i32 noundef %59, i32 noundef 0, i32 noundef %87, ptr noundef null) #18
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117, !prof !11

117:                                              ; preds = %114
  %118 = getelementptr ptr, ptr %74, i32 %106
  store ptr %115, ptr %118, align 4
  %119 = tail call i32 @__cond_resched() #18
  %120 = add i32 %106, 1
  %121 = icmp eq i32 %120, %54
  br i1 %121, label %122, label %105

122:                                              ; preds = %117, %114, %110, %99
  %123 = phi i32 [ %100, %99 ], [ %106, %114 ], [ %106, %110 ], [ %54, %117 ]
  %124 = getelementptr inbounds %struct.vm_struct, ptr %39, i32 0, i32 5
  store i32 %123, ptr %124, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @nr_vmalloc_pages) #18, !srcloc !61
  %125 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nr_vmalloc_pages, ptr nonnull @nr_vmalloc_pages, i32 %123, ptr nonnull elementtype(i32) @nr_vmalloc_pages) #18, !srcloc !71
  %126 = load i32, ptr %124, align 4
  %127 = icmp eq i32 %126, %54
  br i1 %127, label %130, label %128

128:                                              ; preds = %122
  %129 = shl i32 %126, 12
  tail call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %4, ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef %129, i32 noundef 0) #18
  br label %178

130:                                              ; preds = %122
  %131 = and i32 %4, 192
  %132 = icmp eq i32 %131, 64
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = tail call ptr @llvm.thread.pointer() #18
  %135 = getelementptr inbounds %struct.task_struct, ptr %134, i32 0, i32 4
  %136 = load i32, ptr %135, align 4
  %137 = and i32 %136, 262144
  %138 = or i32 %136, 262144
  store i32 %138, ptr %135, align 4
  br label %147

139:                                              ; preds = %130
  %140 = icmp eq i32 %131, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %139
  %142 = tail call ptr @llvm.thread.pointer() #18
  %143 = getelementptr inbounds %struct.task_struct, ptr %142, i32 0, i32 4
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, 524288
  %146 = or i32 %144, 524288
  store i32 %146, ptr %143, align 4
  br label %147

147:                                              ; preds = %141, %139, %133
  %148 = phi i32 [ %137, %133 ], [ %145, %141 ], [ 0, %139 ]
  %149 = add i32 %53, %45
  br label %150

150:                                              ; preds = %162, %147
  %151 = load ptr, ptr %75, align 4
  %152 = tail call i32 @vmap_pages_range_noflush(i32 noundef %45, i32 noundef %149, i32 noundef %5, ptr noundef %151, i32 noundef 12) #18
  %153 = load i32, ptr @cacheid, align 4
  %154 = and i32 %153, 2
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %157() #18
  br label %159

158:                                              ; preds = %150
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !14
  br label %159

159:                                              ; preds = %158, %156
  %160 = icmp slt i32 %152, 0
  %161 = select i1 %42, i1 %160, i1 false
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef 1) #18
  br label %150

164:                                              ; preds = %159
  br i1 %132, label %167, label %165

165:                                              ; preds = %164
  %166 = icmp eq i32 %131, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %165, %164
  %168 = phi i32 [ -262145, %164 ], [ -524289, %165 ]
  %169 = tail call ptr @llvm.thread.pointer() #18
  %170 = getelementptr inbounds %struct.task_struct, ptr %169, i32 0, i32 4
  %171 = load i32, ptr %170, align 4
  %172 = and i32 %171, %168
  %173 = or i32 %172, %148
  store i32 %173, ptr %170, align 4
  br label %174

174:                                              ; preds = %167, %165
  br i1 %160, label %175, label %193

175:                                              ; preds = %174
  %176 = load i32, ptr %124, align 4
  %177 = shl i32 %176, 12
  tail call void (i32, ptr, ptr, ...) @warn_alloc(i32 noundef %4, ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef %177) #18
  br label %178

178:                                              ; preds = %175, %128
  %179 = load ptr, ptr %43, align 4
  %180 = tail call ptr @llvm.thread.pointer() #18
  %181 = getelementptr inbounds %struct.thread_info, ptr %180, i32 0, i32 1
  %182 = load volatile i32, ptr %181, align 4
  %183 = and i32 %182, 15728640
  %184 = load volatile i32, ptr %181, align 4
  %185 = and i32 %184, 983040
  %186 = or i32 %185, %183
  %187 = load volatile i32, ptr %181, align 4
  %188 = and i32 %187, 65280
  %189 = or i32 %186, %188
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %191, !prof !9

191:                                              ; preds = %178
  tail call fastcc void @__vfree_deferred(ptr noundef %179) #18
  br label %199

192:                                              ; preds = %178
  tail call fastcc void @__vunmap(ptr noundef %179, i32 noundef 1) #18
  br label %199

193:                                              ; preds = %174
  %194 = load ptr, ptr %43, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  tail call void asm sideeffect "dmb ishst", "~{memory}"() #18, !srcloc !72
  %197 = load i32, ptr %46, align 4
  %198 = and i32 %197, -33
  store i32 %198, ptr %46, align 4
  br label %199

199:                                              ; preds = %196, %193, %192, %191, %83, %32, %25, %15
  %200 = phi ptr [ null, %32 ], [ %194, %196 ], [ null, %15 ], [ null, %193 ], [ null, %83 ], [ null, %191 ], [ null, %192 ], [ null, %25 ]
  ret ptr %200
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_alloc(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @__vmalloc_node(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #10 {
  %6 = load ptr, ptr @high_memory, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = add i32 %7, 8388608
  %9 = and i32 %8, -8388608
  %10 = load i32, ptr @pgprot_kernel, align 4
  %11 = or i32 %10, 512
  %12 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %0, i32 noundef %1, i32 noundef %9, i32 noundef -8388608, i32 noundef %2, i32 noundef %11, i32 noundef 0, i32 noundef %3, ptr noundef %4) #24
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @__vmalloc(i32 noundef %0, i32 noundef %1) #10 {
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = load ptr, ptr @high_memory, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = add i32 %5, 8388608
  %7 = and i32 %6, -8388608
  %8 = load i32, ptr @pgprot_kernel, align 4
  %9 = or i32 %8, 512
  %10 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %0, i32 noundef 1, i32 noundef %7, i32 noundef -8388608, i32 noundef %1, i32 noundef %9, i32 noundef 0, i32 noundef -1, ptr noundef %3) #23
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @vmalloc(i32 noundef %0) #10 {
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %3 = load ptr, ptr @high_memory, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = add i32 %4, 8388608
  %6 = and i32 %5, -8388608
  %7 = load i32, ptr @pgprot_kernel, align 4
  %8 = or i32 %7, 512
  %9 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %0, i32 noundef 1, i32 noundef %6, i32 noundef -8388608, i32 noundef 3264, i32 noundef %8, i32 noundef 0, i32 noundef -1, ptr noundef %2) #23
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @vmalloc_no_huge(i32 noundef %0) #10 {
  %2 = load ptr, ptr @high_memory, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = add i32 %3, 8388608
  %5 = and i32 %4, -8388608
  %6 = load i32, ptr @pgprot_kernel, align 4
  %7 = or i32 %6, 512
  %8 = tail call ptr @llvm.returnaddress(i32 0)
  %9 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %0, i32 noundef 1, i32 noundef %5, i32 noundef -8388608, i32 noundef 3264, i32 noundef %7, i32 noundef 1024, i32 noundef -1, ptr noundef %8) #24
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @vzalloc(i32 noundef %0) #10 {
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %3 = load ptr, ptr @high_memory, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = add i32 %4, 8388608
  %6 = and i32 %5, -8388608
  %7 = load i32, ptr @pgprot_kernel, align 4
  %8 = or i32 %7, 512
  %9 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %0, i32 noundef 1, i32 noundef %6, i32 noundef -8388608, i32 noundef 3520, i32 noundef %8, i32 noundef 0, i32 noundef -1, ptr noundef %2) #23
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @vmalloc_user(i32 noundef %0) #10 {
  %2 = load ptr, ptr @high_memory, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = add i32 %3, 8388608
  %5 = and i32 %4, -8388608
  %6 = load i32, ptr @pgprot_kernel, align 4
  %7 = or i32 %6, 512
  %8 = tail call ptr @llvm.returnaddress(i32 0)
  %9 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %0, i32 noundef 16384, i32 noundef %5, i32 noundef -8388608, i32 noundef 3520, i32 noundef %7, i32 noundef 8, i32 noundef -1, ptr noundef %8) #24
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @vmalloc_node(i32 noundef %0, i32 noundef %1) #10 {
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = load ptr, ptr @high_memory, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = add i32 %5, 8388608
  %7 = and i32 %6, -8388608
  %8 = load i32, ptr @pgprot_kernel, align 4
  %9 = or i32 %8, 512
  %10 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %0, i32 noundef 1, i32 noundef %7, i32 noundef -8388608, i32 noundef 3264, i32 noundef %9, i32 noundef 0, i32 noundef %1, ptr noundef %3) #23
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @vzalloc_node(i32 noundef %0, i32 noundef %1) #10 {
  %3 = tail call ptr @llvm.returnaddress(i32 0)
  %4 = load ptr, ptr @high_memory, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = add i32 %5, 8388608
  %7 = and i32 %6, -8388608
  %8 = load i32, ptr @pgprot_kernel, align 4
  %9 = or i32 %8, 512
  %10 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %0, i32 noundef 1, i32 noundef %7, i32 noundef -8388608, i32 noundef 3520, i32 noundef %9, i32 noundef 0, i32 noundef %1, ptr noundef %3) #23
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @vmalloc_32(i32 noundef %0) #10 {
  %2 = tail call ptr @llvm.returnaddress(i32 0)
  %3 = load ptr, ptr @high_memory, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = add i32 %4, 8388608
  %6 = and i32 %5, -8388608
  %7 = load i32, ptr @pgprot_kernel, align 4
  %8 = or i32 %7, 512
  %9 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %0, i32 noundef 1, i32 noundef %6, i32 noundef -8388608, i32 noundef 3268, i32 noundef %8, i32 noundef 0, i32 noundef -1, ptr noundef %2) #23
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @vmalloc_32_user(i32 noundef %0) #10 {
  %2 = load ptr, ptr @high_memory, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = add i32 %3, 8388608
  %5 = and i32 %4, -8388608
  %6 = load i32, ptr @pgprot_kernel, align 4
  %7 = or i32 %6, 512
  %8 = tail call ptr @llvm.returnaddress(i32 0)
  %9 = tail call noalias ptr @__vmalloc_node_range(i32 noundef %0, i32 noundef 16384, i32 noundef %5, i32 noundef -8388608, i32 noundef 3524, i32 noundef %7, i32 noundef 8, i32 noundef -1, ptr noundef %8) #24
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vread(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = ptrtoint ptr %1 to i32
  %5 = xor i32 %2, -1
  %6 = icmp ult i32 %5, %4
  %7 = sub i32 0, %4
  %8 = select i1 %6, i32 %7, i32 %2
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #18
  %9 = load ptr, ptr @vmap_area_root, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %141, label %11

11:                                               ; preds = %25, %3
  %12 = phi ptr [ %28, %25 ], [ %9, %3 ]
  %13 = phi ptr [ %27, %25 ], [ null, %3 ]
  %14 = getelementptr i8, ptr %12, i32 -8
  %15 = getelementptr i8, ptr %12, i32 -4
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %4
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load i32, ptr %14, align 4
  %20 = icmp ugt i32 %19, %4
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 2
  br label %25

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.rb_node, ptr %12, i32 0, i32 1
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi ptr [ %22, %21 ], [ %24, %23 ]
  %27 = phi ptr [ %14, %21 ], [ %13, %23 ]
  %28 = load ptr, ptr %26, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %11

30:                                               ; preds = %25, %18
  %31 = phi ptr [ %14, %18 ], [ %27, %25 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %141, label %33

33:                                               ; preds = %30
  %34 = add i32 %8, %4
  %35 = load i32, ptr %31, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %141

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.vmap_area, ptr %31, i32 0, i32 3
  %39 = icmp ne ptr %38, @vmap_area_list
  %40 = icmp ne i32 %8, 0
  %41 = and i1 %39, %40
  br i1 %41, label %42, label %141

42:                                               ; preds = %132, %37
  %43 = phi ptr [ %136, %132 ], [ %38, %37 ]
  %44 = phi ptr [ %135, %132 ], [ %0, %37 ]
  %45 = phi ptr [ %137, %132 ], [ %31, %37 ]
  %46 = phi i32 [ %134, %132 ], [ %8, %37 ]
  %47 = phi ptr [ %133, %132 ], [ %1, %37 ]
  %48 = getelementptr inbounds %struct.vmap_area, ptr %45, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %132, label %51

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.vm_struct, ptr %49, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.vm_struct, ptr %49, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 64
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct.vm_struct, ptr %49, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, -4096
  %61 = select i1 %57, i32 %60, i32 %59
  %62 = getelementptr i8, ptr %53, i32 %61
  %63 = icmp ult ptr %47, %62
  br i1 %63, label %64, label %132

64:                                               ; preds = %51
  %65 = icmp ult ptr %47, %53
  br i1 %65, label %66, label %81

66:                                               ; preds = %71, %64
  %67 = phi ptr [ %72, %71 ], [ %44, %64 ]
  %68 = phi i32 [ %74, %71 ], [ %46, %64 ]
  %69 = phi ptr [ %73, %71 ], [ %47, %64 ]
  %70 = icmp eq i32 %68, 0
  br i1 %70, label %141, label %71

71:                                               ; preds = %66
  store i8 0, ptr %67, align 1
  %72 = getelementptr i8, ptr %67, i32 1
  %73 = getelementptr i8, ptr %69, i32 1
  %74 = add i32 %68, -1
  %75 = icmp ult ptr %73, %53
  br i1 %75, label %66, label %76

76:                                               ; preds = %71
  %77 = load i32, ptr %54, align 4
  %78 = load i32, ptr %58, align 4
  %79 = and i32 %77, 64
  %80 = add i32 %78, -4096
  br label %81

81:                                               ; preds = %76, %64
  %82 = phi i32 [ %80, %76 ], [ %60, %64 ]
  %83 = phi i32 [ %79, %76 ], [ %56, %64 ]
  %84 = phi i32 [ %78, %76 ], [ %59, %64 ]
  %85 = phi i32 [ %77, %76 ], [ %55, %64 ]
  %86 = phi ptr [ %73, %76 ], [ %47, %64 ]
  %87 = phi i32 [ %74, %76 ], [ %46, %64 ]
  %88 = phi ptr [ %72, %76 ], [ %44, %64 ]
  %89 = icmp eq i32 %83, 0
  %90 = select i1 %89, i32 %82, i32 %84
  %91 = getelementptr i8, ptr %53, i32 %90
  %92 = ptrtoint ptr %91 to i32
  %93 = ptrtoint ptr %86 to i32
  %94 = sub i32 %92, %93
  %95 = tail call i32 @llvm.umin.i32(i32 %94, i32 %87)
  %96 = and i32 %85, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %127

98:                                               ; preds = %81
  %99 = icmp eq i32 %95, 0
  br i1 %99, label %128, label %100

100:                                              ; preds = %122, %98
  %101 = phi ptr [ %124, %122 ], [ %88, %98 ]
  %102 = phi i32 [ %125, %122 ], [ %95, %98 ]
  %103 = phi ptr [ %123, %122 ], [ %86, %98 ]
  %104 = ptrtoint ptr %103 to i32
  %105 = and i32 %104, 4095
  %106 = sub nuw nsw i32 4096, %105
  %107 = tail call i32 @llvm.umin.i32(i32 %106, i32 %102) #18
  %108 = tail call ptr @vmalloc_to_page(ptr noundef %103) #18
  %109 = icmp eq ptr %108, null
  br i1 %109, label %121, label %110

110:                                              ; preds = %100
  %111 = load i32, ptr @pgprot_kernel, align 4
  %112 = or i32 %111, 512
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !17
  %113 = tail call ptr @llvm.thread.pointer() #18
  %114 = getelementptr inbounds %struct.task_struct, ptr %113, i32 0, i32 149
  %115 = load i32, ptr %114, align 8
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !18
  %117 = tail call ptr @__kmap_local_page_prot(ptr noundef nonnull %108, i32 noundef %112) #18
  %118 = getelementptr i8, ptr %117, i32 %105
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %101, ptr align 1 %118, i32 %107, i1 false) #18
  tail call void @kunmap_local_indexed(ptr noundef %117) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !19
  %119 = load i32, ptr %114, align 8
  %120 = add i32 %119, -1
  store i32 %120, ptr %114, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !20
  br label %122

121:                                              ; preds = %100
  tail call void @llvm.memset.p0.i32(ptr align 1 %101, i8 0, i32 %107, i1 false) #18
  br label %122

122:                                              ; preds = %121, %110
  %123 = getelementptr i8, ptr %103, i32 %107
  %124 = getelementptr i8, ptr %101, i32 %107
  %125 = sub i32 %102, %107
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %100

127:                                              ; preds = %81
  tail call void @llvm.memset.p0.i32(ptr align 1 %88, i8 0, i32 %95, i1 false)
  br label %128

128:                                              ; preds = %127, %122, %98
  %129 = getelementptr i8, ptr %88, i32 %95
  %130 = getelementptr i8, ptr %86, i32 %95
  %131 = sub i32 %87, %95
  br label %132

132:                                              ; preds = %128, %51, %42
  %133 = phi ptr [ %47, %51 ], [ %130, %128 ], [ %47, %42 ]
  %134 = phi i32 [ %46, %51 ], [ %131, %128 ], [ %46, %42 ]
  %135 = phi ptr [ %44, %51 ], [ %129, %128 ], [ %44, %42 ]
  %136 = load ptr, ptr %43, align 4
  %137 = getelementptr i8, ptr %136, i32 -20
  %138 = icmp ne ptr %136, @vmap_area_list
  %139 = icmp ne i32 %134, 0
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %42, label %141

141:                                              ; preds = %132, %66, %37, %33, %30, %3
  %142 = phi ptr [ %0, %33 ], [ %0, %30 ], [ %0, %3 ], [ %0, %37 ], [ %67, %66 ], [ %135, %132 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %143 = load i16, ptr @vmap_area_lock, align 4
  %144 = add i16 %143, 1
  store i16 %144, ptr @vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %145 = icmp eq ptr %142, %0
  br i1 %145, label %154, label %146

146:                                              ; preds = %141
  %147 = getelementptr i8, ptr %0, i32 %2
  %148 = icmp eq ptr %142, %147
  br i1 %148, label %154, label %149

149:                                              ; preds = %146
  %150 = ptrtoint ptr %142 to i32
  %151 = ptrtoint ptr %0 to i32
  %152 = add i32 %151, %2
  %153 = sub i32 %152, %150
  tail call void @llvm.memset.p0.i32(ptr align 1 %142, i8 0, i32 %153, i1 false)
  br label %154

154:                                              ; preds = %149, %146, %141
  %155 = phi i32 [ 0, %141 ], [ %2, %149 ], [ %2, %146 ]
  ret i32 %155
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @remap_vmalloc_range_partial(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
  %6 = shl i32 %3, 12
  %7 = icmp ugt i32 %3, 1048575
  br i1 %7, label %81, label %8

8:                                                ; preds = %5
  %9 = add i32 %4, 4095
  %10 = and i32 %9, -4096
  %11 = ptrtoint ptr %2 to i32
  %12 = or i32 %11, %1
  %13 = and i32 %12, 4095
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %81

15:                                               ; preds = %8
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #18
  %16 = load ptr, ptr @vmap_area_root, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %31, %15
  %19 = phi ptr [ %33, %31 ], [ %16, %15 ]
  %20 = getelementptr i8, ptr %19, i32 -8
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, %11
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 2
  br label %31

25:                                               ; preds = %18
  %26 = getelementptr i8, ptr %19, i32 -4
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, %11
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 1
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi ptr [ %24, %23 ], [ %30, %29 ]
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %18

35:                                               ; preds = %25
  %36 = getelementptr i8, ptr %19, i32 -8
  br label %37

37:                                               ; preds = %35, %31, %15
  %38 = phi ptr [ null, %15 ], [ %36, %35 ], [ null, %31 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %39 = load i16, ptr @vmap_area_lock, align 4
  %40 = add i16 %39, 1
  store i16 %40, ptr @vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %41 = icmp eq ptr %38, null
  br i1 %41, label %81, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.vmap_area, ptr %38, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %81, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.vm_struct, ptr %44, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 24
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %81, label %51

51:                                               ; preds = %46
  %52 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %10, i32 %6)
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %81, label %54

54:                                               ; preds = %51
  %55 = extractvalue { i32, i1 } %52, 0
  %56 = and i32 %48, 64
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct.vm_struct, ptr %44, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, -4096
  %61 = select i1 %57, i32 %60, i32 %59
  %62 = icmp ugt i32 %55, %61
  br i1 %62, label %81, label %63

63:                                               ; preds = %54
  %64 = getelementptr i8, ptr %2, i32 %6
  br label %65

65:                                               ; preds = %72, %63
  %66 = phi i32 [ %10, %63 ], [ %75, %72 ]
  %67 = phi ptr [ %64, %63 ], [ %74, %72 ]
  %68 = phi i32 [ %1, %63 ], [ %73, %72 ]
  %69 = tail call ptr @vmalloc_to_page(ptr noundef %67)
  %70 = tail call i32 @vm_insert_page(ptr noundef %0, i32 noundef %68, ptr noundef %69) #18
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = add i32 %68, 4096
  %74 = getelementptr i8, ptr %67, i32 4096
  %75 = add i32 %66, -4096
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %65

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 8
  %79 = load i32, ptr %78, align 4
  %80 = or i32 %79, 67371008
  store i32 %80, ptr %78, align 4
  br label %81

81:                                               ; preds = %77, %65, %54, %51, %46, %42, %37, %8, %5
  %82 = phi i32 [ 0, %77 ], [ -22, %5 ], [ -22, %8 ], [ -22, %42 ], [ -22, %46 ], [ -22, %54 ], [ -22, %51 ], [ -22, %37 ], [ %70, %65 ]
  ret i32 %82
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_insert_page(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @remap_vmalloc_range(ptr noundef %0, ptr noundef %1, i32 noundef %2) #2 {
  %4 = load i32, ptr %0, align 4
  %5 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %6, %4
  %8 = tail call i32 @remap_vmalloc_range_partial(ptr noundef %0, i32 noundef %4, ptr noundef %1, i32 noundef %2, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_vm_area(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.vm_struct, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @remove_vm_area(ptr noundef %3)
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3552, 0\0A.popsection", ""() #18, !srcloc !70
  unreachable

7:                                                ; preds = %1
  tail call void @kfree(ptr noundef %0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pcpu_get_vm_areas(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = load ptr, ptr @high_memory, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = add i32 %6, 8388608
  %8 = and i32 %7, -8388608
  %9 = add i32 %3, -1
  %10 = add i32 %8, %9
  %11 = sub i32 0, %3
  %12 = and i32 %10, %11
  %13 = and i32 %11, -8388608
  %14 = and i32 %3, 4095
  %15 = icmp ne i32 %14, 0
  %16 = tail call i32 @llvm.ctpop.i32(i32 %3) #18, !range !32
  %17 = icmp ne i32 %16, 1
  %18 = or i1 %17, %15
  br i1 %18, label %21, label %19, !prof !73

19:                                               ; preds = %4
  %20 = icmp sgt i32 %2, 0
  br i1 %20, label %24, label %60

21:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3663, 0\0A.popsection", ""() #18, !srcloc !74
  unreachable

22:                                               ; preds = %46, %39
  %23 = icmp eq i32 %44, %2
  br i1 %23, label %60, label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %44, %22 ], [ 0, %19 ]
  %26 = phi i32 [ %43, %22 ], [ 0, %19 ]
  %27 = getelementptr i32, ptr %0, i32 %25
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i32, ptr %1, i32 %25
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %28
  %32 = and i32 %28, %9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !9

34:                                               ; preds = %24
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3669, 0\0A.popsection", ""() #18, !srcloc !75
  unreachable

35:                                               ; preds = %24
  %36 = and i32 %30, %9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38, !prof !9

38:                                               ; preds = %35
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3670, 0\0A.popsection", ""() #18, !srcloc !76
  unreachable

39:                                               ; preds = %35
  %40 = getelementptr i32, ptr %0, i32 %26
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %28, %41
  %43 = select i1 %42, i32 %25, i32 %26
  %44 = add nuw nsw i32 %25, 1
  %45 = icmp slt i32 %44, %2
  br i1 %45, label %49, label %22

46:                                               ; preds = %49
  %47 = add nuw i32 %50, 1
  %48 = icmp eq i32 %47, %2
  br i1 %48, label %22, label %49

49:                                               ; preds = %46, %39
  %50 = phi i32 [ %47, %46 ], [ %44, %39 ]
  %51 = getelementptr i32, ptr %0, i32 %50
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i32, ptr %1, i32 %50
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %52
  %56 = icmp ult i32 %52, %31
  %57 = icmp ult i32 %28, %55
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %46, !prof !11

59:                                               ; preds = %49
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3680, 0\0A.popsection", ""() #18, !srcloc !77
  unreachable

60:                                               ; preds = %22, %19
  %61 = phi i32 [ 0, %19 ], [ %43, %22 ]
  %62 = getelementptr i32, ptr %0, i32 %61
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr i32, ptr %1, i32 %61
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, %63
  %67 = sub i32 %13, %12
  %68 = icmp ult i32 %67, %66
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3686, i32 noundef 9, ptr noundef null) #18
  br label %990

70:                                               ; preds = %60
  %71 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 4) #18
  %72 = extractvalue { i32, i1 } %71, 1
  br i1 %72, label %987, label %73, !prof !11

73:                                               ; preds = %70
  %74 = extractvalue { i32, i1 } %71, 0
  %75 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %74, i32 noundef 3520) #23
  %76 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %74, i32 noundef 3520) #23
  %77 = icmp ne ptr %76, null
  %78 = icmp ne ptr %75, null
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %80, label %987

80:                                               ; preds = %73
  br i1 %20, label %87, label %84

81:                                               ; preds = %87
  %82 = add nuw nsw i32 %88, 1
  %83 = icmp eq i32 %82, %2
  br i1 %83, label %84, label %87

84:                                               ; preds = %81, %80
  %85 = add i32 %66, %12
  %86 = add i32 %2, -1
  br label %99

87:                                               ; preds = %81, %80
  %88 = phi i32 [ %82, %81 ], [ 0, %80 ]
  %89 = load ptr, ptr @vmap_area_cachep, align 4
  %90 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %89, i32 noundef 3520) #18
  %91 = getelementptr ptr, ptr %76, i32 %88
  store ptr %90, ptr %91, align 4
  %92 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %93 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3520, i32 noundef 32) #21
  %94 = getelementptr ptr, ptr %75, i32 %88
  store ptr %93, ptr %94, align 4
  %95 = load ptr, ptr %91, align 4
  %96 = icmp eq ptr %95, null
  %97 = icmp eq ptr %93, null
  %98 = select i1 %96, i1 true, i1 %97
  br i1 %98, label %974, label %81

99:                                               ; preds = %961, %84
  %100 = phi i1 [ false, %84 ], [ true, %961 ]
  tail call void @_raw_spin_lock(ptr noundef nonnull @free_vmap_area_lock) #18
  %101 = load i32, ptr %62, align 4
  %102 = load i32, ptr %64, align 4
  %103 = add i32 %102, %101
  %104 = load ptr, ptr @free_vmap_area_root, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %956, label %106

106:                                              ; preds = %120, %99
  %107 = phi ptr [ %123, %120 ], [ %104, %99 ]
  %108 = phi ptr [ %122, %120 ], [ null, %99 ]
  %109 = getelementptr i8, ptr %107, i32 -8
  %110 = load i32, ptr %109, align 4
  %111 = icmp ugt i32 %110, %13
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = getelementptr i8, ptr %107, i32 -4
  %114 = load i32, ptr %113, align 4
  %115 = icmp ult i32 %114, %13
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.rb_node, ptr %107, i32 0, i32 1
  br label %120

118:                                              ; preds = %106
  %119 = getelementptr inbounds %struct.rb_node, ptr %107, i32 0, i32 2
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi ptr [ %117, %116 ], [ %119, %118 ]
  %122 = phi ptr [ %109, %116 ], [ %108, %118 ]
  %123 = load ptr, ptr %121, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %106

125:                                              ; preds = %120, %112
  %126 = phi ptr [ %109, %112 ], [ %122, %120 ]
  %127 = icmp eq ptr %126, null
  %128 = getelementptr inbounds %struct.vmap_area, ptr %126, i32 0, i32 3
  %129 = icmp eq ptr %128, @free_vmap_area_list
  %130 = select i1 %127, i1 true, i1 %129
  br i1 %130, label %144, label %131, !prof !78

131:                                              ; preds = %139, %125
  %132 = phi ptr [ %142, %139 ], [ %126, %125 ]
  %133 = getelementptr inbounds %struct.vmap_area, ptr %132, i32 0, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = and i32 %134, %11
  %136 = tail call i32 @llvm.umin.i32(i32 %135, i32 %13) #18
  %137 = load i32, ptr %132, align 4
  %138 = icmp ult i32 %137, %136
  br i1 %138, label %144, label %139

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.vmap_area, ptr %132, i32 0, i32 3, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr i8, ptr %141, i32 -20
  %143 = icmp eq ptr %141, @free_vmap_area_list
  br i1 %143, label %144, label %131

144:                                              ; preds = %139, %131, %125
  %145 = phi ptr [ %126, %125 ], [ %142, %139 ], [ %132, %131 ]
  %146 = phi i32 [ 0, %125 ], [ 0, %139 ], [ %136, %131 ]
  %147 = sub i32 %146, %103
  %148 = add i32 %147, %66
  %149 = icmp ult i32 %148, %85
  %150 = icmp eq ptr %145, null
  %151 = select i1 %149, i1 true, i1 %150
  br i1 %151, label %956, label %152

152:                                              ; preds = %190, %144
  %153 = phi ptr [ %191, %190 ], [ %104, %144 ]
  %154 = phi i32 [ %161, %190 ], [ %61, %144 ]
  %155 = phi i32 [ %162, %190 ], [ %103, %144 ]
  %156 = phi i32 [ %163, %190 ], [ %101, %144 ]
  %157 = phi i32 [ %194, %190 ], [ %147, %144 ]
  %158 = phi ptr [ %192, %190 ], [ %145, %144 ]
  %159 = icmp eq ptr %153, null
  br label %160

160:                                              ; preds = %258, %152
  %161 = phi i32 [ %154, %152 ], [ %229, %258 ]
  %162 = phi i32 [ %155, %152 ], [ %237, %258 ]
  %163 = phi i32 [ %156, %152 ], [ %234, %258 ]
  %164 = phi ptr [ %158, %152 ], [ %259, %258 ]
  %165 = add i32 %162, %157
  %166 = getelementptr inbounds %struct.vmap_area, ptr %164, i32 0, i32 1
  %167 = load i32, ptr %166, align 4
  %168 = icmp ugt i32 %165, %167
  br i1 %168, label %169, label %199

169:                                              ; preds = %160
  %170 = getelementptr inbounds %struct.vmap_area, ptr %164, i32 0, i32 3
  %171 = icmp eq ptr %170, @free_vmap_area_list
  br i1 %171, label %190, label %172, !prof !78

172:                                              ; preds = %169
  %173 = and i32 %167, %11
  %174 = tail call i32 @llvm.umin.i32(i32 %173, i32 %13) #18
  %175 = load i32, ptr %164, align 4
  %176 = icmp ult i32 %175, %174
  br i1 %176, label %190, label %177

177:                                              ; preds = %183, %172
  %178 = phi ptr [ %181, %183 ], [ %164, %172 ]
  %179 = getelementptr inbounds %struct.vmap_area, ptr %178, i32 0, i32 3, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr i8, ptr %180, i32 -20
  %182 = icmp eq ptr %180, @free_vmap_area_list
  br i1 %182, label %190, label %183

183:                                              ; preds = %177
  %184 = getelementptr i8, ptr %180, i32 -16
  %185 = load i32, ptr %184, align 4
  %186 = and i32 %185, %11
  %187 = tail call i32 @llvm.umin.i32(i32 %186, i32 %13) #18
  %188 = load i32, ptr %181, align 4
  %189 = icmp ult i32 %188, %187
  br i1 %189, label %190, label %177

190:                                              ; preds = %222, %214, %203, %183, %177, %172, %169
  %191 = phi ptr [ %153, %169 ], [ %213, %203 ], [ %153, %172 ], [ %153, %177 ], [ %153, %183 ], [ %213, %214 ], [ %213, %222 ]
  %192 = phi ptr [ %164, %169 ], [ %208, %203 ], [ %164, %172 ], [ %181, %177 ], [ %181, %183 ], [ %225, %222 ], [ %215, %214 ]
  %193 = phi i32 [ 0, %169 ], [ 0, %203 ], [ %174, %172 ], [ %187, %183 ], [ 0, %177 ], [ 0, %222 ], [ %219, %214 ]
  %194 = sub i32 %193, %162
  %195 = add i32 %194, %66
  %196 = icmp ult i32 %195, %85
  %197 = icmp eq ptr %192, null
  %198 = select i1 %196, i1 true, i1 %197
  br i1 %198, label %956, label %152

199:                                              ; preds = %160
  %200 = add i32 %163, %157
  %201 = load i32, ptr %164, align 4
  %202 = icmp ult i32 %200, %201
  br i1 %202, label %203, label %227

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.vmap_area, ptr %164, i32 0, i32 2
  %205 = tail call ptr @rb_prev(ptr noundef %204) #18
  %206 = icmp eq ptr %205, null
  %207 = getelementptr i8, ptr %205, i32 -8
  %208 = select i1 %206, ptr null, ptr %207
  %209 = icmp eq ptr %208, null
  %210 = getelementptr inbounds %struct.vmap_area, ptr %208, i32 0, i32 3
  %211 = icmp eq ptr %210, @free_vmap_area_list
  %212 = select i1 %209, i1 true, i1 %211
  %213 = load ptr, ptr @free_vmap_area_root, align 4
  br i1 %212, label %190, label %214, !prof !78

214:                                              ; preds = %222, %203
  %215 = phi ptr [ %225, %222 ], [ %207, %203 ]
  %216 = getelementptr inbounds %struct.vmap_area, ptr %215, i32 0, i32 1
  %217 = load i32, ptr %216, align 4
  %218 = and i32 %217, %11
  %219 = tail call i32 @llvm.umin.i32(i32 %218, i32 %13) #18
  %220 = load i32, ptr %215, align 4
  %221 = icmp ult i32 %220, %219
  br i1 %221, label %190, label %222

222:                                              ; preds = %214
  %223 = getelementptr inbounds %struct.vmap_area, ptr %215, i32 0, i32 3, i32 1
  %224 = load ptr, ptr %223, align 4
  %225 = getelementptr i8, ptr %224, i32 -20
  %226 = icmp eq ptr %224, @free_vmap_area_list
  br i1 %226, label %190, label %214

227:                                              ; preds = %199
  %228 = add i32 %86, %161
  %229 = srem i32 %228, %2
  %230 = icmp eq i32 %229, %154
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  br i1 %20, label %261, label %639

232:                                              ; preds = %227
  %233 = getelementptr i32, ptr %0, i32 %229
  %234 = load i32, ptr %233, align 4
  %235 = getelementptr i32, ptr %1, i32 %229
  %236 = load i32, ptr %235, align 4
  %237 = add i32 %236, %234
  %238 = add i32 %237, %157
  br i1 %159, label %956, label %239

239:                                              ; preds = %253, %232
  %240 = phi ptr [ %256, %253 ], [ %153, %232 ]
  %241 = phi ptr [ %255, %253 ], [ null, %232 ]
  %242 = getelementptr i8, ptr %240, i32 -8
  %243 = load i32, ptr %242, align 4
  %244 = icmp ugt i32 %243, %238
  br i1 %244, label %251, label %245

245:                                              ; preds = %239
  %246 = getelementptr i8, ptr %240, i32 -4
  %247 = load i32, ptr %246, align 4
  %248 = icmp ult i32 %247, %238
  br i1 %248, label %249, label %258

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.rb_node, ptr %240, i32 0, i32 1
  br label %253

251:                                              ; preds = %239
  %252 = getelementptr inbounds %struct.rb_node, ptr %240, i32 0, i32 2
  br label %253

253:                                              ; preds = %251, %249
  %254 = phi ptr [ %250, %249 ], [ %252, %251 ]
  %255 = phi ptr [ %242, %249 ], [ %241, %251 ]
  %256 = load ptr, ptr %254, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %239

258:                                              ; preds = %253, %245
  %259 = phi ptr [ %242, %245 ], [ %255, %253 ]
  %260 = icmp eq ptr %259, null
  br i1 %260, label %956, label %160

261:                                              ; preds = %567, %231
  %262 = phi ptr [ %568, %567 ], [ %153, %231 ]
  %263 = phi i32 [ %565, %567 ], [ 0, %231 ]
  %264 = getelementptr i32, ptr %0, i32 %263
  %265 = load i32, ptr %264, align 4
  %266 = add i32 %265, %157
  %267 = getelementptr i32, ptr %1, i32 %263
  %268 = load i32, ptr %267, align 4
  %269 = icmp eq ptr %262, null
  br i1 %269, label %289, label %270

270:                                              ; preds = %284, %261
  %271 = phi ptr [ %287, %284 ], [ %262, %261 ]
  %272 = phi ptr [ %286, %284 ], [ null, %261 ]
  %273 = getelementptr i8, ptr %271, i32 -8
  %274 = load i32, ptr %273, align 4
  %275 = icmp ugt i32 %274, %266
  br i1 %275, label %282, label %276

276:                                              ; preds = %270
  %277 = getelementptr i8, ptr %271, i32 -4
  %278 = load i32, ptr %277, align 4
  %279 = icmp ult i32 %278, %266
  br i1 %279, label %280, label %289

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.rb_node, ptr %271, i32 0, i32 1
  br label %284

282:                                              ; preds = %270
  %283 = getelementptr inbounds %struct.rb_node, ptr %271, i32 0, i32 2
  br label %284

284:                                              ; preds = %282, %280
  %285 = phi ptr [ %281, %280 ], [ %283, %282 ]
  %286 = phi ptr [ %273, %280 ], [ %272, %282 ]
  %287 = load ptr, ptr %285, align 4
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %270

289:                                              ; preds = %284, %276, %261
  %290 = phi ptr [ null, %261 ], [ %286, %284 ], [ %273, %276 ]
  %291 = icmp eq ptr %290, null
  %292 = load i1, ptr @pcpu_get_vm_areas.__already_done, align 1
  %293 = xor i1 %292, true
  %294 = select i1 %291, i1 %293, i1 false
  br i1 %294, label %295, label %296, !prof !11

295:                                              ; preds = %289
  store i1 true, ptr @pcpu_get_vm_areas.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3767, i32 noundef 9, ptr noundef null) #18
  br label %296

296:                                              ; preds = %295, %289
  br i1 %291, label %559, label %297

297:                                              ; preds = %296
  %298 = load i32, ptr %290, align 4
  %299 = icmp ugt i32 %298, %266
  br i1 %299, label %305, label %300

300:                                              ; preds = %297
  %301 = add i32 %268, %266
  %302 = getelementptr inbounds %struct.vmap_area, ptr %290, i32 0, i32 1
  %303 = load i32, ptr %302, align 4
  %304 = icmp ugt i32 %301, %303
  br i1 %304, label %305, label %308

305:                                              ; preds = %300, %297
  %306 = load i1, ptr @pcpu_get_vm_areas.__already_done.10, align 1
  br i1 %306, label %559, label %307, !prof !9

307:                                              ; preds = %305
  store i1 true, ptr @pcpu_get_vm_areas.__already_done.10, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 3772, i32 noundef 9, ptr noundef null) #18
  br label %559

308:                                              ; preds = %300
  %309 = icmp eq i32 %298, %266
  %310 = icmp eq i32 %303, %301
  %311 = select i1 %310, i32 1, i32 2
  %312 = select i1 %310, i32 3, i32 4
  %313 = select i1 %309, i32 %311, i32 %312
  switch i32 %313, label %497 [
    i32 1, label %314
    i32 2, label %494
    i32 3, label %496
  ]

314:                                              ; preds = %308
  %315 = getelementptr inbounds %struct.vmap_area, ptr %290, i32 0, i32 2
  %316 = load i32, ptr %315, align 4
  %317 = ptrtoint ptr %315 to i32
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %321, !prof !11

319:                                              ; preds = %314
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #18
  %320 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %320, ptr noundef nonnull %290) #18
  br label %561

321:                                              ; preds = %314
  %322 = getelementptr inbounds %struct.vmap_area, ptr %290, i32 0, i32 2, i32 1
  %323 = load ptr, ptr %322, align 4
  %324 = getelementptr inbounds %struct.vmap_area, ptr %290, i32 0, i32 2, i32 2
  %325 = load ptr, ptr %324, align 4
  %326 = icmp eq ptr %325, null
  br i1 %326, label %327, label %345

327:                                              ; preds = %321
  %328 = and i32 %316, -4
  %329 = inttoptr i32 %328 to ptr
  %330 = icmp eq i32 %328, 0
  br i1 %330, label %337, label %331

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.rb_node, ptr %329, i32 0, i32 2
  %333 = load ptr, ptr %332, align 4
  %334 = icmp eq ptr %333, %315
  %335 = getelementptr inbounds %struct.rb_node, ptr %329, i32 0, i32 1
  %336 = select i1 %334, ptr %332, ptr %335
  br label %337

337:                                              ; preds = %331, %327
  %338 = phi ptr [ @free_vmap_area_root, %327 ], [ %336, %331 ]
  store volatile ptr %323, ptr %338, align 4
  %339 = icmp eq ptr %323, null
  br i1 %339, label %341, label %340

340:                                              ; preds = %337
  store i32 %316, ptr %323, align 4
  br label %454

341:                                              ; preds = %337
  %342 = and i32 %316, 1
  %343 = icmp eq i32 %342, 0
  %344 = select i1 %343, ptr null, ptr %329
  br label %454

345:                                              ; preds = %321
  %346 = icmp eq ptr %323, null
  br i1 %346, label %347, label %359

347:                                              ; preds = %345
  store i32 %316, ptr %325, align 4
  %348 = and i32 %316, -4
  %349 = inttoptr i32 %348 to ptr
  %350 = icmp eq i32 %348, 0
  br i1 %350, label %357, label %351

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.rb_node, ptr %349, i32 0, i32 2
  %353 = load ptr, ptr %352, align 4
  %354 = icmp eq ptr %353, %315
  %355 = getelementptr inbounds %struct.rb_node, ptr %349, i32 0, i32 1
  %356 = select i1 %354, ptr %352, ptr %355
  br label %357

357:                                              ; preds = %351, %347
  %358 = phi ptr [ @free_vmap_area_root, %347 ], [ %356, %351 ]
  store volatile ptr %325, ptr %358, align 4
  br label %454

359:                                              ; preds = %345
  %360 = getelementptr inbounds %struct.rb_node, ptr %323, i32 0, i32 2
  %361 = load ptr, ptr %360, align 4
  %362 = icmp eq ptr %361, null
  br i1 %362, label %363, label %370

363:                                              ; preds = %359
  %364 = getelementptr inbounds %struct.rb_node, ptr %323, i32 0, i32 1
  %365 = load ptr, ptr %364, align 4
  %366 = getelementptr %struct.vmap_area, ptr %290, i32 0, i32 4
  %367 = load i32, ptr %366, align 4
  %368 = getelementptr i8, ptr %323, i32 20
  store i32 %367, ptr %368, align 4
  %369 = ptrtoint ptr %323 to i32
  br label %421

370:                                              ; preds = %370, %359
  %371 = phi ptr [ %374, %370 ], [ %361, %359 ]
  %372 = phi ptr [ %371, %370 ], [ %323, %359 ]
  %373 = getelementptr inbounds %struct.rb_node, ptr %371, i32 0, i32 2
  %374 = load ptr, ptr %373, align 4
  %375 = icmp eq ptr %374, null
  br i1 %375, label %376, label %370

376:                                              ; preds = %370
  %377 = getelementptr inbounds %struct.rb_node, ptr %371, i32 0, i32 1
  %378 = load ptr, ptr %377, align 4
  %379 = getelementptr inbounds %struct.rb_node, ptr %372, i32 0, i32 2
  store volatile ptr %378, ptr %379, align 4
  store volatile ptr %323, ptr %377, align 4
  %380 = load i32, ptr %323, align 4
  %381 = and i32 %380, 1
  %382 = ptrtoint ptr %371 to i32
  %383 = or i32 %381, %382
  store i32 %383, ptr %323, align 4
  %384 = getelementptr %struct.vmap_area, ptr %290, i32 0, i32 4
  %385 = load i32, ptr %384, align 4
  %386 = getelementptr i8, ptr %371, i32 20
  store i32 %385, ptr %386, align 4
  %387 = icmp eq ptr %372, %371
  br i1 %387, label %421, label %388

388:                                              ; preds = %416, %376
  %389 = phi ptr [ %419, %416 ], [ %372, %376 ]
  %390 = getelementptr i8, ptr %389, i32 -8
  %391 = getelementptr i8, ptr %389, i32 -4
  %392 = load i32, ptr %391, align 4
  %393 = load i32, ptr %390, align 4
  %394 = sub i32 %392, %393
  %395 = getelementptr i8, ptr %389, i32 8
  %396 = load ptr, ptr %395, align 4
  %397 = icmp eq ptr %396, null
  br i1 %397, label %402, label %398

398:                                              ; preds = %388
  %399 = getelementptr i8, ptr %396, i32 20
  %400 = load i32, ptr %399, align 4
  %401 = tail call i32 @llvm.umax.i32(i32 %400, i32 %394) #18
  br label %402

402:                                              ; preds = %398, %388
  %403 = phi i32 [ %394, %388 ], [ %401, %398 ]
  %404 = getelementptr i8, ptr %389, i32 4
  %405 = load ptr, ptr %404, align 4
  %406 = icmp eq ptr %405, null
  br i1 %406, label %411, label %407

407:                                              ; preds = %402
  %408 = getelementptr i8, ptr %405, i32 20
  %409 = load i32, ptr %408, align 4
  %410 = tail call i32 @llvm.umax.i32(i32 %409, i32 %403) #18
  br label %411

411:                                              ; preds = %407, %402
  %412 = phi i32 [ %403, %402 ], [ %410, %407 ]
  %413 = getelementptr i8, ptr %389, i32 20
  %414 = load i32, ptr %413, align 4
  %415 = icmp eq i32 %414, %412
  br i1 %415, label %421, label %416

416:                                              ; preds = %411
  store i32 %412, ptr %413, align 4
  %417 = load i32, ptr %389, align 4
  %418 = and i32 %417, -4
  %419 = inttoptr i32 %418 to ptr
  %420 = icmp eq ptr %371, %419
  br i1 %420, label %421, label %388

421:                                              ; preds = %416, %411, %376, %363
  %422 = phi i32 [ %382, %376 ], [ %369, %363 ], [ %382, %411 ], [ %382, %416 ]
  %423 = phi ptr [ %371, %376 ], [ %323, %363 ], [ %372, %411 ], [ %372, %416 ]
  %424 = phi ptr [ %371, %376 ], [ %323, %363 ], [ %371, %411 ], [ %371, %416 ]
  %425 = phi ptr [ %378, %376 ], [ %365, %363 ], [ %378, %411 ], [ %378, %416 ]
  %426 = load ptr, ptr %324, align 4
  %427 = getelementptr inbounds %struct.rb_node, ptr %424, i32 0, i32 2
  store volatile ptr %426, ptr %427, align 4
  %428 = load i32, ptr %426, align 4
  %429 = and i32 %428, 1
  %430 = or i32 %429, %422
  store i32 %430, ptr %426, align 4
  %431 = load i32, ptr %315, align 4
  %432 = and i32 %431, -4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %441, label %434

434:                                              ; preds = %421
  %435 = inttoptr i32 %432 to ptr
  %436 = getelementptr inbounds %struct.rb_node, ptr %435, i32 0, i32 2
  %437 = load ptr, ptr %436, align 4
  %438 = icmp eq ptr %437, %315
  %439 = getelementptr inbounds %struct.rb_node, ptr %435, i32 0, i32 1
  %440 = select i1 %438, ptr %436, ptr %439
  br label %441

441:                                              ; preds = %434, %421
  %442 = phi ptr [ @free_vmap_area_root, %421 ], [ %440, %434 ]
  store volatile ptr %424, ptr %442, align 4
  %443 = icmp eq ptr %425, null
  br i1 %443, label %447, label %444

444:                                              ; preds = %441
  %445 = ptrtoint ptr %423 to i32
  %446 = or i32 %445, 1
  store i32 %446, ptr %425, align 4
  br label %452

447:                                              ; preds = %441
  %448 = load i32, ptr %424, align 4
  %449 = and i32 %448, 1
  %450 = icmp eq i32 %449, 0
  %451 = select i1 %450, ptr null, ptr %423
  br label %452

452:                                              ; preds = %447, %444
  %453 = phi ptr [ null, %444 ], [ %451, %447 ]
  store i32 %431, ptr %424, align 4
  br label %454

454:                                              ; preds = %452, %357, %341, %340
  %455 = phi ptr [ %424, %452 ], [ %349, %357 ], [ %329, %341 ], [ %329, %340 ]
  %456 = phi ptr [ %453, %452 ], [ null, %357 ], [ %344, %341 ], [ null, %340 ]
  %457 = icmp eq ptr %455, null
  br i1 %457, label %491, label %458

458:                                              ; preds = %486, %454
  %459 = phi ptr [ %489, %486 ], [ %455, %454 ]
  %460 = getelementptr i8, ptr %459, i32 -8
  %461 = getelementptr i8, ptr %459, i32 -4
  %462 = load i32, ptr %461, align 4
  %463 = load i32, ptr %460, align 4
  %464 = sub i32 %462, %463
  %465 = getelementptr i8, ptr %459, i32 8
  %466 = load ptr, ptr %465, align 4
  %467 = icmp eq ptr %466, null
  br i1 %467, label %472, label %468

468:                                              ; preds = %458
  %469 = getelementptr i8, ptr %466, i32 20
  %470 = load i32, ptr %469, align 4
  %471 = tail call i32 @llvm.umax.i32(i32 %470, i32 %464) #18
  br label %472

472:                                              ; preds = %468, %458
  %473 = phi i32 [ %464, %458 ], [ %471, %468 ]
  %474 = getelementptr i8, ptr %459, i32 4
  %475 = load ptr, ptr %474, align 4
  %476 = icmp eq ptr %475, null
  br i1 %476, label %481, label %477

477:                                              ; preds = %472
  %478 = getelementptr i8, ptr %475, i32 20
  %479 = load i32, ptr %478, align 4
  %480 = tail call i32 @llvm.umax.i32(i32 %479, i32 %473) #18
  br label %481

481:                                              ; preds = %477, %472
  %482 = phi i32 [ %473, %472 ], [ %480, %477 ]
  %483 = getelementptr i8, ptr %459, i32 20
  %484 = load i32, ptr %483, align 4
  %485 = icmp eq i32 %484, %482
  br i1 %485, label %491, label %486

486:                                              ; preds = %481
  store i32 %482, ptr %483, align 4
  %487 = load i32, ptr %459, align 4
  %488 = and i32 %487, -4
  %489 = inttoptr i32 %488 to ptr
  %490 = icmp eq i32 %488, 0
  br i1 %490, label %491, label %458

491:                                              ; preds = %486, %481, %454
  %492 = icmp eq ptr %456, null
  br i1 %492, label %513, label %493

493:                                              ; preds = %491
  tail call void @__rb_erase_color(ptr noundef nonnull %456, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #18
  br label %513

494:                                              ; preds = %308
  %495 = add i32 %298, %268
  store i32 %495, ptr %290, align 4
  br label %520

496:                                              ; preds = %308
  store i32 %266, ptr %302, align 4
  br label %520

497:                                              ; preds = %308
  %498 = tail call i32 @llvm.read_register.i32(metadata !0) #18
  %499 = inttoptr i32 %498 to ptr
  %500 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %499) #15, !srcloc !38
  %501 = add i32 %500, ptrtoint (ptr @ne_fit_preload_node to i32)
  %502 = inttoptr i32 %501 to ptr
  %503 = load ptr, ptr %502, align 4
  store ptr null, ptr %502, align 4
  %504 = icmp eq ptr %503, null
  br i1 %504, label %505, label %509, !prof !11

505:                                              ; preds = %497
  %506 = load ptr, ptr @vmap_area_cachep, align 4
  %507 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %506, i32 noundef 2048) #18
  %508 = icmp eq ptr %507, null
  br i1 %508, label %559, label %509

509:                                              ; preds = %505, %497
  %510 = phi ptr [ %507, %505 ], [ %503, %497 ]
  %511 = load i32, ptr %290, align 4
  store i32 %511, ptr %510, align 4
  %512 = getelementptr inbounds %struct.vmap_area, ptr %510, i32 0, i32 1
  store i32 %266, ptr %512, align 4
  store i32 %301, ptr %290, align 4
  br label %520

513:                                              ; preds = %493, %491
  %514 = getelementptr inbounds %struct.vmap_area, ptr %290, i32 0, i32 3
  %515 = getelementptr inbounds %struct.vmap_area, ptr %290, i32 0, i32 3, i32 1
  %516 = load ptr, ptr %515, align 4
  %517 = load ptr, ptr %514, align 4
  %518 = getelementptr inbounds %struct.list_head, ptr %517, i32 0, i32 1
  store ptr %516, ptr %518, align 4
  store volatile ptr %517, ptr %516, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %514, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %515, align 4
  store i32 %317, ptr %315, align 4
  %519 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %519, ptr noundef nonnull %290) #18
  br label %561

520:                                              ; preds = %509, %496, %494
  %521 = phi ptr [ %510, %509 ], [ null, %496 ], [ null, %494 ]
  %522 = getelementptr inbounds %struct.vmap_area, ptr %290, i32 0, i32 2
  br label %523

523:                                              ; preds = %551, %520
  %524 = phi ptr [ %554, %551 ], [ %522, %520 ]
  %525 = getelementptr i8, ptr %524, i32 -8
  %526 = getelementptr i8, ptr %524, i32 -4
  %527 = load i32, ptr %526, align 4
  %528 = load i32, ptr %525, align 4
  %529 = sub i32 %527, %528
  %530 = getelementptr i8, ptr %524, i32 8
  %531 = load ptr, ptr %530, align 4
  %532 = icmp eq ptr %531, null
  br i1 %532, label %537, label %533

533:                                              ; preds = %523
  %534 = getelementptr i8, ptr %531, i32 20
  %535 = load i32, ptr %534, align 4
  %536 = tail call i32 @llvm.umax.i32(i32 %535, i32 %529) #18
  br label %537

537:                                              ; preds = %533, %523
  %538 = phi i32 [ %529, %523 ], [ %536, %533 ]
  %539 = getelementptr i8, ptr %524, i32 4
  %540 = load ptr, ptr %539, align 4
  %541 = icmp eq ptr %540, null
  br i1 %541, label %546, label %542

542:                                              ; preds = %537
  %543 = getelementptr i8, ptr %540, i32 20
  %544 = load i32, ptr %543, align 4
  %545 = tail call i32 @llvm.umax.i32(i32 %544, i32 %538) #18
  br label %546

546:                                              ; preds = %542, %537
  %547 = phi i32 [ %538, %537 ], [ %545, %542 ]
  %548 = getelementptr i8, ptr %524, i32 20
  %549 = load i32, ptr %548, align 4
  %550 = icmp eq i32 %549, %547
  br i1 %550, label %556, label %551

551:                                              ; preds = %546
  store i32 %547, ptr %548, align 4
  %552 = load i32, ptr %524, align 4
  %553 = and i32 %552, -4
  %554 = inttoptr i32 %553 to ptr
  %555 = icmp eq i32 %553, 0
  br i1 %555, label %556, label %523

556:                                              ; preds = %551, %546
  %557 = icmp eq ptr %521, null
  br i1 %557, label %561, label %558

558:                                              ; preds = %556
  tail call fastcc void @insert_vmap_area_augment(ptr noundef nonnull %521, ptr noundef %522) #18
  br label %561

559:                                              ; preds = %505, %307, %305, %296
  %560 = icmp eq i32 %263, 0
  br i1 %560, label %956, label %645

561:                                              ; preds = %558, %556, %513, %319
  %562 = getelementptr ptr, ptr %76, i32 %263
  %563 = load ptr, ptr %562, align 4
  store i32 %266, ptr %563, align 4
  %564 = getelementptr inbounds %struct.vmap_area, ptr %563, i32 0, i32 1
  store i32 %301, ptr %564, align 4
  %565 = add nuw nsw i32 %263, 1
  %566 = icmp eq i32 %565, %2
  br i1 %566, label %569, label %567

567:                                              ; preds = %561
  %568 = load ptr, ptr @free_vmap_area_root, align 4
  br label %261

569:                                              ; preds = %561
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %570 = load i16, ptr @free_vmap_area_lock, align 4
  %571 = add i16 %570, 1
  store i16 %571, ptr @free_vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #18
  br i1 %20, label %572, label %642

572:                                              ; preds = %622, %569
  %573 = phi i32 [ %637, %622 ], [ 0, %569 ]
  %574 = getelementptr ptr, ptr %76, i32 %573
  %575 = load ptr, ptr %574, align 4
  %576 = load ptr, ptr @vmap_area_root, align 4
  %577 = icmp eq ptr %576, null
  br i1 %577, label %610, label %578, !prof !11

578:                                              ; preds = %572
  %579 = load i32, ptr %575, align 4
  %580 = getelementptr inbounds %struct.vmap_area, ptr %575, i32 0, i32 1
  %581 = load i32, ptr %580, align 4
  br label %582

582:                                              ; preds = %597, %578
  %583 = phi ptr [ %576, %578 ], [ %599, %597 ]
  %584 = getelementptr i8, ptr %583, i32 -8
  %585 = getelementptr i8, ptr %583, i32 -4
  %586 = load i32, ptr %585, align 4
  %587 = icmp ult i32 %579, %586
  %588 = load i32, ptr %584, align 4
  %589 = icmp ugt i32 %581, %588
  br i1 %587, label %590, label %593

590:                                              ; preds = %582
  br i1 %589, label %596, label %591

591:                                              ; preds = %590
  %592 = getelementptr inbounds %struct.rb_node, ptr %583, i32 0, i32 2
  br label %597

593:                                              ; preds = %582
  br i1 %589, label %594, label %596

594:                                              ; preds = %593
  %595 = getelementptr inbounds %struct.rb_node, ptr %583, i32 0, i32 1
  br label %597

596:                                              ; preds = %593, %590
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %579, i32 noundef %581, i32 noundef %588, i32 noundef %586) #18
  br label %622

597:                                              ; preds = %594, %591
  %598 = phi ptr [ %592, %591 ], [ %595, %594 ]
  %599 = load ptr, ptr %598, align 4
  %600 = icmp eq ptr %599, null
  br i1 %600, label %601, label %582

601:                                              ; preds = %597
  %602 = icmp eq ptr %598, null
  br i1 %602, label %622, label %603

603:                                              ; preds = %601
  %604 = getelementptr i8, ptr %583, i32 12
  %605 = getelementptr inbounds %struct.rb_node, ptr %583, i32 0, i32 1
  %606 = icmp eq ptr %605, %598
  br i1 %606, label %610, label %607

607:                                              ; preds = %603
  %608 = getelementptr i8, ptr %583, i32 16
  %609 = load ptr, ptr %608, align 4
  br label %610

610:                                              ; preds = %607, %603, %572
  %611 = phi ptr [ %598, %607 ], [ %605, %603 ], [ @vmap_area_root, %572 ]
  %612 = phi ptr [ %583, %607 ], [ %583, %603 ], [ null, %572 ]
  %613 = phi ptr [ %609, %607 ], [ %604, %603 ], [ @vmap_area_list, %572 ]
  %614 = getelementptr inbounds %struct.vmap_area, ptr %575, i32 0, i32 2
  %615 = ptrtoint ptr %612 to i32
  store i32 %615, ptr %614, align 4
  %616 = getelementptr inbounds %struct.vmap_area, ptr %575, i32 0, i32 2, i32 1
  store ptr null, ptr %616, align 4
  %617 = getelementptr inbounds %struct.vmap_area, ptr %575, i32 0, i32 2, i32 2
  store ptr null, ptr %617, align 4
  store ptr %614, ptr %611, align 4
  tail call void @rb_insert_color(ptr noundef %614, ptr noundef nonnull @vmap_area_root) #18
  %618 = getelementptr inbounds %struct.vmap_area, ptr %575, i32 0, i32 3
  %619 = load ptr, ptr %613, align 4
  %620 = getelementptr inbounds %struct.list_head, ptr %619, i32 0, i32 1
  store ptr %618, ptr %620, align 4
  store ptr %619, ptr %618, align 4
  %621 = getelementptr inbounds %struct.vmap_area, ptr %575, i32 0, i32 3, i32 1
  store ptr %613, ptr %621, align 4
  store volatile ptr %618, ptr %613, align 4
  br label %622

622:                                              ; preds = %610, %601, %596
  %623 = getelementptr ptr, ptr %75, i32 %573
  %624 = load ptr, ptr %623, align 4
  %625 = load ptr, ptr %574, align 4
  %626 = getelementptr inbounds %struct.vm_struct, ptr %624, i32 0, i32 3
  store i32 2, ptr %626, align 4
  %627 = load i32, ptr %625, align 4
  %628 = inttoptr i32 %627 to ptr
  %629 = getelementptr inbounds %struct.vm_struct, ptr %624, i32 0, i32 1
  store ptr %628, ptr %629, align 4
  %630 = getelementptr inbounds %struct.vmap_area, ptr %625, i32 0, i32 1
  %631 = load i32, ptr %630, align 4
  %632 = load i32, ptr %625, align 4
  %633 = sub i32 %631, %632
  %634 = getelementptr inbounds %struct.vm_struct, ptr %624, i32 0, i32 2
  store i32 %633, ptr %634, align 4
  %635 = getelementptr inbounds %struct.vm_struct, ptr %624, i32 0, i32 7
  store ptr @pcpu_get_vm_areas, ptr %635, align 4
  %636 = getelementptr inbounds %struct.vmap_area, ptr %625, i32 0, i32 4
  store ptr %624, ptr %636, align 4
  %637 = add nuw nsw i32 %573, 1
  %638 = icmp eq i32 %637, %2
  br i1 %638, label %642, label %572

639:                                              ; preds = %231
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %640 = load i16, ptr @free_vmap_area_lock, align 4
  %641 = add i16 %640, 1
  store i16 %641, ptr @free_vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #18
  br label %642

642:                                              ; preds = %639, %622, %569
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %643 = load i16, ptr @vmap_area_lock, align 4
  %644 = add i16 %643, 1
  store i16 %644, ptr @vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  tail call void @kfree(ptr noundef nonnull %76) #18
  br label %990

645:                                              ; preds = %954, %559
  %646 = phi i32 [ %647, %954 ], [ %263, %559 ]
  %647 = add nsw i32 %646, -1
  %648 = getelementptr ptr, ptr %76, i32 %647
  %649 = load ptr, ptr %648, align 4
  %650 = load ptr, ptr @free_vmap_area_root, align 4
  %651 = icmp eq ptr %650, null
  br i1 %651, label %902, label %652, !prof !11

652:                                              ; preds = %645
  %653 = load i32, ptr %649, align 4
  %654 = getelementptr inbounds %struct.vmap_area, ptr %649, i32 0, i32 1
  %655 = load i32, ptr %654, align 4
  br label %656

656:                                              ; preds = %671, %652
  %657 = phi ptr [ %650, %652 ], [ %673, %671 ]
  %658 = getelementptr i8, ptr %657, i32 -8
  %659 = getelementptr i8, ptr %657, i32 -4
  %660 = load i32, ptr %659, align 4
  %661 = icmp ult i32 %653, %660
  %662 = load i32, ptr %658, align 4
  %663 = icmp ugt i32 %655, %662
  br i1 %661, label %664, label %667

664:                                              ; preds = %656
  br i1 %663, label %670, label %665

665:                                              ; preds = %664
  %666 = getelementptr inbounds %struct.rb_node, ptr %657, i32 0, i32 2
  br label %671

667:                                              ; preds = %656
  br i1 %663, label %668, label %670

668:                                              ; preds = %667
  %669 = getelementptr inbounds %struct.rb_node, ptr %657, i32 0, i32 1
  br label %671

670:                                              ; preds = %667, %664
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %653, i32 noundef %655, i32 noundef %662, i32 noundef %660) #18
  br label %954

671:                                              ; preds = %668, %665
  %672 = phi ptr [ %666, %665 ], [ %669, %668 ]
  %673 = load ptr, ptr %672, align 4
  %674 = icmp eq ptr %673, null
  br i1 %674, label %675, label %656

675:                                              ; preds = %671
  %676 = icmp eq ptr %672, null
  br i1 %676, label %954, label %677

677:                                              ; preds = %675
  %678 = getelementptr i8, ptr %657, i32 12
  %679 = getelementptr inbounds %struct.rb_node, ptr %657, i32 0, i32 1
  %680 = icmp eq ptr %679, %672
  br i1 %680, label %681, label %683

681:                                              ; preds = %677
  %682 = load ptr, ptr %678, align 4
  br label %683

683:                                              ; preds = %681, %677
  %684 = phi ptr [ %682, %681 ], [ %678, %677 ]
  %685 = icmp eq ptr %684, null
  br i1 %685, label %897, label %686, !prof !11

686:                                              ; preds = %683
  %687 = icmp eq ptr %684, @free_vmap_area_list
  br i1 %687, label %694, label %688

688:                                              ; preds = %686
  %689 = getelementptr i8, ptr %684, i32 -20
  %690 = load i32, ptr %689, align 4
  %691 = icmp eq i32 %690, %655
  br i1 %691, label %692, label %694

692:                                              ; preds = %688
  store i32 %653, ptr %689, align 4
  %693 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %693, ptr noundef %649) #18
  br label %694

694:                                              ; preds = %692, %688, %686
  %695 = phi i1 [ true, %692 ], [ false, %688 ], [ false, %686 ]
  %696 = phi ptr [ %689, %692 ], [ %649, %688 ], [ %649, %686 ]
  %697 = getelementptr inbounds %struct.list_head, ptr %684, i32 0, i32 1
  %698 = load ptr, ptr %697, align 4
  %699 = icmp eq ptr %698, @free_vmap_area_list
  br i1 %699, label %896, label %700

700:                                              ; preds = %694
  %701 = getelementptr i8, ptr %698, i32 -20
  %702 = getelementptr i8, ptr %698, i32 -16
  %703 = load i32, ptr %702, align 4
  %704 = load i32, ptr %696, align 4
  %705 = icmp eq i32 %703, %704
  br i1 %705, label %706, label %896

706:                                              ; preds = %700
  br i1 %695, label %707, label %892

707:                                              ; preds = %706
  %708 = getelementptr inbounds %struct.vmap_area, ptr %696, i32 0, i32 2
  %709 = load i32, ptr %708, align 4
  %710 = ptrtoint ptr %708 to i32
  %711 = icmp eq i32 %709, %710
  br i1 %711, label %712, label %713, !prof !11

712:                                              ; preds = %707
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #18
  br label %892

713:                                              ; preds = %707
  %714 = getelementptr inbounds %struct.vmap_area, ptr %696, i32 0, i32 2, i32 1
  %715 = load ptr, ptr %714, align 4
  %716 = getelementptr inbounds %struct.vmap_area, ptr %696, i32 0, i32 2, i32 2
  %717 = load ptr, ptr %716, align 4
  %718 = icmp eq ptr %717, null
  br i1 %718, label %719, label %737

719:                                              ; preds = %713
  %720 = and i32 %709, -4
  %721 = inttoptr i32 %720 to ptr
  %722 = icmp eq i32 %720, 0
  br i1 %722, label %729, label %723

723:                                              ; preds = %719
  %724 = getelementptr inbounds %struct.rb_node, ptr %721, i32 0, i32 2
  %725 = load ptr, ptr %724, align 4
  %726 = icmp eq ptr %725, %708
  %727 = getelementptr inbounds %struct.rb_node, ptr %721, i32 0, i32 1
  %728 = select i1 %726, ptr %724, ptr %727
  br label %729

729:                                              ; preds = %723, %719
  %730 = phi ptr [ @free_vmap_area_root, %719 ], [ %728, %723 ]
  store volatile ptr %715, ptr %730, align 4
  %731 = icmp eq ptr %715, null
  br i1 %731, label %733, label %732

732:                                              ; preds = %729
  store i32 %709, ptr %715, align 4
  br label %846

733:                                              ; preds = %729
  %734 = and i32 %709, 1
  %735 = icmp eq i32 %734, 0
  %736 = select i1 %735, ptr null, ptr %721
  br label %846

737:                                              ; preds = %713
  %738 = icmp eq ptr %715, null
  br i1 %738, label %739, label %751

739:                                              ; preds = %737
  store i32 %709, ptr %717, align 4
  %740 = and i32 %709, -4
  %741 = inttoptr i32 %740 to ptr
  %742 = icmp eq i32 %740, 0
  br i1 %742, label %749, label %743

743:                                              ; preds = %739
  %744 = getelementptr inbounds %struct.rb_node, ptr %741, i32 0, i32 2
  %745 = load ptr, ptr %744, align 4
  %746 = icmp eq ptr %745, %708
  %747 = getelementptr inbounds %struct.rb_node, ptr %741, i32 0, i32 1
  %748 = select i1 %746, ptr %744, ptr %747
  br label %749

749:                                              ; preds = %743, %739
  %750 = phi ptr [ @free_vmap_area_root, %739 ], [ %748, %743 ]
  store volatile ptr %717, ptr %750, align 4
  br label %846

751:                                              ; preds = %737
  %752 = getelementptr inbounds %struct.rb_node, ptr %715, i32 0, i32 2
  %753 = load ptr, ptr %752, align 4
  %754 = icmp eq ptr %753, null
  br i1 %754, label %755, label %762

755:                                              ; preds = %751
  %756 = getelementptr inbounds %struct.rb_node, ptr %715, i32 0, i32 1
  %757 = load ptr, ptr %756, align 4
  %758 = getelementptr %struct.vmap_area, ptr %696, i32 0, i32 4
  %759 = load i32, ptr %758, align 4
  %760 = getelementptr i8, ptr %715, i32 20
  store i32 %759, ptr %760, align 4
  %761 = ptrtoint ptr %715 to i32
  br label %813

762:                                              ; preds = %762, %751
  %763 = phi ptr [ %766, %762 ], [ %753, %751 ]
  %764 = phi ptr [ %763, %762 ], [ %715, %751 ]
  %765 = getelementptr inbounds %struct.rb_node, ptr %763, i32 0, i32 2
  %766 = load ptr, ptr %765, align 4
  %767 = icmp eq ptr %766, null
  br i1 %767, label %768, label %762

768:                                              ; preds = %762
  %769 = getelementptr inbounds %struct.rb_node, ptr %763, i32 0, i32 1
  %770 = load ptr, ptr %769, align 4
  %771 = getelementptr inbounds %struct.rb_node, ptr %764, i32 0, i32 2
  store volatile ptr %770, ptr %771, align 4
  store volatile ptr %715, ptr %769, align 4
  %772 = load i32, ptr %715, align 4
  %773 = and i32 %772, 1
  %774 = ptrtoint ptr %763 to i32
  %775 = or i32 %773, %774
  store i32 %775, ptr %715, align 4
  %776 = getelementptr %struct.vmap_area, ptr %696, i32 0, i32 4
  %777 = load i32, ptr %776, align 4
  %778 = getelementptr i8, ptr %763, i32 20
  store i32 %777, ptr %778, align 4
  %779 = icmp eq ptr %764, %763
  br i1 %779, label %813, label %780

780:                                              ; preds = %808, %768
  %781 = phi ptr [ %811, %808 ], [ %764, %768 ]
  %782 = getelementptr i8, ptr %781, i32 -8
  %783 = getelementptr i8, ptr %781, i32 -4
  %784 = load i32, ptr %783, align 4
  %785 = load i32, ptr %782, align 4
  %786 = sub i32 %784, %785
  %787 = getelementptr i8, ptr %781, i32 8
  %788 = load ptr, ptr %787, align 4
  %789 = icmp eq ptr %788, null
  br i1 %789, label %794, label %790

790:                                              ; preds = %780
  %791 = getelementptr i8, ptr %788, i32 20
  %792 = load i32, ptr %791, align 4
  %793 = tail call i32 @llvm.umax.i32(i32 %792, i32 %786) #18
  br label %794

794:                                              ; preds = %790, %780
  %795 = phi i32 [ %786, %780 ], [ %793, %790 ]
  %796 = getelementptr i8, ptr %781, i32 4
  %797 = load ptr, ptr %796, align 4
  %798 = icmp eq ptr %797, null
  br i1 %798, label %803, label %799

799:                                              ; preds = %794
  %800 = getelementptr i8, ptr %797, i32 20
  %801 = load i32, ptr %800, align 4
  %802 = tail call i32 @llvm.umax.i32(i32 %801, i32 %795) #18
  br label %803

803:                                              ; preds = %799, %794
  %804 = phi i32 [ %795, %794 ], [ %802, %799 ]
  %805 = getelementptr i8, ptr %781, i32 20
  %806 = load i32, ptr %805, align 4
  %807 = icmp eq i32 %806, %804
  br i1 %807, label %813, label %808

808:                                              ; preds = %803
  store i32 %804, ptr %805, align 4
  %809 = load i32, ptr %781, align 4
  %810 = and i32 %809, -4
  %811 = inttoptr i32 %810 to ptr
  %812 = icmp eq ptr %763, %811
  br i1 %812, label %813, label %780

813:                                              ; preds = %808, %803, %768, %755
  %814 = phi i32 [ %774, %768 ], [ %761, %755 ], [ %774, %803 ], [ %774, %808 ]
  %815 = phi ptr [ %763, %768 ], [ %715, %755 ], [ %764, %803 ], [ %764, %808 ]
  %816 = phi ptr [ %763, %768 ], [ %715, %755 ], [ %763, %803 ], [ %763, %808 ]
  %817 = phi ptr [ %770, %768 ], [ %757, %755 ], [ %770, %803 ], [ %770, %808 ]
  %818 = load ptr, ptr %716, align 4
  %819 = getelementptr inbounds %struct.rb_node, ptr %816, i32 0, i32 2
  store volatile ptr %818, ptr %819, align 4
  %820 = load i32, ptr %818, align 4
  %821 = and i32 %820, 1
  %822 = or i32 %821, %814
  store i32 %822, ptr %818, align 4
  %823 = load i32, ptr %708, align 4
  %824 = and i32 %823, -4
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %833, label %826

826:                                              ; preds = %813
  %827 = inttoptr i32 %824 to ptr
  %828 = getelementptr inbounds %struct.rb_node, ptr %827, i32 0, i32 2
  %829 = load ptr, ptr %828, align 4
  %830 = icmp eq ptr %829, %708
  %831 = getelementptr inbounds %struct.rb_node, ptr %827, i32 0, i32 1
  %832 = select i1 %830, ptr %828, ptr %831
  br label %833

833:                                              ; preds = %826, %813
  %834 = phi ptr [ @free_vmap_area_root, %813 ], [ %832, %826 ]
  store volatile ptr %816, ptr %834, align 4
  %835 = icmp eq ptr %817, null
  br i1 %835, label %839, label %836

836:                                              ; preds = %833
  %837 = ptrtoint ptr %815 to i32
  %838 = or i32 %837, 1
  store i32 %838, ptr %817, align 4
  br label %844

839:                                              ; preds = %833
  %840 = load i32, ptr %816, align 4
  %841 = and i32 %840, 1
  %842 = icmp eq i32 %841, 0
  %843 = select i1 %842, ptr null, ptr %815
  br label %844

844:                                              ; preds = %839, %836
  %845 = phi ptr [ null, %836 ], [ %843, %839 ]
  store i32 %823, ptr %816, align 4
  br label %846

846:                                              ; preds = %844, %749, %733, %732
  %847 = phi ptr [ %816, %844 ], [ %741, %749 ], [ %721, %733 ], [ %721, %732 ]
  %848 = phi ptr [ %845, %844 ], [ null, %749 ], [ %736, %733 ], [ null, %732 ]
  %849 = icmp eq ptr %847, null
  br i1 %849, label %883, label %850

850:                                              ; preds = %878, %846
  %851 = phi ptr [ %881, %878 ], [ %847, %846 ]
  %852 = getelementptr i8, ptr %851, i32 -8
  %853 = getelementptr i8, ptr %851, i32 -4
  %854 = load i32, ptr %853, align 4
  %855 = load i32, ptr %852, align 4
  %856 = sub i32 %854, %855
  %857 = getelementptr i8, ptr %851, i32 8
  %858 = load ptr, ptr %857, align 4
  %859 = icmp eq ptr %858, null
  br i1 %859, label %864, label %860

860:                                              ; preds = %850
  %861 = getelementptr i8, ptr %858, i32 20
  %862 = load i32, ptr %861, align 4
  %863 = tail call i32 @llvm.umax.i32(i32 %862, i32 %856) #18
  br label %864

864:                                              ; preds = %860, %850
  %865 = phi i32 [ %856, %850 ], [ %863, %860 ]
  %866 = getelementptr i8, ptr %851, i32 4
  %867 = load ptr, ptr %866, align 4
  %868 = icmp eq ptr %867, null
  br i1 %868, label %873, label %869

869:                                              ; preds = %864
  %870 = getelementptr i8, ptr %867, i32 20
  %871 = load i32, ptr %870, align 4
  %872 = tail call i32 @llvm.umax.i32(i32 %871, i32 %865) #18
  br label %873

873:                                              ; preds = %869, %864
  %874 = phi i32 [ %865, %864 ], [ %872, %869 ]
  %875 = getelementptr i8, ptr %851, i32 20
  %876 = load i32, ptr %875, align 4
  %877 = icmp eq i32 %876, %874
  br i1 %877, label %883, label %878

878:                                              ; preds = %873
  store i32 %874, ptr %875, align 4
  %879 = load i32, ptr %851, align 4
  %880 = and i32 %879, -4
  %881 = inttoptr i32 %880 to ptr
  %882 = icmp eq i32 %880, 0
  br i1 %882, label %883, label %850

883:                                              ; preds = %878, %873, %846
  %884 = icmp eq ptr %848, null
  br i1 %884, label %886, label %885

885:                                              ; preds = %883
  tail call void @__rb_erase_color(ptr noundef nonnull %848, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #18
  br label %886

886:                                              ; preds = %885, %883
  %887 = getelementptr inbounds %struct.vmap_area, ptr %696, i32 0, i32 3
  %888 = getelementptr inbounds %struct.vmap_area, ptr %696, i32 0, i32 3, i32 1
  %889 = load ptr, ptr %888, align 4
  %890 = load ptr, ptr %887, align 4
  %891 = getelementptr inbounds %struct.list_head, ptr %890, i32 0, i32 1
  store ptr %889, ptr %891, align 4
  store volatile ptr %890, ptr %889, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %887, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %888, align 4
  store i32 %710, ptr %708, align 4
  br label %892

892:                                              ; preds = %886, %712, %706
  %893 = getelementptr inbounds %struct.vmap_area, ptr %696, i32 0, i32 1
  %894 = load i32, ptr %893, align 4
  store i32 %894, ptr %702, align 4
  %895 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %895, ptr noundef %696) #18
  br label %916

896:                                              ; preds = %700, %694
  br i1 %695, label %916, label %897

897:                                              ; preds = %896, %683
  %898 = phi ptr [ %649, %683 ], [ %696, %896 ]
  br i1 %680, label %902, label %899

899:                                              ; preds = %897
  %900 = getelementptr i8, ptr %657, i32 16
  %901 = load ptr, ptr %900, align 4
  br label %902

902:                                              ; preds = %899, %897, %645
  %903 = phi ptr [ %898, %899 ], [ %898, %897 ], [ %649, %645 ]
  %904 = phi ptr [ %672, %899 ], [ %679, %897 ], [ @free_vmap_area_root, %645 ]
  %905 = phi ptr [ %657, %899 ], [ %657, %897 ], [ null, %645 ]
  %906 = phi ptr [ %901, %899 ], [ %678, %897 ], [ @free_vmap_area_list, %645 ]
  %907 = getelementptr inbounds %struct.vmap_area, ptr %903, i32 0, i32 2
  %908 = ptrtoint ptr %905 to i32
  store i32 %908, ptr %907, align 4
  %909 = getelementptr inbounds %struct.vmap_area, ptr %903, i32 0, i32 2, i32 1
  store ptr null, ptr %909, align 4
  %910 = getelementptr inbounds %struct.vmap_area, ptr %903, i32 0, i32 2, i32 2
  store ptr null, ptr %910, align 4
  store ptr %907, ptr %904, align 4
  tail call void @__rb_insert_augmented(ptr noundef %907, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #18
  %911 = getelementptr inbounds %struct.vmap_area, ptr %903, i32 0, i32 4
  store i32 0, ptr %911, align 4
  %912 = getelementptr inbounds %struct.vmap_area, ptr %903, i32 0, i32 3
  %913 = load ptr, ptr %906, align 4
  %914 = getelementptr inbounds %struct.list_head, ptr %913, i32 0, i32 1
  store ptr %912, ptr %914, align 4
  store ptr %913, ptr %912, align 4
  %915 = getelementptr inbounds %struct.vmap_area, ptr %903, i32 0, i32 3, i32 1
  store ptr %906, ptr %915, align 4
  store volatile ptr %912, ptr %906, align 4
  br label %916

916:                                              ; preds = %902, %896, %892
  %917 = phi ptr [ %903, %902 ], [ %696, %896 ], [ %701, %892 ]
  %918 = icmp eq ptr %917, null
  br i1 %918, label %954, label %919

919:                                              ; preds = %916
  %920 = getelementptr inbounds %struct.vmap_area, ptr %917, i32 0, i32 2
  br label %921

921:                                              ; preds = %949, %919
  %922 = phi ptr [ %952, %949 ], [ %920, %919 ]
  %923 = getelementptr i8, ptr %922, i32 -8
  %924 = getelementptr i8, ptr %922, i32 -4
  %925 = load i32, ptr %924, align 4
  %926 = load i32, ptr %923, align 4
  %927 = sub i32 %925, %926
  %928 = getelementptr i8, ptr %922, i32 8
  %929 = load ptr, ptr %928, align 4
  %930 = icmp eq ptr %929, null
  br i1 %930, label %935, label %931

931:                                              ; preds = %921
  %932 = getelementptr i8, ptr %929, i32 20
  %933 = load i32, ptr %932, align 4
  %934 = tail call i32 @llvm.umax.i32(i32 %933, i32 %927) #18
  br label %935

935:                                              ; preds = %931, %921
  %936 = phi i32 [ %927, %921 ], [ %934, %931 ]
  %937 = getelementptr i8, ptr %922, i32 4
  %938 = load ptr, ptr %937, align 4
  %939 = icmp eq ptr %938, null
  br i1 %939, label %944, label %940

940:                                              ; preds = %935
  %941 = getelementptr i8, ptr %938, i32 20
  %942 = load i32, ptr %941, align 4
  %943 = tail call i32 @llvm.umax.i32(i32 %942, i32 %936) #18
  br label %944

944:                                              ; preds = %940, %935
  %945 = phi i32 [ %936, %935 ], [ %943, %940 ]
  %946 = getelementptr i8, ptr %922, i32 20
  %947 = load i32, ptr %946, align 4
  %948 = icmp eq i32 %947, %945
  br i1 %948, label %954, label %949

949:                                              ; preds = %944
  store i32 %945, ptr %946, align 4
  %950 = load i32, ptr %922, align 4
  %951 = and i32 %950, -4
  %952 = inttoptr i32 %951 to ptr
  %953 = icmp eq i32 %951, 0
  br i1 %953, label %954, label %921

954:                                              ; preds = %949, %944, %916, %675, %670
  store ptr null, ptr %648, align 4
  %955 = icmp eq i32 %647, 0
  br i1 %955, label %956, label %645

956:                                              ; preds = %954, %559, %258, %232, %190, %144, %99
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %957 = load i16, ptr @free_vmap_area_lock, align 4
  %958 = add i16 %957, 1
  store i16 %958, ptr @free_vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  br i1 %100, label %974, label %959

959:                                              ; preds = %956
  tail call void @mutex_lock(ptr noundef nonnull @vmap_purge_lock) #18
  tail call fastcc void @purge_fragmented_blocks_allcpus() #18
  %960 = tail call fastcc zeroext i1 @__purge_vmap_area_lazy(i32 noundef -1, i32 noundef 0) #18
  tail call void @mutex_unlock(ptr noundef nonnull @vmap_purge_lock) #18
  br i1 %20, label %962, label %961

961:                                              ; preds = %971, %959
  br label %99

962:                                              ; preds = %971, %959
  %963 = phi i32 [ %972, %971 ], [ 0, %959 ]
  %964 = getelementptr ptr, ptr %76, i32 %963
  %965 = load ptr, ptr %964, align 4
  %966 = icmp eq ptr %965, null
  br i1 %966, label %967, label %971

967:                                              ; preds = %962
  %968 = load ptr, ptr @vmap_area_cachep, align 4
  %969 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %968, i32 noundef 3520) #18
  store ptr %969, ptr %964, align 4
  %970 = icmp eq ptr %969, null
  br i1 %970, label %974, label %971

971:                                              ; preds = %967, %962
  %972 = add nuw nsw i32 %963, 1
  %973 = icmp eq i32 %972, %2
  br i1 %973, label %961, label %962

974:                                              ; preds = %967, %956, %87
  br i1 %20, label %975, label %987

975:                                              ; preds = %982, %974
  %976 = phi i32 [ %985, %982 ], [ 0, %974 ]
  %977 = getelementptr ptr, ptr %76, i32 %976
  %978 = load ptr, ptr %977, align 4
  %979 = icmp eq ptr %978, null
  br i1 %979, label %982, label %980

980:                                              ; preds = %975
  %981 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %981, ptr noundef nonnull %978) #18
  br label %982

982:                                              ; preds = %980, %975
  %983 = getelementptr ptr, ptr %75, i32 %976
  %984 = load ptr, ptr %983, align 4
  tail call void @kfree(ptr noundef %984) #18
  %985 = add nuw nsw i32 %976, 1
  %986 = icmp eq i32 %985, %2
  br i1 %986, label %987, label %975

987:                                              ; preds = %982, %974, %73, %70
  %988 = phi ptr [ %76, %73 ], [ null, %70 ], [ %76, %974 ], [ %76, %982 ]
  %989 = phi ptr [ %75, %73 ], [ null, %70 ], [ %75, %974 ], [ %75, %982 ]
  tail call void @kfree(ptr noundef %988) #18
  tail call void @kfree(ptr noundef %989) #18
  br label %990

990:                                              ; preds = %987, %642, %69
  %991 = phi ptr [ null, %69 ], [ null, %987 ], [ %75, %642 ]
  ret ptr %991
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @purge_vmap_area_lazy() unnamed_addr #2 {
  tail call void @mutex_lock(ptr noundef nonnull @vmap_purge_lock) #18
  tail call fastcc void @purge_fragmented_blocks_allcpus()
  %1 = tail call fastcc zeroext i1 @__purge_vmap_area_lazy(i32 noundef -1, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef nonnull @vmap_purge_lock) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcpu_free_vm_areas(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %13, %2
  %5 = phi i32 [ %14, %13 ], [ 0, %2 ]
  %6 = getelementptr ptr, ptr %0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vm_struct, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @remove_vm_area(ptr noundef %9) #18
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %13, label %12, !prof !9

12:                                               ; preds = %4
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3552, 0\0A.popsection", ""() #18, !srcloc !70
  unreachable

13:                                               ; preds = %4
  tail call void @kfree(ptr noundef %7) #18
  %14 = add nuw nsw i32 %5, 1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %4

16:                                               ; preds = %13, %2
  tail call void @kfree(ptr noundef %0) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @vmalloc_dump_obj(ptr noundef %0) local_unnamed_addr #2 {
  %2 = ptrtoint ptr %0 to i32
  %3 = add i32 %2, 4095
  %4 = and i32 %3, -4096
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #18
  %5 = load ptr, ptr @vmap_area_root, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %20, %1
  %8 = phi ptr [ %22, %20 ], [ %5, %1 ]
  %9 = getelementptr i8, ptr %8, i32 -8
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %4
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %20

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %8, i32 -4
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %4
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi ptr [ %13, %12 ], [ %19, %18 ]
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %7

24:                                               ; preds = %14
  %25 = getelementptr i8, ptr %8, i32 -8
  br label %26

26:                                               ; preds = %24, %20, %1
  %27 = phi ptr [ null, %1 ], [ %25, %24 ], [ null, %20 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %28 = load i16, ptr @vmap_area_lock, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr @vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %30 = icmp eq ptr %27, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.vmap_area, ptr %27, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.vm_struct, ptr %33, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.vm_struct, ptr %33, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = getelementptr inbounds %struct.vm_struct, ptr %33, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %37, i32 noundef %40, ptr noundef %42) #22
  br label %44

44:                                               ; preds = %35, %31, %26
  %45 = phi i1 [ false, %31 ], [ true, %35 ], [ false, %26 ]
  ret i1 %45
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @proc_vmalloc_init() #5 section ".init.text" {
  %1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.22, i16 noundef zeroext 256, ptr noundef null, ptr noundef nonnull @vmalloc_op, i32 noundef 0, ptr noundef null) #18
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pte_alloc_kernel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_pte_at(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pmd_clear_bad(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @purge_fragmented_blocks_allcpus() unnamed_addr #2 {
  %1 = alloca %struct.list_head, align 8
  %2 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  %3 = load i32, ptr @nr_cpu_ids, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %87

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  br label %7

7:                                                ; preds = %83, %5
  %8 = phi i32 [ %2, %5 ], [ %84, %83 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #18
  store ptr %1, ptr %1, align 8
  store ptr %1, ptr %6, align 4
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, ptrtoint (ptr @vmap_block_queue to i32)
  %12 = inttoptr i32 %11 to ptr
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !21
  %13 = getelementptr inbounds %struct.vmap_block_queue, ptr %12, i32 0, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %54, label %16

16:                                               ; preds = %51, %7
  %17 = phi ptr [ %52, %51 ], [ %14, %7 ]
  %18 = getelementptr i8, ptr %17, i32 -24
  %19 = getelementptr i8, ptr %17, i32 -16
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %17, i32 -12
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %20
  %24 = icmp ne i32 %23, 128
  %25 = icmp eq i32 %22, 128
  %26 = or i1 %25, %24
  br i1 %26, label %51, label %27

27:                                               ; preds = %16
  call void @_raw_spin_lock(ptr noundef %18) #18
  %28 = load i32, ptr %19, align 4
  %29 = load i32, ptr %21, align 4
  %30 = add i32 %29, %28
  %31 = icmp ne i32 %30, 128
  %32 = icmp eq i32 %29, 128
  %33 = or i1 %32, %31
  br i1 %33, label %48, label %34

34:                                               ; preds = %27
  store i32 0, ptr %19, align 4
  store i32 128, ptr %21, align 4
  %35 = getelementptr i8, ptr %17, i32 -8
  store i32 0, ptr %35, align 4
  %36 = getelementptr i8, ptr %17, i32 -4
  store i32 128, ptr %36, align 4
  call void @_raw_spin_lock(ptr noundef %12) #18
  %37 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %17, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %37, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %41 = load i16, ptr %12, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %12, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %43 = load i16, ptr %18, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %45 = getelementptr i8, ptr %17, i32 16
  %46 = load ptr, ptr %6, align 4
  store ptr %45, ptr %6, align 4
  store ptr %1, ptr %45, align 4
  %47 = getelementptr i8, ptr %17, i32 20
  store ptr %46, ptr %47, align 4
  store volatile ptr %45, ptr %46, align 4
  br label %51

48:                                               ; preds = %27
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %49 = load i16, ptr %18, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %18, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  br label %51

51:                                               ; preds = %48, %34, %16
  %52 = load volatile ptr, ptr %17, align 4
  %53 = icmp eq ptr %52, %13
  br i1 %53, label %54, label %16

54:                                               ; preds = %51, %7
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !26
  %55 = load ptr, ptr %1, align 8
  %56 = icmp eq ptr %55, %1
  br i1 %56, label %83, label %57

57:                                               ; preds = %81, %54
  %58 = phi ptr [ %60, %81 ], [ %55, %54 ]
  %59 = getelementptr i8, ptr %58, i32 -40
  %60 = load ptr, ptr %58, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %62, ptr %63, align 4
  store volatile ptr %60, ptr %62, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %58, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %61, align 4
  %64 = getelementptr i8, ptr %58, i32 -36
  %65 = load ptr, ptr %64, align 4
  %66 = load i32, ptr %65, align 4
  %67 = load ptr, ptr @high_memory, align 4
  %68 = ptrtoint ptr %67 to i32
  %69 = add i32 %68, 8388608
  %70 = and i32 %69, -8388608
  %71 = sub i32 %66, %70
  %72 = lshr i32 %71, 19
  %73 = call ptr @xa_erase(ptr noundef nonnull @vmap_blocks, i32 noundef %72) #18
  %74 = icmp eq ptr %73, %59
  br i1 %74, label %76, label %75, !prof !9

75:                                               ; preds = %57
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/vmalloc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1941, 0\0A.popsection", ""() #18, !srcloc !34
  unreachable

76:                                               ; preds = %57
  %77 = load ptr, ptr %64, align 4
  call fastcc void @free_vmap_area_noflush(ptr noundef %77) #18
  %78 = icmp eq ptr %59, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = getelementptr i8, ptr %58, i32 -8
  call void @kvfree_call_rcu(ptr noundef %80, ptr noundef nonnull inttoptr (i32 32 to ptr)) #18
  br label %81

81:                                               ; preds = %79, %76
  %82 = icmp eq ptr %60, %1
  br i1 %82, label %83, label %57

83:                                               ; preds = %81, %54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  %84 = call i32 @cpumask_next(i32 noundef %8, ptr noundef nonnull @__cpu_possible_mask) #20
  %85 = load i32, ptr @nr_cpu_ids, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %7, label %87

87:                                               ; preds = %83, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__purge_vmap_area_lazy(i32 noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  tail call void @_raw_spin_lock(ptr noundef nonnull @purge_vmap_area_lock) #18
  store ptr null, ptr @purge_vmap_area_root, align 4
  %4 = load ptr, ptr @purge_vmap_area_list, align 4
  store ptr %4, ptr %3, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @purge_vmap_area_list, i32 0, i32 1), align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  store ptr %3, ptr %6, align 4
  store volatile ptr @purge_vmap_area_list, ptr @purge_vmap_area_list, align 4
  store ptr @purge_vmap_area_list, ptr getelementptr inbounds (%struct.list_head, ptr @purge_vmap_area_list, i32 0, i32 1), align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %8 = load i16, ptr @purge_vmap_area_lock, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr @purge_vmap_area_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %10 = load volatile ptr, ptr %3, align 8
  %11 = icmp ne ptr %10, %3
  br i1 %11, label %12, label %348, !prof !9

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %10, i32 -20
  %14 = load i32, ptr %13, align 4
  %15 = call i32 @llvm.umin.i32(i32 %14, i32 %0)
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr i8, ptr %16, i32 -16
  %18 = load i32, ptr %17, align 4
  %19 = call i32 @llvm.umax.i32(i32 %18, i32 %1)
  call void @flush_tlb_kernel_range(i32 noundef %15, i32 noundef %19) #18
  %20 = load volatile i32, ptr @__num_online_cpus, align 4
  %21 = icmp eq i32 %20, 0
  %22 = call i32 @llvm.ctlz.i32(i32 %20, i1 false) #18, !range !32
  %23 = mul nsw i32 %22, -16384
  %24 = add nsw i32 %23, 524288
  %25 = select i1 %21, i32 0, i32 %24
  call void @_raw_spin_lock(ptr noundef nonnull @free_vmap_area_lock) #18
  %26 = load ptr, ptr %3, align 8
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %345, label %28

28:                                               ; preds = %343, %12
  %29 = phi ptr [ %30, %343 ], [ %26, %12 ]
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %29, i32 -20
  %32 = getelementptr i8, ptr %29, i32 -16
  %33 = load i32, ptr %32, align 4
  %34 = load i32, ptr %31, align 4
  %35 = sub i32 %33, %34
  %36 = lshr i32 %35, 12
  %37 = load ptr, ptr @free_vmap_area_root, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %285, label %39, !prof !11

39:                                               ; preds = %54, %28
  %40 = phi ptr [ %56, %54 ], [ %37, %28 ]
  %41 = getelementptr i8, ptr %40, i32 -8
  %42 = getelementptr i8, ptr %40, i32 -4
  %43 = load i32, ptr %42, align 4
  %44 = icmp ult i32 %34, %43
  %45 = load i32, ptr %41, align 4
  %46 = icmp ugt i32 %33, %45
  br i1 %44, label %47, label %50

47:                                               ; preds = %39
  br i1 %46, label %53, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.rb_node, ptr %40, i32 0, i32 2
  br label %54

50:                                               ; preds = %39
  br i1 %46, label %51, label %53

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.rb_node, ptr %40, i32 0, i32 1
  br label %54

53:                                               ; preds = %50, %47
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %34, i32 noundef %33, i32 noundef %45, i32 noundef %43) #18
  br label %343

54:                                               ; preds = %51, %48
  %55 = phi ptr [ %49, %48 ], [ %52, %51 ]
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %39

58:                                               ; preds = %54
  %59 = icmp eq ptr %55, null
  br i1 %59, label %343, label %60

60:                                               ; preds = %58
  %61 = getelementptr i8, ptr %40, i32 12
  %62 = getelementptr inbounds %struct.rb_node, ptr %40, i32 0, i32 1
  %63 = icmp eq ptr %62, %55
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load ptr, ptr %61, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi ptr [ %65, %64 ], [ %61, %60 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %280, label %69, !prof !11

69:                                               ; preds = %66
  %70 = icmp eq ptr %67, @free_vmap_area_list
  br i1 %70, label %77, label %71

71:                                               ; preds = %69
  %72 = getelementptr i8, ptr %67, i32 -20
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, %33
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  store i32 %34, ptr %72, align 4
  %76 = load ptr, ptr @vmap_area_cachep, align 4
  call void @kmem_cache_free(ptr noundef %76, ptr noundef %31) #18
  br label %77

77:                                               ; preds = %75, %71, %69
  %78 = phi i1 [ true, %75 ], [ false, %71 ], [ false, %69 ]
  %79 = phi ptr [ %72, %75 ], [ %31, %71 ], [ %31, %69 ]
  %80 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, @free_vmap_area_list
  br i1 %82, label %279, label %83

83:                                               ; preds = %77
  %84 = getelementptr i8, ptr %81, i32 -20
  %85 = getelementptr i8, ptr %81, i32 -16
  %86 = load i32, ptr %85, align 4
  %87 = load i32, ptr %79, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %279

89:                                               ; preds = %83
  br i1 %78, label %90, label %275

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.vmap_area, ptr %79, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = ptrtoint ptr %91 to i32
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96, !prof !11

95:                                               ; preds = %90
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #18
  br label %275

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.vmap_area, ptr %79, i32 0, i32 2, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.vmap_area, ptr %79, i32 0, i32 2, i32 2
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %120

102:                                              ; preds = %96
  %103 = and i32 %92, -4
  %104 = inttoptr i32 %103 to ptr
  %105 = icmp eq i32 %103, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.rb_node, ptr %104, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, %91
  %110 = getelementptr inbounds %struct.rb_node, ptr %104, i32 0, i32 1
  %111 = select i1 %109, ptr %107, ptr %110
  br label %112

112:                                              ; preds = %106, %102
  %113 = phi ptr [ @free_vmap_area_root, %102 ], [ %111, %106 ]
  store volatile ptr %98, ptr %113, align 4
  %114 = icmp eq ptr %98, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  store i32 %92, ptr %98, align 4
  br label %229

116:                                              ; preds = %112
  %117 = and i32 %92, 1
  %118 = icmp eq i32 %117, 0
  %119 = select i1 %118, ptr null, ptr %104
  br label %229

120:                                              ; preds = %96
  %121 = icmp eq ptr %98, null
  br i1 %121, label %122, label %134

122:                                              ; preds = %120
  store i32 %92, ptr %100, align 4
  %123 = and i32 %92, -4
  %124 = inttoptr i32 %123 to ptr
  %125 = icmp eq i32 %123, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.rb_node, ptr %124, i32 0, i32 2
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, %91
  %130 = getelementptr inbounds %struct.rb_node, ptr %124, i32 0, i32 1
  %131 = select i1 %129, ptr %127, ptr %130
  br label %132

132:                                              ; preds = %126, %122
  %133 = phi ptr [ @free_vmap_area_root, %122 ], [ %131, %126 ]
  store volatile ptr %100, ptr %133, align 4
  br label %229

134:                                              ; preds = %120
  %135 = getelementptr inbounds %struct.rb_node, ptr %98, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.rb_node, ptr %98, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr %struct.vmap_area, ptr %79, i32 0, i32 4
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr i8, ptr %98, i32 20
  store i32 %142, ptr %143, align 4
  %144 = ptrtoint ptr %98 to i32
  br label %196

145:                                              ; preds = %145, %134
  %146 = phi ptr [ %149, %145 ], [ %136, %134 ]
  %147 = phi ptr [ %146, %145 ], [ %98, %134 ]
  %148 = getelementptr inbounds %struct.rb_node, ptr %146, i32 0, i32 2
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %145

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.rb_node, ptr %146, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.rb_node, ptr %147, i32 0, i32 2
  store volatile ptr %153, ptr %154, align 4
  store volatile ptr %98, ptr %152, align 4
  %155 = load i32, ptr %98, align 4
  %156 = and i32 %155, 1
  %157 = ptrtoint ptr %146 to i32
  %158 = or i32 %156, %157
  store i32 %158, ptr %98, align 4
  %159 = getelementptr %struct.vmap_area, ptr %79, i32 0, i32 4
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr i8, ptr %146, i32 20
  store i32 %160, ptr %161, align 4
  %162 = icmp eq ptr %147, %146
  br i1 %162, label %196, label %163

163:                                              ; preds = %191, %151
  %164 = phi ptr [ %194, %191 ], [ %147, %151 ]
  %165 = getelementptr i8, ptr %164, i32 -8
  %166 = getelementptr i8, ptr %164, i32 -4
  %167 = load i32, ptr %166, align 4
  %168 = load i32, ptr %165, align 4
  %169 = sub i32 %167, %168
  %170 = getelementptr i8, ptr %164, i32 8
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %177, label %173

173:                                              ; preds = %163
  %174 = getelementptr i8, ptr %171, i32 20
  %175 = load i32, ptr %174, align 4
  %176 = call i32 @llvm.umax.i32(i32 %175, i32 %169) #18
  br label %177

177:                                              ; preds = %173, %163
  %178 = phi i32 [ %169, %163 ], [ %176, %173 ]
  %179 = getelementptr i8, ptr %164, i32 4
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %186, label %182

182:                                              ; preds = %177
  %183 = getelementptr i8, ptr %180, i32 20
  %184 = load i32, ptr %183, align 4
  %185 = call i32 @llvm.umax.i32(i32 %184, i32 %178) #18
  br label %186

186:                                              ; preds = %182, %177
  %187 = phi i32 [ %178, %177 ], [ %185, %182 ]
  %188 = getelementptr i8, ptr %164, i32 20
  %189 = load i32, ptr %188, align 4
  %190 = icmp eq i32 %189, %187
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  store i32 %187, ptr %188, align 4
  %192 = load i32, ptr %164, align 4
  %193 = and i32 %192, -4
  %194 = inttoptr i32 %193 to ptr
  %195 = icmp eq ptr %146, %194
  br i1 %195, label %196, label %163

196:                                              ; preds = %191, %186, %151, %138
  %197 = phi i32 [ %157, %151 ], [ %144, %138 ], [ %157, %186 ], [ %157, %191 ]
  %198 = phi ptr [ %146, %151 ], [ %98, %138 ], [ %147, %186 ], [ %147, %191 ]
  %199 = phi ptr [ %146, %151 ], [ %98, %138 ], [ %146, %186 ], [ %146, %191 ]
  %200 = phi ptr [ %153, %151 ], [ %140, %138 ], [ %153, %186 ], [ %153, %191 ]
  %201 = load ptr, ptr %99, align 4
  %202 = getelementptr inbounds %struct.rb_node, ptr %199, i32 0, i32 2
  store volatile ptr %201, ptr %202, align 4
  %203 = load i32, ptr %201, align 4
  %204 = and i32 %203, 1
  %205 = or i32 %204, %197
  store i32 %205, ptr %201, align 4
  %206 = load i32, ptr %91, align 4
  %207 = and i32 %206, -4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %216, label %209

209:                                              ; preds = %196
  %210 = inttoptr i32 %207 to ptr
  %211 = getelementptr inbounds %struct.rb_node, ptr %210, i32 0, i32 2
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, %91
  %214 = getelementptr inbounds %struct.rb_node, ptr %210, i32 0, i32 1
  %215 = select i1 %213, ptr %211, ptr %214
  br label %216

216:                                              ; preds = %209, %196
  %217 = phi ptr [ @free_vmap_area_root, %196 ], [ %215, %209 ]
  store volatile ptr %199, ptr %217, align 4
  %218 = icmp eq ptr %200, null
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = ptrtoint ptr %198 to i32
  %221 = or i32 %220, 1
  store i32 %221, ptr %200, align 4
  br label %227

222:                                              ; preds = %216
  %223 = load i32, ptr %199, align 4
  %224 = and i32 %223, 1
  %225 = icmp eq i32 %224, 0
  %226 = select i1 %225, ptr null, ptr %198
  br label %227

227:                                              ; preds = %222, %219
  %228 = phi ptr [ null, %219 ], [ %226, %222 ]
  store i32 %206, ptr %199, align 4
  br label %229

229:                                              ; preds = %227, %132, %116, %115
  %230 = phi ptr [ %199, %227 ], [ %124, %132 ], [ %104, %116 ], [ %104, %115 ]
  %231 = phi ptr [ %228, %227 ], [ null, %132 ], [ %119, %116 ], [ null, %115 ]
  %232 = icmp eq ptr %230, null
  br i1 %232, label %266, label %233

233:                                              ; preds = %261, %229
  %234 = phi ptr [ %264, %261 ], [ %230, %229 ]
  %235 = getelementptr i8, ptr %234, i32 -8
  %236 = getelementptr i8, ptr %234, i32 -4
  %237 = load i32, ptr %236, align 4
  %238 = load i32, ptr %235, align 4
  %239 = sub i32 %237, %238
  %240 = getelementptr i8, ptr %234, i32 8
  %241 = load ptr, ptr %240, align 4
  %242 = icmp eq ptr %241, null
  br i1 %242, label %247, label %243

243:                                              ; preds = %233
  %244 = getelementptr i8, ptr %241, i32 20
  %245 = load i32, ptr %244, align 4
  %246 = call i32 @llvm.umax.i32(i32 %245, i32 %239) #18
  br label %247

247:                                              ; preds = %243, %233
  %248 = phi i32 [ %239, %233 ], [ %246, %243 ]
  %249 = getelementptr i8, ptr %234, i32 4
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %256, label %252

252:                                              ; preds = %247
  %253 = getelementptr i8, ptr %250, i32 20
  %254 = load i32, ptr %253, align 4
  %255 = call i32 @llvm.umax.i32(i32 %254, i32 %248) #18
  br label %256

256:                                              ; preds = %252, %247
  %257 = phi i32 [ %248, %247 ], [ %255, %252 ]
  %258 = getelementptr i8, ptr %234, i32 20
  %259 = load i32, ptr %258, align 4
  %260 = icmp eq i32 %259, %257
  br i1 %260, label %266, label %261

261:                                              ; preds = %256
  store i32 %257, ptr %258, align 4
  %262 = load i32, ptr %234, align 4
  %263 = and i32 %262, -4
  %264 = inttoptr i32 %263 to ptr
  %265 = icmp eq i32 %263, 0
  br i1 %265, label %266, label %233

266:                                              ; preds = %261, %256, %229
  %267 = icmp eq ptr %231, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %266
  call void @__rb_erase_color(ptr noundef nonnull %231, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #18
  br label %269

269:                                              ; preds = %268, %266
  %270 = getelementptr inbounds %struct.vmap_area, ptr %79, i32 0, i32 3
  %271 = getelementptr inbounds %struct.vmap_area, ptr %79, i32 0, i32 3, i32 1
  %272 = load ptr, ptr %271, align 4
  %273 = load ptr, ptr %270, align 4
  %274 = getelementptr inbounds %struct.list_head, ptr %273, i32 0, i32 1
  store ptr %272, ptr %274, align 4
  store volatile ptr %273, ptr %272, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %270, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %271, align 4
  store i32 %93, ptr %91, align 4
  br label %275

275:                                              ; preds = %269, %95, %89
  %276 = getelementptr inbounds %struct.vmap_area, ptr %79, i32 0, i32 1
  %277 = load i32, ptr %276, align 4
  store i32 %277, ptr %85, align 4
  %278 = load ptr, ptr @vmap_area_cachep, align 4
  call void @kmem_cache_free(ptr noundef %278, ptr noundef %79) #18
  br label %299

279:                                              ; preds = %83, %77
  br i1 %78, label %299, label %280

280:                                              ; preds = %279, %66
  %281 = phi ptr [ %31, %66 ], [ %79, %279 ]
  br i1 %63, label %285, label %282

282:                                              ; preds = %280
  %283 = getelementptr i8, ptr %40, i32 16
  %284 = load ptr, ptr %283, align 4
  br label %285

285:                                              ; preds = %282, %280, %28
  %286 = phi ptr [ %281, %282 ], [ %281, %280 ], [ %31, %28 ]
  %287 = phi ptr [ %55, %282 ], [ %62, %280 ], [ @free_vmap_area_root, %28 ]
  %288 = phi ptr [ %40, %282 ], [ %40, %280 ], [ null, %28 ]
  %289 = phi ptr [ %284, %282 ], [ %61, %280 ], [ @free_vmap_area_list, %28 ]
  %290 = getelementptr inbounds %struct.vmap_area, ptr %286, i32 0, i32 2
  %291 = ptrtoint ptr %288 to i32
  store i32 %291, ptr %290, align 4
  %292 = getelementptr inbounds %struct.vmap_area, ptr %286, i32 0, i32 2, i32 1
  store ptr null, ptr %292, align 4
  %293 = getelementptr inbounds %struct.vmap_area, ptr %286, i32 0, i32 2, i32 2
  store ptr null, ptr %293, align 4
  store ptr %290, ptr %287, align 4
  call void @__rb_insert_augmented(ptr noundef %290, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #18
  %294 = getelementptr inbounds %struct.vmap_area, ptr %286, i32 0, i32 4
  store i32 0, ptr %294, align 4
  %295 = getelementptr inbounds %struct.vmap_area, ptr %286, i32 0, i32 3
  %296 = load ptr, ptr %289, align 4
  %297 = getelementptr inbounds %struct.list_head, ptr %296, i32 0, i32 1
  store ptr %295, ptr %297, align 4
  store ptr %296, ptr %295, align 4
  %298 = getelementptr inbounds %struct.vmap_area, ptr %286, i32 0, i32 3, i32 1
  store ptr %289, ptr %298, align 4
  store volatile ptr %295, ptr %289, align 4
  br label %299

299:                                              ; preds = %285, %279, %275
  %300 = phi ptr [ %286, %285 ], [ %79, %279 ], [ %84, %275 ]
  %301 = icmp eq ptr %300, null
  br i1 %301, label %343, label %302

302:                                              ; preds = %299
  %303 = getelementptr inbounds %struct.vmap_area, ptr %300, i32 0, i32 2
  br label %304

304:                                              ; preds = %332, %302
  %305 = phi ptr [ %335, %332 ], [ %303, %302 ]
  %306 = getelementptr i8, ptr %305, i32 -8
  %307 = getelementptr i8, ptr %305, i32 -4
  %308 = load i32, ptr %307, align 4
  %309 = load i32, ptr %306, align 4
  %310 = sub i32 %308, %309
  %311 = getelementptr i8, ptr %305, i32 8
  %312 = load ptr, ptr %311, align 4
  %313 = icmp eq ptr %312, null
  br i1 %313, label %318, label %314

314:                                              ; preds = %304
  %315 = getelementptr i8, ptr %312, i32 20
  %316 = load i32, ptr %315, align 4
  %317 = call i32 @llvm.umax.i32(i32 %316, i32 %310) #18
  br label %318

318:                                              ; preds = %314, %304
  %319 = phi i32 [ %310, %304 ], [ %317, %314 ]
  %320 = getelementptr i8, ptr %305, i32 4
  %321 = load ptr, ptr %320, align 4
  %322 = icmp eq ptr %321, null
  br i1 %322, label %327, label %323

323:                                              ; preds = %318
  %324 = getelementptr i8, ptr %321, i32 20
  %325 = load i32, ptr %324, align 4
  %326 = call i32 @llvm.umax.i32(i32 %325, i32 %319) #18
  br label %327

327:                                              ; preds = %323, %318
  %328 = phi i32 [ %319, %318 ], [ %326, %323 ]
  %329 = getelementptr i8, ptr %305, i32 20
  %330 = load i32, ptr %329, align 4
  %331 = icmp eq i32 %330, %328
  br i1 %331, label %337, label %332

332:                                              ; preds = %327
  store i32 %328, ptr %329, align 4
  %333 = load i32, ptr %305, align 4
  %334 = and i32 %333, -4
  %335 = inttoptr i32 %334 to ptr
  %336 = icmp eq i32 %334, 0
  br i1 %336, label %337, label %304

337:                                              ; preds = %332, %327
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @vmap_lazy_nr) #18, !srcloc !61
  %338 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @vmap_lazy_nr, ptr nonnull @vmap_lazy_nr, i32 %36, ptr nonnull elementtype(i32) @vmap_lazy_nr) #18, !srcloc !69
  %339 = load volatile i32, ptr @vmap_lazy_nr, align 4
  %340 = icmp ult i32 %339, %25
  br i1 %340, label %341, label %343

341:                                              ; preds = %337
  %342 = call i32 @__cond_resched_lock(ptr noundef nonnull @free_vmap_area_lock) #18
  br label %343

343:                                              ; preds = %341, %337, %299, %58, %53
  %344 = icmp eq ptr %30, %3
  br i1 %344, label %345, label %28

345:                                              ; preds = %343, %12
  call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %346 = load i16, ptr @free_vmap_area_lock, align 4
  %347 = add i16 %346, 1
  store i16 %347, ptr @free_vmap_area_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  br label %348

348:                                              ; preds = %345, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret i1 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_vmap_area_noflush(ptr noundef %0) unnamed_addr #2 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #18
  %2 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = ptrtoint ptr %2 to i32
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %7, !prof !11

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #18
  br label %13

7:                                                ; preds = %1
  tail call void @rb_erase(ptr noundef %2, ptr noundef nonnull @vmap_area_root) #18
  %8 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  store i32 %4, ptr %2, align 4
  br label %13

13:                                               ; preds = %7, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %14 = load i16, ptr @vmap_area_lock, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr @vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %16 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %0, align 4
  %19 = sub i32 %17, %18
  %20 = lshr i32 %19, 12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !79
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @vmap_lazy_nr) #18, !srcloc !61
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @vmap_lazy_nr, ptr nonnull @vmap_lazy_nr, i32 %20, ptr nonnull elementtype(i32) @vmap_lazy_nr) #18, !srcloc !80
  %22 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !81
  tail call void @_raw_spin_lock(ptr noundef nonnull @purge_vmap_area_lock) #18
  %23 = load ptr, ptr @purge_vmap_area_root, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %100, label %25, !prof !11

25:                                               ; preds = %13
  %26 = load i32, ptr %0, align 4
  %27 = load i32, ptr %16, align 4
  br label %28

28:                                               ; preds = %43, %25
  %29 = phi ptr [ %23, %25 ], [ %45, %43 ]
  %30 = getelementptr i8, ptr %29, i32 -8
  %31 = getelementptr i8, ptr %29, i32 -4
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %26, %32
  %34 = load i32, ptr %30, align 4
  %35 = icmp ugt i32 %27, %34
  br i1 %33, label %36, label %39

36:                                               ; preds = %28
  br i1 %35, label %42, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 2
  br label %43

39:                                               ; preds = %28
  br i1 %35, label %40, label %42

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 1
  br label %43

42:                                               ; preds = %39, %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %26, i32 noundef %27, i32 noundef %34, i32 noundef %32) #18
  br label %113

43:                                               ; preds = %40, %37
  %44 = phi ptr [ %38, %37 ], [ %41, %40 ]
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %28

47:                                               ; preds = %43
  %48 = icmp eq ptr %44, null
  br i1 %48, label %113, label %49

49:                                               ; preds = %47
  %50 = getelementptr i8, ptr %29, i32 12
  %51 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 1
  %52 = icmp eq ptr %51, %44
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load ptr, ptr %50, align 4
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi ptr [ %54, %53 ], [ %50, %49 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %95, label %58, !prof !11

58:                                               ; preds = %55
  %59 = icmp eq ptr %56, @purge_vmap_area_list
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = getelementptr i8, ptr %56, i32 -20
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, %27
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  store i32 %26, ptr %61, align 4
  %65 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %65, ptr noundef %0) #18
  br label %66

66:                                               ; preds = %64, %60, %58
  %67 = phi i1 [ true, %64 ], [ false, %60 ], [ false, %58 ]
  %68 = phi ptr [ %61, %64 ], [ %0, %60 ], [ %0, %58 ]
  %69 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, @purge_vmap_area_list
  br i1 %71, label %94, label %72

72:                                               ; preds = %66
  %73 = getelementptr i8, ptr %70, i32 -16
  %74 = load i32, ptr %73, align 4
  %75 = load i32, ptr %68, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  br i1 %67, label %78, label %90

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.vmap_area, ptr %68, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = ptrtoint ptr %79 to i32
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84, !prof !11

83:                                               ; preds = %78
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 962, i32 noundef 9, ptr noundef null) #18
  br label %90

84:                                               ; preds = %78
  tail call void @rb_erase(ptr noundef %79, ptr noundef nonnull @purge_vmap_area_root) #18
  %85 = getelementptr inbounds %struct.vmap_area, ptr %68, i32 0, i32 3
  %86 = getelementptr inbounds %struct.vmap_area, ptr %68, i32 0, i32 3, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = load ptr, ptr %85, align 4
  %89 = getelementptr inbounds %struct.list_head, ptr %88, i32 0, i32 1
  store ptr %87, ptr %89, align 4
  store volatile ptr %88, ptr %87, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %85, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %86, align 4
  store i32 %81, ptr %79, align 4
  br label %90

90:                                               ; preds = %84, %83, %77
  %91 = getelementptr inbounds %struct.vmap_area, ptr %68, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  store i32 %92, ptr %73, align 4
  %93 = load ptr, ptr @vmap_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %93, ptr noundef %68) #18
  br label %113

94:                                               ; preds = %72, %66
  br i1 %67, label %113, label %95

95:                                               ; preds = %94, %55
  %96 = phi ptr [ %0, %55 ], [ %68, %94 ]
  br i1 %52, label %100, label %97

97:                                               ; preds = %95
  %98 = getelementptr i8, ptr %29, i32 16
  %99 = load ptr, ptr %98, align 4
  br label %100

100:                                              ; preds = %97, %95, %13
  %101 = phi ptr [ %96, %97 ], [ %96, %95 ], [ %0, %13 ]
  %102 = phi ptr [ %44, %97 ], [ %51, %95 ], [ @purge_vmap_area_root, %13 ]
  %103 = phi ptr [ %29, %97 ], [ %29, %95 ], [ null, %13 ]
  %104 = phi ptr [ %99, %97 ], [ %50, %95 ], [ @purge_vmap_area_list, %13 ]
  %105 = getelementptr inbounds %struct.vmap_area, ptr %101, i32 0, i32 2
  %106 = ptrtoint ptr %103 to i32
  store i32 %106, ptr %105, align 4
  %107 = getelementptr inbounds %struct.vmap_area, ptr %101, i32 0, i32 2, i32 1
  store ptr null, ptr %107, align 4
  %108 = getelementptr inbounds %struct.vmap_area, ptr %101, i32 0, i32 2, i32 2
  store ptr null, ptr %108, align 4
  store ptr %105, ptr %102, align 4
  tail call void @rb_insert_color(ptr noundef %105, ptr noundef nonnull @purge_vmap_area_root) #18
  %109 = getelementptr inbounds %struct.vmap_area, ptr %101, i32 0, i32 3
  %110 = load ptr, ptr %104, align 4
  %111 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  store ptr %109, ptr %111, align 4
  store ptr %110, ptr %109, align 4
  %112 = getelementptr inbounds %struct.vmap_area, ptr %101, i32 0, i32 3, i32 1
  store ptr %104, ptr %112, align 4
  store volatile ptr %109, ptr %104, align 4
  br label %113

113:                                              ; preds = %100, %94, %90, %47, %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %114 = load i16, ptr @purge_vmap_area_lock, align 4
  %115 = add i16 %114, 1
  store i16 %115, ptr @purge_vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  %116 = load volatile i32, ptr @__num_online_cpus, align 4
  %117 = icmp eq i32 %116, 0
  %118 = tail call i32 @llvm.ctlz.i32(i32 %116, i1 false) #18, !range !32
  %119 = mul nsw i32 %118, -8192
  %120 = add nsw i32 %119, 262144
  %121 = select i1 %117, i32 0, i32 %120
  %122 = icmp ugt i32 %22, %121
  br i1 %122, label %123, label %124, !prof !11

123:                                              ; preds = %113
  tail call fastcc void @try_purge_vmap_area_lazy()
  br label %124

124:                                              ; preds = %123, %113
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @try_purge_vmap_area_lazy() unnamed_addr #2 {
  %1 = tail call i32 @mutex_trylock(ptr noundef nonnull @vmap_purge_lock) #18
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call fastcc zeroext i1 @__purge_vmap_area_lazy(i32 noundef -1, i32 noundef 0)
  tail call void @mutex_unlock(ptr noundef nonnull @vmap_purge_lock) #18
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_erase_color(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @free_vmap_area_rb_augment_cb_rotate(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) #14 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = getelementptr i8, ptr %0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %1, i32 20
  store i32 %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %3, align 4
  %10 = sub i32 %8, %9
  %11 = getelementptr i8, ptr %0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %12, i32 20
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 %10) #18
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i32 [ %10, %2 ], [ %17, %14 ]
  %20 = getelementptr i8, ptr %0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = getelementptr i8, ptr %21, i32 20
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @llvm.umax.i32(i32 %25, i32 %19) #18
  br label %27

27:                                               ; preds = %23, %18
  %28 = phi i32 [ %19, %18 ], [ %26, %23 ]
  store i32 %28, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rb_insert_augmented(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #15

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @insert_vmap_area_augment(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 4
  %6 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %23, %4
  %9 = phi ptr [ %1, %4 ], [ %25, %23 ]
  %10 = getelementptr i8, ptr %9, i32 -8
  %11 = getelementptr i8, ptr %9, i32 -4
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %5, %12
  %14 = load i32, ptr %10, align 4
  %15 = icmp ugt i32 %7, %14
  br i1 %13, label %16, label %19

16:                                               ; preds = %8
  br i1 %15, label %22, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  br label %23

19:                                               ; preds = %8
  br i1 %15, label %20, label %22

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  br label %23

22:                                               ; preds = %19, %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %5, i32 noundef %7, i32 noundef %14, i32 noundef %12) #18
  br label %110

23:                                               ; preds = %20, %17
  %24 = phi ptr [ %18, %17 ], [ %21, %20 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %53, label %8

27:                                               ; preds = %2
  %28 = load ptr, ptr @free_vmap_area_root, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %64, label %30, !prof !11

30:                                               ; preds = %27
  %31 = load i32, ptr %0, align 4
  %32 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %49, %30
  %35 = phi ptr [ %28, %30 ], [ %51, %49 ]
  %36 = getelementptr i8, ptr %35, i32 -8
  %37 = getelementptr i8, ptr %35, i32 -4
  %38 = load i32, ptr %37, align 4
  %39 = icmp ult i32 %31, %38
  %40 = load i32, ptr %36, align 4
  %41 = icmp ugt i32 %33, %40
  br i1 %39, label %42, label %45

42:                                               ; preds = %34
  br i1 %41, label %48, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.rb_node, ptr %35, i32 0, i32 2
  br label %49

45:                                               ; preds = %34
  br i1 %41, label %46, label %48

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.rb_node, ptr %35, i32 0, i32 1
  br label %49

48:                                               ; preds = %45, %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 892, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %31, i32 noundef %33, i32 noundef %40, i32 noundef %38) #18
  br label %110

49:                                               ; preds = %46, %43
  %50 = phi ptr [ %44, %43 ], [ %47, %46 ]
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %34

53:                                               ; preds = %49, %23
  %54 = phi ptr [ %35, %49 ], [ %9, %23 ]
  %55 = phi ptr [ %50, %49 ], [ %24, %23 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %110, label %57

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %54, i32 12
  %59 = getelementptr inbounds %struct.rb_node, ptr %54, i32 0, i32 1
  %60 = icmp eq ptr %59, %55
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = getelementptr i8, ptr %54, i32 16
  %63 = load ptr, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %57, %27
  %65 = phi ptr [ %55, %61 ], [ %55, %57 ], [ @free_vmap_area_root, %27 ]
  %66 = phi ptr [ %54, %61 ], [ %54, %57 ], [ null, %27 ]
  %67 = phi ptr [ %63, %61 ], [ %58, %57 ], [ @free_vmap_area_list, %27 ]
  %68 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 2
  %69 = ptrtoint ptr %66 to i32
  store i32 %69, ptr %68, align 4
  %70 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 2, i32 1
  store ptr null, ptr %70, align 4
  %71 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 2, i32 2
  store ptr null, ptr %71, align 4
  store ptr %68, ptr %65, align 4
  tail call void @__rb_insert_augmented(ptr noundef %68, ptr noundef nonnull @free_vmap_area_root, ptr noundef nonnull @free_vmap_area_rb_augment_cb_rotate) #18
  %72 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 4
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 3
  %74 = load ptr, ptr %67, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %73, ptr %75, align 4
  store ptr %74, ptr %73, align 4
  %76 = getelementptr inbounds %struct.vmap_area, ptr %0, i32 0, i32 3, i32 1
  store ptr %67, ptr %76, align 4
  store volatile ptr %73, ptr %67, align 4
  br label %77

77:                                               ; preds = %105, %64
  %78 = phi ptr [ %108, %105 ], [ %68, %64 ]
  %79 = getelementptr i8, ptr %78, i32 -8
  %80 = getelementptr i8, ptr %78, i32 -4
  %81 = load i32, ptr %80, align 4
  %82 = load i32, ptr %79, align 4
  %83 = sub i32 %81, %82
  %84 = getelementptr i8, ptr %78, i32 8
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %77
  %88 = getelementptr i8, ptr %85, i32 20
  %89 = load i32, ptr %88, align 4
  %90 = tail call i32 @llvm.umax.i32(i32 %89, i32 %83) #18
  br label %91

91:                                               ; preds = %87, %77
  %92 = phi i32 [ %83, %77 ], [ %90, %87 ]
  %93 = getelementptr i8, ptr %78, i32 4
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %91
  %97 = getelementptr i8, ptr %94, i32 20
  %98 = load i32, ptr %97, align 4
  %99 = tail call i32 @llvm.umax.i32(i32 %98, i32 %92) #18
  br label %100

100:                                              ; preds = %96, %91
  %101 = phi i32 [ %92, %91 ], [ %99, %96 ]
  %102 = getelementptr i8, ptr %78, i32 20
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, %101
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  store i32 %101, ptr %102, align 4
  %106 = load i32, ptr %78, align 4
  %107 = and i32 %106, -4
  %108 = inttoptr i32 %107 to ptr
  %109 = icmp eq i32 %107, 0
  br i1 %109, label %110, label %77

110:                                              ; preds = %105, %100, %53, %48, %22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @llist_add_batch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__alloc_pages_bulk(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @s_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  tail call void @mutex_lock(ptr noundef nonnull @vmap_purge_lock) #18
  tail call void @_raw_spin_lock(ptr noundef nonnull @vmap_area_lock) #18
  %3 = load i64, ptr %1, align 8
  %4 = tail call ptr @seq_list_start(ptr noundef nonnull @vmap_area_list, i64 noundef %3) #18
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #2 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %3 = load i16, ptr @vmap_area_lock, align 4
  %4 = add i16 %3, 1
  store i16 %4, ptr @vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  tail call void @mutex_unlock(ptr noundef nonnull @vmap_purge_lock) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @s_next(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = tail call ptr @seq_list_next(ptr noundef %1, ptr noundef nonnull @vmap_area_list, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s_show(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr i8, ptr %1, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %1, i32 -20
  %8 = load i32, ptr %7, align 4
  %9 = inttoptr i32 %8 to ptr
  %10 = getelementptr i8, ptr %1, i32 -16
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i32 %11 to ptr
  %13 = sub i32 %11, %8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %9, ptr noundef %12, i32 noundef %13) #18
  br label %77

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.vm_struct, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.vm_struct, ptr %4, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr i8, ptr %16, i32 %18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %16, ptr noundef %19, i32 noundef %18) #18
  %20 = getelementptr inbounds %struct.vm_struct, ptr %4, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull %21) #18
  br label %24

24:                                               ; preds = %23, %14
  %25 = getelementptr inbounds %struct.vm_struct, ptr %4, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %26) #18
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds %struct.vm_struct, ptr %4, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef %30) #18
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr inbounds %struct.vm_struct, ptr %4, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.28) #18
  %40 = load i32, ptr %35, align 4
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi i32 [ %40, %39 ], [ %36, %34 ]
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.29) #18
  %46 = load i32, ptr %35, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi i32 [ %46, %45 ], [ %42, %41 ]
  %49 = and i32 %48, 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.30) #18
  %52 = load i32, ptr %35, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i32 [ %52, %51 ], [ %48, %47 ]
  %55 = and i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.31) #18
  %58 = load i32, ptr %35, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i32 [ %58, %57 ], [ %54, %53 ]
  %61 = and i32 %60, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.32) #18
  br label %64

64:                                               ; preds = %63, %59
  %65 = getelementptr inbounds %struct.vm_struct, ptr %4, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = load ptr, ptr @high_memory, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = add i32 %69, 8388608
  %71 = and i32 %70, -8388608
  %72 = icmp ule i32 %71, %67
  %73 = icmp ult ptr %66, inttoptr (i32 -8388608 to ptr)
  %74 = and i1 %73, %72
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.33) #18
  br label %76

76:                                               ; preds = %75, %64
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #18
  br label %77

77:                                               ; preds = %76, %6
  %78 = load ptr, ptr %1, align 4
  %79 = icmp eq ptr %78, @vmap_area_list
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  tail call void @_raw_spin_lock(ptr noundef nonnull @purge_vmap_area_lock) #18
  %81 = load ptr, ptr @purge_vmap_area_list, align 4
  %82 = icmp eq ptr %81, @purge_vmap_area_list
  br i1 %82, label %94, label %83

83:                                               ; preds = %83, %80
  %84 = phi ptr [ %92, %83 ], [ %81, %80 ]
  %85 = getelementptr i8, ptr %84, i32 -20
  %86 = load i32, ptr %85, align 4
  %87 = inttoptr i32 %86 to ptr
  %88 = getelementptr i8, ptr %84, i32 -16
  %89 = load i32, ptr %88, align 4
  %90 = inttoptr i32 %89 to ptr
  %91 = sub i32 %89, %86
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %87, ptr noundef %90, i32 noundef %91) #18
  %92 = load ptr, ptr %84, align 4
  %93 = icmp eq ptr %92, @purge_vmap_area_list
  br i1 %93, label %94, label %83

94:                                               ; preds = %83, %80
  tail call void asm sideeffect "dmb ish", "~{memory}"() #18, !srcloc !22
  %95 = load i16, ptr @purge_vmap_area_lock, align 4
  %96 = add i16 %95, 1
  store i16 %96, ptr @purge_vmap_area_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #18, !srcloc !23
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #18, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !25
  br label %97

97:                                               ; preds = %94, %77
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind null_pointer_is_valid sspstrong allocsize(0) uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nounwind readonly }
attributes #16 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind }
attributes #19 = { nounwind readnone }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { allocsize(0) }

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
!10 = !{i64 2153583885, i64 2153584362, i64 2153583922, i64 2153583978, i64 2153584012, i64 2153584036, i64 2153584077, i64 2153584098, i64 2153584126, i64 2153584160}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2148704016, i64 2148704039, i64 2148704071, i64 2148704103, i64 2148704141, i64 2148704171}
!13 = !{i64 2153581431, i64 2153581908, i64 2153581468, i64 2153581524, i64 2153581558, i64 2153581582, i64 2153581623, i64 2153581644, i64 2153581672, i64 2153581706}
!14 = !{i64 2152350626}
!15 = !{i64 2153586902, i64 2153587379, i64 2153586939, i64 2153586995, i64 2153587029, i64 2153587053, i64 2153587094, i64 2153587115, i64 2153587143, i64 2153587177}
!16 = !{i64 2153590474, i64 2153590951, i64 2153590511, i64 2153590567, i64 2153590601, i64 2153590625, i64 2153590666, i64 2153590687, i64 2153590715, i64 2153590749}
!17 = !{i64 2152598196}
!18 = !{i64 2151620282}
!19 = !{i64 2151620489}
!20 = !{i64 2152600821}
!21 = !{i64 2149034885}
!22 = !{i64 2148933734}
!23 = !{i64 2148929558}
!24 = !{i64 2148929633, i64 2148929660, i64 2148929707, i64 2148929729, i64 2148929757, i64 2148929777}
!25 = !{i64 2148956737}
!26 = !{i64 2149035102}
!27 = !{i64 2153984601, i64 2153985079, i64 2153984638, i64 2153984694, i64 2153984728, i64 2153984752, i64 2153984793, i64 2153984814, i64 2153984842, i64 2153984876}
!28 = !{i64 2153985827, i64 2153986305, i64 2153985864, i64 2153985920, i64 2153985954, i64 2153985978, i64 2153986019, i64 2153986040, i64 2153986068, i64 2153986102}
!29 = !{i64 2153986852, i64 2153987330, i64 2153986889, i64 2153986945, i64 2153986979, i64 2153987003, i64 2153987044, i64 2153987065, i64 2153987093, i64 2153987127}
!30 = !{i64 2153988244, i64 2153988722, i64 2153988281, i64 2153988337, i64 2153988371, i64 2153988395, i64 2153988436, i64 2153988457, i64 2153988485, i64 2153988519}
!31 = !{i64 2153925066, i64 2153925544, i64 2153925103, i64 2153925159, i64 2153925193, i64 2153925217, i64 2153925258, i64 2153925279, i64 2153925307, i64 2153925341}
!32 = !{i32 0, i32 33}
!33 = !{i64 2153935754, i64 2153936232, i64 2153935791, i64 2153935847, i64 2153935881, i64 2153935905, i64 2153935946, i64 2153935967, i64 2153935995, i64 2153936029}
!34 = !{i64 2153812601, i64 2153813079, i64 2153812638, i64 2153812694, i64 2153812728, i64 2153812752, i64 2153812793, i64 2153812814, i64 2153812842, i64 2153812876}
!35 = !{i64 2153989280, i64 2153989758, i64 2153989317, i64 2153989373, i64 2153989407, i64 2153989431, i64 2153989472, i64 2153989493, i64 2153989521, i64 2153989555}
!36 = !{i64 2153882445, i64 2153882923, i64 2153882482, i64 2153882538, i64 2153882572, i64 2153882596, i64 2153882637, i64 2153882658, i64 2153882686, i64 2153882720}
!37 = !{i64 2153883804}
!38 = !{i64 689508}
!39 = !{i64 2153788291, i64 2153788769, i64 2153788328, i64 2153788384, i64 2153788418, i64 2153788442, i64 2153788483, i64 2153788504, i64 2153788532, i64 2153788566}
!40 = !{i64 2153923534}
!41 = !{i64 2153804002, i64 2153804480, i64 2153804039, i64 2153804095, i64 2153804129, i64 2153804153, i64 2153804194, i64 2153804215, i64 2153804243, i64 2153804277}
!42 = !{i64 2153811401}
!43 = !{i64 2150430545}
!44 = !{i64 2153812329}
!45 = !{!"auto-init"}
!46 = !{i64 2153746722, i64 2153747200, i64 2153746759, i64 2153746815, i64 2153746849, i64 2153746873, i64 2153746914, i64 2153746935, i64 2153746963, i64 2153746997}
!47 = !{i64 2153747865, i64 2153748343, i64 2153747902, i64 2153747958, i64 2153747992, i64 2153748016, i64 2153748057, i64 2153748078, i64 2153748106, i64 2153748140}
!48 = !{!"branch_weights", i32 -102759400, i32 4193255}
!49 = !{i64 2153748881, i64 2153749359, i64 2153748918, i64 2153748974, i64 2153749008, i64 2153749032, i64 2153749073, i64 2153749094, i64 2153749122, i64 2153749156}
!50 = !{i64 2153704288}
!51 = !{i64 2153720387}
!52 = !{i64 2153750943, i64 2153751421, i64 2153750980, i64 2153751036, i64 2153751070, i64 2153751094, i64 2153751135, i64 2153751156, i64 2153751184, i64 2153751218}
!53 = !{i64 2153751959, i64 2153752437, i64 2153751996, i64 2153752052, i64 2153752086, i64 2153752110, i64 2153752151, i64 2153752172, i64 2153752200, i64 2153752234}
!54 = !{i64 2153752967, i64 2153753445, i64 2153753004, i64 2153753060, i64 2153753094, i64 2153753118, i64 2153753159, i64 2153753180, i64 2153753208, i64 2153753242}
!55 = !{i64 2153994967, i64 2153995445, i64 2153995004, i64 2153995060, i64 2153995094, i64 2153995118, i64 2153995159, i64 2153995180, i64 2153995208, i64 2153995242}
!56 = !{i64 2153996015, i64 2153996493, i64 2153996052, i64 2153996108, i64 2153996142, i64 2153996166, i64 2153996207, i64 2153996228, i64 2153996256, i64 2153996290}
!57 = !{i64 2153997053, i64 2153997531, i64 2153997090, i64 2153997146, i64 2153997180, i64 2153997204, i64 2153997245, i64 2153997266, i64 2153997294, i64 2153997328}
!58 = !{i64 2153998964, i64 2153999442, i64 2153999001, i64 2153999057, i64 2153999091, i64 2153999115, i64 2153999156, i64 2153999177, i64 2153999205, i64 2153999239}
!59 = !{i64 2154000434, i64 2154000912, i64 2154000471, i64 2154000527, i64 2154000561, i64 2154000585, i64 2154000626, i64 2154000647, i64 2154000675, i64 2154000709}
!60 = !{i64 2148911579}
!61 = !{i64 765130, i64 2148255101, i64 2148255127, i64 2148255174, i64 2148255196, i64 2148255224, i64 2148255244}
!62 = !{i64 773780, i64 773797, i64 773821, i64 773847, i64 773865}
!63 = !{i64 2148911906}
!64 = !{i64 2154012280, i64 2154012758, i64 2154012317, i64 2154012373, i64 2154012407, i64 2154012431, i64 2154012472, i64 2154012493, i64 2154012521, i64 2154012555}
!65 = !{i64 2154035337, i64 2154035815, i64 2154035374, i64 2154035430, i64 2154035464, i64 2154035488, i64 2154035529, i64 2154035550, i64 2154035578, i64 2154035612}
!66 = !{i64 2154037456, i64 2154037934, i64 2154037493, i64 2154037549, i64 2154037583, i64 2154037607, i64 2154037648, i64 2154037669, i64 2154037697, i64 2154037731}
!67 = !{i64 2154041233, i64 2154041711, i64 2154041270, i64 2154041326, i64 2154041360, i64 2154041384, i64 2154041425, i64 2154041446, i64 2154041474, i64 2154041508}
!68 = !{i64 2154033023, i64 2154033501, i64 2154033060, i64 2154033116, i64 2154033150, i64 2154033174, i64 2154033215, i64 2154033236, i64 2154033264, i64 2154033298}
!69 = !{i64 2148268873, i64 2148268899, i64 2148268928, i64 2148268962, i64 2148268993, i64 2148269016}
!70 = !{i64 2154076882, i64 2154077360, i64 2154076919, i64 2154076975, i64 2154077009, i64 2154077033, i64 2154077074, i64 2154077095, i64 2154077123, i64 2154077157}
!71 = !{i64 2148266516, i64 2148266542, i64 2148266571, i64 2148266605, i64 2148266636, i64 2148266659}
!72 = !{i64 2154011027}
!73 = !{!"branch_weights", i32 4008002, i32 4000000}
!74 = !{i64 2154086014, i64 2154086492, i64 2154086051, i64 2154086107, i64 2154086141, i64 2154086165, i64 2154086206, i64 2154086227, i64 2154086255, i64 2154086289}
!75 = !{i64 2154087200, i64 2154087678, i64 2154087237, i64 2154087293, i64 2154087327, i64 2154087351, i64 2154087392, i64 2154087413, i64 2154087441, i64 2154087475}
!76 = !{i64 2154088374, i64 2154088852, i64 2154088411, i64 2154088467, i64 2154088501, i64 2154088525, i64 2154088566, i64 2154088587, i64 2154088615, i64 2154088649}
!77 = !{i64 2154089404, i64 2154089882, i64 2154089441, i64 2154089497, i64 2154089531, i64 2154089555, i64 2154089596, i64 2154089617, i64 2154089645, i64 2154089679}
!78 = !{!"branch_weights", i32 2002, i32 2000}
!79 = !{i64 2148364362}
!80 = !{i64 2148267200, i64 2148267232, i64 2148267261, i64 2148267295, i64 2148267326, i64 2148267349}
!81 = !{i64 2148364565}
